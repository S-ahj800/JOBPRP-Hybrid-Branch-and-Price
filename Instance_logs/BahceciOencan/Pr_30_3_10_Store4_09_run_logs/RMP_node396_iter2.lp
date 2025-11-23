\ Model JOBPRP_RMP_396
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x2d4a5ac5a7fe20d6
Minimize
  60.4 batch_4 + 67.2 batch_5 + 60.4 batch_10 + 67.2 batch_11
   + 33.6 batch_1_3 + 71.2 batch_4_5_11 + 66.4 batch_0_2_6_8
   + 77.2 batch_4_5_10_11 + 77.2 batch_4_7_9_10 + 77.2 batch_1_3_5
   + 75.2 batch_7_9_10 + 75.19998870178571 batch_7_9_10 + 79.2 batch_1_3_11
   + 65.2 batch_7_9
Subject To
 order_0: batch_0_2_6_8 = 1
 order_1: batch_1_3 + batch_1_3_5 + batch_1_3_11 = 1
 order_2: batch_0_2_6_8 = 1
 order_3: batch_1_3 + batch_1_3_5 + batch_1_3_11 = 1
 order_4: batch_4 + batch_4_5_11 + batch_4_5_10_11 + batch_4_7_9_10 = 1
 order_5: batch_5 + batch_4_5_11 + batch_4_5_10_11 + batch_1_3_5 = 1
 order_6: batch_0_2_6_8 = 1
 order_7: batch_4_7_9_10 + batch_7_9_10 + batch_7_9_10 + batch_7_9 = 1
 order_8: batch_0_2_6_8 = 1
 order_9: batch_4_7_9_10 + batch_7_9_10 + batch_7_9_10 + batch_7_9 = 1
 order_10: batch_10 + batch_4_5_10_11 + batch_4_7_9_10 + batch_7_9_10
   + batch_7_9_10 = 1
 order_11: batch_11 + batch_4_5_11 + batch_4_5_10_11 + batch_1_3_11 = 1
Bounds
End
