\ Model JOBPRP_RMP_72
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x459c6b29417a9a69
Minimize
  31.6 batch_1 + 31.6 batch_3 + 67.2 batch_5 + 34.8 batch_9 + 67.2 batch_11
   + 75.2 batch_5_9_11 + 56.8 batch_1_3_9 + 33.6 batch_1_3
   + 71.2 batch_2_7_11 + 71.2 batch_0_4_5_8 + 79.2 batch_5_6_9_10
   + 73.2 batch_2_7_9 + 83.2 batch_3_6_10_11 + 66.4 batch_0_4_8_9
   + 79.2 batch_2_6_7_10 + 83.2 batch_1_6_10_11 + 81.2 batch_5_6_10_11
   + 76.4 batch_1_6_9_10
Subject To
 order_0: batch_0_4_5_8 + batch_0_4_8_9 = 1
 order_1: batch_1 + batch_1_3_9 + batch_1_3 + batch_1_6_10_11
   + batch_1_6_9_10 = 1
 order_2: batch_2_7_11 + batch_2_7_9 + batch_2_6_7_10 = 1
 order_3: batch_3 + batch_1_3_9 + batch_1_3 + batch_3_6_10_11 = 1
 order_4: batch_0_4_5_8 + batch_0_4_8_9 = 1
 order_5: batch_5 + batch_5_9_11 + batch_0_4_5_8 + batch_5_6_9_10
   + batch_5_6_10_11 = 1
 order_6: batch_5_6_9_10 + batch_3_6_10_11 + batch_2_6_7_10
   + batch_1_6_10_11 + batch_5_6_10_11 + batch_1_6_9_10 = 1
 order_7: batch_2_7_11 + batch_2_7_9 + batch_2_6_7_10 = 1
 order_8: batch_0_4_5_8 + batch_0_4_8_9 = 1
 order_9: batch_9 + batch_5_9_11 + batch_1_3_9 + batch_5_6_9_10
   + batch_2_7_9 + batch_0_4_8_9 + batch_1_6_9_10 = 1
 order_10: batch_5_6_9_10 + batch_3_6_10_11 + batch_2_6_7_10
   + batch_1_6_10_11 + batch_5_6_10_11 + batch_1_6_9_10 = 1
 order_11: batch_11 + batch_5_9_11 + batch_2_7_11 + batch_3_6_10_11
   + batch_1_6_10_11 + batch_5_6_10_11 = 1
Bounds
End
