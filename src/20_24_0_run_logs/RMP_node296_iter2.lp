\ Model JOBPRP_RMP_296
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xcdf5313f607a6d7d
Minimize
  77.2 batch_9 + 89.6 batch_12 + 77.2 batch_18 + 61.2 batch_19
   + 115.2 batch_2_7_11 + 119.2 batch_0_4_15_17 + 109.2 batch_6_8_13_19
   + 123.2 batch_1_9_10 + 125.2 batch_3_5_14_16 + 132 batch_9_12_18_19
   + 141.2 batch_1_10_12 + 122 batch_3_9_16 + 121.2 batch_5_9_14_18
Subject To
 order_0: batch_0_4_15_17 = 1
 order_1: batch_1_9_10 + batch_1_10_12 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_5_14_16 + batch_3_9_16 = 1
 order_4: batch_0_4_15_17 = 1
 order_5: batch_3_5_14_16 + batch_5_9_14_18 = 1
 order_6: batch_6_8_13_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_6_8_13_19 = 1
 order_9: batch_9 + batch_1_9_10 + batch_9_12_18_19 + batch_3_9_16
   + batch_5_9_14_18 = 1
 order_10: batch_1_9_10 + batch_1_10_12 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_9_12_18_19 + batch_1_10_12 = 1
 order_13: batch_6_8_13_19 = 1
 order_14: batch_3_5_14_16 + batch_5_9_14_18 = 1
 order_15: batch_0_4_15_17 = 1
 order_16: batch_3_5_14_16 + batch_3_9_16 = 1
 order_17: batch_0_4_15_17 = 1
 order_18: batch_18 + batch_9_12_18_19 + batch_5_9_14_18 = 1
 order_19: batch_19 + batch_6_8_13_19 + batch_9_12_18_19 = 1
Bounds
End
