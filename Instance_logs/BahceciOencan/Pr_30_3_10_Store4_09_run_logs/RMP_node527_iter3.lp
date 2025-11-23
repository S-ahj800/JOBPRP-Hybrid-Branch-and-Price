\ Model JOBPRP_RMP_527
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x9e5c5d814d9dd98c
Minimize
  31.6 batch_1 + 31.6 batch_3 + 60.4 batch_10 + 67.2 batch_11
   + 73.2 batch_7_9_11 + 75.2 batch_4_5_6_11 + 66.4 batch_0_2_3_8
   + 70.4 batch_0_1_2_8 + 75.2 batch_0_2_8_11 + 68.4 batch_0_2_8_10
   + 75.19999331818181 batch_4_5_6_10 + 77.2 batch_1_4_5_6
   + 73.2 batch_3_7_9 + 81.2 batch_3_10_11 + 83.2 batch_1_10_11
Subject To
 order_0: batch_0_2_3_8 + batch_0_1_2_8 + batch_0_2_8_11 + batch_0_2_8_10
   = 1
 order_1: batch_1 + batch_0_1_2_8 + batch_1_4_5_6 + batch_1_10_11 = 1
 order_2: batch_0_2_3_8 + batch_0_1_2_8 + batch_0_2_8_11 + batch_0_2_8_10
   = 1
 order_3: batch_3 + batch_0_2_3_8 + batch_3_7_9 + batch_3_10_11 = 1
 order_4: batch_4_5_6_11 + batch_4_5_6_10 + batch_1_4_5_6 = 1
 order_5: batch_4_5_6_11 + batch_4_5_6_10 + batch_1_4_5_6 = 1
 order_6: batch_4_5_6_11 + batch_4_5_6_10 + batch_1_4_5_6 = 1
 order_7: batch_7_9_11 + batch_3_7_9 = 1
 order_8: batch_0_2_3_8 + batch_0_1_2_8 + batch_0_2_8_11 + batch_0_2_8_10
   = 1
 order_9: batch_7_9_11 + batch_3_7_9 = 1
 order_10: batch_10 + batch_0_2_8_10 + batch_4_5_6_10 + batch_3_10_11
   + batch_1_10_11 = 1
 order_11: batch_11 + batch_7_9_11 + batch_4_5_6_11 + batch_0_2_8_11
   + batch_3_10_11 + batch_1_10_11 = 1
Bounds
End
