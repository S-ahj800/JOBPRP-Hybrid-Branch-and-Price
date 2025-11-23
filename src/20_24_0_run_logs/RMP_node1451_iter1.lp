\ Model JOBPRP_RMP_1451
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xcc3d248206d3b162
Minimize
  98 batch_1 + 72.4 batch_8 + 78.4 batch_10 + 65.2 batch_14 + 89.2 batch_17
   + 77.2 batch_18 + 123.2 batch_1_17_18 + 105.6 batch_3_12_16
   + 115.2 batch_2_7_11 + 111.2 batch_6_9_13_14 + 117.2 batch_1_14_17
   + 121.2 batch_0_4_5_8 + 123.2 batch_6_9_10_13 + 130 batch_1_15_18_19
   + 125.2 batch_8_10_15_19 + 109.2 batch_10_14_18
   + 141.2 batch_10_14_15_18_19
Subject To
 order_0: batch_0_4_5_8 = 1
 order_1: batch_1 + batch_1_17_18 + batch_1_14_17 + batch_1_15_18_19 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16 = 1
 order_4: batch_0_4_5_8 = 1
 order_5: batch_0_4_5_8 = 1
 order_6: batch_6_9_13_14 + batch_6_9_10_13 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_0_4_5_8 + batch_8_10_15_19 = 1
 order_9: batch_6_9_13_14 + batch_6_9_10_13 = 1
 order_10: batch_10 + batch_6_9_10_13 + batch_8_10_15_19 + batch_10_14_18
   + batch_10_14_15_18_19 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_12_16 = 1
 order_13: batch_6_9_13_14 + batch_6_9_10_13 = 1
 order_14: batch_14 + batch_6_9_13_14 + batch_1_14_17 + batch_10_14_18
   + batch_10_14_15_18_19 = 1
 order_15: batch_1_15_18_19 + batch_8_10_15_19 + batch_10_14_15_18_19 = 1
 order_16: batch_3_12_16 = 1
 order_17: batch_17 + batch_1_17_18 + batch_1_14_17 = 1
 order_18: batch_18 + batch_1_17_18 + batch_1_15_18_19 + batch_10_14_18
   + batch_10_14_15_18_19 = 1
 order_19: batch_1_15_18_19 + batch_8_10_15_19 + batch_10_14_15_18_19 = 1
Bounds
End
