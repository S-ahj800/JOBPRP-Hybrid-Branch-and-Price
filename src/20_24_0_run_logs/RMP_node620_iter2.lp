\ Model JOBPRP_RMP_620
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x6177fd6f77e365e
Minimize
  98 batch_1 + 78.4 batch_10 + 61.2 batch_19 + 105.6 batch_3_12_16
   + 115.2 batch_2_7_11 + 109.2 batch_6_9_13_18 + 118 batch_3_12_16_19
   + 119.2 batch_0_4_15_17 + 119.2 batch_5_8_10_14
   + 133.2 batch_10_15_17_19 + 125.2 batch_10_15_17 + 131.2 batch_0_1_4_19
Subject To
 order_0: batch_0_4_15_17 + batch_0_1_4_19 = 1
 order_1: batch_1 + batch_0_1_4_19 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16 + batch_3_12_16_19 = 1
 order_4: batch_0_4_15_17 + batch_0_1_4_19 = 1
 order_5: batch_5_8_10_14 = 1
 order_6: batch_6_9_13_18 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_5_8_10_14 = 1
 order_9: batch_6_9_13_18 = 1
 order_10: batch_10 + batch_5_8_10_14 + batch_10_15_17_19 + batch_10_15_17
   = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_12_16 + batch_3_12_16_19 = 1
 order_13: batch_6_9_13_18 = 1
 order_14: batch_5_8_10_14 = 1
 order_15: batch_0_4_15_17 + batch_10_15_17_19 + batch_10_15_17 = 1
 order_16: batch_3_12_16 + batch_3_12_16_19 = 1
 order_17: batch_0_4_15_17 + batch_10_15_17_19 + batch_10_15_17 = 1
 order_18: batch_6_9_13_18 = 1
 order_19: batch_19 + batch_3_12_16_19 + batch_10_15_17_19 + batch_0_1_4_19
   = 1
Bounds
End
