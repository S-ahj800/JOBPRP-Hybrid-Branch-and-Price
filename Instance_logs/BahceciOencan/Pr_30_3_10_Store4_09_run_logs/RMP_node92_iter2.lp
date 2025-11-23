\ Model JOBPRP_RMP_92
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xcb8c0b8de55896d6
Minimize
  31.6 batch_1 + 55.6 batch_2 + 31.6 batch_3 + 67.2 batch_5 + 61.2 batch_7
   + 67.2 batch_11 + 33.6 batch_1_3 + 66.4 batch_0_2_4_8
   + 73.2 batch_2_5_11 + 74.4 batch_2_6_9_10 + 71.2 batch_0_4_5_8
   + 79.2 batch_6_7_9_10 + 79.2 batch_5_6_9_10 + 75.2 batch_3_7_11
Subject To
 order_0: batch_0_2_4_8 + batch_0_4_5_8 = 1
 order_1: batch_1 + batch_1_3 = 1
 order_2: batch_2 + batch_0_2_4_8 + batch_2_5_11 + batch_2_6_9_10 = 1
 order_3: batch_3 + batch_1_3 + batch_3_7_11 = 1
 order_4: batch_0_2_4_8 + batch_0_4_5_8 = 1
 order_5: batch_5 + batch_2_5_11 + batch_0_4_5_8 + batch_5_6_9_10 = 1
 order_6: batch_2_6_9_10 + batch_6_7_9_10 + batch_5_6_9_10 = 1
 order_7: batch_7 + batch_6_7_9_10 + batch_3_7_11 = 1
 order_8: batch_0_2_4_8 + batch_0_4_5_8 = 1
 order_9: batch_2_6_9_10 + batch_6_7_9_10 + batch_5_6_9_10 = 1
 order_10: batch_2_6_9_10 + batch_6_7_9_10 + batch_5_6_9_10 = 1
 order_11: batch_11 + batch_2_5_11 + batch_3_7_11 = 1
Bounds
End
