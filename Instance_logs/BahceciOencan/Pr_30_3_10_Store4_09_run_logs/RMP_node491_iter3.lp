\ Model JOBPRP_RMP_491
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x7ccd0a83c37e528b
Minimize
  31.6 batch_3 + 60.4 batch_4 + 60.4 batch_6 + 34.8 batch_9 + 60.4 batch_10
   + 73.2 batch_5_7_11 + 70.4 batch_0_1_2_8 + 66.4 batch_4_6_10
   + 72.39999348137528 batch_4_6_9_10 + 74.4 batch_3_6_9_10
   + 62.4 batch_4_6 + 66.4 batch_4_9
Subject To
 order_0: batch_0_1_2_8 = 1
 order_1: batch_0_1_2_8 = 1
 order_2: batch_0_1_2_8 = 1
 order_3: batch_3 + batch_3_6_9_10 = 1
 order_4: batch_4 + batch_4_6_10 + batch_4_6_9_10 + batch_4_6 + batch_4_9
   = 1
 order_5: batch_5_7_11 = 1
 order_6: batch_6 + batch_4_6_10 + batch_4_6_9_10 + batch_3_6_9_10
   + batch_4_6 = 1
 order_7: batch_5_7_11 = 1
 order_8: batch_0_1_2_8 = 1
 order_9: batch_9 + batch_4_6_9_10 + batch_3_6_9_10 + batch_4_9 = 1
 order_10: batch_10 + batch_4_6_10 + batch_4_6_9_10 + batch_3_6_9_10 = 1
 order_11: batch_5_7_11 = 1
Bounds
End
