\ Model JOBPRP_RMP_1699
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xcc3d248206d3b162
Minimize
  91.2 batch_5 + 72.4 batch_8 + 77.2 batch_9 + 74.8 batch_15 + 89.2 batch_17
   + 119.2 batch_0_4_10_14_15 + 115.2 batch_2_7_11 + 118 batch_3_12_16_19
   + 132 batch_6_8_13_15 + 123.2 batch_5_15_17 + 113.2 batch_6_13_17
   + 121.2 batch_1_8_18 + 109.2 batch_6_8_13 + 111.2 batch_0_4_10_14
   + 119.2 batch_5_8_9 + 111.2 batch_1_9_18 + 127.2 batch_5_9_17
Subject To
 order_0: batch_0_4_10_14_15 + batch_0_4_10_14 = 1
 order_1: batch_1_8_18 + batch_1_9_18 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16_19 = 1
 order_4: batch_0_4_10_14_15 + batch_0_4_10_14 = 1
 order_5: batch_5 + batch_5_15_17 + batch_5_8_9 + batch_5_9_17 = 1
 order_6: batch_6_8_13_15 + batch_6_13_17 + batch_6_8_13 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_6_8_13_15 + batch_1_8_18 + batch_6_8_13
   + batch_5_8_9 = 1
 order_9: batch_9 + batch_5_8_9 + batch_1_9_18 + batch_5_9_17 = 1
 order_10: batch_0_4_10_14_15 + batch_0_4_10_14 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_12_16_19 = 1
 order_13: batch_6_8_13_15 + batch_6_13_17 + batch_6_8_13 = 1
 order_14: batch_0_4_10_14_15 + batch_0_4_10_14 = 1
 order_15: batch_15 + batch_0_4_10_14_15 + batch_6_8_13_15 + batch_5_15_17
   = 1
 order_16: batch_3_12_16_19 = 1
 order_17: batch_17 + batch_5_15_17 + batch_6_13_17 + batch_5_9_17 = 1
 order_18: batch_1_8_18 + batch_1_9_18 = 1
 order_19: batch_3_12_16_19 = 1
Bounds
End
