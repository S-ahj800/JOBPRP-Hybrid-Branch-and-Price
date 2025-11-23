\ Model JOBPRP_RMP_1983
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x4a9abb2bc39d859e
Minimize
  89.2 batch_6 + 72.4 batch_8 + 77.2 batch_9 + 78.4 batch_10 + 65.2 batch_14
   + 74.8 batch_15 + 77.2 batch_18 + 61.2 batch_19 + 115.2 batch_2_7_11
   + 127.2 batch_1_10_17 + 125.2 batch_6_10_14_18 + 127.2 batch_6_12_13_14
   + 117.2 batch_3_5_14_19 + 131.2 batch_9_10_12_13 + 127.2 batch_1_9_17
   + 130.4 batch_10_12_13_15 + 133.2 batch_3_5_15_19
   + 120 batch_0_4_8_16_19 + 109.2 batch_8_9_14_18 + 125.2 batch_3_5_8
   + 134 batch_9_12_13_15 + 107.2 batch_8_9_18_19 + 115.2 batch_3_5_18
   + 137.2 batch_0_4_15_16_18 + 115.2 batch_6_9_14_18 + 133.2 batch_1_15_17
   + 133.2 batch_0_4_6_16 + 139.2 batch_0_4_9_15_16 + 107.2 batch_6_9_18
Subject To
 order_0: batch_0_4_8_16_19 + batch_0_4_15_16_18 + batch_0_4_6_16
   + batch_0_4_9_15_16 = 1
 order_1: batch_1_10_17 + batch_1_9_17 + batch_1_15_17 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_5_14_19 + batch_3_5_15_19 + batch_3_5_8 + batch_3_5_18
   = 1
 order_4: batch_0_4_8_16_19 + batch_0_4_15_16_18 + batch_0_4_6_16
   + batch_0_4_9_15_16 = 1
 order_5: batch_3_5_14_19 + batch_3_5_15_19 + batch_3_5_8 + batch_3_5_18
   = 1
 order_6: batch_6 + batch_6_10_14_18 + batch_6_12_13_14 + batch_6_9_14_18
   + batch_0_4_6_16 + batch_6_9_18 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_0_4_8_16_19 + batch_8_9_14_18 + batch_3_5_8
   + batch_8_9_18_19 = 1
 order_9: batch_9 + batch_9_10_12_13 + batch_1_9_17 + batch_8_9_14_18
   + batch_9_12_13_15 + batch_8_9_18_19 + batch_6_9_14_18
   + batch_0_4_9_15_16 + batch_6_9_18 = 1
 order_10: batch_10 + batch_1_10_17 + batch_6_10_14_18 + batch_9_10_12_13
   + batch_10_12_13_15 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_6_12_13_14 + batch_9_10_12_13 + batch_10_12_13_15
   + batch_9_12_13_15 = 1
 order_13: batch_6_12_13_14 + batch_9_10_12_13 + batch_10_12_13_15
   + batch_9_12_13_15 = 1
 order_14: batch_14 + batch_6_10_14_18 + batch_6_12_13_14 + batch_3_5_14_19
   + batch_8_9_14_18 + batch_6_9_14_18 = 1
 order_15: batch_15 + batch_10_12_13_15 + batch_3_5_15_19
   + batch_9_12_13_15 + batch_0_4_15_16_18 + batch_1_15_17
   + batch_0_4_9_15_16 = 1
 order_16: batch_0_4_8_16_19 + batch_0_4_15_16_18 + batch_0_4_6_16
   + batch_0_4_9_15_16 = 1
 order_17: batch_1_10_17 + batch_1_9_17 + batch_1_15_17 = 1
 order_18: batch_18 + batch_6_10_14_18 + batch_8_9_14_18 + batch_8_9_18_19
   + batch_3_5_18 + batch_0_4_15_16_18 + batch_6_9_14_18 + batch_6_9_18
   = 1
 order_19: batch_19 + batch_3_5_14_19 + batch_3_5_15_19 + batch_0_4_8_16_19
   + batch_8_9_18_19 = 1
Bounds
End
