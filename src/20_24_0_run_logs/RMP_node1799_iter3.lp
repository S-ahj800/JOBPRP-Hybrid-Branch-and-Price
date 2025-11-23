\ Model JOBPRP_RMP_1799
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xcd7bd34248be4424
Minimize
  91.2 batch_5 + 72.4 batch_8 + 74.8 batch_15 + 77.2 batch_18
   + 115.2 batch_2_7_11 + 113.2 batch_6_13_14_17 + 118 batch_3_12_16_19
   + 115.2 batch_0_4_10_15 + 119.2 batch_0_4_8_10 + 111.2 batch_1_9_18
   + 123.2 batch_5_8_18 + 129.2 batch_5_8_15 + 135.2 batch_1_9_15
   + 107.9999894666667 batch_1_9 + 107.2 batch_5_8
Subject To
 order_0: batch_0_4_10_15 + batch_0_4_8_10 = 1
 order_1: batch_1_9_18 + batch_1_9_15 + batch_1_9 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16_19 = 1
 order_4: batch_0_4_10_15 + batch_0_4_8_10 = 1
 order_5: batch_5 + batch_5_8_18 + batch_5_8_15 + batch_5_8 = 1
 order_6: batch_6_13_14_17 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_0_4_8_10 + batch_5_8_18 + batch_5_8_15
   + batch_5_8 = 1
 order_9: batch_1_9_18 + batch_1_9_15 + batch_1_9 = 1
 order_10: batch_0_4_10_15 + batch_0_4_8_10 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_12_16_19 = 1
 order_13: batch_6_13_14_17 = 1
 order_14: batch_6_13_14_17 = 1
 order_15: batch_15 + batch_0_4_10_15 + batch_5_8_15 + batch_1_9_15 = 1
 order_16: batch_3_12_16_19 = 1
 order_17: batch_6_13_14_17 = 1
 order_18: batch_18 + batch_1_9_18 + batch_5_8_18 = 1
 order_19: batch_3_12_16_19 = 1
Bounds
End
