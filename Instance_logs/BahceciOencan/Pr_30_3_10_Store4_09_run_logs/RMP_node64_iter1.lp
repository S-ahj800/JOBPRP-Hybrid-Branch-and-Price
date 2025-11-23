\ Model JOBPRP_RMP_64
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xcfb10434bae5d72e
Minimize
  55.6 batch_2 + 67.2 batch_5 + 34.8 batch_9 + 68.4 batch_0_4_6_8_10
   + 56.8 batch_1_3_9 + 73.2 batch_7_9_11 + 33.6 batch_1_3
   + 71.2 batch_2_7_11 + 77.2 batch_1_3_5
Subject To
 order_0: batch_0_4_6_8_10 = 1
 order_1: batch_1_3_9 + batch_1_3 + batch_1_3_5 = 1
 order_2: batch_2 + batch_2_7_11 = 1
 order_3: batch_1_3_9 + batch_1_3 + batch_1_3_5 = 1
 order_4: batch_0_4_6_8_10 = 1
 order_5: batch_5 + batch_1_3_5 = 1
 order_6: batch_0_4_6_8_10 = 1
 order_7: batch_7_9_11 + batch_2_7_11 = 1
 order_8: batch_0_4_6_8_10 = 1
 order_9: batch_9 + batch_1_3_9 + batch_7_9_11 = 1
 order_10: batch_0_4_6_8_10 = 1
 order_11: batch_7_9_11 + batch_2_7_11 = 1
Bounds
End
