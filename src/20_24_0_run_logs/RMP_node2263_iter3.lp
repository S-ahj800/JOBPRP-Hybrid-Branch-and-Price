\ Model JOBPRP_RMP_2263
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x689775dc00a48562
Minimize
  98 batch_1 + 89.2 batch_6 + 72.4 batch_8 + 77.2 batch_9 + 78.4 batch_10
   + 89.6 batch_12 + 70.4 batch_13 + 65.2 batch_14 + 74.8 batch_15
   + 77.2 batch_18 + 61.2 batch_19 + 115.2 batch_6_8_18_19
   + 123.2 batch_8_12_13_15 + 125.2 batch_1_6_10 + 105.6 batch_3_12_16
   + 115.2 batch_2_7_11 + 123.2 batch_5_14_15_17 + 115.2 batch_1_13_14_18
   + 121.2 batch_1_6_18 + 118 batch_1_6_9 + 118 batch_3_12_16_19
   + 130.4 batch_3_10_15_16 + 123.2 batch_0_4_5_17 + 114.4 batch_3_8_13_16
   + 109.2 batch_8_9_14_18 + 105.2 batch_8_9_13_14_19
   + 113.2 batch_6_8_9_19 + 123.2 batch_9_10_13_18 + 107.2 batch_8_9_13_18
   + 121.2 batch_1_8_18 + 111.2 batch_1_14_18_19 + 125.2 batch_5_10_17_19
   + 131.2 batch_0_4_6_14_19 + 107.2 batch_6_9_18_19
Subject To
 order_0: batch_0_4_5_17 + batch_0_4_6_14_19 = 1
 order_1: batch_1 + batch_1_6_10 + batch_1_13_14_18 + batch_1_6_18
   + batch_1_6_9 + batch_1_8_18 + batch_1_14_18_19 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16 + batch_3_12_16_19 + batch_3_10_15_16
   + batch_3_8_13_16 = 1
 order_4: batch_0_4_5_17 + batch_0_4_6_14_19 = 1
 order_5: batch_5_14_15_17 + batch_0_4_5_17 + batch_5_10_17_19 = 1
 order_6: batch_6 + batch_6_8_18_19 + batch_1_6_10 + batch_1_6_18
   + batch_1_6_9 + batch_6_8_9_19 + batch_0_4_6_14_19 + batch_6_9_18_19
   = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_6_8_18_19 + batch_8_12_13_15 + batch_3_8_13_16
   + batch_8_9_14_18 + batch_8_9_13_14_19 + batch_6_8_9_19
   + batch_8_9_13_18 + batch_1_8_18 = 1
 order_9: batch_9 + batch_1_6_9 + batch_8_9_14_18 + batch_8_9_13_14_19
   + batch_6_8_9_19 + batch_9_10_13_18 + batch_8_9_13_18 + batch_6_9_18_19
   = 1
 order_10: batch_10 + batch_1_6_10 + batch_3_10_15_16 + batch_9_10_13_18
   + batch_5_10_17_19 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_8_12_13_15 + batch_3_12_16 + batch_3_12_16_19
   = 1
 order_13: batch_13 + batch_8_12_13_15 + batch_1_13_14_18 + batch_3_8_13_16
   + batch_8_9_13_14_19 + batch_9_10_13_18 + batch_8_9_13_18 = 1
 order_14: batch_14 + batch_5_14_15_17 + batch_1_13_14_18 + batch_8_9_14_18
   + batch_8_9_13_14_19 + batch_1_14_18_19 + batch_0_4_6_14_19 = 1
 order_15: batch_15 + batch_8_12_13_15 + batch_5_14_15_17
   + batch_3_10_15_16 = 1
 order_16: batch_3_12_16 + batch_3_12_16_19 + batch_3_10_15_16
   + batch_3_8_13_16 = 1
 order_17: batch_5_14_15_17 + batch_0_4_5_17 + batch_5_10_17_19 = 1
 order_18: batch_18 + batch_6_8_18_19 + batch_1_13_14_18 + batch_1_6_18
   + batch_8_9_14_18 + batch_9_10_13_18 + batch_8_9_13_18 + batch_1_8_18
   + batch_1_14_18_19 + batch_6_9_18_19 = 1
 order_19: batch_19 + batch_6_8_18_19 + batch_3_12_16_19
   + batch_8_9_13_14_19 + batch_6_8_9_19 + batch_1_14_18_19
   + batch_5_10_17_19 + batch_0_4_6_14_19 + batch_6_9_18_19 = 1
Bounds
End
