\ Model JOBPRP_RMP_119
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xd34bb9ad59f04ef1
Minimize
  31.6 batch_1 + 55.6 batch_2 + 31.6 batch_3 + 67.2 batch_5 + 61.2 batch_7
   + 34.8 batch_9 + 67.2 batch_11 + 75.2 batch_5_9_11 + 33.6 batch_1_3
   + 79.2 batch_2_5_6_10 + 66.4 batch_0_2_4_8 + 63.6 batch_2_3_9
   + 70.4 batch_1_2_6_10 + 73.2 batch_2_5_11 + 83.2 batch_3_6_10_11
   + 79.2 batch_6_7_10_11 + 66.4 batch_0_4_8_9 + 77.2 batch_0_4_7_8
   + 75.2 batch_2_5_9
Subject To
 order_0: batch_0_2_4_8 + batch_0_4_8_9 + batch_0_4_7_8 = 1
 order_1: batch_1 + batch_1_3 + batch_1_2_6_10 = 1
 order_2: batch_2 + batch_2_5_6_10 + batch_0_2_4_8 + batch_2_3_9
   + batch_1_2_6_10 + batch_2_5_11 + batch_2_5_9 = 1
 order_3: batch_3 + batch_1_3 + batch_2_3_9 + batch_3_6_10_11 = 1
 order_4: batch_0_2_4_8 + batch_0_4_8_9 + batch_0_4_7_8 = 1
 order_5: batch_5 + batch_5_9_11 + batch_2_5_6_10 + batch_2_5_11
   + batch_2_5_9 = 1
 order_6: batch_2_5_6_10 + batch_1_2_6_10 + batch_3_6_10_11
   + batch_6_7_10_11 = 1
 order_7: batch_7 + batch_6_7_10_11 + batch_0_4_7_8 = 1
 order_8: batch_0_2_4_8 + batch_0_4_8_9 + batch_0_4_7_8 = 1
 order_9: batch_9 + batch_5_9_11 + batch_2_3_9 + batch_0_4_8_9
   + batch_2_5_9 = 1
 order_10: batch_2_5_6_10 + batch_1_2_6_10 + batch_3_6_10_11
   + batch_6_7_10_11 = 1
 order_11: batch_11 + batch_5_9_11 + batch_2_5_11 + batch_3_6_10_11
   + batch_6_7_10_11 = 1
Bounds
End
