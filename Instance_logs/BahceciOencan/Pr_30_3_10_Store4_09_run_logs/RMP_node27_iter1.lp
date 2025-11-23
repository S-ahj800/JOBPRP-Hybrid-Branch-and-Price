\ Model JOBPRP_RMP_27
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xcfb10434bae5d72e
Minimize
  55.6 batch_2 + 34.8 batch_9 + 67.2 batch_11 + 68.4 batch_0_4_6_8_10
   + 71.2 batch_5_7_9 + 56.8 batch_1_3_9 + 33.6 batch_1_3
   + 75.2 batch_2_9_11 + 73.2 batch_2_5_7
Subject To
 order_0: batch_0_4_6_8_10 = 1
 order_1: batch_1_3_9 + batch_1_3 = 1
 order_2: batch_2 + batch_2_9_11 + batch_2_5_7 = 1
 order_3: batch_1_3_9 + batch_1_3 = 1
 order_4: batch_0_4_6_8_10 = 1
 order_5: batch_5_7_9 + batch_2_5_7 = 1
 order_6: batch_0_4_6_8_10 = 1
 order_7: batch_5_7_9 + batch_2_5_7 = 1
 order_8: batch_0_4_6_8_10 = 1
 order_9: batch_9 + batch_5_7_9 + batch_1_3_9 + batch_2_9_11 = 1
 order_10: batch_0_4_6_8_10 = 1
 order_11: batch_11 + batch_2_9_11 = 1
Bounds
End
