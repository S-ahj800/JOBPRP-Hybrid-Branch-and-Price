\ Model JOBPRP_RMP_912
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xa8f7350126f325e
Minimize
  98 batch_1 + 72.4 batch_8 + 77.2 batch_9 + 89.2 batch_17 + 77.2 batch_18
   + 61.2 batch_19 + 105.6 batch_3_12_16 + 115.2 batch_2_7_11
   + 121.2 batch_1_8_9 + 132 batch_6_8_13_15 + 111.2 batch_1_9_18
   + 121.2 batch_0_4_10_17 + 121.2 batch_1_8_18 + 113.2 batch_5_14_17_19
   + 121.2 batch_5_9_14_18 + 125.2 batch_5_8_9_14 + 107.2 batch_8_9_18_19
   + 133.2 batch_6_13_15_18 + 134 batch_0_4_9_10_19 + 107.2 batch_0_4_10
   + 119.2 batch_0_4_8_10
Subject To
 order_0: batch_0_4_10_17 + batch_0_4_9_10_19 + batch_0_4_10
   + batch_0_4_8_10 = 1
 order_1: batch_1 + batch_1_8_9 + batch_1_9_18 + batch_1_8_18 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16 = 1
 order_4: batch_0_4_10_17 + batch_0_4_9_10_19 + batch_0_4_10
   + batch_0_4_8_10 = 1
 order_5: batch_5_14_17_19 + batch_5_9_14_18 + batch_5_8_9_14 = 1
 order_6: batch_6_8_13_15 + batch_6_13_15_18 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_1_8_9 + batch_6_8_13_15 + batch_1_8_18
   + batch_5_8_9_14 + batch_8_9_18_19 + batch_0_4_8_10 = 1
 order_9: batch_9 + batch_1_8_9 + batch_1_9_18 + batch_5_9_14_18
   + batch_5_8_9_14 + batch_8_9_18_19 + batch_0_4_9_10_19 = 1
 order_10: batch_0_4_10_17 + batch_0_4_9_10_19 + batch_0_4_10
   + batch_0_4_8_10 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_12_16 = 1
 order_13: batch_6_8_13_15 + batch_6_13_15_18 = 1
 order_14: batch_5_14_17_19 + batch_5_9_14_18 + batch_5_8_9_14 = 1
 order_15: batch_6_8_13_15 + batch_6_13_15_18 = 1
 order_16: batch_3_12_16 = 1
 order_17: batch_17 + batch_0_4_10_17 + batch_5_14_17_19 = 1
 order_18: batch_18 + batch_1_9_18 + batch_1_8_18 + batch_5_9_14_18
   + batch_8_9_18_19 + batch_6_13_15_18 = 1
 order_19: batch_19 + batch_5_14_17_19 + batch_8_9_18_19
   + batch_0_4_9_10_19 = 1
Bounds
End
