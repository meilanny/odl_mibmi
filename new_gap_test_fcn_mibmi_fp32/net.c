/*
 * Copyright (C) 2021-2022 ETH Zurich and University of Bologna
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

#define MEMOCC_COMP

#include "pulp_train.h"

#include "linear-data.h"
#include "stats.h"

#include "net.h"

// DATA DEFINITION

// LINEAR
PI_L2 struct Linear_args FC_args; //PI_L1
PI_L2 struct act_args act_args; //PI_L1
PI_L2 struct blob layer0_in, layer0_wgt, layer0_out, layer0_act_out; //PI_L1
// Memory occupation counter
PI_L2 int L1_memocc_bytes = 0;
PI_L2 int L2_memocc_bytes = 0;

PI_L2 float zero_init = 0.0f; //PI_L1

#ifdef FORWARD
PI_L1 float l0_in[Tin_l0];
PI_L1 float l0_ker[Tker_l0];
PI_L1 float l0_out[Tout_l0]; 
#endif

#ifdef BACKWARD_ERROR
PI_L1 float l0_in_diff [Tin_l0];
PI_L1 float l0_ker[Tker_l0];
PI_L1 float l0_out_diff [Tout_l0];
#endif

#ifdef BACKWARD_GRAD
PI_L1 float l0_in[Tin_l0];
PI_L1 float l0_ker_diff[Tker_l0];
PI_L1 float l0_out_diff [Tout_l0];
#endif

#ifdef FORWARD_BACKWARD_PROP
PI_L2 float l0_in[Tin_l0]; //PI_L1
PI_L2 float l0_ker[Tker_l0]; //PI_L1
PI_L2 float l0_out[Tout_l0]; //PI_L1
PI_L2 float l0_in_diff [Tin_l0]; //PI_L1
PI_L2 float l0_ker_diff[Tker_l0]; //PI_L1
PI_L2 float l0_out_diff [Tout_l0]; //PI_L1
PI_L2 float l0_act_out[Tout_l0]; //PI_L1
PI_L2 float l0_act_out_diff [Tout_l0]; //PI_L1

PI_L2 float loss = 0; //PI_L1
PI_L2 struct loss_args loss_args; //PI_L1
#endif

#ifdef FORWARD_BACKWARD_PROP
static inline void tensor_init() 
{
  for (int i=0; i<Tin_l0; i++)        l0_in[i] = INPUT_VECTOR[i];
  for (int i=0; i<Tker_l0; i++)       l0_ker[i] = L0_WEIGHTS_params[i];
  for (int i=0; i<Tout_l0; i++)       l0_out[i] = zero_init; 
  
  for (int i=0; i<Tin_l0; i++)        l0_in_diff[i] = zero_init;
  for (int i=0; i<Tker_l0; i++)       l0_ker_diff[i] = zero_init;
  for (int i=0; i<Tout_l0; i++)       l0_out_diff[i] = zero_init;  

  for (int i=0; i<Tout_l0; i++)       l0_act_out[i] = zero_init;
  for (int i=0; i<Tout_l0; i++)       l0_act_out_diff[i] = zero_init;
  
}

static inline void connect_blobs() 
{
  layer0_in.data = l0_in;
  layer0_in.dim = Tin_l0;
  layer0_in.diff = l0_in_diff;

  layer0_wgt.data = l0_ker;
  layer0_wgt.dim = Tker_l0;
  layer0_wgt.diff = l0_ker_diff;
  
  layer0_out.data = l0_out;
  layer0_out.dim = Tout_l0;
  layer0_out.diff = l0_out_diff;
  
  layer0_act_out.data = l0_act_out;
  layer0_act_out.dim = Tout_l0;
  layer0_act_out.diff = l0_act_out_diff;

  FC_args.input = &layer0_in;
  FC_args.coeff = &layer0_wgt;
  FC_args.output = &layer0_out;
  FC_args.skip_in_grad = 0;
  FC_args.opt_matmul_type_fw = MATMUL_TYPE;
  FC_args.opt_matmul_type_wg = MATMUL_TYPE;
  FC_args.opt_matmul_type_ig = MATMUL_TYPE;
  
  act_args.input = &layer0_out;
  act_args.output = &layer0_act_out;
}

static inline void compute_memory_occupation(){
  // Input
  L1_memocc_bytes += Tin_l0*sizeof(float);
  // Kernel
  L1_memocc_bytes += Tker_l0*sizeof(float); 
  // Output
  L1_memocc_bytes += Tout_l0*sizeof(float);
  
  // Input gradient
  L1_memocc_bytes += Tin_l0*sizeof(float);
  // Kernel gradient
  L1_memocc_bytes += Tker_l0*sizeof(float); 
  // Output gradient
  L1_memocc_bytes += Tout_l0*sizeof(float);

  // Input data
  L2_memocc_bytes += L0_IN_CH*sizeof(float);
  // Weights
  L2_memocc_bytes += L0_WEIGHTS*sizeof(float);
  // Output
  L2_memocc_bytes += L0_OUT_CH*sizeof(float);
  // Output gradient
  L2_memocc_bytes += L0_OUT_CH*sizeof(float);
  // Weight gradient
  L2_memocc_bytes += L0_WEIGHTS*sizeof(float);
  // Input gradient
  L2_memocc_bytes += L0_IN_CH*sizeof(float);
}

static inline void update_weights()
{
  struct optim_args opt_l0;
  opt_l0.weights = &layer0_wgt;
  opt_l0.learning_rate = LEARNING_RATE;
  pi_cl_team_fork(NUM_CORES, pulp_gradient_descent_fp32, &opt_l0);
  // pulp_gradient_descent_fp32(&opt_l0);
}


#endif


#ifdef FORWARD
static inline void tensor_init() 
{
  for (int i=0; i<Tin_l0; i++)        l0_in[i] = INPUT_VECTOR[i];
  for (int i=0; i<Tker_l0; i++)       l0_ker[i] = L0_WEIGHTS_params[i];
  for (int i=0; i<Tout_l0; i++)       l0_out[i] = zero_init; 
}

static inline void connect_blobs() 
{
  layer0_in.data = l0_in;
  layer0_in.dim = Tin_l0;

  layer0_wgt.data = l0_ker;
  layer0_wgt.dim = Tker_l0;

  layer0_out.data = l0_out;
  layer0_out.dim = Tout_l0;

  FC_args.input = &layer0_in;
  FC_args.coeff = &layer0_wgt;
  FC_args.output = &layer0_out;
  FC_args.skip_in_grad = 1;
  FC_args.opt_matmul_type_fw = MATMUL_TYPE;
  FC_args.opt_matmul_type_wg = MATMUL_TYPE;
  FC_args.opt_matmul_type_ig = MATMUL_TYPE;
}

static inline void compute_memory_occupation(){
  // Input
  L1_memocc_bytes += Tin_l0*sizeof(float);
  // Kernel
  L1_memocc_bytes += Tker_l0*sizeof(float); 
  // Output
  L1_memocc_bytes += Tout_l0*sizeof(float);

  // Input data
  L2_memocc_bytes += L0_IN_CH*sizeof(float);
  // Weights
  L2_memocc_bytes += L0_WEIGHTS*sizeof(float);
  // Output
  L2_memocc_bytes += L0_OUT_CH*sizeof(float);
  // Output gradient
  L2_memocc_bytes += L0_OUT_CH*sizeof(float);
  // Weight gradient
  L2_memocc_bytes += L0_WEIGHTS*sizeof(float);
  // Input gradient
  L2_memocc_bytes += L0_IN_CH*sizeof(float);
}
#endif


#ifdef BACKWARD_ERROR
static inline void tensor_init() 
{
  for (int i=0; i<Tin_l0; i++)        l0_in_diff[i] = zero_init;
  for (int i=0; i<Tker_l0; i++)       l0_ker[i] = L0_WEIGHTS_params[i];
  for (int i=0; i<Tout_l0; i++)       l0_out_diff[i] = L0_OUT_GRAD[i]; 
}

static inline void connect_blobs() 
{
  layer0_in.diff = l0_in_diff;
  layer0_in.dim = Tin_l0;

  layer0_wgt.data = l0_ker;
  layer0_wgt.dim = Tker_l0;

  layer0_out.diff = l0_out_diff;
  layer0_out.dim = Tout_l0;  

  FC_args.input = &layer0_in;
  FC_args.coeff = &layer0_wgt;
  FC_args.output = &layer0_out;
  FC_args.skip_in_grad = 0;
  FC_args.opt_matmul_type_fw = MATMUL_TYPE;
  FC_args.opt_matmul_type_wg = MATMUL_TYPE;
  FC_args.opt_matmul_type_ig = MATMUL_TYPE;
}

static inline void compute_memory_occupation(){
  // Input grad
  L1_memocc_bytes += Tin_l0*sizeof(float);
  // Kernel
  L1_memocc_bytes += Tker_l0*sizeof(float); 
  // Output grad
  L1_memocc_bytes += Tout_l0*sizeof(float);

  // Input data
  L2_memocc_bytes += L0_IN_CH*sizeof(float);
  // Weights
  L2_memocc_bytes += L0_WEIGHTS*sizeof(float);
  // Output
  L2_memocc_bytes += L0_OUT_CH*sizeof(float);
  // Output gradient
  L2_memocc_bytes += L0_OUT_CH*sizeof(float);
  // Weight gradient
  L2_memocc_bytes += L0_WEIGHTS*sizeof(float);
  // Input gradient
  L2_memocc_bytes += L0_IN_CH*sizeof(float);
}
#endif


#ifdef BACKWARD_GRAD
static inline void tensor_init() 
{
  for (int i=0; i<Tin_l0; i++)        l0_in[i] = INPUT_VECTOR[i];
  for (int i=0; i<Tker_l0; i++)       l0_ker_diff[i] = zero_init;
  for (int i=0; i<Tout_l0; i++)       l0_out_diff[i] = L0_OUT_GRAD[i];   
}

static inline void connect_blobs() 
{
  layer0_in.data = l0_in;
  layer0_in.dim = Tin_l0;

  layer0_wgt.diff = l0_ker_diff;
  layer0_wgt.dim = Tker_l0;

  layer0_out.diff = l0_out_diff;
  layer0_out.dim = Tout_l0;  

  FC_args.input = &layer0_in;
  FC_args.coeff = &layer0_wgt;
  FC_args.output = &layer0_out;
  FC_args.skip_in_grad = 0;
  FC_args.opt_matmul_type_fw = MATMUL_TYPE;
  FC_args.opt_matmul_type_wg = MATMUL_TYPE;
  FC_args.opt_matmul_type_ig = MATMUL_TYPE;
}

static inline void compute_memory_occupation(){
  // Input
  L1_memocc_bytes += Tin_l0*sizeof(float);
  // Kernel grad
  L1_memocc_bytes += Tker_l0*sizeof(float); 
  // Output grad
  L1_memocc_bytes += Tout_l0*sizeof(float);

  // Input data
  L2_memocc_bytes += L0_IN_CH*sizeof(float);
  // Weights
  L2_memocc_bytes += L0_WEIGHTS*sizeof(float);
  // Output
  L2_memocc_bytes += L0_OUT_CH*sizeof(float);
  // Output gradient
  L2_memocc_bytes += L0_OUT_CH*sizeof(float);
  // Weight gradient
  L2_memocc_bytes += L0_WEIGHTS*sizeof(float);
  // Input gradient
  L2_memocc_bytes += L0_IN_CH*sizeof(float);
}
#endif



static inline void net_forward(){
  /**  FORWARD FC #1   **/
  #ifdef FORWARD
  pulp_linear_fp32_fw_cl(&FC_args);
  #endif
}

