\ Model JOBPRP_RMP_216
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x6cb4063cb655ba6c
Minimize
  31.6 batch_3 + 67.2 batch_5 + 61.2 batch_7 + 60.4 batch_10 + 67.2 batch_11
   + 68.4 batch_0_2_4_6_8 + 56.8 batch_1_3_9 + 77.2 batch_1_7_9
   + 77.2 batch_5_10_11 + 75.2 batch_3_7_11 + 75.2 batch_7_10_11
Subject To
 order_0: batch_0_2_4_6_8 = 1
 order_1: batch_1_3_9 + batch_1_7_9 = 1
 order_2: batch_0_2_4_6_8 = 1
 order_3: batch_3 + batch_1_3_9 + batch_3_7_11 = 1
 order_4: batch_0_2_4_6_8 = 1
 order_5: batch_5 + batch_5_10_11 = 1
 order_6: batch_0_2_4_6_8 = 1
 order_7: batch_7 + batch_1_7_9 + batch_3_7_11 + batch_7_10_11 = 1
 order_8: batch_0_2_4_6_8 = 1
 order_9: batch_1_3_9 + batch_1_7_9 = 1
 order_10: batch_10 + batch_5_10_11 + batch_7_10_11 = 1
 order_11: batch_11 + batch_5_10_11 + batch_3_7_11 + batch_7_10_11 = 1
Bounds
End
