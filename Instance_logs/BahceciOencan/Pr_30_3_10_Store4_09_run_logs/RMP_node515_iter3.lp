\ Model JOBPRP_RMP_515
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x243a62f5ee18d0e7
Minimize
  31.6 batch_1 + 31.6 batch_3 + 60.4 batch_4 + 67.2 batch_5 + 60.4 batch_6
   + 61.2 batch_7 + 34.8 batch_9 + 60.4 batch_10 + 67.2 batch_11
   + 75.2 batch_5_9_11 + 56.8 batch_1_3_9 + 73.2 batch_7_9_11
   + 33.6 batch_1_3 + 79.2 batch_4_6_10_11 + 79.2 batch_1_4_6_11
   + 66.4 batch_0_2_3_8 + 70.4 batch_0_1_2_8 + 68.4 batch_0_2_8_9
   + 77.2 batch_4_7_10_11 + 79.2 batch_5_6_9_10 + 75.2 batch_0_2_8_11
   + 79.2 batch_0_2_7_8 + 76.4 batch_1_6_9_10 + 70.4 batch_1_3_6_10
   + 75.2 batch_0_2_5_8 + 74.4 batch_3_6_9_10 + 72.4 batch_3_4_6_9
   + 81.2 batch_5_6_10_11
Subject To
 order_0: batch_0_2_3_8 + batch_0_1_2_8 + batch_0_2_8_9 + batch_0_2_8_11
   + batch_0_2_7_8 + batch_0_2_5_8 = 1
 order_1: batch_1 + batch_1_3_9 + batch_1_3 + batch_1_4_6_11
   + batch_0_1_2_8 + batch_1_6_9_10 + batch_1_3_6_10 = 1
 order_2: batch_0_2_3_8 + batch_0_1_2_8 + batch_0_2_8_9 + batch_0_2_8_11
   + batch_0_2_7_8 + batch_0_2_5_8 = 1
 order_3: batch_3 + batch_1_3_9 + batch_1_3 + batch_0_2_3_8
   + batch_1_3_6_10 + batch_3_6_9_10 + batch_3_4_6_9 = 1
 order_4: batch_4 + batch_4_6_10_11 + batch_1_4_6_11 + batch_4_7_10_11
   + batch_3_4_6_9 = 1
 order_5: batch_5 + batch_5_9_11 + batch_5_6_9_10 + batch_0_2_5_8
   + batch_5_6_10_11 = 1
 order_6: batch_6 + batch_4_6_10_11 + batch_1_4_6_11 + batch_5_6_9_10
   + batch_1_6_9_10 + batch_1_3_6_10 + batch_3_6_9_10 + batch_3_4_6_9
   + batch_5_6_10_11 = 1
 order_7: batch_7 + batch_7_9_11 + batch_4_7_10_11 + batch_0_2_7_8 = 1
 order_8: batch_0_2_3_8 + batch_0_1_2_8 + batch_0_2_8_9 + batch_0_2_8_11
   + batch_0_2_7_8 + batch_0_2_5_8 = 1
 order_9: batch_9 + batch_5_9_11 + batch_1_3_9 + batch_7_9_11
   + batch_0_2_8_9 + batch_5_6_9_10 + batch_1_6_9_10 + batch_3_6_9_10
   + batch_3_4_6_9 = 1
 order_10: batch_10 + batch_4_6_10_11 + batch_4_7_10_11 + batch_5_6_9_10
   + batch_1_6_9_10 + batch_1_3_6_10 + batch_3_6_9_10 + batch_5_6_10_11
   = 1
 order_11: batch_11 + batch_5_9_11 + batch_7_9_11 + batch_4_6_10_11
   + batch_1_4_6_11 + batch_4_7_10_11 + batch_0_2_8_11 + batch_5_6_10_11
   = 1
Bounds
End
