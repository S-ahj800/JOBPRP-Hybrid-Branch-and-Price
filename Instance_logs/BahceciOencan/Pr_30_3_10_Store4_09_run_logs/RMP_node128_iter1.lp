\ Model JOBPRP_RMP_128
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x17dfc282571bc36
Minimize
  31.6 batch_1 + 31.6 batch_3 + 67.2 batch_5 + 61.2 batch_7 + 67.2 batch_11
   + 33.6 batch_1_3 + 79.2 batch_2_5_6_10 + 70.4 batch_1_2_6_10
   + 66.4 batch_0_4_8_9 + 73.2 batch_1_3_7
Subject To
 order_0: batch_0_4_8_9 = 1
 order_1: batch_1 + batch_1_3 + batch_1_2_6_10 + batch_1_3_7 = 1
 order_2: batch_2_5_6_10 + batch_1_2_6_10 = 1
 order_3: batch_3 + batch_1_3 + batch_1_3_7 = 1
 order_4: batch_0_4_8_9 = 1
 order_5: batch_5 + batch_2_5_6_10 = 1
 order_6: batch_2_5_6_10 + batch_1_2_6_10 = 1
 order_7: batch_7 + batch_1_3_7 = 1
 order_8: batch_0_4_8_9 = 1
 order_9: batch_0_4_8_9 = 1
 order_10: batch_2_5_6_10 + batch_1_2_6_10 = 1
 order_11: batch_11 = 1
Bounds
End
