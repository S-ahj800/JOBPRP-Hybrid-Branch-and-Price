\ Model JOBPRP_RMP_60
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xe8031498546250c1
Minimize
  31.6 batch_1 + 55.6 batch_2 + 31.6 batch_3 + 67.2 batch_5 + 34.8 batch_9
   + 68.4 batch_0_4_6_8_10 + 56.8 batch_1_3_9 + 73.2 batch_7_9_11
   + 33.6 batch_1_3 + 63.6 batch_2_3_9 + 71.2 batch_2_7_11
   + 77.2 batch_1_3_5 + 77.2 batch_1_2_5
Subject To
 order_0: batch_0_4_6_8_10 = 1
 order_1: batch_1 + batch_1_3_9 + batch_1_3 + batch_1_3_5 + batch_1_2_5
   = 1
 order_2: batch_2 + batch_2_3_9 + batch_2_7_11 + batch_1_2_5 = 1
 order_3: batch_3 + batch_1_3_9 + batch_1_3 + batch_2_3_9 + batch_1_3_5
   = 1
 order_4: batch_0_4_6_8_10 = 1
 order_5: batch_5 + batch_1_3_5 + batch_1_2_5 = 1
 order_6: batch_0_4_6_8_10 = 1
 order_7: batch_7_9_11 + batch_2_7_11 = 1
 order_8: batch_0_4_6_8_10 = 1
 order_9: batch_9 + batch_1_3_9 + batch_7_9_11 + batch_2_3_9 = 1
 order_10: batch_0_4_6_8_10 = 1
 order_11: batch_7_9_11 + batch_2_7_11 = 1
Bounds
End
