\ Model JOBPRP_RMP_276
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x3648b7a55e806bb3
Minimize
  31.6 batch_1 + 55.6 batch_2 + 31.6 batch_3 + 67.2 batch_5 + 60.4 batch_6
   + 67.2 batch_11 + 33.6 batch_1_3 + 71.2 batch_0_4_5_8
   + 64.4 batch_0_4_6_8 + 75.2 batch_7_9_10 + 64.4 batch_1_3_6
   + 66.4 batch_1_2_3_6 + 81.2 batch_1_5_11 + 79.2 batch_3_5_11
   + 75.2 batch_0_4_8_11 + 73.2 batch_2_5_11 + 77.2 batch_1_2_6_11
Subject To
 order_0: batch_0_4_5_8 + batch_0_4_6_8 + batch_0_4_8_11 = 1
 order_1: batch_1 + batch_1_3 + batch_1_3_6 + batch_1_2_3_6 + batch_1_5_11
   + batch_1_2_6_11 = 1
 order_2: batch_2 + batch_1_2_3_6 + batch_2_5_11 + batch_1_2_6_11 = 1
 order_3: batch_3 + batch_1_3 + batch_1_3_6 + batch_1_2_3_6 + batch_3_5_11
   = 1
 order_4: batch_0_4_5_8 + batch_0_4_6_8 + batch_0_4_8_11 = 1
 order_5: batch_5 + batch_0_4_5_8 + batch_1_5_11 + batch_3_5_11
   + batch_2_5_11 = 1
 order_6: batch_6 + batch_0_4_6_8 + batch_1_3_6 + batch_1_2_3_6
   + batch_1_2_6_11 = 1
 order_7: batch_7_9_10 = 1
 order_8: batch_0_4_5_8 + batch_0_4_6_8 + batch_0_4_8_11 = 1
 order_9: batch_7_9_10 = 1
 order_10: batch_7_9_10 = 1
 order_11: batch_11 + batch_1_5_11 + batch_3_5_11 + batch_0_4_8_11
   + batch_2_5_11 + batch_1_2_6_11 = 1
Bounds
End
