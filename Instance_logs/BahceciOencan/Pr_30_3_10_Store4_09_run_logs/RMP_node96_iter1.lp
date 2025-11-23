\ Model JOBPRP_RMP_96
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xe3a2019f70b12da2
Minimize
  31.6 batch_1 + 31.6 batch_3 + 61.2 batch_7 + 67.2 batch_11
   + 33.6 batch_1_3 + 73.2 batch_2_5_11 + 79.2 batch_6_7_9_10
   + 75.2 batch_3_7_11 + 83.2 batch_6_9_10_11 + 79.2 batch_1_7_11
   + 75.2 batch_0_4_8_11 + 77.2 batch_0_4_7_8
Subject To
 order_0: batch_0_4_8_11 + batch_0_4_7_8 = 1
 order_1: batch_1 + batch_1_3 + batch_1_7_11 = 1
 order_2: batch_2_5_11 = 1
 order_3: batch_3 + batch_1_3 + batch_3_7_11 = 1
 order_4: batch_0_4_8_11 + batch_0_4_7_8 = 1
 order_5: batch_2_5_11 = 1
 order_6: batch_6_7_9_10 + batch_6_9_10_11 = 1
 order_7: batch_7 + batch_6_7_9_10 + batch_3_7_11 + batch_1_7_11
   + batch_0_4_7_8 = 1
 order_8: batch_0_4_8_11 + batch_0_4_7_8 = 1
 order_9: batch_6_7_9_10 + batch_6_9_10_11 = 1
 order_10: batch_6_7_9_10 + batch_6_9_10_11 = 1
 order_11: batch_11 + batch_2_5_11 + batch_3_7_11 + batch_6_9_10_11
   + batch_1_7_11 + batch_0_4_8_11 = 1
Bounds
End
