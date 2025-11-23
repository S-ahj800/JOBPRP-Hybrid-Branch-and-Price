\ Model JOBPRP_RMP_228
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x2d4a5ac5a7fe20d6
Minimize
  55.6 batch_2 + 67.2 batch_5 + 60.4 batch_6 + 61.2 batch_7 + 60.4 batch_10
   + 67.2 batch_11 + 56.8 batch_1_3_9 + 79.2 batch_2_5_10_11
   + 66.4 batch_0_4_8_10 + 71.2 batch_0_4_5_8 + 75.2 batch_2_5_10
   + 73.2 batch_6_7_11 + 64.4 batch_0_4_6_8 + 77.2 batch_0_4_7_8
Subject To
 order_0: batch_0_4_8_10 + batch_0_4_5_8 + batch_0_4_6_8 + batch_0_4_7_8
   = 1
 order_1: batch_1_3_9 = 1
 order_2: batch_2 + batch_2_5_10_11 + batch_2_5_10 = 1
 order_3: batch_1_3_9 = 1
 order_4: batch_0_4_8_10 + batch_0_4_5_8 + batch_0_4_6_8 + batch_0_4_7_8
   = 1
 order_5: batch_5 + batch_2_5_10_11 + batch_0_4_5_8 + batch_2_5_10 = 1
 order_6: batch_6 + batch_6_7_11 + batch_0_4_6_8 = 1
 order_7: batch_7 + batch_6_7_11 + batch_0_4_7_8 = 1
 order_8: batch_0_4_8_10 + batch_0_4_5_8 + batch_0_4_6_8 + batch_0_4_7_8
   = 1
 order_9: batch_1_3_9 = 1
 order_10: batch_10 + batch_2_5_10_11 + batch_0_4_8_10 + batch_2_5_10 = 1
 order_11: batch_11 + batch_2_5_10_11 + batch_6_7_11 = 1
Bounds
End
