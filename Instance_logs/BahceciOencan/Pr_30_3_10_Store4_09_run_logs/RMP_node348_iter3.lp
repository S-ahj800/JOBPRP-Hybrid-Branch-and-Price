\ Model JOBPRP_RMP_348
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xab7fb307d9ad64c1
Minimize
  31.6 batch_1 + 31.6 batch_3 + 60.4 batch_4 + 34.8 batch_9 + 60.4 batch_10
   + 70.4 batch_0_2_6_8_10 + 73.2 batch_5_7_11 + 56.8 batch_1_3_9
   + 33.6 batch_1_3 + 70.4 batch_3_4_9 + 78.4 batch_1_4_9_10
   + 74.4 batch_1_4_9 + 70.4 batch_1_3_4
Subject To
 order_0: batch_0_2_6_8_10 = 1
 order_1: batch_1 + batch_1_3_9 + batch_1_3 + batch_1_4_9_10 + batch_1_4_9
   + batch_1_3_4 = 1
 order_2: batch_0_2_6_8_10 = 1
 order_3: batch_3 + batch_1_3_9 + batch_1_3 + batch_3_4_9 + batch_1_3_4
   = 1
 order_4: batch_4 + batch_3_4_9 + batch_1_4_9_10 + batch_1_4_9
   + batch_1_3_4 = 1
 order_5: batch_5_7_11 = 1
 order_6: batch_0_2_6_8_10 = 1
 order_7: batch_5_7_11 = 1
 order_8: batch_0_2_6_8_10 = 1
 order_9: batch_9 + batch_1_3_9 + batch_3_4_9 + batch_1_4_9_10
   + batch_1_4_9 = 1
 order_10: batch_10 + batch_0_2_6_8_10 + batch_1_4_9_10 = 1
 order_11: batch_5_7_11 = 1
Bounds
End
