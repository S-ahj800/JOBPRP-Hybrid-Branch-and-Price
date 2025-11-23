\ Model JOBPRP_RMP_1811
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x96576265e75b44e6
Minimize
  91.2 batch_5 + 89.2 batch_6 + 72.4 batch_8 + 77.2 batch_9 + 78.4 batch_10
   + 70.4 batch_13 + 65.2 batch_14 + 74.8 batch_15 + 77.2 batch_18
   + 61.2 batch_19 + 115.2 batch_2_7_11 + 117.2 batch_1_14_17
   + 125.2 batch_6_10_14_18 + 124 batch_3_12_13_19
   + 137.2 batch_0_4_9_13_16 + 137.2 batch_5_8_13_15 + 125.2 batch_1_13_17
   + 107.2 batch_6_9_18_19 + 115.2 batch_6_9_14_18
   + 111.2 batch_8_13_14_18_19 + 123.2 batch_5_8_13_18
   + 135.2 batch_0_4_5_13_16 + 127.2 batch_1_9_17 + 117.2 batch_5_9_13_18
   + 117.2 batch_5_10_14_19 + 117.2 batch_5_9_13_14_19
   + 119.2 batch_5_8_10_14 + 115.2 batch_5_8_13_14
   + 133.1999988064546 batch_1_15_17 + 118.4 batch_3_10_12
   + 133.2 batch_6_10_14_15 + 141.2 batch_0_4_6_16_19
   + 121.2 batch_6_9_10_14 + 137.2 batch_0_4_15_16_18
   + 127.2 batch_0_4_13_15_16 + 131.2 batch_0_4_5_16_19
   + 125.2 batch_3_9_12 + 129.2 batch_5_8_14_15 + 133.2 batch_0_4_6_16
Subject To
 order_0: batch_0_4_9_13_16 + batch_0_4_5_13_16 + batch_0_4_6_16_19
   + batch_0_4_15_16_18 + batch_0_4_13_15_16 + batch_0_4_5_16_19
   + batch_0_4_6_16 = 1
 order_1: batch_1_14_17 + batch_1_13_17 + batch_1_9_17 + batch_1_15_17 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_13_19 + batch_3_10_12 + batch_3_9_12 = 1
 order_4: batch_0_4_9_13_16 + batch_0_4_5_13_16 + batch_0_4_6_16_19
   + batch_0_4_15_16_18 + batch_0_4_13_15_16 + batch_0_4_5_16_19
   + batch_0_4_6_16 = 1
 order_5: batch_5 + batch_5_8_13_15 + batch_5_8_13_18 + batch_0_4_5_13_16
   + batch_5_9_13_18 + batch_5_10_14_19 + batch_5_9_13_14_19
   + batch_5_8_10_14 + batch_5_8_13_14 + batch_0_4_5_16_19
   + batch_5_8_14_15 = 1
 order_6: batch_6 + batch_6_10_14_18 + batch_6_9_18_19 + batch_6_9_14_18
   + batch_6_10_14_15 + batch_0_4_6_16_19 + batch_6_9_10_14
   + batch_0_4_6_16 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_5_8_13_15 + batch_8_13_14_18_19 + batch_5_8_13_18
   + batch_5_8_10_14 + batch_5_8_13_14 + batch_5_8_14_15 = 1
 order_9: batch_9 + batch_0_4_9_13_16 + batch_6_9_18_19 + batch_6_9_14_18
   + batch_1_9_17 + batch_5_9_13_18 + batch_5_9_13_14_19 + batch_6_9_10_14
   + batch_3_9_12 = 1
 order_10: batch_10 + batch_6_10_14_18 + batch_5_10_14_19 + batch_5_8_10_14
   + batch_3_10_12 + batch_6_10_14_15 + batch_6_9_10_14 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_12_13_19 + batch_3_10_12 + batch_3_9_12 = 1
 order_13: batch_13 + batch_3_12_13_19 + batch_0_4_9_13_16
   + batch_5_8_13_15 + batch_1_13_17 + batch_8_13_14_18_19
   + batch_5_8_13_18 + batch_0_4_5_13_16 + batch_5_9_13_18
   + batch_5_9_13_14_19 + batch_5_8_13_14 + batch_0_4_13_15_16 = 1
 order_14: batch_14 + batch_1_14_17 + batch_6_10_14_18 + batch_6_9_14_18
   + batch_8_13_14_18_19 + batch_5_10_14_19 + batch_5_9_13_14_19
   + batch_5_8_10_14 + batch_5_8_13_14 + batch_6_10_14_15 + batch_6_9_10_14
   + batch_5_8_14_15 = 1
 order_15: batch_15 + batch_5_8_13_15 + batch_1_15_17 + batch_6_10_14_15
   + batch_0_4_15_16_18 + batch_0_4_13_15_16 + batch_5_8_14_15 = 1
 order_16: batch_0_4_9_13_16 + batch_0_4_5_13_16 + batch_0_4_6_16_19
   + batch_0_4_15_16_18 + batch_0_4_13_15_16 + batch_0_4_5_16_19
   + batch_0_4_6_16 = 1
 order_17: batch_1_14_17 + batch_1_13_17 + batch_1_9_17 + batch_1_15_17
   = 1
 order_18: batch_18 + batch_6_10_14_18 + batch_6_9_18_19 + batch_6_9_14_18
   + batch_8_13_14_18_19 + batch_5_8_13_18 + batch_5_9_13_18
   + batch_0_4_15_16_18 = 1
 order_19: batch_19 + batch_3_12_13_19 + batch_6_9_18_19
   + batch_8_13_14_18_19 + batch_5_10_14_19 + batch_5_9_13_14_19
   + batch_0_4_6_16_19 + batch_0_4_5_16_19 = 1
Bounds
End
