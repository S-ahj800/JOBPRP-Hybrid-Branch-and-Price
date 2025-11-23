\ Model JOBPRP_RMP_23
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xcb8c0b8de55896d6
Minimize
  31.6 batch_1 + 55.6 batch_2 + 31.6 batch_3 + 34.8 batch_9 + 67.2 batch_11
   + 68.4 batch_0_4_6_8_10 + 73.2 batch_5_7_11 + 71.2 batch_5_7_9
   + 77.2 batch_1_5_7 + 63.6 batch_2_3_9 + 75.2 batch_2_9_11
   + 73.2 batch_2_5_7 + 67.6 batch_1_2_9 + 75.2 batch_2_3_11
Subject To
 order_0: batch_0_4_6_8_10 = 1
 order_1: batch_1 + batch_1_5_7 + batch_1_2_9 = 1
 order_2: batch_2 + batch_2_3_9 + batch_2_9_11 + batch_2_5_7 + batch_1_2_9
   + batch_2_3_11 = 1
 order_3: batch_3 + batch_2_3_9 + batch_2_3_11 = 1
 order_4: batch_0_4_6_8_10 = 1
 order_5: batch_5_7_11 + batch_5_7_9 + batch_1_5_7 + batch_2_5_7 = 1
 order_6: batch_0_4_6_8_10 = 1
 order_7: batch_5_7_11 + batch_5_7_9 + batch_1_5_7 + batch_2_5_7 = 1
 order_8: batch_0_4_6_8_10 = 1
 order_9: batch_9 + batch_5_7_9 + batch_2_3_9 + batch_2_9_11 + batch_1_2_9
   = 1
 order_10: batch_0_4_6_8_10 = 1
 order_11: batch_11 + batch_5_7_11 + batch_2_9_11 + batch_2_3_11 = 1
Bounds
End
