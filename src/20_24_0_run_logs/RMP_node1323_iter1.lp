\ Model JOBPRP_RMP_1323
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xa8f7350126f325e
Minimize
  98 batch_1 + 72.4 batch_8 + 89.6 batch_12 + 65.2 batch_14 + 89.2 batch_17
   + 77.2 batch_18 + 123.2 batch_1_17_18 + 115.2 batch_2_7_11
   + 109.2 batch_6_9_13_18 + 126 batch_8_12_15_19 + 124 batch_0_4_14_15_19
   + 127.2 batch_0_4_5_10 + 127.2 batch_1_5_10 + 126 batch_3_8_14_16
   + 111.2 batch_6_9_13_14 + 117.2 batch_1_14_17 + 119.2 batch_5_10_17
   + 109.2 batch_0_4_14_17 + 133.2 batch_5_10_15_19 + 126 batch_3_15_16_19
   + 112.4 batch_3_8_16
Subject To
 order_0: batch_0_4_14_15_19 + batch_0_4_5_10 + batch_0_4_14_17 = 1
 order_1: batch_1 + batch_1_17_18 + batch_1_5_10 + batch_1_14_17 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_8_14_16 + batch_3_15_16_19 + batch_3_8_16 = 1
 order_4: batch_0_4_14_15_19 + batch_0_4_5_10 + batch_0_4_14_17 = 1
 order_5: batch_0_4_5_10 + batch_1_5_10 + batch_5_10_17 + batch_5_10_15_19
   = 1
 order_6: batch_6_9_13_18 + batch_6_9_13_14 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_8_12_15_19 + batch_3_8_14_16 + batch_3_8_16 = 1
 order_9: batch_6_9_13_18 + batch_6_9_13_14 = 1
 order_10: batch_0_4_5_10 + batch_1_5_10 + batch_5_10_17 + batch_5_10_15_19
   = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_8_12_15_19 = 1
 order_13: batch_6_9_13_18 + batch_6_9_13_14 = 1
 order_14: batch_14 + batch_0_4_14_15_19 + batch_3_8_14_16
   + batch_6_9_13_14 + batch_1_14_17 + batch_0_4_14_17 = 1
 order_15: batch_8_12_15_19 + batch_0_4_14_15_19 + batch_5_10_15_19
   + batch_3_15_16_19 = 1
 order_16: batch_3_8_14_16 + batch_3_15_16_19 + batch_3_8_16 = 1
 order_17: batch_17 + batch_1_17_18 + batch_1_14_17 + batch_5_10_17
   + batch_0_4_14_17 = 1
 order_18: batch_18 + batch_1_17_18 + batch_6_9_13_18 = 1
 order_19: batch_8_12_15_19 + batch_0_4_14_15_19 + batch_5_10_15_19
   + batch_3_15_16_19 = 1
Bounds
End
