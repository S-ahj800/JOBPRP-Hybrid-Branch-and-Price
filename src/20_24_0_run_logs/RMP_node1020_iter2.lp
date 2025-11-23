\ Model JOBPRP_RMP_1020
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xd3f2d65e4968af56
Minimize
  98 batch_1 + 77.2 batch_9 + 78.4 batch_10 + 89.6 batch_12 + 74.8 batch_15
   + 89.2 batch_17 + 77.2 batch_18 + 61.2 batch_19 + 115.2 batch_2_7_11
   + 109.2 batch_6_9_13_18 + 105.2 batch_6_9_13_19 + 119.2 batch_3_8_16_19
   + 121.2 batch_0_4_5_14_19 + 121.2 batch_1_5_14_19 + 111.2 batch_1_9_18
   + 123.2 batch_6_9_10_13 + 121.2 batch_0_4_10_17 + 120 batch_1_6_13
   + 137.2 batch_5_12_14_15 + 125.2 batch_10_17_18_19 + 133.2 batch_1_12_18
   + 136 batch_1_9_12 + 133.2 batch_10_12_17 + 121.2 batch_6_13_17_19
   + 113.2 batch_5_14_17_19 + 121.2 batch_6_12_13 + 115.2 batch_0_4_10_15
   + 112.4 batch_3_8_16
Subject To
 order_0: batch_0_4_5_14_19 + batch_0_4_10_17 + batch_0_4_10_15 = 1
 order_1: batch_1 + batch_1_5_14_19 + batch_1_9_18 + batch_1_6_13
   + batch_1_12_18 + batch_1_9_12 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_8_16_19 + batch_3_8_16 = 1
 order_4: batch_0_4_5_14_19 + batch_0_4_10_17 + batch_0_4_10_15 = 1
 order_5: batch_0_4_5_14_19 + batch_1_5_14_19 + batch_5_12_14_15
   + batch_5_14_17_19 = 1
 order_6: batch_6_9_13_18 + batch_6_9_13_19 + batch_6_9_10_13
   + batch_1_6_13 + batch_6_13_17_19 + batch_6_12_13 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_3_8_16_19 + batch_3_8_16 = 1
 order_9: batch_9 + batch_6_9_13_18 + batch_6_9_13_19 + batch_1_9_18
   + batch_6_9_10_13 + batch_1_9_12 = 1
 order_10: batch_10 + batch_6_9_10_13 + batch_0_4_10_17 + batch_10_17_18_19
   + batch_10_12_17 + batch_0_4_10_15 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_5_12_14_15 + batch_1_12_18 + batch_1_9_12
   + batch_10_12_17 + batch_6_12_13 = 1
 order_13: batch_6_9_13_18 + batch_6_9_13_19 + batch_6_9_10_13
   + batch_1_6_13 + batch_6_13_17_19 + batch_6_12_13 = 1
 order_14: batch_0_4_5_14_19 + batch_1_5_14_19 + batch_5_12_14_15
   + batch_5_14_17_19 = 1
 order_15: batch_15 + batch_5_12_14_15 + batch_0_4_10_15 = 1
 order_16: batch_3_8_16_19 + batch_3_8_16 = 1
 order_17: batch_17 + batch_0_4_10_17 + batch_10_17_18_19 + batch_10_12_17
   + batch_6_13_17_19 + batch_5_14_17_19 = 1
 order_18: batch_18 + batch_6_9_13_18 + batch_1_9_18 + batch_10_17_18_19
   + batch_1_12_18 = 1
 order_19: batch_19 + batch_6_9_13_19 + batch_3_8_16_19 + batch_0_4_5_14_19
   + batch_1_5_14_19 + batch_10_17_18_19 + batch_6_13_17_19
   + batch_5_14_17_19 = 1
Bounds
End
