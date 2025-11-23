\ Model JOBPRP_RMP_179
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x3851c38b763c950c
Minimize
  31.6 batch_1 + 55.6 batch_2 + 31.6 batch_3 + 60.4 batch_6 + 60.4 batch_10
   + 67.2 batch_11 + 71.2 batch_5_7_9 + 66.4 batch_0_4_8_10
   + 77.2 batch_1_2_6_11 + 75.2 batch_0_4_8_11 + 81.2 batch_2_3_10_11
   + 64.4 batch_0_4_6_8 + 77.2 batch_2_3_6_11
   + 71.19999835294118 batch_5_7_9 + 66.4 batch_0_3_4_8
Subject To
 order_0: batch_0_4_8_10 + batch_0_4_8_11 + batch_0_4_6_8 + batch_0_3_4_8
   = 1
 order_1: batch_1 + batch_1_2_6_11 = 1
 order_2: batch_2 + batch_1_2_6_11 + batch_2_3_10_11 + batch_2_3_6_11 = 1
 order_3: batch_3 + batch_2_3_10_11 + batch_2_3_6_11 + batch_0_3_4_8 = 1
 order_4: batch_0_4_8_10 + batch_0_4_8_11 + batch_0_4_6_8 + batch_0_3_4_8
   = 1
 order_5: batch_5_7_9 + batch_5_7_9 = 1
 order_6: batch_6 + batch_1_2_6_11 + batch_0_4_6_8 + batch_2_3_6_11 = 1
 order_7: batch_5_7_9 + batch_5_7_9 = 1
 order_8: batch_0_4_8_10 + batch_0_4_8_11 + batch_0_4_6_8 + batch_0_3_4_8
   = 1
 order_9: batch_5_7_9 + batch_5_7_9 = 1
 order_10: batch_10 + batch_0_4_8_10 + batch_2_3_10_11 = 1
 order_11: batch_11 + batch_1_2_6_11 + batch_0_4_8_11 + batch_2_3_10_11
   + batch_2_3_6_11 = 1
Bounds
End
