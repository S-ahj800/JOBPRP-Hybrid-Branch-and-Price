\ Model JOBPRP_RMP_351
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x7c07b9c0994fe922
Minimize
  31.6 batch_1 + 31.6 batch_3 + 60.4 batch_4 + 34.8 batch_9 + 60.4 batch_10
   + 70.4 batch_0_2_6_8_10 + 73.2 batch_5_7_11 + 70.4 batch_3_4_9
   + 78.4 batch_1_4_9_10 + 74.4 batch_1_4_9 + 66.4 batch_3_4
   + 66.4 batch_0_2_6_8
Subject To
 order_0: batch_0_2_6_8_10 + batch_0_2_6_8 = 1
 order_1: batch_1 + batch_1_4_9_10 + batch_1_4_9 = 1
 order_2: batch_0_2_6_8_10 + batch_0_2_6_8 = 1
 order_3: batch_3 + batch_3_4_9 + batch_3_4 = 1
 order_4: batch_4 + batch_3_4_9 + batch_1_4_9_10 + batch_1_4_9 + batch_3_4
   = 1
 order_5: batch_5_7_11 = 1
 order_6: batch_0_2_6_8_10 + batch_0_2_6_8 = 1
 order_7: batch_5_7_11 = 1
 order_8: batch_0_2_6_8_10 + batch_0_2_6_8 = 1
 order_9: batch_9 + batch_3_4_9 + batch_1_4_9_10 + batch_1_4_9 = 1
 order_10: batch_10 + batch_0_2_6_8_10 + batch_1_4_9_10 = 1
 order_11: batch_5_7_11 = 1
Bounds
End
