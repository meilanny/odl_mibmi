/*
 * test_template.c
 * Alessio Burrello <alessio.burrello@unibo.it>
 *
 * Copyright (C) 2019-2020 University of Bologna
 * 
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License. 
 */
// DORY
#define DEFINE_CONSTANTS
#include "mem.h"
#include "network.h"

#include "pmsis.h"
#include "net_utils.h"

// PULP-TrainLib
#include "net.h"

#define VERBOSE 1

void application(void * arg) {
/*
    Opening of Filesystem and Ram
*/
  mem_init();
  network_initialize();
  /*
    Allocating space for input
  */
  void *l2_buffer = pi_l2_malloc(500000); //parameterize,  1386000
  void *L2_FC_layer_weights_int8 = pi_l2_malloc(weights_size[6]);
  void *L2_FC_layer_weights_float;

  static float ce_loss;


  if (NULL == l2_buffer) {
#ifdef VERBOSE
    printf("ERROR: L2 buffer allocation failed.");
#endif
    pmsis_exit(-1);
  }
#ifdef VERBOSE
  printf("\nL2 Buffer alloc initial\t@ 0x%08x:\tOk\n", (unsigned int)l2_buffer);
#endif
  size_t l2_input_size = 15200;
  size_t input_size = 500000; // 1000000
  int initial_dir = 1;

  printf("-----------------------Run DORY Network except FC-----------------------\n");

  void *ram_input = ram_malloc(input_size);
  load_file_to_ram(ram_input, "inputs.hex");
  ram_read(l2_buffer, ram_input, l2_input_size);
  network_run(l2_buffer, 500000, l2_buffer, L2_FC_layer_weights_int8, 0, initial_dir);
  //checksum("L2_FC_layer_weights_int8 weights new out", L2_FC_layer_weights_int8, weights_size[6], weights_checksum[6]);
  //checksum("final output",l2_buffer, activations_out_size[5], activations_out_checksum[5][0]);

  ram_free(ram_input, input_size);
  network_terminate();

  printf("-----------------------Run PULP-TrainLib FC-----------------------\n");
  //printf("\nHello there.\nConfiguring cluster..\n");
  // Configure cluster
  struct pi_device cluster_dev;
  struct pi_cluster_conf cl_conf;
  struct pi_cluster_task cl_task;

  pi_cluster_conf_init(&cl_conf);
  pi_open_from_conf(&cluster_dev, &cl_conf);
  if (pi_cluster_open(&cluster_dev))
  {
      return -1;
  }

  L2_FC_layer_weights_float = pi_l2_malloc(2 * 928 * 4); // 4 bytes per float
  if (L2_FC_layer_weights_float == NULL) {
      printf("failed to allocate memory for L2_FC_layer_weights_float\n");
  }

  unsigned int args_init[6];
  args_init[0] = (unsigned int) l2_buffer;
  args_init[1] = (unsigned int) L2_FC_layer_weights_int8;
  args_init[2] = (unsigned int) L2_FC_layer_weights_float;
  args_init[3] = (unsigned int) 0; // update = 0
  args_init[4] = (unsigned int) 1; // init = 1
  args_init[5] = (unsigned int) 100; // dummy class
  args_init[6] = (float*) &ce_loss;

  printf("\nLaunching training procedure...\n");
  pi_cluster_send_task_to_cl(&cluster_dev, pi_cluster_task(&cl_task, net_step, args_init));

  printf("Net training successful!\n");
  pi_cluster_close(&cluster_dev);

  pmsis_exit(0);

  pi_l2_free(l2_buffer, 500000);

  pi_l2_free(L2_FC_layer_weights_float, 2 * 928 * 4);

  pi_l2_free(L2_FC_layer_weights_int8, weights_size[6]);
}

int main () {
#ifndef TARGET_CHIP_FAMILY_GAP9
  PMU_set_voltage(1000, 0);
#else
  pi_pmu_voltage_set(PI_PMU_VOLTAGE_DOMAIN_CHIP, PI_PMU_VOLT_800);
#endif
  pi_time_wait_us(10000);
  pi_freq_set(PI_FREQ_DOMAIN_FC, 370000000);
  pi_time_wait_us(10000);
  pi_freq_set(PI_FREQ_DOMAIN_CL, 370000000);
  pi_time_wait_us(10000);
  pi_freq_set(PI_FREQ_DOMAIN_PERIPH, 370000000);
  pi_time_wait_us(10000);


  pmsis_kickoff((void*)application);
  return 0;
}
