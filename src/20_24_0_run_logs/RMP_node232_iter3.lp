\ Model JOBPRP_RMP_232
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x6cc72084ecd0e5b7
Minimize
  77.2 batch_9 + 74.8 batch_15 + 89.2 batch_17 + 77.2 batch_18
   + 115.2 batch_2_7_11 + 109.2 batch_6_9_13_18 + 127.2 batch_1_10_17
   + 119.2 batch_0_4_15_17 + 126 batch_8_12_15_19 + 123.2 batch_1_9_10
   + 125.2 batch_3_5_14_16 + 123.2 batch_5_6_13_14 + 131.2 batch_0_3_4_16
   + 133.2 batch_3_15_16_18 + 129.2 batch_1_10_18 + 124 batch_8_9_12_19
   + 127.2 batch_0_4_6_13 + 117.2 batch_0_4_5_14 + 135.2 batch_1_10_15
Subject To
 order_0: batch_0_4_15_17 + batch_0_3_4_16 + batch_0_4_6_13
   + batch_0_4_5_14 = 1
 order_1: batch_1_10_17 + batch_1_9_10 + batch_1_10_18 + batch_1_10_15 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_5_14_16 + batch_0_3_4_16 + batch_3_15_16_18 = 1
 order_4: batch_0_4_15_17 + batch_0_3_4_16 + batch_0_4_6_13
   + batch_0_4_5_14 = 1
 order_5: batch_3_5_14_16 + batch_5_6_13_14 + batch_0_4_5_14 = 1
 order_6: batch_6_9_13_18 + batch_5_6_13_14 + batch_0_4_6_13 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8_12_15_19 + batch_8_9_12_19 = 1
 order_9: batch_9 + batch_6_9_13_18 + batch_1_9_10 + batch_8_9_12_19 = 1
 order_10: batch_1_10_17 + batch_1_9_10 + batch_1_10_18 + batch_1_10_15
   = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_8_12_15_19 + batch_8_9_12_19 = 1
 order_13: batch_6_9_13_18 + batch_5_6_13_14 + batch_0_4_6_13 = 1
 order_14: batch_3_5_14_16 + batch_5_6_13_14 + batch_0_4_5_14 = 1
 order_15: batch_15 + batch_0_4_15_17 + batch_8_12_15_19 + batch_3_15_16_18
   + batch_1_10_15 = 1
 order_16: batch_3_5_14_16 + batch_0_3_4_16 + batch_3_15_16_18 = 1
 order_17: batch_17 + batch_1_10_17 + batch_0_4_15_17 = 1
 order_18: batch_18 + batch_6_9_13_18 + batch_3_15_16_18 + batch_1_10_18
   = 1
 order_19: batch_8_12_15_19 + batch_8_9_12_19 = 1
Bounds
End
