\ Model JOBPRP_RMP_268
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x2d4a5ac5a7fe20d6
Minimize
  31.6 batch_1 + 55.6 batch_2 + 31.6 batch_3 + 60.4 batch_6 + 67.2 batch_11
   + 75.2 batch_5_9_11 + 33.6 batch_1_3 + 77.2 batch_2_7_10_11
   + 64.4 batch_0_4_6_8 + 81.2 batch_1_7_10 + 83.2 batch_1_2_7_10
   + 64.4 batch_1_3_6 + 66.4 batch_1_2_3_6 + 75.2 batch_3_5_9
Subject To
 order_0: batch_0_4_6_8 = 1
 order_1: batch_1 + batch_1_3 + batch_1_7_10 + batch_1_2_7_10 + batch_1_3_6
   + batch_1_2_3_6 = 1
 order_2: batch_2 + batch_2_7_10_11 + batch_1_2_7_10 + batch_1_2_3_6 = 1
 order_3: batch_3 + batch_1_3 + batch_1_3_6 + batch_1_2_3_6 + batch_3_5_9
   = 1
 order_4: batch_0_4_6_8 = 1
 order_5: batch_5_9_11 + batch_3_5_9 = 1
 order_6: batch_6 + batch_0_4_6_8 + batch_1_3_6 + batch_1_2_3_6 = 1
 order_7: batch_2_7_10_11 + batch_1_7_10 + batch_1_2_7_10 = 1
 order_8: batch_0_4_6_8 = 1
 order_9: batch_5_9_11 + batch_3_5_9 = 1
 order_10: batch_2_7_10_11 + batch_1_7_10 + batch_1_2_7_10 = 1
 order_11: batch_11 + batch_5_9_11 + batch_2_7_10_11 = 1
Bounds
End
