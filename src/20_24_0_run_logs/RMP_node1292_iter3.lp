\ Model JOBPRP_RMP_1292
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xb89f21e9966c1696
Minimize
  98 batch_1 + 91.2 batch_5 + 77.2 batch_9 + 78.4 batch_10 + 65.2 batch_14
   + 74.8 batch_15 + 77.2 batch_18 + 61.2 batch_19 + 105.6 batch_3_12_16
   + 115.2 batch_2_7_11 + 109.2 batch_6_9_13_18 + 117.2 batch_1_5_18
   + 105.2 batch_6_9_13_19 + 119.2 batch_1_5_9 + 117.2 batch_5_8_17
   + 119.2 batch_1_10_14 + 129.2 batch_8_10_17_19 + 127.2 batch_1_5_10
   + 131.2 batch_0_4_5_15_19 + 119.2 batch_6_10_13_14
   + 138 batch_9_14_15_18_19 + 133.2 batch_0_4_9_14_15
   + 131.2 batch_0_4_14_15_18 + 134 batch_6_13_14_15_19
   + 121.2 batch_0_4_9_14_19 + 109.2 batch_0_4_14_15 + 127.2 batch_0_4_6_13
   + 135.2 batch_1_10_15
Subject To
 order_0: batch_0_4_5_15_19 + batch_0_4_9_14_15 + batch_0_4_14_15_18
   + batch_0_4_9_14_19 + batch_0_4_14_15 + batch_0_4_6_13 = 1
 order_1: batch_1 + batch_1_5_18 + batch_1_5_9 + batch_1_10_14
   + batch_1_5_10 + batch_1_10_15 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16 = 1
 order_4: batch_0_4_5_15_19 + batch_0_4_9_14_15 + batch_0_4_14_15_18
   + batch_0_4_9_14_19 + batch_0_4_14_15 + batch_0_4_6_13 = 1
 order_5: batch_5 + batch_1_5_18 + batch_1_5_9 + batch_5_8_17
   + batch_1_5_10 + batch_0_4_5_15_19 = 1
 order_6: batch_6_9_13_18 + batch_6_9_13_19 + batch_6_10_13_14
   + batch_6_13_14_15_19 + batch_0_4_6_13 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_5_8_17 + batch_8_10_17_19 = 1
 order_9: batch_9 + batch_6_9_13_18 + batch_6_9_13_19 + batch_1_5_9
   + batch_9_14_15_18_19 + batch_0_4_9_14_15 + batch_0_4_9_14_19 = 1
 order_10: batch_10 + batch_1_10_14 + batch_8_10_17_19 + batch_1_5_10
   + batch_6_10_13_14 + batch_1_10_15 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_12_16 = 1
 order_13: batch_6_9_13_18 + batch_6_9_13_19 + batch_6_10_13_14
   + batch_6_13_14_15_19 + batch_0_4_6_13 = 1
 order_14: batch_14 + batch_1_10_14 + batch_6_10_13_14
   + batch_9_14_15_18_19 + batch_0_4_9_14_15 + batch_0_4_14_15_18
   + batch_6_13_14_15_19 + batch_0_4_9_14_19 + batch_0_4_14_15 = 1
 order_15: batch_15 + batch_0_4_5_15_19 + batch_9_14_15_18_19
   + batch_0_4_9_14_15 + batch_0_4_14_15_18 + batch_6_13_14_15_19
   + batch_0_4_14_15 + batch_1_10_15 = 1
 order_16: batch_3_12_16 = 1
 order_17: batch_5_8_17 + batch_8_10_17_19 = 1
 order_18: batch_18 + batch_6_9_13_18 + batch_1_5_18 + batch_9_14_15_18_19
   + batch_0_4_14_15_18 = 1
 order_19: batch_19 + batch_6_9_13_19 + batch_8_10_17_19
   + batch_0_4_5_15_19 + batch_9_14_15_18_19 + batch_6_13_14_15_19
   + batch_0_4_9_14_19 = 1
Bounds
End