static inline void compare_tensors(float *A, float *B, int length){

  float mean_err_rel = 0.0f;
  float diff = 0.0f;
  float den = 0.000001f;

  for(int i=0; i<length; i++){
     if (A[i]>B[i] && A[i]>0.0f){
        diff = A[i]-B[i];
        if (diff>0) diff = diff;
        else diff=-diff;
        if (A[i]>0) den = A[i];
        else den = -A[i]; // missing A = 0
        mean_err_rel = mean_err_rel + (diff / den)/length;
     }
     else{
       diff = A[i]-B[i];
       if (diff>0) diff = diff;
       else diff=-diff;
       if (A[i]>0) den = A[i];
       else den = -A[i];
       mean_err_rel = mean_err_rel + (diff / den)/length;
     }
  }
  if (mean_err_rel<ERROR_TOLERANCE) printf(">>>TENSOR MATCHING!\n");
  else printf(">>>TENSOR NOT MATCHING!\n");

}

// Elementwise checker
int check_tensor(float * tensor_out, float * tensor_ref, int size){

    int error_flag = 0;
    for (int i=0; i<size; i++) {
        if ( ABS(tensor_out[i]-tensor_ref[i]) > CHECK_TOLERANCE ) {
            if (error_flag == 0) printf("\n");
            printf("Error at index: %d   (Ideal = %.16f [HEX: %#x]  vs  Actual = %.16f [HEX: %#x])\n", i, 
                tensor_ref[i], *(unsigned int*) &tensor_ref[i], tensor_out[i], *(unsigned int*) &tensor_out[i]);
            error_flag = 1;
        }
    }
    return error_flag;
}



