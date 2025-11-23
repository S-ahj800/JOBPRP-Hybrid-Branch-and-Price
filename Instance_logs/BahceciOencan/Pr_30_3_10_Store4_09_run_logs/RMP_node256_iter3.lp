\ Model JOBPRP_RMP_256
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x5f1752b9128a05de
Minimize
  31.6 batch_1 + 31.6 batch_3 + 60.4 batch_6 + 61.2 batch_7 + 34.8 batch_9
   + 60.4 batch_10 + 70.4 batch_0_2_4_8_10 + 75.2 batch_5_9_11
   + 33.6 batch_1_3 + 70.4 batch_3_6_9 + 75.2 batch_5_6_11
   + 73.2 batch_1_3_7 + 66.4 batch_0_2_4_8 + 75.2 batch_1_6_7
   + 73.2 batch_3_6_7
Subject To
 order_0: batch_0_2_4_8_10 + batch_0_2_4_8 = 1
 order_1: batch_1 + batch_1_3 + batch_1_3_7 + batch_1_6_7 = 1
 order_2: batch_0_2_4_8_10 + batch_0_2_4_8 = 1
 order_3: batch_3 + batch_1_3 + batch_3_6_9 + batch_1_3_7 + batch_3_6_7
   = 1
 order_4: batch_0_2_4_8_10 + batch_0_2_4_8 = 1
 order_5: batch_5_9_11 + batch_5_6_11 = 1
 order_6: batch_6 + batch_3_6_9 + batch_5_6_11 + batch_1_6_7 + batch_3_6_7
   = 1
 order_7: batch_7 + batch_1_3_7 + batch_1_6_7 + batch_3_6_7 = 1
 order_8: batch_0_2_4_8_10 + batch_0_2_4_8 = 1
 order_9: batch_9 + batch_5_9_11 + batch_3_6_9 = 1
 order_10: batch_10 + batch_0_2_4_8_10 = 1
 order_11: batch_5_9_11 + batch_5_6_11 = 1
Bounds
End
