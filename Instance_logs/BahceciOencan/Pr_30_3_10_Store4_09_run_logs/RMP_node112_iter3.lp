\ Model JOBPRP_RMP_112
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xb42a08583053b203
Minimize
  55.6 batch_2 + 31.6 batch_3 + 61.2 batch_7 + 67.2 batch_11
   + 56.8 batch_1_3_9 + 71.2 batch_0_4_5_8 + 83.2 batch_3_6_10_11
   + 79.2 batch_6_7_10_11 + 67.6 batch_1_2_9 + 72.4 batch_2_3_6_10
   + 75.2 batch_3_7_11
Subject To
 order_0: batch_0_4_5_8 = 1
 order_1: batch_1_3_9 + batch_1_2_9 = 1
 order_2: batch_2 + batch_1_2_9 + batch_2_3_6_10 = 1
 order_3: batch_3 + batch_1_3_9 + batch_3_6_10_11 + batch_2_3_6_10
   + batch_3_7_11 = 1
 order_4: batch_0_4_5_8 = 1
 order_5: batch_0_4_5_8 = 1
 order_6: batch_3_6_10_11 + batch_6_7_10_11 + batch_2_3_6_10 = 1
 order_7: batch_7 + batch_6_7_10_11 + batch_3_7_11 = 1
 order_8: batch_0_4_5_8 = 1
 order_9: batch_1_3_9 + batch_1_2_9 = 1
 order_10: batch_3_6_10_11 + batch_6_7_10_11 + batch_2_3_6_10 = 1
 order_11: batch_11 + batch_3_6_10_11 + batch_6_7_10_11 + batch_3_7_11 = 1
Bounds
End
