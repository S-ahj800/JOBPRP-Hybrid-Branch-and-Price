\ Model JOBPRP_RMP_448
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x3d3c0cf575f83ecd
Minimize
  31.6 batch_1 + 31.6 batch_3 + 67.2 batch_5 + 34.8 batch_9 + 60.4 batch_10
   + 33.6 batch_1_3 + 75.2 batch_0_2_8_11 + 77.2 batch_4_6_7_10
   + 75.2 batch_4_6_7_9 + 77.2 batch_1_4_6_7
Subject To
 order_0: batch_0_2_8_11 = 1
 order_1: batch_1 + batch_1_3 + batch_1_4_6_7 = 1
 order_2: batch_0_2_8_11 = 1
 order_3: batch_3 + batch_1_3 = 1
 order_4: batch_4_6_7_10 + batch_4_6_7_9 + batch_1_4_6_7 = 1
 order_5: batch_5 = 1
 order_6: batch_4_6_7_10 + batch_4_6_7_9 + batch_1_4_6_7 = 1
 order_7: batch_4_6_7_10 + batch_4_6_7_9 + batch_1_4_6_7 = 1
 order_8: batch_0_2_8_11 = 1
 order_9: batch_9 + batch_4_6_7_9 = 1
 order_10: batch_10 + batch_4_6_7_10 = 1
 order_11: batch_0_2_8_11 = 1
Bounds
End
