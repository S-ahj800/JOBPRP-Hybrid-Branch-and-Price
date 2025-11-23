\ Model JOBPRP_RMP_760
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x67d5cf0eba23c05e
Minimize
  78.4 batch_10 + 77.2 batch_18 + 61.2 batch_19 + 105.6 batch_3_12_16
   + 115.2 batch_2_7_11 + 123.2 batch_5_14_15_17 + 119.2 batch_0_4_15_17
   + 109.2 batch_6_8_13_19 + 121.2 batch_0_4_5_14_19 + 111.2 batch_1_9_18
   + 123.2 batch_5_10_14_18 + 133.2 batch_10_15_17_19
Subject To
 order_0: batch_0_4_15_17 + batch_0_4_5_14_19 = 1
 order_1: batch_1_9_18 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16 = 1
 order_4: batch_0_4_15_17 + batch_0_4_5_14_19 = 1
 order_5: batch_5_14_15_17 + batch_0_4_5_14_19 + batch_5_10_14_18 = 1
 order_6: batch_6_8_13_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_6_8_13_19 = 1
 order_9: batch_1_9_18 = 1
 order_10: batch_10 + batch_5_10_14_18 + batch_10_15_17_19 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_12_16 = 1
 order_13: batch_6_8_13_19 = 1
 order_14: batch_5_14_15_17 + batch_0_4_5_14_19 + batch_5_10_14_18 = 1
 order_15: batch_5_14_15_17 + batch_0_4_15_17 + batch_10_15_17_19 = 1
 order_16: batch_3_12_16 = 1
 order_17: batch_5_14_15_17 + batch_0_4_15_17 + batch_10_15_17_19 = 1
 order_18: batch_18 + batch_1_9_18 + batch_5_10_14_18 = 1
 order_19: batch_19 + batch_6_8_13_19 + batch_0_4_5_14_19
   + batch_10_15_17_19 = 1
Bounds
End
