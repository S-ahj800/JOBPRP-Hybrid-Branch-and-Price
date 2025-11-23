\ Model JOBPRP_RMP_1099
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xda482d0275e0932f
Minimize
  98 batch_1 + 77.2 batch_9 + 89.6 batch_12 + 65.2 batch_14 + 74.8 batch_15
   + 77.2 batch_18 + 61.2 batch_19 + 119.2 batch_0_4_10_14_15
   + 115.2 batch_2_7_11 + 117.2 batch_5_8_17 + 127.2 batch_6_12_13_14
   + 113.2 batch_1_9_14_19 + 131.2 batch_1_3_16 + 134 batch_0_4_9_10_19
   + 111.2 batch_1_9_18 + 111.2 batch_1_14_18_19 + 138 batch_0_4_10_18_19
   + 133.2 batch_6_13_15_18 + 109.2 batch_6_13_14_18 + 124 batch_6_12_13_19
   + 109.2 batch_6_13_18_19 + 137.2 batch_3_9_15_16 + 122 batch_3_9_16_19
   + 103.2 batch_6_13_18 + 135.2 batch_0_4_10_12 + 133.2 batch_3_15_16_18
Subject To
 order_0: batch_0_4_10_14_15 + batch_0_4_9_10_19 + batch_0_4_10_18_19
   + batch_0_4_10_12 = 1
 order_1: batch_1 + batch_1_9_14_19 + batch_1_3_16 + batch_1_9_18
   + batch_1_14_18_19 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_1_3_16 + batch_3_9_15_16 + batch_3_9_16_19
   + batch_3_15_16_18 = 1
 order_4: batch_0_4_10_14_15 + batch_0_4_9_10_19 + batch_0_4_10_18_19
   + batch_0_4_10_12 = 1
 order_5: batch_5_8_17 = 1
 order_6: batch_6_12_13_14 + batch_6_13_15_18 + batch_6_13_14_18
   + batch_6_12_13_19 + batch_6_13_18_19 + batch_6_13_18 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_5_8_17 = 1
 order_9: batch_9 + batch_1_9_14_19 + batch_0_4_9_10_19 + batch_1_9_18
   + batch_3_9_15_16 + batch_3_9_16_19 = 1
 order_10: batch_0_4_10_14_15 + batch_0_4_9_10_19 + batch_0_4_10_18_19
   + batch_0_4_10_12 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_6_12_13_14 + batch_6_12_13_19 + batch_0_4_10_12
   = 1
 order_13: batch_6_12_13_14 + batch_6_13_15_18 + batch_6_13_14_18
   + batch_6_12_13_19 + batch_6_13_18_19 + batch_6_13_18 = 1
 order_14: batch_14 + batch_0_4_10_14_15 + batch_6_12_13_14
   + batch_1_9_14_19 + batch_1_14_18_19 + batch_6_13_14_18 = 1
 order_15: batch_15 + batch_0_4_10_14_15 + batch_6_13_15_18
   + batch_3_9_15_16 + batch_3_15_16_18 = 1
 order_16: batch_1_3_16 + batch_3_9_15_16 + batch_3_9_16_19
   + batch_3_15_16_18 = 1
 order_17: batch_5_8_17 = 1
 order_18: batch_18 + batch_1_9_18 + batch_1_14_18_19 + batch_0_4_10_18_19
   + batch_6_13_15_18 + batch_6_13_14_18 + batch_6_13_18_19 + batch_6_13_18
   + batch_3_15_16_18 = 1
 order_19: batch_19 + batch_1_9_14_19 + batch_0_4_9_10_19
   + batch_1_14_18_19 + batch_0_4_10_18_19 + batch_6_12_13_19
   + batch_6_13_18_19 + batch_3_9_16_19 = 1
Bounds
End
