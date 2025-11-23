\ Model JOBPRP_RMP_580
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x3078d13a4d4e60e6
Minimize
  72.4 batch_8 + 78.4 batch_10 + 89.6 batch_12 + 89.2 batch_17
   + 61.2 batch_19 + 115.2 batch_2_7_11 + 109.2 batch_6_9_13_18
   + 137.2 batch_0_1_4_15 + 125.2 batch_3_5_14_16 + 129.2 batch_8_10_12_19
   + 135.2 batch_8_12_17 + 133.2 batch_10_12_17 + 121.2 batch_8_10_17
Subject To
 order_0: batch_0_1_4_15 = 1
 order_1: batch_0_1_4_15 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_5_14_16 = 1
 order_4: batch_0_1_4_15 = 1
 order_5: batch_3_5_14_16 = 1
 order_6: batch_6_9_13_18 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_8_10_12_19 + batch_8_12_17 + batch_8_10_17 = 1
 order_9: batch_6_9_13_18 = 1
 order_10: batch_10 + batch_8_10_12_19 + batch_10_12_17 + batch_8_10_17
   = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_8_10_12_19 + batch_8_12_17 + batch_10_12_17
   = 1
 order_13: batch_6_9_13_18 = 1
 order_14: batch_3_5_14_16 = 1
 order_15: batch_0_1_4_15 = 1
 order_16: batch_3_5_14_16 = 1
 order_17: batch_17 + batch_8_12_17 + batch_10_12_17 + batch_8_10_17 = 1
 order_18: batch_6_9_13_18 = 1
 order_19: batch_19 + batch_8_10_12_19 = 1
Bounds
End
