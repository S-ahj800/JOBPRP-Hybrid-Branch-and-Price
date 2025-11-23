\ Model JOBPRP_RMP_56
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xe159b664c80e6f4d
Minimize
  55.6 batch_2 + 61.2 batch_7 + 67.2 batch_11 + 68.4 batch_0_4_6_8_10
   + 33.6 batch_1_3 + 71.2 batch_2_7_11 + 73.2 batch_1_3_7
   + 75.2 batch_2_5_9 + 79.2 batch_1_3_11 + 71.2 batch_5_9
Subject To
 order_0: batch_0_4_6_8_10 = 1
 order_1: batch_1_3 + batch_1_3_7 + batch_1_3_11 = 1
 order_2: batch_2 + batch_2_7_11 + batch_2_5_9 = 1
 order_3: batch_1_3 + batch_1_3_7 + batch_1_3_11 = 1
 order_4: batch_0_4_6_8_10 = 1
 order_5: batch_2_5_9 + batch_5_9 = 1
 order_6: batch_0_4_6_8_10 = 1
 order_7: batch_7 + batch_2_7_11 + batch_1_3_7 = 1
 order_8: batch_0_4_6_8_10 = 1
 order_9: batch_2_5_9 + batch_5_9 = 1
 order_10: batch_0_4_6_8_10 = 1
 order_11: batch_11 + batch_2_7_11 + batch_1_3_11 = 1
Bounds
End
