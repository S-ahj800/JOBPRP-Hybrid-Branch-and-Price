\ Model JOBPRP_RMP_455
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xd3c517aa71ac784a
Minimize
  60.4 batch_4 + 67.2 batch_5 + 34.8 batch_9 + 60.4 batch_10 + 67.2 batch_11
   + 75.2 batch_5_9_11 + 56.8 batch_1_3_9 + 33.6 batch_1_3
   + 75.2 batch_4_5_9_10 + 68.4 batch_0_2_8_9
   + 79.1999993115646 batch_6_7_10_11 + 75.2 batch_0_2_8_11
   + 77.2 batch_4_5_10_11 + 71.2 batch_4_5_11 + 73.2 batch_6_7_9
   + 74.4 batch_1_3_4_10 + 73.2 batch_6_7_11
Subject To
 order_0: batch_0_2_8_9 + batch_0_2_8_11 = 1
 order_1: batch_1_3_9 + batch_1_3 + batch_1_3_4_10 = 1
 order_2: batch_0_2_8_9 + batch_0_2_8_11 = 1
 order_3: batch_1_3_9 + batch_1_3 + batch_1_3_4_10 = 1
 order_4: batch_4 + batch_4_5_9_10 + batch_4_5_10_11 + batch_4_5_11
   + batch_1_3_4_10 = 1
 order_5: batch_5 + batch_5_9_11 + batch_4_5_9_10 + batch_4_5_10_11
   + batch_4_5_11 = 1
 order_6: batch_6_7_10_11 + batch_6_7_9 + batch_6_7_11 = 1
 order_7: batch_6_7_10_11 + batch_6_7_9 + batch_6_7_11 = 1
 order_8: batch_0_2_8_9 + batch_0_2_8_11 = 1
 order_9: batch_9 + batch_5_9_11 + batch_1_3_9 + batch_4_5_9_10
   + batch_0_2_8_9 + batch_6_7_9 = 1
 order_10: batch_10 + batch_4_5_9_10 + batch_6_7_10_11 + batch_4_5_10_11
   + batch_1_3_4_10 = 1
 order_11: batch_11 + batch_5_9_11 + batch_6_7_10_11 + batch_0_2_8_11
   + batch_4_5_10_11 + batch_4_5_11 + batch_6_7_11 = 1
Bounds
End
