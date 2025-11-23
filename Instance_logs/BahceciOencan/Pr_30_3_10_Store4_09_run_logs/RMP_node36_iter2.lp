\ Model JOBPRP_RMP_36
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x350300d8e9a45d59
Minimize
  55.6 batch_2 + 67.2 batch_11 + 68.4 batch_0_4_6_8_10 + 71.2 batch_5_7_9
   + 33.6 batch_1_3 + 79.2 batch_1_3_11 + 69.2 batch_2_11
Subject To
 order_0: batch_0_4_6_8_10 = 1
 order_1: batch_1_3 + batch_1_3_11 = 1
 order_2: batch_2 + batch_2_11 = 1
 order_3: batch_1_3 + batch_1_3_11 = 1
 order_4: batch_0_4_6_8_10 = 1
 order_5: batch_5_7_9 = 1
 order_6: batch_0_4_6_8_10 = 1
 order_7: batch_5_7_9 = 1
 order_8: batch_0_4_6_8_10 = 1
 order_9: batch_5_7_9 = 1
 order_10: batch_0_4_6_8_10 = 1
 order_11: batch_11 + batch_1_3_11 + batch_2_11 = 1
Bounds
End
