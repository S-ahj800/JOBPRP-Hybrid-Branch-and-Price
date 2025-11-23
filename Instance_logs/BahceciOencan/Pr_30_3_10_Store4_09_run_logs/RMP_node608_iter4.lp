\ Model JOBPRP_RMP_608
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xf09ca7aaa76d188
Minimize
  54.4 batch_0 + 31.6 batch_1 + 31.6 batch_3 + 67.2 batch_5 + 34.8 batch_9
   + 60.4 batch_10 + 70.4 batch_2_4_6_8_10 + 73.2 batch_5_7_11
   + 56.8 batch_1_3_9 + 73.2 batch_7_9_11 + 33.6 batch_1_3
   + 79.2 batch_0_7_10_11 + 72.4 batch_0_3_9_10 + 77.2 batch_0_5_9_10
   + 76.4 batch_0_1_9_10 + 79.19999837037039 batch_0_7_10_11
   + 79.2 batch_0_1_5 + 66.4 batch_0_3_9 + 68.4 batch_0_1_9
Subject To
 order_0: batch_0 + batch_0_7_10_11 + batch_0_3_9_10 + batch_0_5_9_10
   + batch_0_1_9_10 + batch_0_7_10_11 + batch_0_1_5 + batch_0_3_9
   + batch_0_1_9 = 1
 order_1: batch_1 + batch_1_3_9 + batch_1_3 + batch_0_1_9_10 + batch_0_1_5
   + batch_0_1_9 = 1
 order_2: batch_2_4_6_8_10 = 1
 order_3: batch_3 + batch_1_3_9 + batch_1_3 + batch_0_3_9_10 + batch_0_3_9
   = 1
 order_4: batch_2_4_6_8_10 = 1
 order_5: batch_5 + batch_5_7_11 + batch_0_5_9_10 + batch_0_1_5 = 1
 order_6: batch_2_4_6_8_10 = 1
 order_7: batch_5_7_11 + batch_7_9_11 + batch_0_7_10_11 + batch_0_7_10_11
   = 1
 order_8: batch_2_4_6_8_10 = 1
 order_9: batch_9 + batch_1_3_9 + batch_7_9_11 + batch_0_3_9_10
   + batch_0_5_9_10 + batch_0_1_9_10 + batch_0_3_9 + batch_0_1_9 = 1
 order_10: batch_10 + batch_2_4_6_8_10 + batch_0_7_10_11 + batch_0_3_9_10
   + batch_0_5_9_10 + batch_0_1_9_10 + batch_0_7_10_11 = 1
 order_11: batch_5_7_11 + batch_7_9_11 + batch_0_7_10_11 + batch_0_7_10_11
   = 1
Bounds
End
