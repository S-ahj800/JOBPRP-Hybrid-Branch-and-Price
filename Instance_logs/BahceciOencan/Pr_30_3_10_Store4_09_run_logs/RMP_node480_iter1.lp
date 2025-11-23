\ Model JOBPRP_RMP_480
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xcfb10434bae5d72e
Minimize
  31.6 batch_3 + 60.4 batch_4 + 60.4 batch_6 + 60.4 batch_10
   + 73.2 batch_5_7_11 + 66.4 batch_0_2_3_8 + 76.4 batch_1_6_9_10
   + 66.4 batch_4_6_10 + 74.4 batch_1_4_6_9
Subject To
 order_0: batch_0_2_3_8 = 1
 order_1: batch_1_6_9_10 + batch_1_4_6_9 = 1
 order_2: batch_0_2_3_8 = 1
 order_3: batch_3 + batch_0_2_3_8 = 1
 order_4: batch_4 + batch_4_6_10 + batch_1_4_6_9 = 1
 order_5: batch_5_7_11 = 1
 order_6: batch_6 + batch_1_6_9_10 + batch_4_6_10 + batch_1_4_6_9 = 1
 order_7: batch_5_7_11 = 1
 order_8: batch_0_2_3_8 = 1
 order_9: batch_1_6_9_10 + batch_1_4_6_9 = 1
 order_10: batch_10 + batch_1_6_9_10 + batch_4_6_10 = 1
 order_11: batch_5_7_11 = 1
Bounds
End
