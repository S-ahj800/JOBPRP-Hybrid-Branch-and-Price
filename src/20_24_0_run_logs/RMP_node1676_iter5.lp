\ Model JOBPRP_RMP_1676
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xb9ddd0a9d856a958
Minimize
  91.2 batch_5 + 89.2 batch_6 + 70.4 batch_13 + 65.2 batch_14
   + 74.8 batch_15 + 77.2 batch_18 + 61.2 batch_19 + 115.2 batch_2_7_11
   + 123.2 batch_0_4_10_15_16 + 117.2 batch_1_14_17 + 124 batch_3_12_13_19
   + 125.2 batch_1_13_17 + 107.2 batch_8_9_13_18 + 137.2 batch_5_6_14_15
   + 123.2 batch_5_6_18_19 + 119.2 batch_5_8_9_13 + 107.2 batch_8_9_18_19
   + 95.2 batch_8_9_13_19 + 133.2 batch_1_15_17 + 123.2 batch_3_12_18
   + 131.2 batch_5_6_15_19 + 101.6 batch_3_12 + 117.2 batch_1_17
   + 115.2 batch_0_4_10_16 + 89.2 batch_8_9 + 123.2 batch_5_6_18
Subject To
 order_0: batch_0_4_10_15_16 + batch_0_4_10_16 = 1
 order_1: batch_1_14_17 + batch_1_13_17 + batch_1_15_17 + batch_1_17 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_13_19 + batch_3_12_18 + batch_3_12 = 1
 order_4: batch_0_4_10_15_16 + batch_0_4_10_16 = 1
 order_5: batch_5 + batch_5_6_14_15 + batch_5_6_18_19 + batch_5_8_9_13
   + batch_5_6_15_19 + batch_5_6_18 = 1
 order_6: batch_6 + batch_5_6_14_15 + batch_5_6_18_19 + batch_5_6_15_19
   + batch_5_6_18 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8_9_13_18 + batch_5_8_9_13 + batch_8_9_18_19
   + batch_8_9_13_19 + batch_8_9 = 1
 order_9: batch_8_9_13_18 + batch_5_8_9_13 + batch_8_9_18_19
   + batch_8_9_13_19 + batch_8_9 = 1
 order_10: batch_0_4_10_15_16 + batch_0_4_10_16 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_12_13_19 + batch_3_12_18 + batch_3_12 = 1
 order_13: batch_13 + batch_3_12_13_19 + batch_1_13_17 + batch_8_9_13_18
   + batch_5_8_9_13 + batch_8_9_13_19 = 1
 order_14: batch_14 + batch_1_14_17 + batch_5_6_14_15 = 1
 order_15: batch_15 + batch_0_4_10_15_16 + batch_5_6_14_15 + batch_1_15_17
   + batch_5_6_15_19 = 1
 order_16: batch_0_4_10_15_16 + batch_0_4_10_16 = 1
 order_17: batch_1_14_17 + batch_1_13_17 + batch_1_15_17 + batch_1_17 = 1
 order_18: batch_18 + batch_8_9_13_18 + batch_5_6_18_19 + batch_8_9_18_19
   + batch_3_12_18 + batch_5_6_18 = 1
 order_19: batch_19 + batch_3_12_13_19 + batch_5_6_18_19 + batch_8_9_18_19
   + batch_8_9_13_19 + batch_5_6_15_19 = 1
Bounds
End
