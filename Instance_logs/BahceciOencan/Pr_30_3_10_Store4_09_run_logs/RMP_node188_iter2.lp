\ Model JOBPRP_RMP_188
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x3d3c0cf575f83ecd
Minimize
  55.6 batch_2 + 60.4 batch_6 + 60.4 batch_10 + 67.2 batch_11
   + 33.6 batch_1_3 + 73.2 batch_5_6_7 + 66.39999822222222 batch_0_4_8_9
   + 77.2 batch_2_5_6_7 + 75.2 batch_5_7_10 + 75.2 batch_2_10_11
Subject To
 order_0: batch_0_4_8_9 = 1
 order_1: batch_1_3 = 1
 order_2: batch_2 + batch_2_5_6_7 + batch_2_10_11 = 1
 order_3: batch_1_3 = 1
 order_4: batch_0_4_8_9 = 1
 order_5: batch_5_6_7 + batch_2_5_6_7 + batch_5_7_10 = 1
 order_6: batch_6 + batch_5_6_7 + batch_2_5_6_7 = 1
 order_7: batch_5_6_7 + batch_2_5_6_7 + batch_5_7_10 = 1
 order_8: batch_0_4_8_9 = 1
 order_9: batch_0_4_8_9 = 1
 order_10: batch_10 + batch_5_7_10 + batch_2_10_11 = 1
 order_11: batch_11 + batch_2_10_11 = 1
Bounds
End
