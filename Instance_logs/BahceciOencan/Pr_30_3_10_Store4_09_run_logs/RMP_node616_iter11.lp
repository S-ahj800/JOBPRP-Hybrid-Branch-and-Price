\ Model JOBPRP_RMP_616
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x3cbfbac15f2ad6e5
Minimize
  54.4 batch_0 + 31.6 batch_1 + 31.6 batch_3 + 60.4 batch_4 + 67.2 batch_5
   + 58.4 batch_8 + 34.8 batch_9 + 60.4 batch_10 + 67.2 batch_11
   + 75.2 batch_5_9_11 + 56.8 batch_1_3_9 + 77.2 batch_1_2_6_7
   + 33.6 batch_1_3 + 76.4 batch_1_8_9_10 + 75.2 batch_5_8_9_10
   + 75.2 batch_2_6_7_11 + 79.2 batch_0_3_4_11 + 79.2 batch_0_4_9_11
   + 73.2 batch_0_4_5_9 + 77.2 batch_0_4_5_11 + 81.2 batch_2_6_7_8
   + 72.4 batch_0_1_3_10 + 74.4 batch_1_3_4_10
   + 70.39997265476917 batch_0_3_4_10 + 75.2 batch_2_4_6_7
   + 72.4 batch_3_8_9_10 + 75.2 batch_0_2_6_7 + 70.4 batch_0_1_3_4
   + 70.4 batch_0_4_9_10 + 72.4 batch_1_3_8_10
Subject To
 order_0: batch_0 + batch_0_3_4_11 + batch_0_4_9_11 + batch_0_4_5_9
   + batch_0_4_5_11 + batch_0_1_3_10 + batch_0_3_4_10 + batch_0_2_6_7
   + batch_0_1_3_4 + batch_0_4_9_10 = 1
 order_1: batch_1 + batch_1_3_9 + batch_1_2_6_7 + batch_1_3
   + batch_1_8_9_10 + batch_0_1_3_10 + batch_1_3_4_10 + batch_0_1_3_4
   + batch_1_3_8_10 = 1
 order_2: batch_1_2_6_7 + batch_2_6_7_11 + batch_2_6_7_8 + batch_2_4_6_7
   + batch_0_2_6_7 = 1
 order_3: batch_3 + batch_1_3_9 + batch_1_3 + batch_0_3_4_11
   + batch_0_1_3_10 + batch_1_3_4_10 + batch_0_3_4_10 + batch_3_8_9_10
   + batch_0_1_3_4 + batch_1_3_8_10 = 1
 order_4: batch_4 + batch_0_3_4_11 + batch_0_4_9_11 + batch_0_4_5_9
   + batch_0_4_5_11 + batch_1_3_4_10 + batch_0_3_4_10 + batch_2_4_6_7
   + batch_0_1_3_4 + batch_0_4_9_10 = 1
 order_5: batch_5 + batch_5_9_11 + batch_5_8_9_10 + batch_0_4_5_9
   + batch_0_4_5_11 = 1
 order_6: batch_1_2_6_7 + batch_2_6_7_11 + batch_2_6_7_8 + batch_2_4_6_7
   + batch_0_2_6_7 = 1
 order_7: batch_1_2_6_7 + batch_2_6_7_11 + batch_2_6_7_8 + batch_2_4_6_7
   + batch_0_2_6_7 = 1
 order_8: batch_8 + batch_1_8_9_10 + batch_5_8_9_10 + batch_2_6_7_8
   + batch_3_8_9_10 + batch_1_3_8_10 = 1
 order_9: batch_9 + batch_5_9_11 + batch_1_3_9 + batch_1_8_9_10
   + batch_5_8_9_10 + batch_0_4_9_11 + batch_0_4_5_9 + batch_3_8_9_10
   + batch_0_4_9_10 = 1
 order_10: batch_10 + batch_1_8_9_10 + batch_5_8_9_10 + batch_0_1_3_10
   + batch_1_3_4_10 + batch_0_3_4_10 + batch_3_8_9_10 + batch_0_4_9_10
   + batch_1_3_8_10 = 1
 order_11: batch_11 + batch_5_9_11 + batch_2_6_7_11 + batch_0_3_4_11
   + batch_0_4_9_11 + batch_0_4_5_11 = 1
Bounds
End
