\ Model JOBPRP_RMP_976
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x33081f5a8203d252
Minimize
  98 batch_1 + 77.2 batch_9 + 78.4 batch_10 + 74.8 batch_15 + 89.2 batch_17
   + 77.2 batch_18 + 115.2 batch_2_7_11 + 126 batch_8_12_15_19
   + 111.2 batch_1_9_18 + 121.2 batch_0_4_10_17 + 120 batch_1_6_13
   + 131.2 batch_3_16_17 + 125.2 batch_3_5_14_16 + 137.2 batch_5_14_15_18
   + 111.2 batch_5_14_17 + 113.2 batch_6_13_17 + 117.2 batch_1_5_14
   + 131.2 batch_0_4_9_15 + 115.2 batch_0_4_10_15 + 133.2 batch_3_15_16_18
   + 123.2 batch_5_6_13_14 + 137.2 batch_3_9_15_16 + 133.2 batch_6_10_13_15
Subject To
 order_0: batch_0_4_10_17 + batch_0_4_9_15 + batch_0_4_10_15 = 1
 order_1: batch_1 + batch_1_9_18 + batch_1_6_13 + batch_1_5_14 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_16_17 + batch_3_5_14_16 + batch_3_15_16_18
   + batch_3_9_15_16 = 1
 order_4: batch_0_4_10_17 + batch_0_4_9_15 + batch_0_4_10_15 = 1
 order_5: batch_3_5_14_16 + batch_5_14_15_18 + batch_5_14_17 + batch_1_5_14
   + batch_5_6_13_14 = 1
 order_6: batch_1_6_13 + batch_6_13_17 + batch_5_6_13_14 + batch_6_10_13_15
   = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8_12_15_19 = 1
 order_9: batch_9 + batch_1_9_18 + batch_0_4_9_15 + batch_3_9_15_16 = 1
 order_10: batch_10 + batch_0_4_10_17 + batch_0_4_10_15 + batch_6_10_13_15
   = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_8_12_15_19 = 1
 order_13: batch_1_6_13 + batch_6_13_17 + batch_5_6_13_14
   + batch_6_10_13_15 = 1
 order_14: batch_3_5_14_16 + batch_5_14_15_18 + batch_5_14_17
   + batch_1_5_14 + batch_5_6_13_14 = 1
 order_15: batch_15 + batch_8_12_15_19 + batch_5_14_15_18 + batch_0_4_9_15
   + batch_0_4_10_15 + batch_3_15_16_18 + batch_3_9_15_16
   + batch_6_10_13_15 = 1
 order_16: batch_3_16_17 + batch_3_5_14_16 + batch_3_15_16_18
   + batch_3_9_15_16 = 1
 order_17: batch_17 + batch_0_4_10_17 + batch_3_16_17 + batch_5_14_17
   + batch_6_13_17 = 1
 order_18: batch_18 + batch_1_9_18 + batch_5_14_15_18 + batch_3_15_16_18
   = 1
 order_19: batch_8_12_15_19 = 1
Bounds
End
