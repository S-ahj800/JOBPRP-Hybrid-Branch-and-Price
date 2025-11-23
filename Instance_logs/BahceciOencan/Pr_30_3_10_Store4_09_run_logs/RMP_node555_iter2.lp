\ Model JOBPRP_RMP_555
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x735c57b3283159ed
Minimize
  31.6 batch_1 + 31.6 batch_3 + 67.2 batch_5 + 60.4 batch_6 + 34.8 batch_9
   + 60.4 batch_10 + 67.2 batch_11 + 75.2 batch_5_9_11 + 66.4 batch_0_2_3_8
   + 70.4 batch_0_1_2_8 + 77.2 batch_4_7_10_11 + 79.2 batch_5_6_9_10
   + 75.2 batch_0_2_8_11 + 76.4 batch_1_6_9_10 + 75.2 batch_0_2_5_8
   + 74.4 batch_3_6_9_10 + 81.2 batch_5_6_10_11 + 73.2 batch_4_7_9
   + 75.2 batch_5_6_11 + 71.2 batch_4_7_11 + 77.2 batch_4_7_9_10
   + 73.19997694782609 batch_4_7_9 + 77.2 batch_1_5_6
Subject To
 order_0: batch_0_2_3_8 + batch_0_1_2_8 + batch_0_2_8_11 + batch_0_2_5_8
   = 1
 order_1: batch_1 + batch_0_1_2_8 + batch_1_6_9_10 + batch_1_5_6 = 1
 order_2: batch_0_2_3_8 + batch_0_1_2_8 + batch_0_2_8_11 + batch_0_2_5_8
   = 1
 order_3: batch_3 + batch_0_2_3_8 + batch_3_6_9_10 = 1
 order_4: batch_4_7_10_11 + batch_4_7_9 + batch_4_7_11 + batch_4_7_9_10
   + batch_4_7_9 = 1
 order_5: batch_5 + batch_5_9_11 + batch_5_6_9_10 + batch_0_2_5_8
   + batch_5_6_10_11 + batch_5_6_11 + batch_1_5_6 = 1
 order_6: batch_6 + batch_5_6_9_10 + batch_1_6_9_10 + batch_3_6_9_10
   + batch_5_6_10_11 + batch_5_6_11 + batch_1_5_6 = 1
 order_7: batch_4_7_10_11 + batch_4_7_9 + batch_4_7_11 + batch_4_7_9_10
   + batch_4_7_9 = 1
 order_8: batch_0_2_3_8 + batch_0_1_2_8 + batch_0_2_8_11 + batch_0_2_5_8
   = 1
 order_9: batch_9 + batch_5_9_11 + batch_5_6_9_10 + batch_1_6_9_10
   + batch_3_6_9_10 + batch_4_7_9 + batch_4_7_9_10 + batch_4_7_9 = 1
 order_10: batch_10 + batch_4_7_10_11 + batch_5_6_9_10 + batch_1_6_9_10
   + batch_3_6_9_10 + batch_5_6_10_11 + batch_4_7_9_10 = 1
 order_11: batch_11 + batch_5_9_11 + batch_4_7_10_11 + batch_0_2_8_11
   + batch_5_6_10_11 + batch_5_6_11 + batch_4_7_11 = 1
Bounds
End
