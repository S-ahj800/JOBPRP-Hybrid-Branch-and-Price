\ Model JOBPRP_RMP_1771
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xa94a82156785d1b7
Minimize
  72.4 batch_8 + 77.2 batch_9 + 89.6 batch_12 + 74.8 batch_15
   + 77.2 batch_18 + 115.2 batch_2_7_11 + 113.2 batch_6_13_14_17
   + 118 batch_3_12_16_19 + 119.2 batch_3_8_16_19 + 119.2 batch_8_12_15
   + 115.2 batch_0_4_10_15 + 119.2 batch_0_4_8_10 + 138 batch_8_9_15_18
   + 125.2 batch_3_16_18_19 + 127.2 batch_0_4_10_18 + 131.2 batch_1_5_15
   + 107.2 batch_8_9_18 + 135.2 batch_0_4_10_12 + 132 batch_0_4_9_10
Subject To
 order_0: batch_0_4_10_15 + batch_0_4_8_10 + batch_0_4_10_18
   + batch_0_4_10_12 + batch_0_4_9_10 = 1
 order_1: batch_1_5_15 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16_19 + batch_3_8_16_19 + batch_3_16_18_19 = 1
 order_4: batch_0_4_10_15 + batch_0_4_8_10 + batch_0_4_10_18
   + batch_0_4_10_12 + batch_0_4_9_10 = 1
 order_5: batch_1_5_15 = 1
 order_6: batch_6_13_14_17 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_3_8_16_19 + batch_8_12_15 + batch_0_4_8_10
   + batch_8_9_15_18 + batch_8_9_18 = 1
 order_9: batch_9 + batch_8_9_15_18 + batch_8_9_18 + batch_0_4_9_10 = 1
 order_10: batch_0_4_10_15 + batch_0_4_8_10 + batch_0_4_10_18
   + batch_0_4_10_12 + batch_0_4_9_10 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_3_12_16_19 + batch_8_12_15 + batch_0_4_10_12
   = 1
 order_13: batch_6_13_14_17 = 1
 order_14: batch_6_13_14_17 = 1
 order_15: batch_15 + batch_8_12_15 + batch_0_4_10_15 + batch_8_9_15_18
   + batch_1_5_15 = 1
 order_16: batch_3_12_16_19 + batch_3_8_16_19 + batch_3_16_18_19 = 1
 order_17: batch_6_13_14_17 = 1
 order_18: batch_18 + batch_8_9_15_18 + batch_3_16_18_19 + batch_0_4_10_18
   + batch_8_9_18 = 1
 order_19: batch_3_12_16_19 + batch_3_8_16_19 + batch_3_16_18_19 = 1
Bounds
End
