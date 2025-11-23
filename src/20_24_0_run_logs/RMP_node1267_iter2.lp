\ Model JOBPRP_RMP_1267
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x8a19e49c8586eda9
Minimize
  98 batch_1 + 91.2 batch_5 + 78.4 batch_10 + 89.6 batch_12 + 65.2 batch_14
   + 74.8 batch_15 + 77.2 batch_18 + 115.2 batch_2_7_11
   + 109.2 batch_6_9_13_18 + 118 batch_3_12_16_19 + 117.2 batch_5_8_17
   + 127.2 batch_0_4_12_15 + 137.2 batch_0_1_4_15 + 121.2 batch_8_10_17
   + 123.2 batch_3_10_16_19 + 123.2 batch_6_9_10_13 + 131.2 batch_1_14_15
   + 111.2 batch_6_9_13_14 + 139.2 batch_5_10_15_18 + 111.2 batch_1_14_18
   + 121.2 batch_3_5_16_19 + 139.2 batch_10_12_14_15 + 131.2 batch_0_4_5_18
Subject To
 order_0: batch_0_4_12_15 + batch_0_1_4_15 + batch_0_4_5_18 = 1
 order_1: batch_1 + batch_0_1_4_15 + batch_1_14_15 + batch_1_14_18 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16_19 + batch_3_10_16_19 + batch_3_5_16_19 = 1
 order_4: batch_0_4_12_15 + batch_0_1_4_15 + batch_0_4_5_18 = 1
 order_5: batch_5 + batch_5_8_17 + batch_5_10_15_18 + batch_3_5_16_19
   + batch_0_4_5_18 = 1
 order_6: batch_6_9_13_18 + batch_6_9_10_13 + batch_6_9_13_14 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_5_8_17 + batch_8_10_17 = 1
 order_9: batch_6_9_13_18 + batch_6_9_10_13 + batch_6_9_13_14 = 1
 order_10: batch_10 + batch_8_10_17 + batch_3_10_16_19 + batch_6_9_10_13
   + batch_5_10_15_18 + batch_10_12_14_15 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_3_12_16_19 + batch_0_4_12_15
   + batch_10_12_14_15 = 1
 order_13: batch_6_9_13_18 + batch_6_9_10_13 + batch_6_9_13_14 = 1
 order_14: batch_14 + batch_1_14_15 + batch_6_9_13_14 + batch_1_14_18
   + batch_10_12_14_15 = 1
 order_15: batch_15 + batch_0_4_12_15 + batch_0_1_4_15 + batch_1_14_15
   + batch_5_10_15_18 + batch_10_12_14_15 = 1
 order_16: batch_3_12_16_19 + batch_3_10_16_19 + batch_3_5_16_19 = 1
 order_17: batch_5_8_17 + batch_8_10_17 = 1
 order_18: batch_18 + batch_6_9_13_18 + batch_5_10_15_18 + batch_1_14_18
   + batch_0_4_5_18 = 1
 order_19: batch_3_12_16_19 + batch_3_10_16_19 + batch_3_5_16_19 = 1
Bounds
End
