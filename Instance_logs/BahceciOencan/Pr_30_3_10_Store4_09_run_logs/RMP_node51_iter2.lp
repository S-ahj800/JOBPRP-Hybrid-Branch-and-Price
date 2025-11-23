\ Model JOBPRP_RMP_51
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xd07654f7e5144097
Minimize
  31.6 batch_1 + 55.6 batch_2 + 31.6 batch_3 + 61.2 batch_7
   + 68.4 batch_0_4_6_8_10 + 75.2 batch_5_9_11 + 75.2 batch_1_2_7
   + 71.2 batch_2_3_7 + 57.6 batch_1_2
Subject To
 order_0: batch_0_4_6_8_10 = 1
 order_1: batch_1 + batch_1_2_7 + batch_1_2 = 1
 order_2: batch_2 + batch_1_2_7 + batch_2_3_7 + batch_1_2 = 1
 order_3: batch_3 + batch_2_3_7 = 1
 order_4: batch_0_4_6_8_10 = 1
 order_5: batch_5_9_11 = 1
 order_6: batch_0_4_6_8_10 = 1
 order_7: batch_7 + batch_1_2_7 + batch_2_3_7 = 1
 order_8: batch_0_4_6_8_10 = 1
 order_9: batch_5_9_11 = 1
 order_10: batch_0_4_6_8_10 = 1
 order_11: batch_5_9_11 = 1
Bounds
End
