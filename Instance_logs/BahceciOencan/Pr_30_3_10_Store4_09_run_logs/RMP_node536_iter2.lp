\ Model JOBPRP_RMP_536
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x7ccd0a83c37e528b
Minimize
  31.6 batch_1 + 31.6 batch_3 + 61.2 batch_7 + 60.4 batch_10 + 67.2 batch_11
   + 33.6 batch_1_3 + 68.4 batch_0_2_8_9 + 77.2 batch_3_7_10
   + 81.2 batch_1_7_10 + 75.19999331818181 batch_4_5_6_10
   + 75.2 batch_7_10_11 + 75.2 batch_3_7_11
Subject To
 order_0: batch_0_2_8_9 = 1
 order_1: batch_1 + batch_1_3 + batch_1_7_10 = 1
 order_2: batch_0_2_8_9 = 1
 order_3: batch_3 + batch_1_3 + batch_3_7_10 + batch_3_7_11 = 1
 order_4: batch_4_5_6_10 = 1
 order_5: batch_4_5_6_10 = 1
 order_6: batch_4_5_6_10 = 1
 order_7: batch_7 + batch_3_7_10 + batch_1_7_10 + batch_7_10_11
   + batch_3_7_11 = 1
 order_8: batch_0_2_8_9 = 1
 order_9: batch_0_2_8_9 = 1
 order_10: batch_10 + batch_3_7_10 + batch_1_7_10 + batch_4_5_6_10
   + batch_7_10_11 = 1
 order_11: batch_11 + batch_7_10_11 + batch_3_7_11 = 1
Bounds
End
