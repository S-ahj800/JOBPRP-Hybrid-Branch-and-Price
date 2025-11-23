\ Model JOBPRP_RMP_483
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xdf04b7b89de005e4
Minimize
  31.6 batch_3 + 60.4 batch_4 + 60.4 batch_6 + 60.4 batch_10
   + 73.2 batch_5_7_11 + 66.4 batch_0_2_3_8 + 66.4 batch_4_6_10
   + 74.4 batch_1_4_6_9 + 68.4 batch_0_2_8_10 + 72.4 batch_3_4_6_10
Subject To
 order_0: batch_0_2_3_8 + batch_0_2_8_10 = 1
 order_1: batch_1_4_6_9 = 1
 order_2: batch_0_2_3_8 + batch_0_2_8_10 = 1
 order_3: batch_3 + batch_0_2_3_8 + batch_3_4_6_10 = 1
 order_4: batch_4 + batch_4_6_10 + batch_1_4_6_9 + batch_3_4_6_10 = 1
 order_5: batch_5_7_11 = 1
 order_6: batch_6 + batch_4_6_10 + batch_1_4_6_9 + batch_3_4_6_10 = 1
 order_7: batch_5_7_11 = 1
 order_8: batch_0_2_3_8 + batch_0_2_8_10 = 1
 order_9: batch_1_4_6_9 = 1
 order_10: batch_10 + batch_4_6_10 + batch_0_2_8_10 + batch_3_4_6_10 = 1
 order_11: batch_5_7_11 = 1
Bounds
End
