\ Model JOBPRP_RMP_1256
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x6180786a8dabdc85
Minimize
  91.2 batch_5 + 78.4 batch_10 + 74.8 batch_15 + 77.2 batch_18
   + 61.2 batch_19 + 115.2 batch_2_7_11 + 109.2 batch_6_9_13_18
   + 115.2 batch_0_4_8_14_16 + 121.2 batch_1_17_19 + 133.2 batch_1_15_17
   + 105.2 batch_6_9_13_19 + 118.4 batch_3_10_12 + 114 batch_3_12_19
   + 133.2 batch_5_10_15_19
Subject To
 order_0: batch_0_4_8_14_16 = 1
 order_1: batch_1_17_19 + batch_1_15_17 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_10_12 + batch_3_12_19 = 1
 order_4: batch_0_4_8_14_16 = 1
 order_5: batch_5 + batch_5_10_15_19 = 1
 order_6: batch_6_9_13_18 + batch_6_9_13_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_0_4_8_14_16 = 1
 order_9: batch_6_9_13_18 + batch_6_9_13_19 = 1
 order_10: batch_10 + batch_3_10_12 + batch_5_10_15_19 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_10_12 + batch_3_12_19 = 1
 order_13: batch_6_9_13_18 + batch_6_9_13_19 = 1
 order_14: batch_0_4_8_14_16 = 1
 order_15: batch_15 + batch_1_15_17 + batch_5_10_15_19 = 1
 order_16: batch_0_4_8_14_16 = 1
 order_17: batch_1_17_19 + batch_1_15_17 = 1
 order_18: batch_18 + batch_6_9_13_18 = 1
 order_19: batch_19 + batch_1_17_19 + batch_6_9_13_19 + batch_3_12_19
   + batch_5_10_15_19 = 1
Bounds
End
