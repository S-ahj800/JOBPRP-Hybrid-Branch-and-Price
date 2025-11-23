\ Model JOBPRP_RMP_1916
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xcc3d248206d3b162
Minimize
  91.2 batch_5 + 72.4 batch_8 + 74.8 batch_15 + 77.2 batch_18
   + 61.2 batch_19 + 119.2 batch_0_4_10_14_15 + 105.6 batch_3_12_16
   + 115.2 batch_2_7_11 + 109.2 batch_6_9_13_18 + 133.2 batch_1_15_17
   + 126 batch_0_4_10_14_19 + 121.2 batch_1_17_19 + 123.2 batch_5_8_18_19
   + 111.2 batch_0_4_10_14 + 105.2 batch_6_9_13 + 117.2 batch_1_17
   + 107.2 batch_5_8
Subject To
 order_0: batch_0_4_10_14_15 + batch_0_4_10_14_19 + batch_0_4_10_14 = 1
 order_1: batch_1_15_17 + batch_1_17_19 + batch_1_17 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16 = 1
 order_4: batch_0_4_10_14_15 + batch_0_4_10_14_19 + batch_0_4_10_14 = 1
 order_5: batch_5 + batch_5_8_18_19 + batch_5_8 = 1
 order_6: batch_6_9_13_18 + batch_6_9_13 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_5_8_18_19 + batch_5_8 = 1
 order_9: batch_6_9_13_18 + batch_6_9_13 = 1
 order_10: batch_0_4_10_14_15 + batch_0_4_10_14_19 + batch_0_4_10_14 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_12_16 = 1
 order_13: batch_6_9_13_18 + batch_6_9_13 = 1
 order_14: batch_0_4_10_14_15 + batch_0_4_10_14_19 + batch_0_4_10_14 = 1
 order_15: batch_15 + batch_0_4_10_14_15 + batch_1_15_17 = 1
 order_16: batch_3_12_16 = 1
 order_17: batch_1_15_17 + batch_1_17_19 + batch_1_17 = 1
 order_18: batch_18 + batch_6_9_13_18 + batch_5_8_18_19 = 1
 order_19: batch_19 + batch_0_4_10_14_19 + batch_1_17_19 + batch_5_8_18_19
   = 1
Bounds
End
