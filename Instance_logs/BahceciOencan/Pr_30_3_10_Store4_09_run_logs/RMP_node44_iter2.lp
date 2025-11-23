\ Model JOBPRP_RMP_44
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x7ccd0a83c37e528b
Minimize
  31.6 batch_1 + 55.6 batch_2 + 31.6 batch_3 + 61.2 batch_7 + 67.2 batch_11
   + 68.4 batch_0_4_6_8_10 + 75.2 batch_5_9_11 + 33.6 batch_1_3
   + 71.2 batch_2_7_11 + 79.2 batch_1_5_9 + 73.2 batch_1_3_7
   + 75.2 batch_2_5_9
Subject To
 order_0: batch_0_4_6_8_10 = 1
 order_1: batch_1 + batch_1_3 + batch_1_5_9 + batch_1_3_7 = 1
 order_2: batch_2 + batch_2_7_11 + batch_2_5_9 = 1
 order_3: batch_3 + batch_1_3 + batch_1_3_7 = 1
 order_4: batch_0_4_6_8_10 = 1
 order_5: batch_5_9_11 + batch_1_5_9 + batch_2_5_9 = 1
 order_6: batch_0_4_6_8_10 = 1
 order_7: batch_7 + batch_2_7_11 + batch_1_3_7 = 1
 order_8: batch_0_4_6_8_10 = 1
 order_9: batch_5_9_11 + batch_1_5_9 + batch_2_5_9 = 1
 order_10: batch_0_4_6_8_10 = 1
 order_11: batch_11 + batch_5_9_11 + batch_2_7_11 = 1
Bounds
End
