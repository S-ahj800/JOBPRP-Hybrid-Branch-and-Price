\ Model JOBPRP_RMP_264
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x60b6d9af3f486ab
Minimize
  31.6 batch_1 + 55.6 batch_2 + 31.6 batch_3 + 34.8 batch_9 + 67.2 batch_11
   + 33.6 batch_1_3 + 77.2 batch_2_7_10_11 + 75.2 batch_5_6_9
   + 75.2 batch_5_6_11 + 77.2 batch_2_5_6_11 + 66.4 batch_0_4_8_9
   + 81.2 batch_1_7_10 + 75.2 batch_7_9_10 + 79.2 batch_2_3_7_10
   + 79.2 batch_1_2_5_6 + 66.4 batch_0_3_4_8
Subject To
 order_0: batch_0_4_8_9 + batch_0_3_4_8 = 1
 order_1: batch_1 + batch_1_3 + batch_1_7_10 + batch_1_2_5_6 = 1
 order_2: batch_2 + batch_2_7_10_11 + batch_2_5_6_11 + batch_2_3_7_10
   + batch_1_2_5_6 = 1
 order_3: batch_3 + batch_1_3 + batch_2_3_7_10 + batch_0_3_4_8 = 1
 order_4: batch_0_4_8_9 + batch_0_3_4_8 = 1
 order_5: batch_5_6_9 + batch_5_6_11 + batch_2_5_6_11 + batch_1_2_5_6 = 1
 order_6: batch_5_6_9 + batch_5_6_11 + batch_2_5_6_11 + batch_1_2_5_6 = 1
 order_7: batch_2_7_10_11 + batch_1_7_10 + batch_7_9_10 + batch_2_3_7_10
   = 1
 order_8: batch_0_4_8_9 + batch_0_3_4_8 = 1
 order_9: batch_9 + batch_5_6_9 + batch_0_4_8_9 + batch_7_9_10 = 1
 order_10: batch_2_7_10_11 + batch_1_7_10 + batch_7_9_10 + batch_2_3_7_10
   = 1
 order_11: batch_11 + batch_2_7_10_11 + batch_5_6_11 + batch_2_5_6_11 = 1
Bounds
End
