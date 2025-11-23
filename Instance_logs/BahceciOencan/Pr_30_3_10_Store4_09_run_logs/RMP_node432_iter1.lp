\ Model JOBPRP_RMP_432
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xb91451c2300f5bc4
Minimize
  31.6 batch_3 + 67.2 batch_11 + 56.8 batch_1_3_9 + 73.2 batch_4_5_6_7
   + 68.4 batch_0_2_8_10 + 83.19999082898522 batch_1_9_11
Subject To
 order_0: batch_0_2_8_10 = 1
 order_1: batch_1_3_9 + batch_1_9_11 = 1
 order_2: batch_0_2_8_10 = 1
 order_3: batch_3 + batch_1_3_9 = 1
 order_4: batch_4_5_6_7 = 1
 order_5: batch_4_5_6_7 = 1
 order_6: batch_4_5_6_7 = 1
 order_7: batch_4_5_6_7 = 1
 order_8: batch_0_2_8_10 = 1
 order_9: batch_1_3_9 + batch_1_9_11 = 1
 order_10: batch_0_2_8_10 = 1
 order_11: batch_11 + batch_1_9_11 = 1
Bounds
End
