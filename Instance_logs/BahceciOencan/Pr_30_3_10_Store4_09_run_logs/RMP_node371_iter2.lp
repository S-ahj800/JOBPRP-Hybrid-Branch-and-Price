\ Model JOBPRP_RMP_371
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xab7fb307d9ad64c1
Minimize
  31.6 batch_1 + 31.6 batch_3 + 60.4 batch_4 + 67.2 batch_5 + 67.2 batch_11
   + 70.4 batch_0_2_6_8_10 + 73.2 batch_7_9_11 + 79.2 batch_1_4_11
   + 71.2 batch_4_5_11 + 73.2 batch_3_7_9 + 73.2 batch_4_7_9
   + 77.2 batch_1_7_9 + 75.2 batch_3_4_5
Subject To
 order_0: batch_0_2_6_8_10 = 1
 order_1: batch_1 + batch_1_4_11 + batch_1_7_9 = 1
 order_2: batch_0_2_6_8_10 = 1
 order_3: batch_3 + batch_3_7_9 + batch_3_4_5 = 1
 order_4: batch_4 + batch_1_4_11 + batch_4_5_11 + batch_4_7_9 + batch_3_4_5
   = 1
 order_5: batch_5 + batch_4_5_11 + batch_3_4_5 = 1
 order_6: batch_0_2_6_8_10 = 1
 order_7: batch_7_9_11 + batch_3_7_9 + batch_4_7_9 + batch_1_7_9 = 1
 order_8: batch_0_2_6_8_10 = 1
 order_9: batch_7_9_11 + batch_3_7_9 + batch_4_7_9 + batch_1_7_9 = 1
 order_10: batch_0_2_6_8_10 = 1
 order_11: batch_11 + batch_7_9_11 + batch_1_4_11 + batch_4_5_11 = 1
Bounds
End