static inline void train(){

  #ifdef PROF_FWD
  printf("\nForward stats\n");
  START_STATS();
  #endif

  #ifdef FORWARD
  pulp_linear_fp32_fw_cl(&FC_args);
  #endif

  #ifdef PROF_FWD
  STOP_STATS();
  #endif

  #ifdef PROF_BCKWD
  printf("\nBackward stats\n");
  START_STATS();
  #endif

  #ifdef BACKWARD_ERROR
  pulp_linear_fp32_bw_input_grads_cl(&FC_args);
  #endif

  #ifdef BACKWARD_GRAD
  pulp_linear_fp32_bw_param_grads_cl(&FC_args);
  #endif

  #ifdef PROF_BCKWD
  STOP_STATS();
  #endif

  #ifdef FORWARD
  printf("FORWARD CHECK: \n");
  compare_tensors(l0_out, L0_OUT_FW, Tout_l0);
  check_tensor(l0_out, L0_OUT_FW, Tout_l0);
  #endif

  #ifdef BACKWARD_ERROR
  printf("INPUTS GRADIENT CHECK: \n");
  compare_tensors(l0_out_diff, L0_OUT_GRAD, Tout_l0);
  check_tensor(l0_out_diff, L0_OUT_GRAD, Tout_l0);
  #endif

  #ifdef BACKWARD_GRAD
  printf("WEIGHTS GRADIENT CHECK: \n");
  compare_tensors(l0_ker_diff, L0_WEIGHT_GRAD, Tker_l0);
  check_tensor(l0_ker_diff, L0_WEIGHT_GRAD, Tker_l0);
  #endif   
  
  #ifdef FORWARD_BACKWARD_PROP
  pulp_linear_fp32_fw_cl(&FC_args);
  
  loss_args.output = &layer0_act_out;
  loss_args.target = LABEL;
  loss_args.wr_loss = &loss;
  pulp_softmax_fp32_fw_cl(&act_args);
  pulp_CrossEntropyLoss(&loss_args);
  layer0_out.diff = layer0_act_out.diff;
  
  pulp_linear_fp32_bw_cl(&FC_args);
  //pulp_linear_fp32_bw_input_grads_cl(&FC_args);
  //pulp_linear_fp32_bw_param_grads_cl(&FC_args);

  #endif

}



