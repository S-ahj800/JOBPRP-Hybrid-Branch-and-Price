\ Model JOBPRP_RMP_320
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xd371101b11d07aaf
Minimize
  61.2 batch_7 + 60.4 batch_10 + 67.2 batch_11 + 75.2 batch_5_9_11
   + 33.6 batch_1_3 + 75.2 batch_2_6_7_11 + 75.2 batch_5_9_10
   + 77.2 batch_0_4_7_8 + 66.4 batch_1_2_3_6 + 70.4 batch_1_3_10
   + 75.2 batch_0_4_8_11 + 79.2 batch_2_5_6_9
Subject To
 order_0: batch_0_4_7_8 + batch_0_4_8_11 = 1
 order_1: batch_1_3 + batch_1_2_3_6 + batch_1_3_10 = 1
 order_2: batch_2_6_7_11 + batch_1_2_3_6 + batch_2_5_6_9 = 1
 order_3: batch_1_3 + batch_1_2_3_6 + batch_1_3_10 = 1
 order_4: batch_0_4_7_8 + batch_0_4_8_11 = 1
 order_5: batch_5_9_11 + batch_5_9_10 + batch_2_5_6_9 = 1
 order_6: batch_2_6_7_11 + batch_1_2_3_6 + batch_2_5_6_9 = 1
 order_7: batch_7 + batch_2_6_7_11 + batch_0_4_7_8 = 1
 order_8: batch_0_4_7_8 + batch_0_4_8_11 = 1
 order_9: batch_5_9_11 + batch_5_9_10 + batch_2_5_6_9 = 1
 order_10: batch_10 + batch_5_9_10 + batch_1_3_10 = 1
 order_11: batch_11 + batch_5_9_11 + batch_2_6_7_11 + batch_0_4_8_11 = 1
Bounds
End
