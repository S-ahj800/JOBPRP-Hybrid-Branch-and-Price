\ Model JOBPRP_RMP_1156
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x2f3a227a0b63ce24
Minimize
  91.2 batch_5 + 78.4 batch_10 + 65.2 batch_14 + 74.8 batch_15
   + 77.2 batch_18 + 115.2 batch_2_7_11 + 118 batch_3_12_16_19
   + 123.2 batch_0_4_8_17 + 119.2 batch_1_5_9 + 119.2 batch_6_10_13_14
   + 135.2 batch_5_6_13_15 + 139.2 batch_5_10_15_18 + 111.2 batch_1_9_18
   + 131.2 batch_10_14_15_18 + 87.2 batch_14_18
Subject To
 order_0: batch_0_4_8_17 = 1
 order_1: batch_1_5_9 + batch_1_9_18 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16_19 = 1
 order_4: batch_0_4_8_17 = 1
 order_5: batch_5 + batch_1_5_9 + batch_5_6_13_15 + batch_5_10_15_18 = 1
 order_6: batch_6_10_13_14 + batch_5_6_13_15 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_0_4_8_17 = 1
 order_9: batch_1_5_9 + batch_1_9_18 = 1
 order_10: batch_10 + batch_6_10_13_14 + batch_5_10_15_18
   + batch_10_14_15_18 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_12_16_19 = 1
 order_13: batch_6_10_13_14 + batch_5_6_13_15 = 1
 order_14: batch_14 + batch_6_10_13_14 + batch_10_14_15_18 + batch_14_18
   = 1
 order_15: batch_15 + batch_5_6_13_15 + batch_5_10_15_18
   + batch_10_14_15_18 = 1
 order_16: batch_3_12_16_19 = 1
 order_17: batch_0_4_8_17 = 1
 order_18: batch_18 + batch_5_10_15_18 + batch_1_9_18 + batch_10_14_15_18
   + batch_14_18 = 1
 order_19: batch_3_12_16_19 = 1
Bounds
End
