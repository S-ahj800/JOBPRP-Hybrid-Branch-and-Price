\ Model JOBPRP_RMP_243
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xa93767cd310aa66c
Minimize
  31.6 batch_1 + 31.6 batch_3 + 61.2 batch_7 + 34.8 batch_9 + 60.4 batch_10
   + 68.4 batch_0_2_4_6_8 + 33.6 batch_1_3 + 73.2 batch_1_3_7
   + 77.2 batch_5_10_11 + 75.2 batch_7_9_10 + 81.2 batch_1_7_10
Subject To
 order_0: batch_0_2_4_6_8 = 1
 order_1: batch_1 + batch_1_3 + batch_1_3_7 + batch_1_7_10 = 1
 order_2: batch_0_2_4_6_8 = 1
 order_3: batch_3 + batch_1_3 + batch_1_3_7 = 1
 order_4: batch_0_2_4_6_8 = 1
 order_5: batch_5_10_11 = 1
 order_6: batch_0_2_4_6_8 = 1
 order_7: batch_7 + batch_1_3_7 + batch_7_9_10 + batch_1_7_10 = 1
 order_8: batch_0_2_4_6_8 = 1
 order_9: batch_9 + batch_7_9_10 = 1
 order_10: batch_10 + batch_5_10_11 + batch_7_9_10 + batch_1_7_10 = 1
 order_11: batch_5_10_11 = 1
Bounds
End
