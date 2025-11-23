\ Model JOBPRP_RMP_1007
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xe148668f92958503
Minimize
  98 batch_1 + 72.4 batch_8 + 77.2 batch_9 + 89.6 batch_12 + 74.8 batch_15
   + 89.2 batch_17 + 77.2 batch_18 + 61.2 batch_19 + 115.2 batch_2_7_11
   + 109.2 batch_6_9_13_18 + 105.2 batch_6_9_13_19 + 121.2 batch_1_8_9
   + 132 batch_6_8_13_15 + 123.2 batch_0_4_8_17 + 109.2 batch_6_8_13_19
   + 121.2 batch_0_4_5_14_19 + 126 batch_0_4_8_15_19
   + 121.2 batch_1_5_14_19 + 111.2 batch_1_9_18 + 120 batch_1_6_13
   + 137.2 batch_5_12_14_15 + 121.2 batch_1_8_18 + 133.2 batch_1_12_18
   + 136 batch_1_9_12 + 121.2 batch_6_13_17_19 + 113.2 batch_5_14_17_19
   + 135.2 batch_8_12_17 + 121.2 batch_6_12_13 + 125.2 batch_5_8_9_14
   + 116.4 batch_3_10_16 + 123.2 batch_3_10_16_19 + 123.2 batch_5_6_13_14
   + 131.2 batch_0_4_17_18
Subject To
 order_0: batch_0_4_8_17 + batch_0_4_5_14_19 + batch_0_4_8_15_19
   + batch_0_4_17_18 = 1
 order_1: batch_1 + batch_1_8_9 + batch_1_5_14_19 + batch_1_9_18
   + batch_1_6_13 + batch_1_8_18 + batch_1_12_18 + batch_1_9_12 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_10_16 + batch_3_10_16_19 = 1
 order_4: batch_0_4_8_17 + batch_0_4_5_14_19 + batch_0_4_8_15_19
   + batch_0_4_17_18 = 1
 order_5: batch_0_4_5_14_19 + batch_1_5_14_19 + batch_5_12_14_15
   + batch_5_14_17_19 + batch_5_8_9_14 + batch_5_6_13_14 = 1
 order_6: batch_6_9_13_18 + batch_6_9_13_19 + batch_6_8_13_15
   + batch_6_8_13_19 + batch_1_6_13 + batch_6_13_17_19 + batch_6_12_13
   + batch_5_6_13_14 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_1_8_9 + batch_6_8_13_15 + batch_0_4_8_17
   + batch_6_8_13_19 + batch_0_4_8_15_19 + batch_1_8_18 + batch_8_12_17
   + batch_5_8_9_14 = 1
 order_9: batch_9 + batch_6_9_13_18 + batch_6_9_13_19 + batch_1_8_9
   + batch_1_9_18 + batch_1_9_12 + batch_5_8_9_14 = 1
 order_10: batch_3_10_16 + batch_3_10_16_19 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_5_12_14_15 + batch_1_12_18 + batch_1_9_12
   + batch_8_12_17 + batch_6_12_13 = 1
 order_13: batch_6_9_13_18 + batch_6_9_13_19 + batch_6_8_13_15
   + batch_6_8_13_19 + batch_1_6_13 + batch_6_13_17_19 + batch_6_12_13
   + batch_5_6_13_14 = 1
 order_14: batch_0_4_5_14_19 + batch_1_5_14_19 + batch_5_12_14_15
   + batch_5_14_17_19 + batch_5_8_9_14 + batch_5_6_13_14 = 1
 order_15: batch_15 + batch_6_8_13_15 + batch_0_4_8_15_19
   + batch_5_12_14_15 = 1
 order_16: batch_3_10_16 + batch_3_10_16_19 = 1
 order_17: batch_17 + batch_0_4_8_17 + batch_6_13_17_19 + batch_5_14_17_19
   + batch_8_12_17 + batch_0_4_17_18 = 1
 order_18: batch_18 + batch_6_9_13_18 + batch_1_9_18 + batch_1_8_18
   + batch_1_12_18 + batch_0_4_17_18 = 1
 order_19: batch_19 + batch_6_9_13_19 + batch_6_8_13_19 + batch_0_4_5_14_19
   + batch_0_4_8_15_19 + batch_1_5_14_19 + batch_6_13_17_19
   + batch_5_14_17_19 + batch_3_10_16_19 = 1
Bounds
End
