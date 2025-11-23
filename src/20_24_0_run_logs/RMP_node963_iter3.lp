\ Model JOBPRP_RMP_963
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xc8e82f2f828a190
Minimize
  98 batch_1 + 72.4 batch_8 + 78.4 batch_10 + 74.8 batch_15 + 89.2 batch_17
   + 77.2 batch_18 + 115.2 batch_2_7_11 + 109.2 batch_6_9_13_18
   + 130.4 batch_3_10_15_16 + 119.2 batch_5_8_10_14 + 123.2 batch_0_4_8_17
   + 123.2 batch_6_9_10_13 + 121.2 batch_0_4_10_17 + 121.2 batch_1_8_18
   + 131.2 batch_3_16_17 + 137.2 batch_5_14_15_18 + 111.2 batch_5_14_17
   + 117.2 batch_1_5_14 + 131.2 batch_0_3_4_16 + 139.2 batch_10_12_18_19
   + 132 batch_1_12_19 + 131.2 batch_1_3_16 + 129.2 batch_5_12_14_19
   + 117.2 batch_0_4_8_15 + 133.2 batch_3_15_16_18
Subject To
 order_0: batch_0_4_8_17 + batch_0_4_10_17 + batch_0_3_4_16
   + batch_0_4_8_15 = 1
 order_1: batch_1 + batch_1_8_18 + batch_1_5_14 + batch_1_12_19
   + batch_1_3_16 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_10_15_16 + batch_3_16_17 + batch_0_3_4_16 + batch_1_3_16
   + batch_3_15_16_18 = 1
 order_4: batch_0_4_8_17 + batch_0_4_10_17 + batch_0_3_4_16
   + batch_0_4_8_15 = 1
 order_5: batch_5_8_10_14 + batch_5_14_15_18 + batch_5_14_17 + batch_1_5_14
   + batch_5_12_14_19 = 1
 order_6: batch_6_9_13_18 + batch_6_9_10_13 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_5_8_10_14 + batch_0_4_8_17 + batch_1_8_18
   + batch_0_4_8_15 = 1
 order_9: batch_6_9_13_18 + batch_6_9_10_13 = 1
 order_10: batch_10 + batch_3_10_15_16 + batch_5_8_10_14 + batch_6_9_10_13
   + batch_0_4_10_17 + batch_10_12_18_19 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_10_12_18_19 + batch_1_12_19 + batch_5_12_14_19 = 1
 order_13: batch_6_9_13_18 + batch_6_9_10_13 = 1
 order_14: batch_5_8_10_14 + batch_5_14_15_18 + batch_5_14_17
   + batch_1_5_14 + batch_5_12_14_19 = 1
 order_15: batch_15 + batch_3_10_15_16 + batch_5_14_15_18 + batch_0_4_8_15
   + batch_3_15_16_18 = 1
 order_16: batch_3_10_15_16 + batch_3_16_17 + batch_0_3_4_16 + batch_1_3_16
   + batch_3_15_16_18 = 1
 order_17: batch_17 + batch_0_4_8_17 + batch_0_4_10_17 + batch_3_16_17
   + batch_5_14_17 = 1
 order_18: batch_18 + batch_6_9_13_18 + batch_1_8_18 + batch_5_14_15_18
   + batch_10_12_18_19 + batch_3_15_16_18 = 1
 order_19: batch_10_12_18_19 + batch_1_12_19 + batch_5_12_14_19 = 1
Bounds
End
