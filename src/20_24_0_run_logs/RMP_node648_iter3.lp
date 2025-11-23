\ Model JOBPRP_RMP_648
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xa8f7350126f325e
Minimize
  91.2 batch_5 + 77.2 batch_9 + 70.4 batch_13 + 65.2 batch_14
   + 74.8 batch_15 + 77.2 batch_18 + 115.2 batch_2_7_11
   + 123.2 batch_0_4_10_15_16 + 115.2 batch_6_8_13_14
   + 135.2 batch_5_9_13_15 + 127.2 batch_1_9_17 + 125.2 batch_1_13_17
   + 117.2 batch_5_9_13_18 + 123.2 batch_5_6_8 + 133.2 batch_1_15_17
   + 114 batch_3_12_19 + 119.2 batch_0_4_10_14_16 + 124 batch_3_12_13_19
   + 131.2 batch_3_12_14_19 + 89.2 batch_13_14_18 + 117.2 batch_5_13_14_18
Subject To
 order_0: batch_0_4_10_15_16 + batch_0_4_10_14_16 = 1
 order_1: batch_1_9_17 + batch_1_13_17 + batch_1_15_17 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_19 + batch_3_12_13_19 + batch_3_12_14_19 = 1
 order_4: batch_0_4_10_15_16 + batch_0_4_10_14_16 = 1
 order_5: batch_5 + batch_5_9_13_15 + batch_5_9_13_18 + batch_5_6_8
   + batch_5_13_14_18 = 1
 order_6: batch_6_8_13_14 + batch_5_6_8 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_6_8_13_14 + batch_5_6_8 = 1
 order_9: batch_9 + batch_5_9_13_15 + batch_1_9_17 + batch_5_9_13_18 = 1
 order_10: batch_0_4_10_15_16 + batch_0_4_10_14_16 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_12_19 + batch_3_12_13_19 + batch_3_12_14_19 = 1
 order_13: batch_13 + batch_6_8_13_14 + batch_5_9_13_15 + batch_1_13_17
   + batch_5_9_13_18 + batch_3_12_13_19 + batch_13_14_18 + batch_5_13_14_18
   = 1
 order_14: batch_14 + batch_6_8_13_14 + batch_0_4_10_14_16
   + batch_3_12_14_19 + batch_13_14_18 + batch_5_13_14_18 = 1
 order_15: batch_15 + batch_0_4_10_15_16 + batch_5_9_13_15 + batch_1_15_17
   = 1
 order_16: batch_0_4_10_15_16 + batch_0_4_10_14_16 = 1
 order_17: batch_1_9_17 + batch_1_13_17 + batch_1_15_17 = 1
 order_18: batch_18 + batch_5_9_13_18 + batch_13_14_18 + batch_5_13_14_18
   = 1
 order_19: batch_3_12_19 + batch_3_12_13_19 + batch_3_12_14_19 = 1
Bounds
End
