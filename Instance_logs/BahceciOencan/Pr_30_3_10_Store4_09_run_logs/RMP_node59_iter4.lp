\ Model JOBPRP_RMP_59
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x91b1b038f4ae11da
Minimize
  31.6 batch_1 + 55.6 batch_2 + 31.6 batch_3 + 67.2 batch_5 + 61.2 batch_7
   + 34.8 batch_9 + 67.2 batch_11 + 68.4 batch_0_4_6_8_10
   + 56.8 batch_1_3_9 + 33.6 batch_1_3 + 63.6 batch_2_3_9
   + 73.2 batch_2_5_11 + 73.2 batch_2_7_9 + 73.2 batch_1_3_7
   + 77.2 batch_1_7_9 + 77.2 batch_1_3_5 + 79.2 batch_3_9_11
   + 73.2 batch_3_7_9 + 81.2 batch_1_5_11
Subject To
 order_0: batch_0_4_6_8_10 = 1
 order_1: batch_1 + batch_1_3_9 + batch_1_3 + batch_1_3_7 + batch_1_7_9
   + batch_1_3_5 + batch_1_5_11 = 1
 order_2: batch_2 + batch_2_3_9 + batch_2_5_11 + batch_2_7_9 = 1
 order_3: batch_3 + batch_1_3_9 + batch_1_3 + batch_2_3_9 + batch_1_3_7
   + batch_1_3_5 + batch_3_9_11 + batch_3_7_9 = 1
 order_4: batch_0_4_6_8_10 = 1
 order_5: batch_5 + batch_2_5_11 + batch_1_3_5 + batch_1_5_11 = 1
 order_6: batch_0_4_6_8_10 = 1
 order_7: batch_7 + batch_2_7_9 + batch_1_3_7 + batch_1_7_9 + batch_3_7_9
   = 1
 order_8: batch_0_4_6_8_10 = 1
 order_9: batch_9 + batch_1_3_9 + batch_2_3_9 + batch_2_7_9 + batch_1_7_9
   + batch_3_9_11 + batch_3_7_9 = 1
 order_10: batch_0_4_6_8_10 = 1
 order_11: batch_11 + batch_2_5_11 + batch_3_9_11 + batch_1_5_11 = 1
Bounds
End
