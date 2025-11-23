\ Model JOBPRP_RMP_52
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xa0390aed7a885b8f
Minimize
  55.6 batch_2 + 61.2 batch_7 + 68.4 batch_0_4_6_8_10 + 75.2 batch_5_9_11
   + 33.6 batch_1_3 + 73.2 batch_1_3_7 + 69.2 batch_2_7 + 59.6 batch_1_2_3
Subject To
 order_0: batch_0_4_6_8_10 = 1
 order_1: batch_1_3 + batch_1_3_7 + batch_1_2_3 = 1
 order_2: batch_2 + batch_2_7 + batch_1_2_3 = 1
 order_3: batch_1_3 + batch_1_3_7 + batch_1_2_3 = 1
 order_4: batch_0_4_6_8_10 = 1
 order_5: batch_5_9_11 = 1
 order_6: batch_0_4_6_8_10 = 1
 order_7: batch_7 + batch_1_3_7 + batch_2_7 = 1
 order_8: batch_0_4_6_8_10 = 1
 order_9: batch_5_9_11 = 1
 order_10: batch_0_4_6_8_10 = 1
 order_11: batch_5_9_11 = 1
Bounds
End
