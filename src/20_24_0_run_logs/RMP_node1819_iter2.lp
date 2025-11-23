\ Model JOBPRP_RMP_1819
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xd1f3c6bb63af4024
Minimize
  98 batch_1 + 91.2 batch_5 + 89.6 batch_12 + 65.2 batch_14 + 74.8 batch_15
   + 89.2 batch_17 + 77.2 batch_18 + 123.2 batch_1_17_18
   + 115.2 batch_2_7_11 + 118 batch_3_12_16_19 + 109.2 batch_8_9_14_18
   + 121.2 batch_1_8_9 + 129.2 batch_5_12_17 + 133.2 batch_1_15_17
   + 123.2 batch_5_15_17 + 127.2 batch_0_4_5_10 + 131.2 batch_1_14_15
   + 115.2 batch_0_4_10_15 + 103.2 batch_6_13_18 + 121.2 batch_3_5_16_19
   + 135.2 batch_5_6_13_15 + 117.2 batch_1_14_17 + 120 batch_1_6_13
   + 113.2 batch_6_13_17
Subject To
 order_0: batch_0_4_5_10 + batch_0_4_10_15 = 1
 order_1: batch_1 + batch_1_17_18 + batch_1_8_9 + batch_1_15_17
   + batch_1_14_15 + batch_1_14_17 + batch_1_6_13 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16_19 + batch_3_5_16_19 = 1
 order_4: batch_0_4_5_10 + batch_0_4_10_15 = 1
 order_5: batch_5 + batch_5_12_17 + batch_5_15_17 + batch_0_4_5_10
   + batch_3_5_16_19 + batch_5_6_13_15 = 1
 order_6: batch_6_13_18 + batch_5_6_13_15 + batch_1_6_13 + batch_6_13_17
   = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8_9_14_18 + batch_1_8_9 = 1
 order_9: batch_8_9_14_18 + batch_1_8_9 = 1
 order_10: batch_0_4_5_10 + batch_0_4_10_15 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_3_12_16_19 + batch_5_12_17 = 1
 order_13: batch_6_13_18 + batch_5_6_13_15 + batch_1_6_13 + batch_6_13_17
   = 1
 order_14: batch_14 + batch_8_9_14_18 + batch_1_14_15 + batch_1_14_17 = 1
 order_15: batch_15 + batch_1_15_17 + batch_5_15_17 + batch_1_14_15
   + batch_0_4_10_15 + batch_5_6_13_15 = 1
 order_16: batch_3_12_16_19 + batch_3_5_16_19 = 1
 order_17: batch_17 + batch_1_17_18 + batch_5_12_17 + batch_1_15_17
   + batch_5_15_17 + batch_1_14_17 + batch_6_13_17 = 1
 order_18: batch_18 + batch_1_17_18 + batch_8_9_14_18 + batch_6_13_18 = 1
 order_19: batch_3_12_16_19 + batch_3_5_16_19 = 1
Bounds
End
