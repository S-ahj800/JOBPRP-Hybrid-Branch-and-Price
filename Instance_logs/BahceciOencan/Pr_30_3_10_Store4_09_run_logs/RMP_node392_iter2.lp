\ Model JOBPRP_RMP_392
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xe8031498546250c1
Minimize
  31.6 batch_1 + 31.6 batch_3 + 60.4 batch_4 + 67.2 batch_5 + 60.4 batch_10
   + 73.2 batch_7_9_11 + 33.6 batch_1_3 + 66.4 batch_0_2_6_8
   + 79.2 batch_3_5_10 + 81.2 batch_1_5_10 + 77.2 batch_1_3_5
   + 81.2 batch_1_4_5_10 + 75.2 batch_3_4_5
Subject To
 order_0: batch_0_2_6_8 = 1
 order_1: batch_1 + batch_1_3 + batch_1_5_10 + batch_1_3_5 + batch_1_4_5_10
   = 1
 order_2: batch_0_2_6_8 = 1
 order_3: batch_3 + batch_1_3 + batch_3_5_10 + batch_1_3_5 + batch_3_4_5
   = 1
 order_4: batch_4 + batch_1_4_5_10 + batch_3_4_5 = 1
 order_5: batch_5 + batch_3_5_10 + batch_1_5_10 + batch_1_3_5
   + batch_1_4_5_10 + batch_3_4_5 = 1
 order_6: batch_0_2_6_8 = 1
 order_7: batch_7_9_11 = 1
 order_8: batch_0_2_6_8 = 1
 order_9: batch_7_9_11 = 1
 order_10: batch_10 + batch_3_5_10 + batch_1_5_10 + batch_1_4_5_10 = 1
 order_11: batch_7_9_11 = 1
Bounds
End
