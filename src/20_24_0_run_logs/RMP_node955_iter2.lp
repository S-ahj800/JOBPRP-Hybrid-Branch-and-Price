\ Model JOBPRP_RMP_955
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x1b9c1fe19afc3358
Minimize
  98 batch_1 + 72.4 batch_8 + 77.2 batch_9 + 78.4 batch_10 + 74.8 batch_15
   + 89.2 batch_17 + 77.2 batch_18 + 115.2 batch_2_7_11
   + 130.4 batch_3_10_15_16 + 119.2 batch_5_8_10_14 + 121.2 batch_1_8_9
   + 132 batch_6_8_13_15 + 126 batch_8_12_15_19 + 123.2 batch_0_4_8_17
   + 111.2 batch_1_9_18 + 121.2 batch_0_4_10_17 + 120 batch_1_6_13
   + 121.2 batch_1_8_18 + 131.2 batch_3_16_17 + 125.2 batch_3_5_14_16
   + 124 batch_6_12_13_19 + 137.2 batch_5_14_15_18 + 111.2 batch_5_14_17
   + 113.2 batch_6_13_17 + 117.2 batch_1_5_14 + 131.2 batch_0_4_9_15
Subject To
 order_0: batch_0_4_8_17 + batch_0_4_10_17 + batch_0_4_9_15 = 1
 order_1: batch_1 + batch_1_8_9 + batch_1_9_18 + batch_1_6_13
   + batch_1_8_18 + batch_1_5_14 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_10_15_16 + batch_3_16_17 + batch_3_5_14_16 = 1
 order_4: batch_0_4_8_17 + batch_0_4_10_17 + batch_0_4_9_15 = 1
 order_5: batch_5_8_10_14 + batch_3_5_14_16 + batch_5_14_15_18
   + batch_5_14_17 + batch_1_5_14 = 1
 order_6: batch_6_8_13_15 + batch_1_6_13 + batch_6_12_13_19 + batch_6_13_17
   = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_5_8_10_14 + batch_1_8_9 + batch_6_8_13_15
   + batch_8_12_15_19 + batch_0_4_8_17 + batch_1_8_18 = 1
 order_9: batch_9 + batch_1_8_9 + batch_1_9_18 + batch_0_4_9_15 = 1
 order_10: batch_10 + batch_3_10_15_16 + batch_5_8_10_14 + batch_0_4_10_17
   = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_8_12_15_19 + batch_6_12_13_19 = 1
 order_13: batch_6_8_13_15 + batch_1_6_13 + batch_6_12_13_19
   + batch_6_13_17 = 1
 order_14: batch_5_8_10_14 + batch_3_5_14_16 + batch_5_14_15_18
   + batch_5_14_17 + batch_1_5_14 = 1
 order_15: batch_15 + batch_3_10_15_16 + batch_6_8_13_15 + batch_8_12_15_19
   + batch_5_14_15_18 + batch_0_4_9_15 = 1
 order_16: batch_3_10_15_16 + batch_3_16_17 + batch_3_5_14_16 = 1
 order_17: batch_17 + batch_0_4_8_17 + batch_0_4_10_17 + batch_3_16_17
   + batch_5_14_17 + batch_6_13_17 = 1
 order_18: batch_18 + batch_1_9_18 + batch_1_8_18 + batch_5_14_15_18 = 1
 order_19: batch_8_12_15_19 + batch_6_12_13_19 = 1
Bounds
End
