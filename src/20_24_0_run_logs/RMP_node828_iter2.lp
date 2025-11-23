\ Model JOBPRP_RMP_828
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x385dd5c779c644bf
Minimize
  77.2 batch_9 + 78.4 batch_10 + 74.8 batch_15 + 123.2 batch_1_17_18
   + 115.2 batch_2_7_11 + 130.4 batch_3_10_15_16 + 105.2 batch_6_9_13_19
   + 132 batch_0_4_8_12 + 115.2 batch_0_4_10_15 + 125.2 batch_3_5_14_16
   + 129.2 batch_5_10_14_15
Subject To
 order_0: batch_0_4_8_12 + batch_0_4_10_15 = 1
 order_1: batch_1_17_18 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_10_15_16 + batch_3_5_14_16 = 1
 order_4: batch_0_4_8_12 + batch_0_4_10_15 = 1
 order_5: batch_3_5_14_16 + batch_5_10_14_15 = 1
 order_6: batch_6_9_13_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_0_4_8_12 = 1
 order_9: batch_9 + batch_6_9_13_19 = 1
 order_10: batch_10 + batch_3_10_15_16 + batch_0_4_10_15 + batch_5_10_14_15
   = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_0_4_8_12 = 1
 order_13: batch_6_9_13_19 = 1
 order_14: batch_3_5_14_16 + batch_5_10_14_15 = 1
 order_15: batch_15 + batch_3_10_15_16 + batch_0_4_10_15 + batch_5_10_14_15
   = 1
 order_16: batch_3_10_15_16 + batch_3_5_14_16 = 1
 order_17: batch_1_17_18 = 1
 order_18: batch_1_17_18 = 1
 order_19: batch_6_9_13_19 = 1
Bounds
End
