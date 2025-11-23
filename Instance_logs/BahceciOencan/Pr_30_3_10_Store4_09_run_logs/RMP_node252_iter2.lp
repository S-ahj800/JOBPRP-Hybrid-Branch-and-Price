\ Model JOBPRP_RMP_252
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xac4503cb03dbce2a
Minimize
  31.6 batch_1 + 31.6 batch_3 + 67.2 batch_5 + 60.4 batch_6 + 60.4 batch_10
   + 67.2 batch_11 + 70.4 batch_0_2_4_8_10 + 73.2 batch_7_9_11
   + 33.6 batch_1_3 + 75.2 batch_5_6_11 + 77.2 batch_1_5_6
   + 66.4 batch_0_2_4_8 + 73.2 batch_6_7_9
Subject To
 order_0: batch_0_2_4_8_10 + batch_0_2_4_8 = 1
 order_1: batch_1 + batch_1_3 + batch_1_5_6 = 1
 order_2: batch_0_2_4_8_10 + batch_0_2_4_8 = 1
 order_3: batch_3 + batch_1_3 = 1
 order_4: batch_0_2_4_8_10 + batch_0_2_4_8 = 1
 order_5: batch_5 + batch_5_6_11 + batch_1_5_6 = 1
 order_6: batch_6 + batch_5_6_11 + batch_1_5_6 + batch_6_7_9 = 1
 order_7: batch_7_9_11 + batch_6_7_9 = 1
 order_8: batch_0_2_4_8_10 + batch_0_2_4_8 = 1
 order_9: batch_7_9_11 + batch_6_7_9 = 1
 order_10: batch_10 + batch_0_2_4_8_10 = 1
 order_11: batch_11 + batch_7_9_11 + batch_5_6_11 = 1
Bounds
End
