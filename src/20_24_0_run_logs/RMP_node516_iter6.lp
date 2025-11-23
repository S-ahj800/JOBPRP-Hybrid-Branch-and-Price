\ Model JOBPRP_RMP_516
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xc8e82f2f828a190
Minimize
  83.6 batch_3 + 91.2 batch_5 + 78.4 batch_10 + 89.6 batch_12
   + 65.2 batch_14 + 74.8 batch_15 + 77.2 batch_18 + 61.2 batch_19
   + 137.2 batch_0_4_13_14_16_19 + 115.2 batch_2_7_11
   + 133.2 batch_5_10_12_19 + 113.2 batch_6_8_9_19 + 117.2 batch_1_14_17
   + 135.2 batch_0_4_5_13_16 + 133.2 batch_0_4_13_16_18
   + 129.2 batch_5_12_18_19 + 133.2 batch_1_15_17 + 118.4 batch_3_10_12
   + 137.2 batch_5_14_15_18 + 139.2 batch_5_10_15_18 + 125.2 batch_3_12_14
   + 113.2 batch_3_10_14 + 131.2 batch_3_12_14_19 + 119.2 batch_3_10_14_19
   + 123.2 batch_0_4_13_14_16
Subject To
 order_0: batch_0_4_13_14_16_19 + batch_0_4_5_13_16 + batch_0_4_13_16_18
   + batch_0_4_13_14_16 = 1
 order_1: batch_1_14_17 + batch_1_15_17 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3 + batch_3_10_12 + batch_3_12_14 + batch_3_10_14
   + batch_3_12_14_19 + batch_3_10_14_19 = 1
 order_4: batch_0_4_13_14_16_19 + batch_0_4_5_13_16 + batch_0_4_13_16_18
   + batch_0_4_13_14_16 = 1
 order_5: batch_5 + batch_5_10_12_19 + batch_0_4_5_13_16 + batch_5_12_18_19
   + batch_5_14_15_18 + batch_5_10_15_18 = 1
 order_6: batch_6_8_9_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_6_8_9_19 = 1
 order_9: batch_6_8_9_19 = 1
 order_10: batch_10 + batch_5_10_12_19 + batch_3_10_12 + batch_5_10_15_18
   + batch_3_10_14 + batch_3_10_14_19 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_5_10_12_19 + batch_5_12_18_19 + batch_3_10_12
   + batch_3_12_14 + batch_3_12_14_19 = 1
 order_13: batch_0_4_13_14_16_19 + batch_0_4_5_13_16 + batch_0_4_13_16_18
   + batch_0_4_13_14_16 = 1
 order_14: batch_14 + batch_0_4_13_14_16_19 + batch_1_14_17
   + batch_5_14_15_18 + batch_3_12_14 + batch_3_10_14 + batch_3_12_14_19
   + batch_3_10_14_19 + batch_0_4_13_14_16 = 1
 order_15: batch_15 + batch_1_15_17 + batch_5_14_15_18 + batch_5_10_15_18
   = 1
 order_16: batch_0_4_13_14_16_19 + batch_0_4_5_13_16 + batch_0_4_13_16_18
   + batch_0_4_13_14_16 = 1
 order_17: batch_1_14_17 + batch_1_15_17 = 1
 order_18: batch_18 + batch_0_4_13_16_18 + batch_5_12_18_19
   + batch_5_14_15_18 + batch_5_10_15_18 = 1
 order_19: batch_19 + batch_0_4_13_14_16_19 + batch_5_10_12_19
   + batch_6_8_9_19 + batch_5_12_18_19 + batch_3_12_14_19
   + batch_3_10_14_19 = 1
Bounds
End
