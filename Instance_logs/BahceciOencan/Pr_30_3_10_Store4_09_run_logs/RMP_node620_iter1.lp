\ Model JOBPRP_RMP_620
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xaa7d1e99a5e6b4c6
Minimize
  54.4 batch_0 + 31.6 batch_1 + 31.6 batch_3 + 60.4 batch_4 + 61.2 batch_7
   + 34.8 batch_9 + 60.4 batch_10 + 67.2 batch_11 + 72.4 batch_0_2_4_6_10
   + 56.8 batch_1_3_9 + 73.2 batch_7_9_11 + 33.6 batch_1_3
   + 75.2 batch_5_8_9_10 + 79.2 batch_0_3_4_11 + 79.2 batch_0_4_9_11
   + 70.4 batch_0_1_2_6 + 79.2 batch_0_3_7_10 + 79.2 batch_0_7_10_11
   + 70.4 batch_0_2_6_9 + 75.2 batch_0_4_7_11 + 72.4 batch_2_3_6_9
Subject To
 order_0: batch_0 + batch_0_2_4_6_10 + batch_0_3_4_11 + batch_0_4_9_11
   + batch_0_1_2_6 + batch_0_3_7_10 + batch_0_7_10_11 + batch_0_2_6_9
   + batch_0_4_7_11 = 1
 order_1: batch_1 + batch_1_3_9 + batch_1_3 + batch_0_1_2_6 = 1
 order_2: batch_0_2_4_6_10 + batch_0_1_2_6 + batch_0_2_6_9 + batch_2_3_6_9
   = 1
 order_3: batch_3 + batch_1_3_9 + batch_1_3 + batch_0_3_4_11
   + batch_0_3_7_10 + batch_2_3_6_9 = 1
 order_4: batch_4 + batch_0_2_4_6_10 + batch_0_3_4_11 + batch_0_4_9_11
   + batch_0_4_7_11 = 1
 order_5: batch_5_8_9_10 = 1
 order_6: batch_0_2_4_6_10 + batch_0_1_2_6 + batch_0_2_6_9 + batch_2_3_6_9
   = 1
 order_7: batch_7 + batch_7_9_11 + batch_0_3_7_10 + batch_0_7_10_11
   + batch_0_4_7_11 = 1
 order_8: batch_5_8_9_10 = 1
 order_9: batch_9 + batch_1_3_9 + batch_7_9_11 + batch_5_8_9_10
   + batch_0_4_9_11 + batch_0_2_6_9 + batch_2_3_6_9 = 1
 order_10: batch_10 + batch_0_2_4_6_10 + batch_5_8_9_10 + batch_0_3_7_10
   + batch_0_7_10_11 = 1
 order_11: batch_11 + batch_7_9_11 + batch_0_3_4_11 + batch_0_4_9_11
   + batch_0_7_10_11 + batch_0_4_7_11 = 1
Bounds
End
