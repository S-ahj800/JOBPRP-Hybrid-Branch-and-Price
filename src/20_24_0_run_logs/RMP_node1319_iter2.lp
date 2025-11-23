\ Model JOBPRP_RMP_1319
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x648e1468607d0443
Minimize
  98 batch_1 + 89.6 batch_12 + 65.2 batch_14 + 89.2 batch_17
   + 115.2 batch_2_7_11 + 109.2 batch_6_9_13_18 + 132 batch_0_4_8_12
   + 126 batch_0_4_8_15_19 + 117.2 batch_1_14_17 + 119.2 batch_5_10_17
   + 133.2 batch_5_10_15_19 + 134 batch_12_14_15_19 + 109.2 batch_0_4_8_14
   + 131.2 batch_1_3_16 + 131.2 batch_5_10_12 + 131.2 batch_3_16_17
Subject To
 order_0: batch_0_4_8_12 + batch_0_4_8_15_19 + batch_0_4_8_14 = 1
 order_1: batch_1 + batch_1_14_17 + batch_1_3_16 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_1_3_16 + batch_3_16_17 = 1
 order_4: batch_0_4_8_12 + batch_0_4_8_15_19 + batch_0_4_8_14 = 1
 order_5: batch_5_10_17 + batch_5_10_15_19 + batch_5_10_12 = 1
 order_6: batch_6_9_13_18 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_0_4_8_12 + batch_0_4_8_15_19 + batch_0_4_8_14 = 1
 order_9: batch_6_9_13_18 = 1
 order_10: batch_5_10_17 + batch_5_10_15_19 + batch_5_10_12 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_0_4_8_12 + batch_12_14_15_19 + batch_5_10_12
   = 1
 order_13: batch_6_9_13_18 = 1
 order_14: batch_14 + batch_1_14_17 + batch_12_14_15_19 + batch_0_4_8_14
   = 1
 order_15: batch_0_4_8_15_19 + batch_5_10_15_19 + batch_12_14_15_19 = 1
 order_16: batch_1_3_16 + batch_3_16_17 = 1
 order_17: batch_17 + batch_1_14_17 + batch_5_10_17 + batch_3_16_17 = 1
 order_18: batch_6_9_13_18 = 1
 order_19: batch_0_4_8_15_19 + batch_5_10_15_19 + batch_12_14_15_19 = 1
Bounds
End
