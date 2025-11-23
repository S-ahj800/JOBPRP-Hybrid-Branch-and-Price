\ Model JOBPRP_RMP_312
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xd07d5d041805bc2f
Minimize
  31.6 batch_1 + 31.6 batch_3 + 67.2 batch_5 + 61.2 batch_7 + 34.8 batch_9
   + 60.4 batch_10 + 67.2 batch_11 + 75.2 batch_5_9_11 + 77.2 batch_1_2_6_7
   + 33.6 batch_1_3 + 75.2 batch_2_6_7_11 + 72.4 batch_2_3_6_9
   + 77.2 batch_2_5_6_11 + 75.2 batch_5_9_10 + 71.2 batch_0_4_5_8
   + 66.4 batch_0_4_8_9 + 77.2 batch_0_4_7_8 + 75.2 batch_3_7_11
   + 75.2 batch_2_3_6_7 + 83.2 batch_1_10_11 + 81.2 batch_3_10_11
Subject To
 order_0: batch_0_4_5_8 + batch_0_4_8_9 + batch_0_4_7_8 = 1
 order_1: batch_1 + batch_1_2_6_7 + batch_1_3 + batch_1_10_11 = 1
 order_2: batch_1_2_6_7 + batch_2_6_7_11 + batch_2_3_6_9 + batch_2_5_6_11
   + batch_2_3_6_7 = 1
 order_3: batch_3 + batch_1_3 + batch_2_3_6_9 + batch_3_7_11
   + batch_2_3_6_7 + batch_3_10_11 = 1
 order_4: batch_0_4_5_8 + batch_0_4_8_9 + batch_0_4_7_8 = 1
 order_5: batch_5 + batch_5_9_11 + batch_2_5_6_11 + batch_5_9_10
   + batch_0_4_5_8 = 1
 order_6: batch_1_2_6_7 + batch_2_6_7_11 + batch_2_3_6_9 + batch_2_5_6_11
   + batch_2_3_6_7 = 1
 order_7: batch_7 + batch_1_2_6_7 + batch_2_6_7_11 + batch_0_4_7_8
   + batch_3_7_11 + batch_2_3_6_7 = 1
 order_8: batch_0_4_5_8 + batch_0_4_8_9 + batch_0_4_7_8 = 1
 order_9: batch_9 + batch_5_9_11 + batch_2_3_6_9 + batch_5_9_10
   + batch_0_4_8_9 = 1
 order_10: batch_10 + batch_5_9_10 + batch_1_10_11 + batch_3_10_11 = 1
 order_11: batch_11 + batch_5_9_11 + batch_2_6_7_11 + batch_2_5_6_11
   + batch_3_7_11 + batch_1_10_11 + batch_3_10_11 = 1
Bounds
End
