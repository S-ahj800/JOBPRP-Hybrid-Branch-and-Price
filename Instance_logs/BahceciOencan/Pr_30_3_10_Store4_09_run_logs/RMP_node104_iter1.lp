\ Model JOBPRP_RMP_104
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x1ac2c885ee66887b
Minimize
  55.6 batch_2 + 67.2 batch_5 + 67.2 batch_11 + 73.2 batch_7_9_11
   + 33.6 batch_1_3 + 79.2 batch_2_5_6_10 + 66.4 batch_0_2_4_8
   + 73.2 batch_2_5_11 + 71.2 batch_0_4_5_8 + 81.2 batch_5_6_10_11
Subject To
 order_0: batch_0_2_4_8 + batch_0_4_5_8 = 1
 order_1: batch_1_3 = 1
 order_2: batch_2 + batch_2_5_6_10 + batch_0_2_4_8 + batch_2_5_11 = 1
 order_3: batch_1_3 = 1
 order_4: batch_0_2_4_8 + batch_0_4_5_8 = 1
 order_5: batch_5 + batch_2_5_6_10 + batch_2_5_11 + batch_0_4_5_8
   + batch_5_6_10_11 = 1
 order_6: batch_2_5_6_10 + batch_5_6_10_11 = 1
 order_7: batch_7_9_11 = 1
 order_8: batch_0_2_4_8 + batch_0_4_5_8 = 1
 order_9: batch_7_9_11 = 1
 order_10: batch_2_5_6_10 + batch_5_6_10_11 = 1
 order_11: batch_11 + batch_7_9_11 + batch_2_5_11 + batch_5_6_10_11 = 1
Bounds
End
