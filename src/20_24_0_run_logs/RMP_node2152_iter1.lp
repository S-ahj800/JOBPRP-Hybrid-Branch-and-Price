\ Model JOBPRP_RMP_2152
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x7ad51d3c5aef0613
Minimize
  78.4 batch_10 + 74.8 batch_15 + 61.2 batch_19 + 105.6 batch_3_12_16
   + 115.2 batch_2_7_11 + 109.2 batch_6_9_13_18 + 129.2 batch_1_5_8
   + 125.2 batch_10_14_15_17 + 125.2 batch_0_4_14_17_19
   + 117.2 batch_10_14_17_19
Subject To
 order_0: batch_0_4_14_17_19 = 1
 order_1: batch_1_5_8 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16 = 1
 order_4: batch_0_4_14_17_19 = 1
 order_5: batch_1_5_8 = 1
 order_6: batch_6_9_13_18 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_1_5_8 = 1
 order_9: batch_6_9_13_18 = 1
 order_10: batch_10 + batch_10_14_15_17 + batch_10_14_17_19 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_12_16 = 1
 order_13: batch_6_9_13_18 = 1
 order_14: batch_10_14_15_17 + batch_0_4_14_17_19 + batch_10_14_17_19 = 1
 order_15: batch_15 + batch_10_14_15_17 = 1
 order_16: batch_3_12_16 = 1
 order_17: batch_10_14_15_17 + batch_0_4_14_17_19 + batch_10_14_17_19 = 1
 order_18: batch_6_9_13_18 = 1
 order_19: batch_19 + batch_0_4_14_17_19 + batch_10_14_17_19 = 1
Bounds
End
