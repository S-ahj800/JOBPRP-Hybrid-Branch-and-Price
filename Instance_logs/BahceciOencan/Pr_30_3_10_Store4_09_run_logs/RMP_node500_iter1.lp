\ Model JOBPRP_RMP_500
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xa4d654d44d59834d
Minimize
  60.4 batch_4 + 60.4 batch_6 + 60.4 batch_10 + 67.2 batch_11
   + 71.2 batch_5_7_9 + 33.6 batch_1_3 + 79.2 batch_4_6_10_11
   + 75.2 batch_0_2_8_11 + 70.4 batch_1_3_6_10 + 74.4 batch_1_3_4_10
Subject To
 order_0: batch_0_2_8_11 = 1
 order_1: batch_1_3 + batch_1_3_6_10 + batch_1_3_4_10 = 1
 order_2: batch_0_2_8_11 = 1
 order_3: batch_1_3 + batch_1_3_6_10 + batch_1_3_4_10 = 1
 order_4: batch_4 + batch_4_6_10_11 + batch_1_3_4_10 = 1
 order_5: batch_5_7_9 = 1
 order_6: batch_6 + batch_4_6_10_11 + batch_1_3_6_10 = 1
 order_7: batch_5_7_9 = 1
 order_8: batch_0_2_8_11 = 1
 order_9: batch_5_7_9 = 1
 order_10: batch_10 + batch_4_6_10_11 + batch_1_3_6_10 + batch_1_3_4_10
   = 1
 order_11: batch_11 + batch_4_6_10_11 + batch_0_2_8_11 = 1
Bounds
End
