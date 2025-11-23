\ Model JOBPRP_RMP_1252
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xfa6c72c5d343e018
Minimize
  98 batch_1 + 91.2 batch_5 + 77.2 batch_9 + 78.4 batch_10 + 89.6 batch_12
   + 65.2 batch_14 + 74.8 batch_15 + 77.2 batch_18 + 115.2 batch_2_7_11
   + 109.2 batch_6_9_13_18 + 118 batch_3_12_16_19 + 117.2 batch_1_5_18
   + 119.2 batch_1_5_9 + 117.2 batch_5_8_17 + 119.2 batch_1_10_14
   + 120 batch_1_6_13 + 127.2 batch_6_12_13_14 + 141.2 batch_1_10_12
   + 127.2 batch_1_5_10 + 119.2 batch_6_10_13_14 + 127.2 batch_0_4_12_15
   + 129.2 batch_0_1_4_14 + 137.2 batch_0_1_4_15 + 133.2 batch_0_4_9_14_15
   + 131.2 batch_0_4_14_15_18 + 121.2 batch_8_10_17
Subject To
 order_0: batch_0_4_12_15 + batch_0_1_4_14 + batch_0_1_4_15
   + batch_0_4_9_14_15 + batch_0_4_14_15_18 = 1
 order_1: batch_1 + batch_1_5_18 + batch_1_5_9 + batch_1_10_14
   + batch_1_6_13 + batch_1_10_12 + batch_1_5_10 + batch_0_1_4_14
   + batch_0_1_4_15 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16_19 = 1
 order_4: batch_0_4_12_15 + batch_0_1_4_14 + batch_0_1_4_15
   + batch_0_4_9_14_15 + batch_0_4_14_15_18 = 1
 order_5: batch_5 + batch_1_5_18 + batch_1_5_9 + batch_5_8_17
   + batch_1_5_10 = 1
 order_6: batch_6_9_13_18 + batch_1_6_13 + batch_6_12_13_14
   + batch_6_10_13_14 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_5_8_17 + batch_8_10_17 = 1
 order_9: batch_9 + batch_6_9_13_18 + batch_1_5_9 + batch_0_4_9_14_15 = 1
 order_10: batch_10 + batch_1_10_14 + batch_1_10_12 + batch_1_5_10
   + batch_6_10_13_14 + batch_8_10_17 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_3_12_16_19 + batch_6_12_13_14 + batch_1_10_12
   + batch_0_4_12_15 = 1
 order_13: batch_6_9_13_18 + batch_1_6_13 + batch_6_12_13_14
   + batch_6_10_13_14 = 1
 order_14: batch_14 + batch_1_10_14 + batch_6_12_13_14 + batch_6_10_13_14
   + batch_0_1_4_14 + batch_0_4_9_14_15 + batch_0_4_14_15_18 = 1
 order_15: batch_15 + batch_0_4_12_15 + batch_0_1_4_15 + batch_0_4_9_14_15
   + batch_0_4_14_15_18 = 1
 order_16: batch_3_12_16_19 = 1
 order_17: batch_5_8_17 + batch_8_10_17 = 1
 order_18: batch_18 + batch_6_9_13_18 + batch_1_5_18 + batch_0_4_14_15_18
   = 1
 order_19: batch_3_12_16_19 = 1
Bounds
End
