\ Model JOBPRP_RMP_404
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xceae6fc6871f2733
Minimize
  60.4 batch_4 + 67.2 batch_5 + 61.2 batch_7 + 34.8 batch_9 + 60.4 batch_10
   + 67.2 batch_11 + 56.8 batch_1_3_9 + 33.6 batch_1_3
   + 75.2 batch_4_5_9_10 + 77.2 batch_4_7_10_11 + 71.2 batch_4_7_11
   + 73.2 batch_1_3_7 + 66.4 batch_0_2_6_8 + 75.2 batch_7_10_11
   + 77.2 batch_1_3_5 + 71.2 batch_5_9 + 69.2 batch_7_11
Subject To
 order_0: batch_0_2_6_8 = 1
 order_1: batch_1_3_9 + batch_1_3 + batch_1_3_7 + batch_1_3_5 = 1
 order_2: batch_0_2_6_8 = 1
 order_3: batch_1_3_9 + batch_1_3 + batch_1_3_7 + batch_1_3_5 = 1
 order_4: batch_4 + batch_4_5_9_10 + batch_4_7_10_11 + batch_4_7_11 = 1
 order_5: batch_5 + batch_4_5_9_10 + batch_1_3_5 + batch_5_9 = 1
 order_6: batch_0_2_6_8 = 1
 order_7: batch_7 + batch_4_7_10_11 + batch_4_7_11 + batch_1_3_7
   + batch_7_10_11 + batch_7_11 = 1
 order_8: batch_0_2_6_8 = 1
 order_9: batch_9 + batch_1_3_9 + batch_4_5_9_10 + batch_5_9 = 1
 order_10: batch_10 + batch_4_5_9_10 + batch_4_7_10_11 + batch_7_10_11 = 1
 order_11: batch_11 + batch_4_7_10_11 + batch_4_7_11 + batch_7_10_11
   + batch_7_11 = 1
Bounds
End
