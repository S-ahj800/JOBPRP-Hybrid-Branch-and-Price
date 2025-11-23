\ Model JOBPRP_RMP_1828
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x6af833475bea50bb
Minimize
  98 batch_1 + 89.6 batch_12 + 74.8 batch_15 + 77.2 batch_18
   + 115.2 batch_2_7_11 + 118 batch_3_12_16_19 + 109.2 batch_8_9_14_18
   + 121.1999957721094 batch_0_4_10_17 + 135.2 batch_5_6_13_15
   + 133.2 batch_1_12_18 + 141.2 batch_1_12_15 + 132 batch_8_9_14_15
   + 129.2 batch_1_15_18 + 117.2 batch_5_6_13 + 99.2 batch_8_9_14
Subject To
 order_0: batch_0_4_10_17 = 1
 order_1: batch_1 + batch_1_12_18 + batch_1_12_15 + batch_1_15_18 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16_19 = 1
 order_4: batch_0_4_10_17 = 1
 order_5: batch_5_6_13_15 + batch_5_6_13 = 1
 order_6: batch_5_6_13_15 + batch_5_6_13 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8_9_14_18 + batch_8_9_14_15 + batch_8_9_14 = 1
 order_9: batch_8_9_14_18 + batch_8_9_14_15 + batch_8_9_14 = 1
 order_10: batch_0_4_10_17 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_3_12_16_19 + batch_1_12_18 + batch_1_12_15 = 1
 order_13: batch_5_6_13_15 + batch_5_6_13 = 1
 order_14: batch_8_9_14_18 + batch_8_9_14_15 + batch_8_9_14 = 1
 order_15: batch_15 + batch_5_6_13_15 + batch_1_12_15 + batch_8_9_14_15
   + batch_1_15_18 = 1
 order_16: batch_3_12_16_19 = 1
 order_17: batch_0_4_10_17 = 1
 order_18: batch_18 + batch_8_9_14_18 + batch_1_12_18 + batch_1_15_18 = 1
 order_19: batch_3_12_16_19 = 1
Bounds
End
