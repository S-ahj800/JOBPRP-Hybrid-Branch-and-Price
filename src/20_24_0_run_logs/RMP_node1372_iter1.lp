\ Model JOBPRP_RMP_1372
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x7ad51d3c5aef0613
Minimize
  98 batch_1 + 91.2 batch_5 + 65.2 batch_14 + 105.6 batch_3_12_16
   + 115.2 batch_2_7_11 + 109.2 batch_6_9_13_18 + 123.2 batch_0_4_5_17
   + 125.2 batch_8_10_15_19 + 135.2 batch_1_14_15_19
   + 109.2 batch_0_4_14_17
Subject To
 order_0: batch_0_4_5_17 + batch_0_4_14_17 = 1
 order_1: batch_1 + batch_1_14_15_19 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16 = 1
 order_4: batch_0_4_5_17 + batch_0_4_14_17 = 1
 order_5: batch_5 + batch_0_4_5_17 = 1
 order_6: batch_6_9_13_18 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8_10_15_19 = 1
 order_9: batch_6_9_13_18 = 1
 order_10: batch_8_10_15_19 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_12_16 = 1
 order_13: batch_6_9_13_18 = 1
 order_14: batch_14 + batch_1_14_15_19 + batch_0_4_14_17 = 1
 order_15: batch_8_10_15_19 + batch_1_14_15_19 = 1
 order_16: batch_3_12_16 = 1
 order_17: batch_0_4_5_17 + batch_0_4_14_17 = 1
 order_18: batch_6_9_13_18 = 1
 order_19: batch_8_10_15_19 + batch_1_14_15_19 = 1
Bounds
End
