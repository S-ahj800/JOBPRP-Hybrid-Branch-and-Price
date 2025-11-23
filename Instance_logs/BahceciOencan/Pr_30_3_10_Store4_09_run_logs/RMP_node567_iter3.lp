\ Model JOBPRP_RMP_567
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x9035bdcda92b3886
Minimize
  31.6 batch_1 + 31.6 batch_3 + 67.2 batch_5 + 60.4 batch_6 + 61.2 batch_7
   + 34.8 batch_9 + 60.4 batch_10 + 67.2 batch_11 + 73.2 batch_5_7_11
   + 71.2 batch_5_7_9 + 75.2 batch_5_9_11 + 56.8 batch_1_3_9
   + 73.2 batch_7_9_11 + 73.2 batch_2_4_7_11 + 77.2 batch_1_5_7
   + 33.6 batch_1_3 + 68.4 batch_0_3_8_9 + 73.2 batch_0_5_8_9
   + 72.4 batch_0_1_8_9 + 66.4 batch_0_6_8_10 + 68.4 batch_0_8_9_10
   + 76.4 batch_1_6_9_10 + 70.4 batch_2_3_4_6 + 79.2 batch_5_6_7_10
   + 66.4 batch_0_6_8_9 + 70.4 batch_2_4_6_10 + 70.4 batch_1_3_6_10
   + 81.19999839878513 batch_5_6_10_11 + 79.2 batch_5_6_9_10
Subject To
 order_0: batch_0_3_8_9 + batch_0_5_8_9 + batch_0_1_8_9 + batch_0_6_8_10
   + batch_0_8_9_10 + batch_0_6_8_9 = 1
 order_1: batch_1 + batch_1_3_9 + batch_1_5_7 + batch_1_3 + batch_0_1_8_9
   + batch_1_6_9_10 + batch_1_3_6_10 = 1
 order_2: batch_2_4_7_11 + batch_2_3_4_6 + batch_2_4_6_10 = 1
 order_3: batch_3 + batch_1_3_9 + batch_1_3 + batch_0_3_8_9 + batch_2_3_4_6
   + batch_1_3_6_10 = 1
 order_4: batch_2_4_7_11 + batch_2_3_4_6 + batch_2_4_6_10 = 1
 order_5: batch_5 + batch_5_7_11 + batch_5_7_9 + batch_5_9_11 + batch_1_5_7
   + batch_0_5_8_9 + batch_5_6_7_10 + batch_5_6_10_11 + batch_5_6_9_10 = 1
 order_6: batch_6 + batch_0_6_8_10 + batch_1_6_9_10 + batch_2_3_4_6
   + batch_5_6_7_10 + batch_0_6_8_9 + batch_2_4_6_10 + batch_1_3_6_10
   + batch_5_6_10_11 + batch_5_6_9_10 = 1
 order_7: batch_7 + batch_5_7_11 + batch_5_7_9 + batch_7_9_11
   + batch_2_4_7_11 + batch_1_5_7 + batch_5_6_7_10 = 1
 order_8: batch_0_3_8_9 + batch_0_5_8_9 + batch_0_1_8_9 + batch_0_6_8_10
   + batch_0_8_9_10 + batch_0_6_8_9 = 1
 order_9: batch_9 + batch_5_7_9 + batch_5_9_11 + batch_1_3_9 + batch_7_9_11
   + batch_0_3_8_9 + batch_0_5_8_9 + batch_0_1_8_9 + batch_0_8_9_10
   + batch_1_6_9_10 + batch_0_6_8_9 + batch_5_6_9_10 = 1
 order_10: batch_10 + batch_0_6_8_10 + batch_0_8_9_10 + batch_1_6_9_10
   + batch_5_6_7_10 + batch_2_4_6_10 + batch_1_3_6_10 + batch_5_6_10_11
   + batch_5_6_9_10 = 1
 order_11: batch_11 + batch_5_7_11 + batch_5_9_11 + batch_7_9_11
   + batch_2_4_7_11 + batch_5_6_10_11 = 1
Bounds
End
