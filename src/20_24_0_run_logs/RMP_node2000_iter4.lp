\ Model JOBPRP_RMP_2000
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xf9ac11e32f7503a8
Minimize
  91.2 batch_5 + 77.2 batch_9 + 89.6 batch_12 + 74.8 batch_15
   + 89.2 batch_17 + 77.2 batch_18 + 119.2 batch_0_4_10_14_15
   + 105.6 batch_3_12_16 + 115.2 batch_2_7_11 + 133.2 batch_3_15_16_18
   + 131.2 batch_12_15_17 + 113.2 batch_5_9_18 + 135.2 batch_5_9_15_18
   + 135.2 batch_5_6_13_15 + 103.2 batch_6_13_18 + 113.2 batch_6_13_17
   + 121.2 batch_1_8_19 + 131.2 batch_3_16_17 + 122 batch_3_9_16
   + 117.2 batch_3_5_16
Subject To
 order_0: batch_0_4_10_14_15 = 1
 order_1: batch_1_8_19 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16 + batch_3_15_16_18 + batch_3_16_17 + batch_3_9_16
   + batch_3_5_16 = 1
 order_4: batch_0_4_10_14_15 = 1
 order_5: batch_5 + batch_5_9_18 + batch_5_9_15_18 + batch_5_6_13_15
   + batch_3_5_16 = 1
 order_6: batch_5_6_13_15 + batch_6_13_18 + batch_6_13_17 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_1_8_19 = 1
 order_9: batch_9 + batch_5_9_18 + batch_5_9_15_18 + batch_3_9_16 = 1
 order_10: batch_0_4_10_14_15 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_3_12_16 + batch_12_15_17 = 1
 order_13: batch_5_6_13_15 + batch_6_13_18 + batch_6_13_17 = 1
 order_14: batch_0_4_10_14_15 = 1
 order_15: batch_15 + batch_0_4_10_14_15 + batch_3_15_16_18
   + batch_12_15_17 + batch_5_9_15_18 + batch_5_6_13_15 = 1
 order_16: batch_3_12_16 + batch_3_15_16_18 + batch_3_16_17 + batch_3_9_16
   + batch_3_5_16 = 1
 order_17: batch_17 + batch_12_15_17 + batch_6_13_17 + batch_3_16_17 = 1
 order_18: batch_18 + batch_3_15_16_18 + batch_5_9_18 + batch_5_9_15_18
   + batch_6_13_18 = 1
 order_19: batch_1_8_19 = 1
Bounds
End
