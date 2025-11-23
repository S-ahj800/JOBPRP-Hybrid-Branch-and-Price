\ Model JOBPRP_RMP_155
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xf3f56fa9d29974e6
Minimize
  72.4 batch_8 + 74.8 batch_15 + 89.2 batch_17 + 61.2 batch_19
   + 105.6 batch_3_12_16 + 115.2 batch_2_7_11 + 109.2 batch_6_9_13_18
   + 118 batch_3_12_16_19 + 131.2 batch_1_8_10 + 139.2 batch_1_10_15_19
   + 117.2 batch_0_4_5_14 + 111.2 batch_5_14_17 + 107.2 batch_5_8_14
Subject To
 order_0: batch_0_4_5_14 = 1
 order_1: batch_1_8_10 + batch_1_10_15_19 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16 + batch_3_12_16_19 = 1
 order_4: batch_0_4_5_14 = 1
 order_5: batch_0_4_5_14 + batch_5_14_17 + batch_5_8_14 = 1
 order_6: batch_6_9_13_18 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_1_8_10 + batch_5_8_14 = 1
 order_9: batch_6_9_13_18 = 1
 order_10: batch_1_8_10 + batch_1_10_15_19 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_12_16 + batch_3_12_16_19 = 1
 order_13: batch_6_9_13_18 = 1
 order_14: batch_0_4_5_14 + batch_5_14_17 + batch_5_8_14 = 1
 order_15: batch_15 + batch_1_10_15_19 = 1
 order_16: batch_3_12_16 + batch_3_12_16_19 = 1
 order_17: batch_17 + batch_5_14_17 = 1
 order_18: batch_6_9_13_18 = 1
 order_19: batch_19 + batch_3_12_16_19 + batch_1_10_15_19 = 1
Bounds
End
