\ Model JOBPRP_RMP_328
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x5f6b5a4872660379
Minimize
  31.6 batch_1 + 55.6 batch_2 + 31.6 batch_3 + 67.2 batch_5 + 61.2 batch_7
   + 34.8 batch_9 + 60.4 batch_10 + 67.2 batch_11 + 75.2 batch_5_9_11
   + 33.6 batch_1_3 + 74.4 batch_2_3_9_10 + 75.2 batch_5_9_10
   + 79.2 batch_2_5_9_10 + 64.4 batch_0_4_6_8 + 75.2 batch_3_7_11
   + 83.2 batch_1_10_11 + 72.4 batch_1_2_3_10 + 75.2 batch_1_2_7
   + 71.2 batch_2_3_7 + 59.6 batch_1_2_3
Subject To
 order_0: batch_0_4_6_8 = 1
 order_1: batch_1 + batch_1_3 + batch_1_10_11 + batch_1_2_3_10
   + batch_1_2_7 + batch_1_2_3 = 1
 order_2: batch_2 + batch_2_3_9_10 + batch_2_5_9_10 + batch_1_2_3_10
   + batch_1_2_7 + batch_2_3_7 + batch_1_2_3 = 1
 order_3: batch_3 + batch_1_3 + batch_2_3_9_10 + batch_3_7_11
   + batch_1_2_3_10 + batch_2_3_7 + batch_1_2_3 = 1
 order_4: batch_0_4_6_8 = 1
 order_5: batch_5 + batch_5_9_11 + batch_5_9_10 + batch_2_5_9_10 = 1
 order_6: batch_0_4_6_8 = 1
 order_7: batch_7 + batch_3_7_11 + batch_1_2_7 + batch_2_3_7 = 1
 order_8: batch_0_4_6_8 = 1
 order_9: batch_9 + batch_5_9_11 + batch_2_3_9_10 + batch_5_9_10
   + batch_2_5_9_10 = 1
 order_10: batch_10 + batch_2_3_9_10 + batch_5_9_10 + batch_2_5_9_10
   + batch_1_10_11 + batch_1_2_3_10 = 1
 order_11: batch_11 + batch_5_9_11 + batch_3_7_11 + batch_1_10_11 = 1
Bounds
End
