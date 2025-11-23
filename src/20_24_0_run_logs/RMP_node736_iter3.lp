\ Model JOBPRP_RMP_736
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xcf4ac07fd9a4d920
Minimize
  98 batch_1 + 77.2 batch_9 + 78.4 batch_10 + 89.6 batch_12 + 77.2 batch_18
   + 115.2 batch_2_7_11 + 118 batch_3_12_16_19 + 119.2 batch_0_4_15_17
   + 111.2 batch_1_9_18 + 135.2 batch_0_4_10_12 + 120 batch_1_6_13
   + 125.2 batch_6_10_13_18 + 122 batch_3_9_16_19 + 125.2 batch_5_8_9_14
   + 132 batch_0_4_9_10 + 136 batch_1_9_12 + 125.2 batch_10_15_17
   + 127.2 batch_0_4_10_18 + 123.2 batch_5_8_14_18
Subject To
 order_0: batch_0_4_15_17 + batch_0_4_10_12 + batch_0_4_9_10
   + batch_0_4_10_18 = 1
 order_1: batch_1 + batch_1_9_18 + batch_1_6_13 + batch_1_9_12 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16_19 + batch_3_9_16_19 = 1
 order_4: batch_0_4_15_17 + batch_0_4_10_12 + batch_0_4_9_10
   + batch_0_4_10_18 = 1
 order_5: batch_5_8_9_14 + batch_5_8_14_18 = 1
 order_6: batch_1_6_13 + batch_6_10_13_18 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_5_8_9_14 + batch_5_8_14_18 = 1
 order_9: batch_9 + batch_1_9_18 + batch_3_9_16_19 + batch_5_8_9_14
   + batch_0_4_9_10 + batch_1_9_12 = 1
 order_10: batch_10 + batch_0_4_10_12 + batch_6_10_13_18 + batch_0_4_9_10
   + batch_10_15_17 + batch_0_4_10_18 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_3_12_16_19 + batch_0_4_10_12 + batch_1_9_12
   = 1
 order_13: batch_1_6_13 + batch_6_10_13_18 = 1
 order_14: batch_5_8_9_14 + batch_5_8_14_18 = 1
 order_15: batch_0_4_15_17 + batch_10_15_17 = 1
 order_16: batch_3_12_16_19 + batch_3_9_16_19 = 1
 order_17: batch_0_4_15_17 + batch_10_15_17 = 1
 order_18: batch_18 + batch_1_9_18 + batch_6_10_13_18 + batch_0_4_10_18
   + batch_5_8_14_18 = 1
 order_19: batch_3_12_16_19 + batch_3_9_16_19 = 1
Bounds
End
