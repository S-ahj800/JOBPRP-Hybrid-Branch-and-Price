\ Model JOBPRP_RMP_155
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x6cb4063cb655ba6c
Minimize
  31.6 batch_1 + 31.6 batch_3 + 60.4 batch_6 + 34.8 batch_9 + 60.4 batch_10
   + 70.4 batch_0_2_4_8_10 + 73.2 batch_5_7_11 + 70.4 batch_3_6_9
   + 66.4 batch_0_2_4_8 + 72.4 batch_1_6_9 + 62.4 batch_1_6
Subject To
 order_0: batch_0_2_4_8_10 + batch_0_2_4_8 = 1
 order_1: batch_1 + batch_1_6_9 + batch_1_6 = 1
 order_2: batch_0_2_4_8_10 + batch_0_2_4_8 = 1
 order_3: batch_3 + batch_3_6_9 = 1
 order_4: batch_0_2_4_8_10 + batch_0_2_4_8 = 1
 order_5: batch_5_7_11 = 1
 order_6: batch_6 + batch_3_6_9 + batch_1_6_9 + batch_1_6 = 1
 order_7: batch_5_7_11 = 1
 order_8: batch_0_2_4_8_10 + batch_0_2_4_8 = 1
 order_9: batch_9 + batch_3_6_9 + batch_1_6_9 = 1
 order_10: batch_10 + batch_0_2_4_8_10 = 1
 order_11: batch_5_7_11 = 1
Bounds
End
