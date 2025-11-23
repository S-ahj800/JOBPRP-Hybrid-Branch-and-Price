\ Model JOBPRP_RMP_532
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xccb6827f1e8fdabb
Minimize
  72.4 batch_8 + 77.2 batch_9 + 78.4 batch_10 + 77.2 batch_18
   + 105.6 batch_3_12_16 + 115.2 batch_2_7_11 + 123.2 batch_6_9_10_13
   + 133.2 batch_1_15_17 + 119.2 batch_0_4_8_10 + 107.2 batch_8_9_18
   + 109.2 batch_6_8_13 + 117.2 batch_5_10_14_19 + 117.2 batch_5_14_18_19
   + 115.2 batch_5_9_14_19 + 130 batch_0_4_8_18
Subject To
 order_0: batch_0_4_8_10 + batch_0_4_8_18 = 1
 order_1: batch_1_15_17 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16 = 1
 order_4: batch_0_4_8_10 + batch_0_4_8_18 = 1
 order_5: batch_5_10_14_19 + batch_5_14_18_19 + batch_5_9_14_19 = 1
 order_6: batch_6_9_10_13 + batch_6_8_13 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_0_4_8_10 + batch_8_9_18 + batch_6_8_13
   + batch_0_4_8_18 = 1
 order_9: batch_9 + batch_6_9_10_13 + batch_8_9_18 + batch_5_9_14_19 = 1
 order_10: batch_10 + batch_6_9_10_13 + batch_0_4_8_10 + batch_5_10_14_19
   = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_12_16 = 1
 order_13: batch_6_9_10_13 + batch_6_8_13 = 1
 order_14: batch_5_10_14_19 + batch_5_14_18_19 + batch_5_9_14_19 = 1
 order_15: batch_1_15_17 = 1
 order_16: batch_3_12_16 = 1
 order_17: batch_1_15_17 = 1
 order_18: batch_18 + batch_8_9_18 + batch_5_14_18_19 + batch_0_4_8_18 = 1
 order_19: batch_5_10_14_19 + batch_5_14_18_19 + batch_5_9_14_19 = 1
Bounds
End
