\ Model JOBPRP_RMP_1316
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x7dd3cd16755de6b1
Minimize
  72.4 batch_8 + 77.2 batch_9 + 78.4 batch_10 + 65.2 batch_14
   + 74.8 batch_15 + 77.2 batch_18 + 115.2 batch_2_7_11
   + 121.2 batch_3_5_12 + 127.2 batch_1_10_17 + 115.2 batch_0_4_8_14_16
   + 117.2 batch_1_14_17 + 109.2 batch_6_13_18_19 + 133.2 batch_1_15_17
   + 127.2 batch_1_9_17 + 125.2 batch_9_10_14_18 + 119.2 batch_6_10_13_19
   + 139.199999600713 batch_8_10_15_18 + 127.1999909189689 batch_1_9_17
   + 114 batch_9_15 + 116.4 batch_8_10_15 + 131.2 batch_0_4_16_18
   + 141.2 batch_9_10_15_18 + 129.2 batch_0_4_9_14_16
   + 107.2 batch_6_13_14_19
Subject To
 order_0: batch_0_4_8_14_16 + batch_0_4_16_18 + batch_0_4_9_14_16 = 1
 order_1: batch_1_10_17 + batch_1_14_17 + batch_1_15_17 + batch_1_9_17
   + batch_1_9_17 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_5_12 = 1
 order_4: batch_0_4_8_14_16 + batch_0_4_16_18 + batch_0_4_9_14_16 = 1
 order_5: batch_3_5_12 = 1
 order_6: batch_6_13_18_19 + batch_6_10_13_19 + batch_6_13_14_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_0_4_8_14_16 + batch_8_10_15_18 + batch_8_10_15
   = 1
 order_9: batch_9 + batch_1_9_17 + batch_9_10_14_18 + batch_1_9_17
   + batch_9_15 + batch_9_10_15_18 + batch_0_4_9_14_16 = 1
 order_10: batch_10 + batch_1_10_17 + batch_9_10_14_18 + batch_6_10_13_19
   + batch_8_10_15_18 + batch_8_10_15 + batch_9_10_15_18 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_5_12 = 1
 order_13: batch_6_13_18_19 + batch_6_10_13_19 + batch_6_13_14_19 = 1
 order_14: batch_14 + batch_0_4_8_14_16 + batch_1_14_17 + batch_9_10_14_18
   + batch_0_4_9_14_16 + batch_6_13_14_19 = 1
 order_15: batch_15 + batch_1_15_17 + batch_8_10_15_18 + batch_9_15
   + batch_8_10_15 + batch_9_10_15_18 = 1
 order_16: batch_0_4_8_14_16 + batch_0_4_16_18 + batch_0_4_9_14_16 = 1
 order_17: batch_1_10_17 + batch_1_14_17 + batch_1_15_17 + batch_1_9_17
   + batch_1_9_17 = 1
 order_18: batch_18 + batch_6_13_18_19 + batch_9_10_14_18
   + batch_8_10_15_18 + batch_0_4_16_18 + batch_9_10_15_18 = 1
 order_19: batch_6_13_18_19 + batch_6_10_13_19 + batch_6_13_14_19 = 1
Bounds
End
