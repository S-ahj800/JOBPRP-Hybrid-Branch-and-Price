\ Model JOBPRP_RMP_1560
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x7dd3cd16755de6b1
Minimize
  89.2 batch_6 + 77.2 batch_9 + 78.4 batch_10 + 65.2 batch_14
   + 74.8 batch_15 + 77.2 batch_18 + 61.2 batch_19 + 115.2 batch_2_7_11
   + 115.6 batch_3_12_15 + 115.2 batch_0_4_8_14_16 + 117.2 batch_1_14_17
   + 125.2 batch_6_10_14_18 + 107.2 batch_6_9_18_19 + 115.2 batch_6_9_14_18
   + 123.2 batch_5_10_13_18 + 133.2 batch_1_15_17 + 121.2 batch_6_9_10_14
   + 118.4 batch_3_10_12 + 125.2 batch_5_9_10_13 + 127.2 batch_1_9_17
   + 107.2 batch_5_13_19 + 111.1999981 batch_0_4_8_16
   + 125.2 batch_5_10_13_14_19 + 121.2 batch_5_10_13_19
Subject To
 order_0: batch_0_4_8_14_16 + batch_0_4_8_16 = 1
 order_1: batch_1_14_17 + batch_1_15_17 + batch_1_9_17 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_15 + batch_3_10_12 = 1
 order_4: batch_0_4_8_14_16 + batch_0_4_8_16 = 1
 order_5: batch_5_10_13_18 + batch_5_9_10_13 + batch_5_13_19
   + batch_5_10_13_14_19 + batch_5_10_13_19 = 1
 order_6: batch_6 + batch_6_10_14_18 + batch_6_9_18_19 + batch_6_9_14_18
   + batch_6_9_10_14 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_0_4_8_14_16 + batch_0_4_8_16 = 1
 order_9: batch_9 + batch_6_9_18_19 + batch_6_9_14_18 + batch_6_9_10_14
   + batch_5_9_10_13 + batch_1_9_17 = 1
 order_10: batch_10 + batch_6_10_14_18 + batch_5_10_13_18 + batch_6_9_10_14
   + batch_3_10_12 + batch_5_9_10_13 + batch_5_10_13_14_19
   + batch_5_10_13_19 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_12_15 + batch_3_10_12 = 1
 order_13: batch_5_10_13_18 + batch_5_9_10_13 + batch_5_13_19
   + batch_5_10_13_14_19 + batch_5_10_13_19 = 1
 order_14: batch_14 + batch_0_4_8_14_16 + batch_1_14_17 + batch_6_10_14_18
   + batch_6_9_14_18 + batch_6_9_10_14 + batch_5_10_13_14_19 = 1
 order_15: batch_15 + batch_3_12_15 + batch_1_15_17 = 1
 order_16: batch_0_4_8_14_16 + batch_0_4_8_16 = 1
 order_17: batch_1_14_17 + batch_1_15_17 + batch_1_9_17 = 1
 order_18: batch_18 + batch_6_10_14_18 + batch_6_9_18_19 + batch_6_9_14_18
   + batch_5_10_13_18 = 1
 order_19: batch_19 + batch_6_9_18_19 + batch_5_13_19 + batch_5_10_13_14_19
   + batch_5_10_13_19 = 1
Bounds
End
