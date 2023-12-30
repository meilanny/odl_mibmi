/*
 * network.h
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

#ifndef __NETWORK_H__
#define __NETWORK_H__

#include <stddef.h>
#include "pmsis.h"


struct network_run_token {
  struct pi_device cluster_dev;
};


void network_terminate();
void network_initialize();
void network_run_cluster(void * args);
struct network_run_token network_run_async(void *l2_buffer, size_t l2_buffer_size, void *l2_final_output, int exec, int initial_dir);
void network_run_wait(struct network_run_token token);
void network_run(void *l2_buffer, size_t l2_buffer_size, void *l2_final_output, int exec, int initial_dir);
void execute_layer_fork(void *arg);

static char * Input_names[100] = {   "inputs_0.hex",
  "inputs_1.hex",
  "inputs_2.hex",
  "inputs_3.hex",
  "inputs_4.hex",
  "inputs_5.hex",
  "inputs_6.hex",
  "inputs_7.hex",
  "inputs_8.hex",
  "inputs_9.hex",
  "inputs_10.hex",
  "inputs_11.hex",
  "inputs_12.hex",
  "inputs_13.hex",
  "inputs_14.hex",
  "inputs_15.hex",
  "inputs_16.hex",
  "inputs_17.hex",
  "inputs_18.hex",
  "inputs_19.hex",
  "inputs_20.hex",
  "inputs_21.hex",
  "inputs_22.hex",
  "inputs_23.hex",
  "inputs_24.hex",
  "inputs_25.hex",
  "inputs_26.hex",
  "inputs_27.hex",
  "inputs_28.hex",
  "inputs_29.hex",
  "inputs_30.hex",
  "inputs_31.hex",
  "inputs_32.hex",
  "inputs_33.hex",
  "inputs_34.hex",
  "inputs_35.hex",
  "inputs_36.hex",
  "inputs_37.hex",
  "inputs_38.hex",
  "inputs_39.hex",
  "inputs_40.hex",
  "inputs_41.hex",
  "inputs_42.hex",
  "inputs_43.hex",
  "inputs_44.hex",
  "inputs_45.hex",
  "inputs_46.hex",
  "inputs_47.hex",
  "inputs_48.hex",
  "inputs_49.hex",
  "inputs_50.hex",
  "inputs_51.hex",
  "inputs_52.hex",
  "inputs_53.hex",
  "inputs_54.hex",
  "inputs_55.hex",
  "inputs_56.hex",
  "inputs_57.hex",
  "inputs_58.hex",
  "inputs_59.hex",
  "inputs_60.hex",
  "inputs_61.hex",
  "inputs_62.hex",
  "inputs_63.hex",
  "inputs_64.hex",
  "inputs_65.hex",
  "inputs_66.hex",
  "inputs_67.hex",
  "inputs_68.hex",
  "inputs_69.hex",
  "inputs_70.hex",
  "inputs_71.hex",
  "inputs_72.hex",
  "inputs_73.hex",
  "inputs_74.hex",
  "inputs_75.hex",
  "inputs_76.hex",
  "inputs_77.hex",
  "inputs_78.hex",
  "inputs_79.hex",
  "inputs_80.hex",
  "inputs_81.hex",
  "inputs_82.hex",
  "inputs_83.hex",
  "inputs_84.hex",
  "inputs_85.hex",
  "inputs_86.hex",
  "inputs_87.hex",
  "inputs_88.hex",
  "inputs_89.hex",
  "inputs_90.hex",
  "inputs_91.hex",
  "inputs_92.hex",
  "inputs_93.hex",
  "inputs_94.hex",
  "inputs_95.hex",
  "inputs_96.hex",
  "inputs_97.hex",
  "inputs_98.hex",
  "inputs_99.hex"
};

#ifdef DEFINE_CONSTANTS
// allocation of buffers with parameters needed by the network execution
static const char * L3_weights_files[] = {
  "BNReluConvolution0_weights.hex", "BNReluConvolution1_weights.hex", "BNReluConvolution3_weights.hex", "BNReluConvolution4_weights.hex", "FullyConnected6_weights.hex"
};
static int L3_weights_size[5];
static int layers_pointers[7];
static char * Layers_name[7] = {"BNReluConvolution0", "BNReluConvolution1", "Pooling2", "BNReluConvolution3", "BNReluConvolution4", "Pooling5", "FullyConnected6"};
static int L3_input_layers[7] = {1,
0, 0, 0, 0, 0, 0};
static int L3_output_layers[7] = {0, 0, 0, 0, 0, 0, 0};
static int allocate_layer[7] = {1, 1, 0, 1, 1, 0, 1};
static int branch_input[7] = {0, 0, 0, 0, 0, 0, 0};
static int branch_output[7] = {0, 0, 0, 0, 0, 0, 0};
static int branch_change[7] = {0, 0, 0, 0, 0, 0, 0};
static int weights_checksum[7] = {45279, 546409, 0, 71906, 152587, 0, 239732};
static int weights_size[7] = {512, 4352, 0, 768, 1280, 0, 1864};
static int activations_checksum[7][100] = {{
  7455,     6647,     8479,     11280,     8383,     7366,     5885,     10479,     7691,     9053,     18155,     24294,     15514,     18902,     23349,     19297,     20660,     14890,     15380,     18744,     21043,     12680,     13637,     13516,     22794,     11296,     12579,     12382,     14666,     14012,     5930,     9929,     7367,     9693,     9230,     7429,     8903,     7805,     9051,     8610,     6927,     7927,     5726,     6919,     8040,     6464,     7313,     9413,     10065,     9344,     8398,     12097,     8882,     9844,     10986,     11308,     6709,     10867,     13877,     9870,     7994,     6768,     5533,     7118,     6379,     10429,     8214,     7278,     7570,     10996,     8244,     8593,     8041,     9244,     8376,     10882,     8548,     7269,     10458,     7089,     31881,     18126,     24150,     18315,     17004,     17742,     18214,     24658,     15541,     24387,     11880,     10482,     14141,     12530,     9391,     13004,     9976,     15188,     8899,     10415  },
{
  3830220,     3750978,     3932745,     3900363,     3790702,     3951728,     3629903,     4035085,     3886830,     4103385,     4811047,     4381763,     4428049,     4740564,     4973062,     5047079,     4757340,     4736180,     4783619,     4725726,     4550653,     4313319,     4311611,     4581709,     4530799,     4274566,     3977473,     4552123,     4148937,     4613797,     3635716,     3903576,     3852757,     4012791,     4061982,     3834777,     4092355,     3949148,     4010950,     4084326,     3698070,     3641281,     3447760,     3586262,     3724340,     3698376,     3830321,     3988874,     3824189,     3886474,     3895681,     4634993,     3924963,     4098549,     4691146,     4024163,     3768413,     4238677,     4824043,     4481024,     4014649,     3590354,     3361482,     3516977,     3482046,     3761752,     3855496,     3602514,     3641084,     3996784,     3971686,     3732897,     3782673,     3905268,     3865365,     3811597,     3797353,     3851103,     3964667,     3993709,     4563234,     4661667,     5019213,     4746427,     4429359,     4573546,     4727758,     4960946,     4502863,     4787338,     4165303,     4203814,     4343818,     4197732,     4021745,     4169672,     4334616,     4255871,     4056951,     4018452  },
{
  845988,     818977,     1002352,     1330504,     995627,     991614,     798623,     1212228,     980253,     1189971,     2579037,     2647706,     2146397,     2648354,     2998130,     2808741,     2720391,     2312220,     2254722,     2582106,     2313041,     1758584,     1934095,     2007730,     2577211,     1615694,     1583421,     1774369,     1934691,     2132269,     682110,     1199999,     1007951,     1182174,     1158993,     991464,     1159756,     956057,     1151215,     1062012,     893635,     1094560,     682980,     922058,     1080884,     798007,     952227,     1224361,     1295951,     1282774,     1004464,     1748217,     1147552,     1139783,     1804117,     1362537,     820398,     1458226,     1904684,     1541384,     908914,     809420,     605045,     940529,     727977,     1255064,     1111311,     820675,     871654,     1281622,     1149324,     1114469,     1075717,     1235341,     1128890,     1320125,     1072361,     904569,     1217787,     1030730,     2960038,     2505586,     2536947,     2709027,     2192187,     2253582,     2444764,     2977106,     2186927,     3027715,     1624882,     1453543,     1854092,     1866033,     1334180,     1694959,     1501023,     1980351,     1133804,     1441239  },
{
  103622,     100286,     123104,     164319,     122479,     121845,     97749,     149496,     120469,     146837,     320190,     328293,     266157,     328724,     372746,     349087,     337955,     286561,     279610,     320666,     287219,     217804,     239520,     248719,     320142,     200019,     195892,     219637,     239345,     264074,     83193,     148052,     123810,     145747,     142865,     121794,     142837,     117427,     141929,     130770,     109741,     134764,     83240,     113289,     133181,     97810,     117031,     151092,     160036,     158300,     123494,     216565,     141500,     140220,     223651,     168349,     100447,     180294,     236205,     190758,     111657,     99151,     73490,     115604,     88923,     154949,     136956,     100469,     106862,     158294,     141639,     137287,     132437,     152477,     139032,     163050,     131885,     110973,     150300,     126769,     367685,     310970,     315098,     336660,     272124,     279788,     303587,     369705,     271410,     376480,     200977,     179483,     229572,     231206,     164699,     209732,     185537,     245313,     139750,     178104  },
{
  563766,     518873,     590854,     556518,     553826,     592139,     509986,     591799,     575958,     608758,     765674,     761863,     725096,     789669,     785769,     768461,     790680,     778393,     772797,     780272,     725090,     684189,     703471,     717443,     740083,     689437,     612040,     716914,     674375,     759697,     486367,     576343,     577077,     558125,     554237,     567210,     596472,     582296,     590965,     579369,     535404,     528602,     507440,     475073,     549134,     542889,     590113,     598706,     572468,     615531,     620665,     639365,     568347,     598646,     689877,     560077,     555076,     622138,     689945,     628931,     531424,     502758,     453226,     532219,     519446,     585846,     577716,     560705,     575568,     587609,     580328,     578854,     576415,     556807,     582439,     580084,     520132,     587269,     540291,     586773,     759136,     747522,     731157,     753108,     673958,     700109,     724343,     770964,     719373,     799892,     659465,     644580,     694019,     703542,     616705,     662930,     705090,     683020,     584179,     592992  },
{
  147505,     153552,     161611,     202606,     163238,     159890,     148907,     179273,     165945,     179440,     275812,     269926,     239679,     266200,     317153,     266383,     278131,     240164,     230757,     264841,     251859,     221026,     225306,     214687,     281366,     202765,     216948,     201429,     234997,     229283,     143212,     183885,     157596,     183882,     173859,     162802,     172275,     155429,     178863,     168486,     154176,     174383,     147012,     168413,     178899,     152684,     162353,     180839,     195426,     186878,     160856,     224774,     175266,     173012,     218899,     199735,     142838,     185622,     229466,     204209,     169533,     163540,     141684,     165506,     146963,     194171,     173319,     152851,     164281,     196761,     181393,     171034,     168998,     186326,     174977,     196343,     173650,     155862,     191900,     163889,     308999,     274412,     277123,     292389,     259447,     257451,     256376,     302058,     246893,     295114,     209903,     194323,     227736,     221131,     189473,     212290,     186746,     239596,     169082,     199892  },
{
  17847,     18663,     19541,     24708,     19833,     19420,     18069,     21772,     20191,     21774,     33772,     32857,     29200,     32495,     38732,     32564,     33948,     29280,     28206,     32339,     30825,     26925,     27351,     26068,     34406,     24674,     26437,     24550,     28649,     27916,     17304,     22418,     19142,     22359,     21090,     19848,     20941,     18778,     21762,     20489,     18648,     21166,     17799,     20518,     21752,     18533,     19677,     21976,     23823,     22728,     19522,     27457,     21335,     20951,     26700,     24320,     17253,     22581,     27999,     24882,     20547,     19816,     17128,     20080,     17787,     23627,     21067,     18510,     19900,     23897,     22106,     20807,     20496,     22672,     21293,     23842,     21126,     18867,     23368,     19870,     37638,     33471,     33937,     35695,     31756,     31512,     31282,     36847,     30181,     36099,     25629,     23529,     27739,     26987,     23086,     25812,     22671,     29235,     20495,     24306  }
};
static int activations_size[7] = {15200, 60800, 60800, 7584, 7584, 7584, 928};
static int out_mult_vector[7] = {1, 1, 1, 1, 1, 1, 1};
static int out_shift_vector[7] = {15, 15, 0, 15, 15, 0, 0};
static int activations_out_checksum[7][100] = {{
  3830220,    3750978,    3932745,    3900363,    3790702,    3951728,    3629903,    4035085,    3886830,    4103385,    4811047,    4381763,    4428049,    4740564,    4973062,    5047079,    4757340,    4736180,    4783619,    4725726,    4550653,    4313319,    4311611,    4581709,    4530799,    4274566,    3977473,    4552123,    4148937,    4613797,    3635716,    3903576,    3852757,    4012791,    4061982,    3834777,    4092355,    3949148,    4010950,    4084326,    3698070,    3641281,    3447760,    3586262,    3724340,    3698376,    3830321,    3988874,    3824189,    3886474,    3895681,    4634993,    3924963,    4098549,    4691146,    4024163,    3768413,    4238677,    4824043,    4481024,    4014649,    3590354,    3361482,    3516977,    3482046,    3761752,    3855496,    3602514,    3641084,    3996784,    3971686,    3732897,    3782673,    3905268,    3865365,    3811597,    3797353,    3851103,    3964667,    3993709,    4563234,    4661667,    5019213,    4746427,    4429359,    4573546,    4727758,    4960946,    4502863,    4787338,    4165303,    4203814,    4343818,    4197732,    4021745,    4169672,    4334616,    4255871,    4056951,    4018452 },
{
  845988,    818977,    1002352,    1330504,    995627,    991614,    798623,    1212228,    980253,    1189971,    2579037,    2647706,    2146397,    2648354,    2998130,    2808741,    2720391,    2312220,    2254722,    2582106,    2313041,    1758584,    1934095,    2007730,    2577211,    1615694,    1583421,    1774369,    1934691,    2132269,    682110,    1199999,    1007951,    1182174,    1158993,    991464,    1159756,    956057,    1151215,    1062012,    893635,    1094560,    682980,    922058,    1080884,    798007,    952227,    1224361,    1295951,    1282774,    1004464,    1748217,    1147552,    1139783,    1804117,    1362537,    820398,    1458226,    1904684,    1541384,    908914,    809420,    605045,    940529,    727977,    1255064,    1111311,    820675,    871654,    1281622,    1149324,    1114469,    1075717,    1235341,    1128890,    1320125,    1072361,    904569,    1217787,    1030730,    2960038,    2505586,    2536947,    2709027,    2192187,    2253582,    2444764,    2977106,    2186927,    3027715,    1624882,    1453543,    1854092,    1866033,    1334180,    1694959,    1501023,    1980351,    1133804,    1441239 },
{
  103622,    100286,    123104,    164319,    122479,    121845,    97749,    149496,    120469,    146837,    320190,    328293,    266157,    328724,    372746,    349087,    337955,    286561,    279610,    320666,    287219,    217804,    239520,    248719,    320142,    200019,    195892,    219637,    239345,    264074,    83193,    148052,    123810,    145747,    142865,    121794,    142837,    117427,    141929,    130770,    109741,    134764,    83240,    113289,    133181,    97810,    117031,    151092,    160036,    158300,    123494,    216565,    141500,    140220,    223651,    168349,    100447,    180294,    236205,    190758,    111657,    99151,    73490,    115604,    88923,    154949,    136956,    100469,    106862,    158294,    141639,    137287,    132437,    152477,    139032,    163050,    131885,    110973,    150300,    126769,    367685,    310970,    315098,    336660,    272124,    279788,    303587,    369705,    271410,    376480,    200977,    179483,    229572,    231206,    164699,    209732,    185537,    245313,    139750,    178104 },
{
  563766,    518873,    590854,    556518,    553826,    592139,    509986,    591799,    575958,    608758,    765674,    761863,    725096,    789669,    785769,    768461,    790680,    778393,    772797,    780272,    725090,    684189,    703471,    717443,    740083,    689437,    612040,    716914,    674375,    759697,    486367,    576343,    577077,    558125,    554237,    567210,    596472,    582296,    590965,    579369,    535404,    528602,    507440,    475073,    549134,    542889,    590113,    598706,    572468,    615531,    620665,    639365,    568347,    598646,    689877,    560077,    555076,    622138,    689945,    628931,    531424,    502758,    453226,    532219,    519446,    585846,    577716,    560705,    575568,    587609,    580328,    578854,    576415,    556807,    582439,    580084,    520132,    587269,    540291,    586773,    759136,    747522,    731157,    753108,    673958,    700109,    724343,    770964,    719373,    799892,    659465,    644580,    694019,    703542,    616705,    662930,    705090,    683020,    584179,    592992 },
{
  147505,    153552,    161611,    202606,    163238,    159890,    148907,    179273,    165945,    179440,    275812,    269926,    239679,    266200,    317153,    266383,    278131,    240164,    230757,    264841,    251859,    221026,    225306,    214687,    281366,    202765,    216948,    201429,    234997,    229283,    143212,    183885,    157596,    183882,    173859,    162802,    172275,    155429,    178863,    168486,    154176,    174383,    147012,    168413,    178899,    152684,    162353,    180839,    195426,    186878,    160856,    224774,    175266,    173012,    218899,    199735,    142838,    185622,    229466,    204209,    169533,    163540,    141684,    165506,    146963,    194171,    173319,    152851,    164281,    196761,    181393,    171034,    168998,    186326,    174977,    196343,    173650,    155862,    191900,    163889,    308999,    274412,    277123,    292389,    259447,    257451,    256376,    302058,    246893,    295114,    209903,    194323,    227736,    221131,    189473,    212290,    186746,    239596,    169082,    199892 },
{
  17847,    18663,    19541,    24708,    19833,    19420,    18069,    21772,    20191,    21774,    33772,    32857,    29200,    32495,    38732,    32564,    33948,    29280,    28206,    32339,    30825,    26925,    27351,    26068,    34406,    24674,    26437,    24550,    28649,    27916,    17304,    22418,    19142,    22359,    21090,    19848,    20941,    18778,    21762,    20489,    18648,    21166,    17799,    20518,    21752,    18533,    19677,    21976,    23823,    22728,    19522,    27457,    21335,    20951,    26700,    24320,    17253,    22581,    27999,    24882,    20547,    19816,    17128,    20080,    17787,    23627,    21067,    18510,    19900,    23897,    22106,    20807,    20496,    22672,    21293,    23842,    21126,    18867,    23368,    19870,    37638,    33471,    33937,    35695,    31756,    31512,    31282,    36847,    30181,    36099,    25629,    23529,    27739,    26987,    23086,    25812,    22671,    29235,    20495,    24306 },
{
  814,    1153,    1002,    848,    883,    1151,    1208,    1199,    942,    977,    1019,    1550,    975,    1048,    902,    1056,    1394,    963,    1101,    800,    1100,    592,    1010,    1045,    776,    975,    1082,    985,    799,    1098,    1081,    993,    704,    1116,    1104,    1106,    1175,    1060,    1019,    873,    1063,    1302,    1783,    1019,    946,    952,    867,    411,    889,    1052,    902,    323,    994,    1002,    1123,    918,    1324,    985,    983,    1052,    1076,    1134,    1081,    1255,    1036,    1155,    1182,    965,    1112,    957,    1089,    925,    463,    1037,    935,    1028,    1193,    1125,    833,    1506,    861,    1123,    949,    1103,    1141,    1419,    997,    824,    1162,    1049,    1084,    1177,    1091,    972,    1357,    932,    895,    861,    901,    655 }
};
static int activations_out_size[7] = {60800, 60800, 7584, 7584, 7584, 928, 8};
static int layer_with_weights[7] = {1, 1, 0, 1, 1, 0, 1};
#endif

#endif  // __NETWORK_H__
