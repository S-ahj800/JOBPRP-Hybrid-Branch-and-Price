\ Model JOBPRP_RMP_140
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x69cdbc5622b30cd6
Minimize
  31.6 batch_1 + 31.6 batch_3 + 34.8 batch_9 + 60.4 batch_10 + 67.2 batch_11
   + 68.4 batch_0_2_4_6_8 + 73.2 batch_5_7_11 + 71.2 batch_5_7_9
   + 56.8 batch_1_3_9 + 77.2 batch_1_5_7 + 33.6 batch_1_3
   + 79.2 batch_9_10_11 + 75.2 batch_5_7_10 + 72.4 batch_3_9_10
Subject To
 order_0: batch_0_2_4_6_8 = 1
 order_1: batch_1 + batch_1_3_9 + batch_1_5_7 + batch_1_3 = 1
 order_2: batch_0_2_4_6_8 = 1
 order_3: batch_3 + batch_1_3_9 + batch_1_3 + batch_3_9_10 = 1
 order_4: batch_0_2_4_6_8 = 1
 order_5: batch_5_7_11 + batch_5_7_9 + batch_1_5_7 + batch_5_7_10 = 1
 order_6: batch_0_2_4_6_8 = 1
 order_7: batch_5_7_11 + batch_5_7_9 + batch_1_5_7 + batch_5_7_10 = 1
 order_8: batch_0_2_4_6_8 = 1
 order_9: batch_9 + batch_5_7_9 + batch_1_3_9 + batch_9_10_11
   + batch_3_9_10 = 1
 order_10: batch_10 + batch_9_10_11 + batch_5_7_10 + batch_3_9_10 = 1
 order_11: batch_11 + batch_5_7_11 + batch_9_10_11 = 1
Bounds
End
