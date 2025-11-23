\ Model JOBPRP_RMP_307
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xd66e1de5fbb6df4e
Minimize
  31.6 batch_1 + 55.6 batch_2 + 31.6 batch_3 + 67.2 batch_5 + 60.4 batch_6
   + 61.2 batch_7 + 34.8 batch_9 + 67.2 batch_11 + 33.6 batch_1_3
   + 75.2 batch_2_6_7_11 + 66.4 batch_0_4_8_10 + 75.2 batch_5_6_9
   + 70.4 batch_3_6_9 + 72.4 batch_2_3_6_9 + 75.2 batch_3_7_11
   + 75.2 batch_2_3_6_7 + 75.2 batch_2_5_9 + 79.2 batch_2_5_6_9
   + 75.2 batch_1_6_7 + 73.2 batch_1_3_7 + 79.2 batch_1_7_11
   + 77.2 batch_1_3_5
Subject To
 order_0: batch_0_4_8_10 = 1
 order_1: batch_1 + batch_1_3 + batch_1_6_7 + batch_1_3_7 + batch_1_7_11
   + batch_1_3_5 = 1
 order_2: batch_2 + batch_2_6_7_11 + batch_2_3_6_9 + batch_2_3_6_7
   + batch_2_5_9 + batch_2_5_6_9 = 1
 order_3: batch_3 + batch_1_3 + batch_3_6_9 + batch_2_3_6_9 + batch_3_7_11
   + batch_2_3_6_7 + batch_1_3_7 + batch_1_3_5 = 1
 order_4: batch_0_4_8_10 = 1
 order_5: batch_5 + batch_5_6_9 + batch_2_5_9 + batch_2_5_6_9 + batch_1_3_5
   = 1
 order_6: batch_6 + batch_2_6_7_11 + batch_5_6_9 + batch_3_6_9
   + batch_2_3_6_9 + batch_2_3_6_7 + batch_2_5_6_9 + batch_1_6_7 = 1
 order_7: batch_7 + batch_2_6_7_11 + batch_3_7_11 + batch_2_3_6_7
   + batch_1_6_7 + batch_1_3_7 + batch_1_7_11 = 1
 order_8: batch_0_4_8_10 = 1
 order_9: batch_9 + batch_5_6_9 + batch_3_6_9 + batch_2_3_6_9 + batch_2_5_9
   + batch_2_5_6_9 = 1
 order_10: batch_0_4_8_10 = 1
 order_11: batch_11 + batch_2_6_7_11 + batch_3_7_11 + batch_1_7_11 = 1
Bounds
End
