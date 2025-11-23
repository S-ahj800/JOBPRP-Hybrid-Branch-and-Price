\ Model JOBPRP_RMP_632
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x83efa6479902318e
Minimize
  31.6 batch_1 + 55.6 batch_2 + 31.6 batch_3 + 60.4 batch_4 + 67.2 batch_5
   + 58.4 batch_8 + 34.8 batch_9 + 60.4 batch_10 + 67.2 batch_11
   + 75.2 batch_5_9_11 + 56.8 batch_1_3_9 + 33.6 batch_1_3
   + 75.2 batch_0_6_7_11 + 76.4 batch_1_8_9_10 + 75.2 batch_5_8_9_10
   + 70.4 batch_2_8_9_10 + 75.2 batch_0_5_6_7 + 72.4 batch_3_8_9_10
   + 68.4 batch_4_8_9_10 + 80 batch_2_5_8_11 + 77.2 batch_4_5_10_11
   + 67.6 batch_1_2_9 + 73.2 batch_0_4_6_7 + 74.4 batch_2_3_9_10
   + 77.2 batch_2_5_8_9 + 79.2 batch_2_5_10_11 + 74.4 batch_1_2_8_9
   + 75.2 batch_4_5_9_10 + 73.2 batch_4_5_8_9 + 70.4 batch_1_2_3_8
Subject To
 order_0: batch_0_6_7_11 + batch_0_5_6_7 + batch_0_4_6_7 = 1
 order_1: batch_1 + batch_1_3_9 + batch_1_3 + batch_1_8_9_10 + batch_1_2_9
   + batch_1_2_8_9 + batch_1_2_3_8 = 1
 order_2: batch_2 + batch_2_8_9_10 + batch_2_5_8_11 + batch_1_2_9
   + batch_2_3_9_10 + batch_2_5_8_9 + batch_2_5_10_11 + batch_1_2_8_9
   + batch_1_2_3_8 = 1
 order_3: batch_3 + batch_1_3_9 + batch_1_3 + batch_3_8_9_10
   + batch_2_3_9_10 + batch_1_2_3_8 = 1
 order_4: batch_4 + batch_4_8_9_10 + batch_4_5_10_11 + batch_0_4_6_7
   + batch_4_5_9_10 + batch_4_5_8_9 = 1
 order_5: batch_5 + batch_5_9_11 + batch_5_8_9_10 + batch_0_5_6_7
   + batch_2_5_8_11 + batch_4_5_10_11 + batch_2_5_8_9 + batch_2_5_10_11
   + batch_4_5_9_10 + batch_4_5_8_9 = 1
 order_6: batch_0_6_7_11 + batch_0_5_6_7 + batch_0_4_6_7 = 1
 order_7: batch_0_6_7_11 + batch_0_5_6_7 + batch_0_4_6_7 = 1
 order_8: batch_8 + batch_1_8_9_10 + batch_5_8_9_10 + batch_2_8_9_10
   + batch_3_8_9_10 + batch_4_8_9_10 + batch_2_5_8_11 + batch_2_5_8_9
   + batch_1_2_8_9 + batch_4_5_8_9 + batch_1_2_3_8 = 1
 order_9: batch_9 + batch_5_9_11 + batch_1_3_9 + batch_1_8_9_10
   + batch_5_8_9_10 + batch_2_8_9_10 + batch_3_8_9_10 + batch_4_8_9_10
   + batch_1_2_9 + batch_2_3_9_10 + batch_2_5_8_9 + batch_1_2_8_9
   + batch_4_5_9_10 + batch_4_5_8_9 = 1
 order_10: batch_10 + batch_1_8_9_10 + batch_5_8_9_10 + batch_2_8_9_10
   + batch_3_8_9_10 + batch_4_8_9_10 + batch_4_5_10_11 + batch_2_3_9_10
   + batch_2_5_10_11 + batch_4_5_9_10 = 1
 order_11: batch_11 + batch_5_9_11 + batch_0_6_7_11 + batch_2_5_8_11
   + batch_4_5_10_11 + batch_2_5_10_11 = 1
Bounds
End
