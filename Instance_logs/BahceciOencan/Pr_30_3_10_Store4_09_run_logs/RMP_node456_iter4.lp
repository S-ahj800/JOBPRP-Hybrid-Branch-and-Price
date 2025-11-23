\ Model JOBPRP_RMP_456
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x74a1c5b35df196d
Minimize
  60.4 batch_4 + 34.8 batch_9 + 60.4 batch_10 + 67.2 batch_11
   + 56.8 batch_1_3_9 + 33.6 batch_1_3 + 68.4 batch_0_2_8_9
   + 75.2 batch_0_2_8_11 + 79.19999463000002 batch_5_6_7_10
   + 74.4 batch_1_3_4_10 + 73.2 batch_5_6_7 + 75.2 batch_4_9_11
   + 73.19999860397904 batch_5_6_7 + 33.59999823391277 batch_1_3
Subject To
 order_0: batch_0_2_8_9 + batch_0_2_8_11 = 1
 order_1: batch_1_3_9 + batch_1_3 + batch_1_3_4_10 + batch_1_3 = 1
 order_2: batch_0_2_8_9 + batch_0_2_8_11 = 1
 order_3: batch_1_3_9 + batch_1_3 + batch_1_3_4_10 + batch_1_3 = 1
 order_4: batch_4 + batch_1_3_4_10 + batch_4_9_11 = 1
 order_5: batch_5_6_7_10 + batch_5_6_7 + batch_5_6_7 = 1
 order_6: batch_5_6_7_10 + batch_5_6_7 + batch_5_6_7 = 1
 order_7: batch_5_6_7_10 + batch_5_6_7 + batch_5_6_7 = 1
 order_8: batch_0_2_8_9 + batch_0_2_8_11 = 1
 order_9: batch_9 + batch_1_3_9 + batch_0_2_8_9 + batch_4_9_11 = 1
 order_10: batch_10 + batch_5_6_7_10 + batch_1_3_4_10 = 1
 order_11: batch_11 + batch_0_2_8_11 + batch_4_9_11 = 1
Bounds
End
