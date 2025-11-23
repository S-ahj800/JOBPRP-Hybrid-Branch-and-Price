\ Model JOBPRP_RMP_652
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xef4b06c9e1c65b82
Minimize
  31.6 batch_1 + 55.6 batch_2 + 31.6 batch_3 + 67.2 batch_5 + 60.4 batch_6
   + 58.4 batch_8 + 60.4 batch_10 + 67.2 batch_11 + 74.4 batch_0_1_2_9
   + 75.2 batch_4_5_7_10 + 71.2 batch_4_5_7_8 + 73.2 batch_4_5_6_7
   + 33.6 batch_1_3 + 72.4 batch_0_1_6_9 + 70.4 batch_0_2_3_9
   + 70.4 batch_0_6_9_10 + 70.4 batch_1_6_8_10 + 79.2 batch_3_6_8_11
   + 68.4 batch_1_3_6_8 + 75.2 batch_0_5_6_9 + 75.2 batch_4_6_7_11
   + 75.2 batch_2_8_10_11 + 79.2 batch_0_2_9_11 + 79.2 batch_2_5_10_11
Subject To
 order_0: batch_0_1_2_9 + batch_0_1_6_9 + batch_0_2_3_9 + batch_0_6_9_10
   + batch_0_5_6_9 + batch_0_2_9_11 = 1
 order_1: batch_1 + batch_0_1_2_9 + batch_1_3 + batch_0_1_6_9
   + batch_1_6_8_10 + batch_1_3_6_8 = 1
 order_2: batch_2 + batch_0_1_2_9 + batch_0_2_3_9 + batch_2_8_10_11
   + batch_0_2_9_11 + batch_2_5_10_11 = 1
 order_3: batch_3 + batch_1_3 + batch_0_2_3_9 + batch_3_6_8_11
   + batch_1_3_6_8 = 1
 order_4: batch_4_5_7_10 + batch_4_5_7_8 + batch_4_5_6_7 + batch_4_6_7_11
   = 1
 order_5: batch_5 + batch_4_5_7_10 + batch_4_5_7_8 + batch_4_5_6_7
   + batch_0_5_6_9 + batch_2_5_10_11 = 1
 order_6: batch_6 + batch_4_5_6_7 + batch_0_1_6_9 + batch_0_6_9_10
   + batch_1_6_8_10 + batch_3_6_8_11 + batch_1_3_6_8 + batch_0_5_6_9
   + batch_4_6_7_11 = 1
 order_7: batch_4_5_7_10 + batch_4_5_7_8 + batch_4_5_6_7 + batch_4_6_7_11
   = 1
 order_8: batch_8 + batch_4_5_7_8 + batch_1_6_8_10 + batch_3_6_8_11
   + batch_1_3_6_8 + batch_2_8_10_11 = 1
 order_9: batch_0_1_2_9 + batch_0_1_6_9 + batch_0_2_3_9 + batch_0_6_9_10
   + batch_0_5_6_9 + batch_0_2_9_11 = 1
 order_10: batch_10 + batch_4_5_7_10 + batch_0_6_9_10 + batch_1_6_8_10
   + batch_2_8_10_11 + batch_2_5_10_11 = 1
 order_11: batch_11 + batch_3_6_8_11 + batch_4_6_7_11 + batch_2_8_10_11
   + batch_0_2_9_11 + batch_2_5_10_11 = 1
Bounds
End
