\ Model JOBPRP_RMP_544
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xe3a2019f70b12da2
Minimize
  61.2 batch_7 + 34.8 batch_9 + 60.4 batch_10 + 67.2 batch_11
   + 56.8 batch_1_3_9 + 33.6 batch_1_3 + 75.2 batch_0_2_8_11
   + 75.2 batch_4_5_6_9 + 68.4 batch_0_2_8_10
   + 75.19999331818181 batch_4_5_6_10 + 75.2 batch_7_10_11
   + 73.2 batch_1_3_7
Subject To
 order_0: batch_0_2_8_11 + batch_0_2_8_10 = 1
 order_1: batch_1_3_9 + batch_1_3 + batch_1_3_7 = 1
 order_2: batch_0_2_8_11 + batch_0_2_8_10 = 1
 order_3: batch_1_3_9 + batch_1_3 + batch_1_3_7 = 1
 order_4: batch_4_5_6_9 + batch_4_5_6_10 = 1
 order_5: batch_4_5_6_9 + batch_4_5_6_10 = 1
 order_6: batch_4_5_6_9 + batch_4_5_6_10 = 1
 order_7: batch_7 + batch_7_10_11 + batch_1_3_7 = 1
 order_8: batch_0_2_8_11 + batch_0_2_8_10 = 1
 order_9: batch_9 + batch_1_3_9 + batch_4_5_6_9 = 1
 order_10: batch_10 + batch_0_2_8_10 + batch_4_5_6_10 + batch_7_10_11 = 1
 order_11: batch_11 + batch_0_2_8_11 + batch_7_10_11 = 1
Bounds
End
