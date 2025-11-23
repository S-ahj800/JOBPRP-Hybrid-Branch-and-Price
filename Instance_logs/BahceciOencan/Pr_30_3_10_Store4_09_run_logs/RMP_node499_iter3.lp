\ Model JOBPRP_RMP_499
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x3851c38b763c950c
Minimize
  31.6 batch_1 + 31.6 batch_3 + 60.4 batch_4 + 60.4 batch_6 + 60.4 batch_10
   + 67.2 batch_11 + 71.2 batch_5_7_9 + 79.2 batch_4_6_10_11
   + 79.2 batch_1_4_6_11 + 66.4 batch_0_2_3_8 + 70.4 batch_0_1_2_8
   + 75.2 batch_0_2_8_11 + 72.4 batch_1_4_6_10 + 81.2 batch_3_10_11
   + 85.2 batch_1_4_10_11
Subject To
 order_0: batch_0_2_3_8 + batch_0_1_2_8 + batch_0_2_8_11 = 1
 order_1: batch_1 + batch_1_4_6_11 + batch_0_1_2_8 + batch_1_4_6_10
   + batch_1_4_10_11 = 1
 order_2: batch_0_2_3_8 + batch_0_1_2_8 + batch_0_2_8_11 = 1
 order_3: batch_3 + batch_0_2_3_8 + batch_3_10_11 = 1
 order_4: batch_4 + batch_4_6_10_11 + batch_1_4_6_11 + batch_1_4_6_10
   + batch_1_4_10_11 = 1
 order_5: batch_5_7_9 = 1
 order_6: batch_6 + batch_4_6_10_11 + batch_1_4_6_11 + batch_1_4_6_10 = 1
 order_7: batch_5_7_9 = 1
 order_8: batch_0_2_3_8 + batch_0_1_2_8 + batch_0_2_8_11 = 1
 order_9: batch_5_7_9 = 1
 order_10: batch_10 + batch_4_6_10_11 + batch_1_4_6_10 + batch_3_10_11
   + batch_1_4_10_11 = 1
 order_11: batch_11 + batch_4_6_10_11 + batch_1_4_6_11 + batch_0_2_8_11
   + batch_3_10_11 + batch_1_4_10_11 = 1
Bounds
End
