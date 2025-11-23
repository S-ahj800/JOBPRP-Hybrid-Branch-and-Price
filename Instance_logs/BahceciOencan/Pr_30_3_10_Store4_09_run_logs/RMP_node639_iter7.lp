\ Model JOBPRP_RMP_639
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xdc6bc304e4a52127
Minimize
  31.6 batch_1 + 31.6 batch_3 + 60.4 batch_4 + 67.2 batch_5 + 60.4 batch_6
   + 58.4 batch_8 + 34.8 batch_9 + 60.4 batch_10 + 67.2 batch_11
   + 75.2 batch_5_9_11 + 56.8 batch_1_3_9 + 33.6 batch_1_3
   + 76.4 batch_1_8_9_10 + 75.2 batch_5_8_9_10 + 66.4 batch_4_6_8_10
   + 70.4 batch_1_6_8_10 + 77.2 batch_3_5_6_8 + 81.2 batch_3_5_6_10
   + 75.2 batch_4_5_6_9 + 70.4 batch_3_6_8_9 + 74.4 batch_3_6_9_10
   + 70.4 batch_6_8_9_10 + 72.4 batch_3_8_9_10 + 73.2 batch_0_2_3_7
   + 68.4 batch_4_8_9_10 + 77.2 batch_4_5_10_11 + 75.2 batch_4_5_6_11
   + 75.2 batch_5_6_8_9 + 72.4 batch_1_6_8_9 + 77.2 batch_1_4_5_8
   + 75.2 batch_0_2_5_7 + 81.2 batch_1_4_8_11 + 83.2 batch_1_6_10_11
   + 75.2 batch_0_2_7_9 + 79.2 batch_8_9_10_11 + 75.2 batch_4_8_10_11
   + 68.4 batch_1_3_6_8
Subject To
 order_0: batch_0_2_3_7 + batch_0_2_5_7 + batch_0_2_7_9 = 1
 order_1: batch_1 + batch_1_3_9 + batch_1_3 + batch_1_8_9_10
   + batch_1_6_8_10 + batch_1_6_8_9 + batch_1_4_5_8 + batch_1_4_8_11
   + batch_1_6_10_11 + batch_1_3_6_8 = 1
 order_2: batch_0_2_3_7 + batch_0_2_5_7 + batch_0_2_7_9 = 1
 order_3: batch_3 + batch_1_3_9 + batch_1_3 + batch_3_5_6_8
   + batch_3_5_6_10 + batch_3_6_8_9 + batch_3_6_9_10 + batch_3_8_9_10
   + batch_0_2_3_7 + batch_1_3_6_8 = 1
 order_4: batch_4 + batch_4_6_8_10 + batch_4_5_6_9 + batch_4_8_9_10
   + batch_4_5_10_11 + batch_4_5_6_11 + batch_1_4_5_8 + batch_1_4_8_11
   + batch_4_8_10_11 = 1
 order_5: batch_5 + batch_5_9_11 + batch_5_8_9_10 + batch_3_5_6_8
   + batch_3_5_6_10 + batch_4_5_6_9 + batch_4_5_10_11 + batch_4_5_6_11
   + batch_5_6_8_9 + batch_1_4_5_8 + batch_0_2_5_7 = 1
 order_6: batch_6 + batch_4_6_8_10 + batch_1_6_8_10 + batch_3_5_6_8
   + batch_3_5_6_10 + batch_4_5_6_9 + batch_3_6_8_9 + batch_3_6_9_10
   + batch_6_8_9_10 + batch_4_5_6_11 + batch_5_6_8_9 + batch_1_6_8_9
   + batch_1_6_10_11 + batch_1_3_6_8 = 1
 order_7: batch_0_2_3_7 + batch_0_2_5_7 + batch_0_2_7_9 = 1
 order_8: batch_8 + batch_1_8_9_10 + batch_5_8_9_10 + batch_4_6_8_10
   + batch_1_6_8_10 + batch_3_5_6_8 + batch_3_6_8_9 + batch_6_8_9_10
   + batch_3_8_9_10 + batch_4_8_9_10 + batch_5_6_8_9 + batch_1_6_8_9
   + batch_1_4_5_8 + batch_1_4_8_11 + batch_8_9_10_11 + batch_4_8_10_11
   + batch_1_3_6_8 = 1
 order_9: batch_9 + batch_5_9_11 + batch_1_3_9 + batch_1_8_9_10
   + batch_5_8_9_10 + batch_4_5_6_9 + batch_3_6_8_9 + batch_3_6_9_10
   + batch_6_8_9_10 + batch_3_8_9_10 + batch_4_8_9_10 + batch_5_6_8_9
   + batch_1_6_8_9 + batch_0_2_7_9 + batch_8_9_10_11 = 1
 order_10: batch_10 + batch_1_8_9_10 + batch_5_8_9_10 + batch_4_6_8_10
   + batch_1_6_8_10 + batch_3_5_6_10 + batch_3_6_9_10 + batch_6_8_9_10
   + batch_3_8_9_10 + batch_4_8_9_10 + batch_4_5_10_11 + batch_1_6_10_11
   + batch_8_9_10_11 + batch_4_8_10_11 = 1
 order_11: batch_11 + batch_5_9_11 + batch_4_5_10_11 + batch_4_5_6_11
   + batch_1_4_8_11 + batch_1_6_10_11 + batch_8_9_10_11 + batch_4_8_10_11
   = 1
Bounds
End
