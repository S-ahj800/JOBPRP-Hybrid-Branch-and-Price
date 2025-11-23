\ Model JOBPRP_RMP_472
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xefe8192580da349a
Minimize
  60.4 batch_4 + 60.4 batch_6 + 60.4 batch_10 + 73.2 batch_5_7_11
   + 33.6 batch_1_3 + 68.4 batch_0_2_8_9 + 70.4 batch_1_3_6_10
   + 66.4 batch_4_6_10 + 74.4 batch_1_3_4_10 + 70.4 batch_1_3_4_6
   + 73.1999943912882 batch_5_7_11
Subject To
 order_0: batch_0_2_8_9 = 1
 order_1: batch_1_3 + batch_1_3_6_10 + batch_1_3_4_10 + batch_1_3_4_6 = 1
 order_2: batch_0_2_8_9 = 1
 order_3: batch_1_3 + batch_1_3_6_10 + batch_1_3_4_10 + batch_1_3_4_6 = 1
 order_4: batch_4 + batch_4_6_10 + batch_1_3_4_10 + batch_1_3_4_6 = 1
 order_5: batch_5_7_11 + batch_5_7_11 = 1
 order_6: batch_6 + batch_1_3_6_10 + batch_4_6_10 + batch_1_3_4_6 = 1
 order_7: batch_5_7_11 + batch_5_7_11 = 1
 order_8: batch_0_2_8_9 = 1
 order_9: batch_0_2_8_9 = 1
 order_10: batch_10 + batch_1_3_6_10 + batch_4_6_10 + batch_1_3_4_10 = 1
 order_11: batch_5_7_11 + batch_5_7_11 = 1
Bounds
End
