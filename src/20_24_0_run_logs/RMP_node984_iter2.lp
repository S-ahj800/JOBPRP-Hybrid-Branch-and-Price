\ Model JOBPRP_RMP_984
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x5eb21bc14bc149c3
Minimize
  83.6 batch_3 + 91.2 batch_5 + 77.2 batch_9 + 70.4 batch_13 + 74.8 batch_15
   + 61.2 batch_19 + 115.2 batch_2_7_11 + 123.2 batch_0_4_10_15_16
   + 117.2 batch_1_14_17 + 129.2 batch_5_12_18_19 + 125.2 batch_3_6_8
   + 123.2 batch_5_6_8 + 130 batch_6_8_15_19 + 136 batch_9_12_13_18
   + 137.2 batch_3_9_15_19 + 129.2 batch_0_4_10_13_16
Subject To
 order_0: batch_0_4_10_15_16 + batch_0_4_10_13_16 = 1
 order_1: batch_1_14_17 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3 + batch_3_6_8 + batch_3_9_15_19 = 1
 order_4: batch_0_4_10_15_16 + batch_0_4_10_13_16 = 1
 order_5: batch_5 + batch_5_12_18_19 + batch_5_6_8 = 1
 order_6: batch_3_6_8 + batch_5_6_8 + batch_6_8_15_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_3_6_8 + batch_5_6_8 + batch_6_8_15_19 = 1
 order_9: batch_9 + batch_9_12_13_18 + batch_3_9_15_19 = 1
 order_10: batch_0_4_10_15_16 + batch_0_4_10_13_16 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_5_12_18_19 + batch_9_12_13_18 = 1
 order_13: batch_13 + batch_9_12_13_18 + batch_0_4_10_13_16 = 1
 order_14: batch_1_14_17 = 1
 order_15: batch_15 + batch_0_4_10_15_16 + batch_6_8_15_19
   + batch_3_9_15_19 = 1
 order_16: batch_0_4_10_15_16 + batch_0_4_10_13_16 = 1
 order_17: batch_1_14_17 = 1
 order_18: batch_5_12_18_19 + batch_9_12_13_18 = 1
 order_19: batch_19 + batch_5_12_18_19 + batch_6_8_15_19 + batch_3_9_15_19
   = 1
Bounds
End
