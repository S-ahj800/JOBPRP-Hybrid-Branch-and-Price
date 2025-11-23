\ Model JOBPRP_RMP_380
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xe8031498546250c1
Minimize
  31.6 batch_1 + 31.6 batch_3 + 60.4 batch_4 + 61.2 batch_7 + 34.8 batch_9
   + 70.4 batch_0_2_6_8_10 + 75.2 batch_5_9_11 + 56.8 batch_1_3_9
   + 33.6 batch_1_3 + 70.4 batch_3_4_9 + 71.2 batch_4_5_11
   + 73.2 batch_1_3_7 + 77.2 batch_1_4_7
Subject To
 order_0: batch_0_2_6_8_10 = 1
 order_1: batch_1 + batch_1_3_9 + batch_1_3 + batch_1_3_7 + batch_1_4_7
   = 1
 order_2: batch_0_2_6_8_10 = 1
 order_3: batch_3 + batch_1_3_9 + batch_1_3 + batch_3_4_9 + batch_1_3_7
   = 1
 order_4: batch_4 + batch_3_4_9 + batch_4_5_11 + batch_1_4_7 = 1
 order_5: batch_5_9_11 + batch_4_5_11 = 1
 order_6: batch_0_2_6_8_10 = 1
 order_7: batch_7 + batch_1_3_7 + batch_1_4_7 = 1
 order_8: batch_0_2_6_8_10 = 1
 order_9: batch_9 + batch_5_9_11 + batch_1_3_9 + batch_3_4_9 = 1
 order_10: batch_0_2_6_8_10 = 1
 order_11: batch_5_9_11 + batch_4_5_11 = 1
Bounds
End
