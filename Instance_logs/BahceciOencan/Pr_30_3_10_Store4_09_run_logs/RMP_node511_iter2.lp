\ Model JOBPRP_RMP_511
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x3fc072822cbedfe9
Minimize
  31.6 batch_1 + 31.6 batch_3 + 60.4 batch_6 + 34.8 batch_9 + 60.4 batch_10
   + 67.2 batch_11 + 56.8 batch_1_3_9 + 75.2 batch_4_5_7_10
   + 33.6 batch_1_3 + 66.4 batch_0_2_3_8 + 70.4 batch_0_1_2_8
   + 75.2 batch_0_2_8_11 + 76.4 batch_1_6_9_10 + 70.4 batch_1_3_6_10
   + 83.2 batch_6_9_10_11 + 77.2 batch_6_9_11 + 64.4 batch_1_3_6
   + 71.2 batch_4_5_7
Subject To
 order_0: batch_0_2_3_8 + batch_0_1_2_8 + batch_0_2_8_11 = 1
 order_1: batch_1 + batch_1_3_9 + batch_1_3 + batch_0_1_2_8
   + batch_1_6_9_10 + batch_1_3_6_10 + batch_1_3_6 = 1
 order_2: batch_0_2_3_8 + batch_0_1_2_8 + batch_0_2_8_11 = 1
 order_3: batch_3 + batch_1_3_9 + batch_1_3 + batch_0_2_3_8
   + batch_1_3_6_10 + batch_1_3_6 = 1
 order_4: batch_4_5_7_10 + batch_4_5_7 = 1
 order_5: batch_4_5_7_10 + batch_4_5_7 = 1
 order_6: batch_6 + batch_1_6_9_10 + batch_1_3_6_10 + batch_6_9_10_11
   + batch_6_9_11 + batch_1_3_6 = 1
 order_7: batch_4_5_7_10 + batch_4_5_7 = 1
 order_8: batch_0_2_3_8 + batch_0_1_2_8 + batch_0_2_8_11 = 1
 order_9: batch_9 + batch_1_3_9 + batch_1_6_9_10 + batch_6_9_10_11
   + batch_6_9_11 = 1
 order_10: batch_10 + batch_4_5_7_10 + batch_1_6_9_10 + batch_1_3_6_10
   + batch_6_9_10_11 = 1
 order_11: batch_11 + batch_0_2_8_11 + batch_6_9_10_11 + batch_6_9_11 = 1
Bounds
End
