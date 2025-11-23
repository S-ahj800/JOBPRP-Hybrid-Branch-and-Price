\ Model JOBPRP_RMP_920
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x6e4cd22abace2b90
Minimize
  98 batch_1 + 72.4 batch_8 + 77.2 batch_9 + 78.4 batch_10 + 74.8 batch_15
   + 77.2 batch_18 + 115.2 batch_2_7_11 + 118 batch_3_12_16_19
   + 119.2 batch_5_8_10_14 + 121.2 batch_1_8_9 + 123.2 batch_0_4_8_17
   + 111.2 batch_1_9_18 + 121.2 batch_0_4_10_17 + 120 batch_1_6_13
   + 121.2 batch_1_8_18 + 139.2 batch_5_9_14_15 + 137.2 batch_5_14_15_18
   + 129.2 batch_5_10_14_15 + 139.2 batch_8_10_15_18
   + 125.2 batch_6_10_13_18 + 123.2 batch_5_6_13_14 + 121.2 batch_5_9_14_18
   + 137.2 batch_8_9_10_15 + 129.2 batch_5_8_14_15 + 138 batch_8_9_15_18
Subject To
 order_0: batch_0_4_8_17 + batch_0_4_10_17 = 1
 order_1: batch_1 + batch_1_8_9 + batch_1_9_18 + batch_1_6_13
   + batch_1_8_18 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16_19 = 1
 order_4: batch_0_4_8_17 + batch_0_4_10_17 = 1
 order_5: batch_5_8_10_14 + batch_5_9_14_15 + batch_5_14_15_18
   + batch_5_10_14_15 + batch_5_6_13_14 + batch_5_9_14_18 + batch_5_8_14_15
   = 1
 order_6: batch_1_6_13 + batch_6_10_13_18 + batch_5_6_13_14 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_5_8_10_14 + batch_1_8_9 + batch_0_4_8_17
   + batch_1_8_18 + batch_8_10_15_18 + batch_8_9_10_15 + batch_5_8_14_15
   + batch_8_9_15_18 = 1
 order_9: batch_9 + batch_1_8_9 + batch_1_9_18 + batch_5_9_14_15
   + batch_5_9_14_18 + batch_8_9_10_15 + batch_8_9_15_18 = 1
 order_10: batch_10 + batch_5_8_10_14 + batch_0_4_10_17 + batch_5_10_14_15
   + batch_8_10_15_18 + batch_6_10_13_18 + batch_8_9_10_15 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_12_16_19 = 1
 order_13: batch_1_6_13 + batch_6_10_13_18 + batch_5_6_13_14 = 1
 order_14: batch_5_8_10_14 + batch_5_9_14_15 + batch_5_14_15_18
   + batch_5_10_14_15 + batch_5_6_13_14 + batch_5_9_14_18 + batch_5_8_14_15
   = 1
 order_15: batch_15 + batch_5_9_14_15 + batch_5_14_15_18 + batch_5_10_14_15
   + batch_8_10_15_18 + batch_8_9_10_15 + batch_5_8_14_15 + batch_8_9_15_18
   = 1
 order_16: batch_3_12_16_19 = 1
 order_17: batch_0_4_8_17 + batch_0_4_10_17 = 1
 order_18: batch_18 + batch_1_9_18 + batch_1_8_18 + batch_5_14_15_18
   + batch_8_10_15_18 + batch_6_10_13_18 + batch_5_9_14_18
   + batch_8_9_15_18 = 1
 order_19: batch_3_12_16_19 = 1
Bounds
End
