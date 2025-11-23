\ Model JOBPRP_RMP_876
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xd2927b26334b953b
Minimize
  78.4 batch_10 + 74.8 batch_15 + 89.2 batch_17 + 77.2 batch_18
   + 115.2 batch_2_7_11 + 118 batch_3_12_16_19 + 123.2 batch_6_9_10_13
   + 121.2 batch_0_4_10_17 + 121.2 batch_1_8_18 + 137.2 batch_5_14_15_18
   + 129.2 batch_5_10_14_15 + 130 batch_6_9_13_15 + 115.2 batch_0_4_10_15
   + 123.2 batch_5_10_14_18 + 117.2 batch_0_4_5_14
Subject To
 order_0: batch_0_4_10_17 + batch_0_4_10_15 + batch_0_4_5_14 = 1
 order_1: batch_1_8_18 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16_19 = 1
 order_4: batch_0_4_10_17 + batch_0_4_10_15 + batch_0_4_5_14 = 1
 order_5: batch_5_14_15_18 + batch_5_10_14_15 + batch_5_10_14_18
   + batch_0_4_5_14 = 1
 order_6: batch_6_9_10_13 + batch_6_9_13_15 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_1_8_18 = 1
 order_9: batch_6_9_10_13 + batch_6_9_13_15 = 1
 order_10: batch_10 + batch_6_9_10_13 + batch_0_4_10_17 + batch_5_10_14_15
   + batch_0_4_10_15 + batch_5_10_14_18 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_12_16_19 = 1
 order_13: batch_6_9_10_13 + batch_6_9_13_15 = 1
 order_14: batch_5_14_15_18 + batch_5_10_14_15 + batch_5_10_14_18
   + batch_0_4_5_14 = 1
 order_15: batch_15 + batch_5_14_15_18 + batch_5_10_14_15 + batch_6_9_13_15
   + batch_0_4_10_15 = 1
 order_16: batch_3_12_16_19 = 1
 order_17: batch_17 + batch_0_4_10_17 = 1
 order_18: batch_18 + batch_1_8_18 + batch_5_14_15_18 + batch_5_10_14_18
   = 1
 order_19: batch_3_12_16_19 = 1
Bounds
End