// Most important function: it connects each passage to step the net and perform training
void net_step(void *args)
{

  unsigned int * real_args = (unsigned int *) args;
  void * l2_buffer = (void *) real_args[0];
  void * L2_FC_layer_weights_int8 = (void *) real_args[1];
  void * L2_FC_layer_weights_float = (void *) real_args[2];
  int update = (int) real_args[3];
  int init = (int) real_args[4];
  int class = (int) real_args[5];
  float * ce_loss = (float *) real_args[6];

  #ifdef PROF_NET
  INIT_STATS();
  PRE_START_STATS();
  START_STATS();
  #endif
  
  #ifdef FORWARD_BACKWARD_PROP
  printf("Forward backward prop:\n");
  printf("epochs = %d, lr = %f", NUM_EPOCHS, LEARNING_RATE);
  #endif

  #ifdef MEMOCC_COMP
  compute_memory_occupation();
  printf("\nL1 memory occupation: %d bytes.", L1_memocc_bytes);
  printf("\nL2 memory occupation: %d bytes.\n", L2_memocc_bytes);
  #endif

  tensor_init();
  connect_blobs();
  
  #ifdef FORWARD_BACKWARD_PROP

  for (int epoch=0; epoch < NUM_EPOCHS; epoch++){
      train();
      update_weights();
    
  }
  
  #endif
  
  #ifdef PROF_NET
  STOP_STATS();
  #endif

  #ifdef FORWARD_BACKWARD_PROP
  printf("FORWARD CHECK: \n");
  compare_tensors(l0_out, L0_OUT_FW_LAST, Tout_l0);
  check_tensor(l0_out, L0_OUT_FW_LAST, Tout_l0);

  //printf("OUT GRADIENT CHECK: \n");
  //compare_tensors(l0_out_diff, L0_OUT_GRAD, Tout_l0);
  //check_tensor(l0_out_diff, L0_OUT_GRAD, Tout_l0);
  
  printf("WEIGHTS GRADIENT CHECK: \n"); 
  compare_tensors(l0_ker_diff, L0_WEIGHT_GRAD_LAST, Tker_l0);
  check_tensor(l0_ker_diff, L0_WEIGHT_GRAD_LAST, Tker_l0);

  //printf("INPUTS GRADIENT CHECK: \n"); 
  //compare_tensors(l0_in_diff, L0_IN_GRAD_LAST, Tin_l0);
  //check_tensor(l0_in_diff, L0_IN_GRAD_LAST, Tin_l0);

  printf("LOSS CHECK - Last epoch: \n"); 
  printf("Real loss is %f, GM loss is %f: \n", loss, L0_LOSS_LAST); 
  #endif

  return;
}