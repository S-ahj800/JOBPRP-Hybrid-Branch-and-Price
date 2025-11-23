\ Model JOBPRP_RMP_604
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xa44d1e63314efcab
Minimize
  54.4 batch_0 + 31.6 batch_1 + 31.6 batch_3 + 67.2 batch_5 + 34.8 batch_9
   + 60.4 batch_10 + 56.8 batch_1_3_9 + 33.6 batch_1_3
   + 75.2 batch_2_6_7_11 + 72.4 batch_0_3_9_10 + 77.2 batch_0_5_9_10
   + 76.4 batch_0_1_9_10 + 77.2 batch_1_4_5_8 + 75.2 batch_3_4_5_8
   + 73.2 batch_4_5_8_9 + 62.4 batch_4_8_10
Subject To
 order_0: batch_0 + batch_0_3_9_10 + batch_0_5_9_10 + batch_0_1_9_10 = 1
 order_1: batch_1 + batch_1_3_9 + batch_1_3 + batch_0_1_9_10
   + batch_1_4_5_8 = 1
 order_2: batch_2_6_7_11 = 1
 order_3: batch_3 + batch_1_3_9 + batch_1_3 + batch_0_3_9_10
   + batch_3_4_5_8 = 1
 order_4: batch_1_4_5_8 + batch_3_4_5_8 + batch_4_5_8_9 + batch_4_8_10 = 1
 order_5: batch_5 + batch_0_5_9_10 + batch_1_4_5_8 + batch_3_4_5_8
   + batch_4_5_8_9 = 1
 order_6: batch_2_6_7_11 = 1
 order_7: batch_2_6_7_11 = 1
 order_8: batch_1_4_5_8 + batch_3_4_5_8 + batch_4_5_8_9 + batch_4_8_10 = 1
 order_9: batch_9 + batch_1_3_9 + batch_0_3_9_10 + batch_0_5_9_10
   + batch_0_1_9_10 + batch_4_5_8_9 = 1
 order_10: batch_10 + batch_0_3_9_10 + batch_0_5_9_10 + batch_0_1_9_10
   + batch_4_8_10 = 1
 order_11: batch_2_6_7_11 = 1
Bounds
End
