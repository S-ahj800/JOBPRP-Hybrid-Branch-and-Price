\ Model JOBPRP_RMP_644
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xeb9eb6613f58dead
Minimize
  54.4 batch_0 + 31.6 batch_1 + 31.6 batch_3 + 67.2 batch_5 + 60.4 batch_6
   + 61.2 batch_7 + 58.4 batch_8 + 34.8 batch_9 + 60.4 batch_10
   + 67.2 batch_11 + 73.2 batch_5_7_11 + 71.2 batch_5_7_9
   + 75.2 batch_5_9_11 + 56.8 batch_1_3_9 + 73.2 batch_7_9_11
   + 73.2 batch_2_4_5_11 + 73.2 batch_2_4_7_11 + 77.2 batch_1_5_7
   + 33.6 batch_1_3 + 76.4 batch_1_8_9_10 + 75.2 batch_5_8_9_10
   + 72.4 batch_0_1_6_9 + 70.4 batch_0_6_9_10 + 70.4 batch_1_6_8_10
   + 79.2 batch_3_6_8_11 + 79.2 batch_6_8_9_11 + 68.4 batch_1_3_6_8
   + 75.2 batch_5_6_8_9 + 75.2 batch_0_5_6_9 + 79.2 batch_0_3_5_10
   + 75.2 batch_0_2_4_5
Subject To
 order_0: batch_0 + batch_0_1_6_9 + batch_0_6_9_10 + batch_0_5_6_9
   + batch_0_3_5_10 + batch_0_2_4_5 = 1
 order_1: batch_1 + batch_1_3_9 + batch_1_5_7 + batch_1_3 + batch_1_8_9_10
   + batch_0_1_6_9 + batch_1_6_8_10 + batch_1_3_6_8 = 1
 order_2: batch_2_4_5_11 + batch_2_4_7_11 + batch_0_2_4_5 = 1
 order_3: batch_3 + batch_1_3_9 + batch_1_3 + batch_3_6_8_11
   + batch_1_3_6_8 + batch_0_3_5_10 = 1
 order_4: batch_2_4_5_11 + batch_2_4_7_11 + batch_0_2_4_5 = 1
 order_5: batch_5 + batch_5_7_11 + batch_5_7_9 + batch_5_9_11
   + batch_2_4_5_11 + batch_1_5_7 + batch_5_8_9_10 + batch_5_6_8_9
   + batch_0_5_6_9 + batch_0_3_5_10 + batch_0_2_4_5 = 1
 order_6: batch_6 + batch_0_1_6_9 + batch_0_6_9_10 + batch_1_6_8_10
   + batch_3_6_8_11 + batch_6_8_9_11 + batch_1_3_6_8 + batch_5_6_8_9
   + batch_0_5_6_9 = 1
 order_7: batch_7 + batch_5_7_11 + batch_5_7_9 + batch_7_9_11
   + batch_2_4_7_11 + batch_1_5_7 = 1
 order_8: batch_8 + batch_1_8_9_10 + batch_5_8_9_10 + batch_1_6_8_10
   + batch_3_6_8_11 + batch_6_8_9_11 + batch_1_3_6_8 + batch_5_6_8_9 = 1
 order_9: batch_9 + batch_5_7_9 + batch_5_9_11 + batch_1_3_9 + batch_7_9_11
   + batch_1_8_9_10 + batch_5_8_9_10 + batch_0_1_6_9 + batch_0_6_9_10
   + batch_6_8_9_11 + batch_5_6_8_9 + batch_0_5_6_9 = 1
 order_10: batch_10 + batch_1_8_9_10 + batch_5_8_9_10 + batch_0_6_9_10
   + batch_1_6_8_10 + batch_0_3_5_10 = 1
 order_11: batch_11 + batch_5_7_11 + batch_5_9_11 + batch_7_9_11
   + batch_2_4_5_11 + batch_2_4_7_11 + batch_3_6_8_11 + batch_6_8_9_11 = 1
Bounds
End
