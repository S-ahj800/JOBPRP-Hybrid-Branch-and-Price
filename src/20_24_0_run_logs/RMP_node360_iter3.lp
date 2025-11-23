\ Model JOBPRP_RMP_360
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x6af833475bea50bb
Minimize
  72.4 batch_8 + 78.4 batch_10 + 89.6 batch_12 + 61.2 batch_19
   + 115.2 batch_2_7_11 + 109.2 batch_6_9_13_18 + 123.2 batch_0_4_8_17
   + 121.2 batch_0_4_10_17 + 125.2 batch_3_5_14_16 + 122.4 batch_8_10_12
   + 141.2 batch_1_12_15 + 141.2 batch_1_8_15 + 129.2 batch_1_15_19
   + 125.2 batch_0_4_17_19 + 105.2 batch_8_10_19
Subject To
 order_0: batch_0_4_8_17 + batch_0_4_10_17 + batch_0_4_17_19 = 1
 order_1: batch_1_12_15 + batch_1_8_15 + batch_1_15_19 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_5_14_16 = 1
 order_4: batch_0_4_8_17 + batch_0_4_10_17 + batch_0_4_17_19 = 1
 order_5: batch_3_5_14_16 = 1
 order_6: batch_6_9_13_18 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_0_4_8_17 + batch_8_10_12 + batch_1_8_15
   + batch_8_10_19 = 1
 order_9: batch_6_9_13_18 = 1
 order_10: batch_10 + batch_0_4_10_17 + batch_8_10_12 + batch_8_10_19 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_8_10_12 + batch_1_12_15 = 1
 order_13: batch_6_9_13_18 = 1
 order_14: batch_3_5_14_16 = 1
 order_15: batch_1_12_15 + batch_1_8_15 + batch_1_15_19 = 1
 order_16: batch_3_5_14_16 = 1
 order_17: batch_0_4_8_17 + batch_0_4_10_17 + batch_0_4_17_19 = 1
 order_18: batch_6_9_13_18 = 1
 order_19: batch_19 + batch_1_15_19 + batch_0_4_17_19 + batch_8_10_19 = 1
Bounds
End
