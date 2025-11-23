\ Model JOBPRP_RMP_200
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xe3a2019f70b12da2
Minimize
  55.6 batch_2 + 31.6 batch_3 + 61.2 batch_7 + 60.4 batch_10 + 67.2 batch_11
   + 70.4 batch_0_2_4_8_10 + 56.8 batch_1_3_9 + 77.2 batch_2_7_10_11
   + 66.4 batch_0_4_8_10 + 75.2 batch_5_6_11 + 77.2 batch_2_5_6_11
   + 77.2 batch_1_7_9
Subject To
 order_0: batch_0_2_4_8_10 + batch_0_4_8_10 = 1
 order_1: batch_1_3_9 + batch_1_7_9 = 1
 order_2: batch_2 + batch_0_2_4_8_10 + batch_2_7_10_11 + batch_2_5_6_11
   = 1
 order_3: batch_3 + batch_1_3_9 = 1
 order_4: batch_0_2_4_8_10 + batch_0_4_8_10 = 1
 order_5: batch_5_6_11 + batch_2_5_6_11 = 1
 order_6: batch_5_6_11 + batch_2_5_6_11 = 1
 order_7: batch_7 + batch_2_7_10_11 + batch_1_7_9 = 1
 order_8: batch_0_2_4_8_10 + batch_0_4_8_10 = 1
 order_9: batch_1_3_9 + batch_1_7_9 = 1
 order_10: batch_10 + batch_0_2_4_8_10 + batch_2_7_10_11 + batch_0_4_8_10
   = 1
 order_11: batch_11 + batch_2_7_10_11 + batch_5_6_11 + batch_2_5_6_11 = 1
Bounds
End
