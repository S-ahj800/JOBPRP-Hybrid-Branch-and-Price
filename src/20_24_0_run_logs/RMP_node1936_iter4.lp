\ Model JOBPRP_RMP_1936
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xcc3d248206d3b162
Minimize
  89.2 batch_6 + 72.4 batch_8 + 77.2 batch_9 + 77.2 batch_18 + 61.2 batch_19
   + 115.2 batch_2_7_11 + 127.2 batch_1_10_17 + 117.2 batch_0_4_14_15_16
   + 123.2 batch_3_5_6 + 121.2 batch_6_12_13 + 107.2 batch_8_9_18_19
   + 122 batch_9_12_13_19 + 107.2 batch_6_9_18 + 115.2 batch_3_5_18
   + 109.2 batch_3_5_19 + 125.2 batch_3_5_8 + 136 batch_12_13_18_19
Subject To
 order_0: batch_0_4_14_15_16 = 1
 order_1: batch_1_10_17 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_5_6 + batch_3_5_18 + batch_3_5_19 + batch_3_5_8 = 1
 order_4: batch_0_4_14_15_16 = 1
 order_5: batch_3_5_6 + batch_3_5_18 + batch_3_5_19 + batch_3_5_8 = 1
 order_6: batch_6 + batch_3_5_6 + batch_6_12_13 + batch_6_9_18 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_8_9_18_19 + batch_3_5_8 = 1
 order_9: batch_9 + batch_8_9_18_19 + batch_9_12_13_19 + batch_6_9_18 = 1
 order_10: batch_1_10_17 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_6_12_13 + batch_9_12_13_19 + batch_12_13_18_19 = 1
 order_13: batch_6_12_13 + batch_9_12_13_19 + batch_12_13_18_19 = 1
 order_14: batch_0_4_14_15_16 = 1
 order_15: batch_0_4_14_15_16 = 1
 order_16: batch_0_4_14_15_16 = 1
 order_17: batch_1_10_17 = 1
 order_18: batch_18 + batch_8_9_18_19 + batch_6_9_18 + batch_3_5_18
   + batch_12_13_18_19 = 1
 order_19: batch_19 + batch_8_9_18_19 + batch_9_12_13_19 + batch_3_5_19
   + batch_12_13_18_19 = 1
Bounds
End
