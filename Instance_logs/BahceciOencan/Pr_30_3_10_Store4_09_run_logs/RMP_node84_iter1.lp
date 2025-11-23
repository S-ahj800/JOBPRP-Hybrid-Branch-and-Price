\ Model JOBPRP_RMP_84
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xa0390aed7a885b8f
Minimize
  31.6 batch_1 + 31.6 batch_3 + 67.2 batch_11 + 33.6 batch_1_3
   + 71.2 batch_0_4_5_8 + 73.2 batch_2_7_9 + 83.2 batch_3_6_10_11
   + 83.2 batch_1_6_10_11
Subject To
 order_0: batch_0_4_5_8 = 1
 order_1: batch_1 + batch_1_3 + batch_1_6_10_11 = 1
 order_2: batch_2_7_9 = 1
 order_3: batch_3 + batch_1_3 + batch_3_6_10_11 = 1
 order_4: batch_0_4_5_8 = 1
 order_5: batch_0_4_5_8 = 1
 order_6: batch_3_6_10_11 + batch_1_6_10_11 = 1
 order_7: batch_2_7_9 = 1
 order_8: batch_0_4_5_8 = 1
 order_9: batch_2_7_9 = 1
 order_10: batch_3_6_10_11 + batch_1_6_10_11 = 1
 order_11: batch_11 + batch_3_6_10_11 + batch_1_6_10_11 = 1
Bounds
End
