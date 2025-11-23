\ Model JOBPRP_RMP_167
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x74a1c5b35df196d
Minimize
  31.6 batch_1 + 55.6 batch_2 + 31.6 batch_3 + 60.4 batch_6 + 34.8 batch_9
   + 60.4 batch_10 + 73.2 batch_5_7_11 + 74.4 batch_2_3_9_10
   + 66.4 batch_0_4_8_10 + 70.4 batch_3_6_9 + 72.4 batch_2_3_6_9
   + 66.39999822222222 batch_0_4_8_9 + 78.4 batch_1_2_9_10
   + 74.4 batch_1_2_6_9
Subject To
 order_0: batch_0_4_8_10 + batch_0_4_8_9 = 1
 order_1: batch_1 + batch_1_2_9_10 + batch_1_2_6_9 = 1
 order_2: batch_2 + batch_2_3_9_10 + batch_2_3_6_9 + batch_1_2_9_10
   + batch_1_2_6_9 = 1
 order_3: batch_3 + batch_2_3_9_10 + batch_3_6_9 + batch_2_3_6_9 = 1
 order_4: batch_0_4_8_10 + batch_0_4_8_9 = 1
 order_5: batch_5_7_11 = 1
 order_6: batch_6 + batch_3_6_9 + batch_2_3_6_9 + batch_1_2_6_9 = 1
 order_7: batch_5_7_11 = 1
 order_8: batch_0_4_8_10 + batch_0_4_8_9 = 1
 order_9: batch_9 + batch_2_3_9_10 + batch_3_6_9 + batch_2_3_6_9
   + batch_0_4_8_9 + batch_1_2_9_10 + batch_1_2_6_9 = 1
 order_10: batch_10 + batch_2_3_9_10 + batch_0_4_8_10 + batch_1_2_9_10 = 1
 order_11: batch_5_7_11 = 1
Bounds
End
