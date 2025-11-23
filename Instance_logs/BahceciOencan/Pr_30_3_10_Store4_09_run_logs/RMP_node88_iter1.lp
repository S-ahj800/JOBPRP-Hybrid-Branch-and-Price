\ Model JOBPRP_RMP_88
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x95328414d9b42c6
Minimize
  67.2 batch_5 + 34.8 batch_9 + 67.2 batch_11 + 75.2 batch_5_9_11
   + 56.8 batch_1_3_9 + 33.6 batch_1_3 + 71.2 batch_2_7_11
   + 79.2 batch_5_6_9_10 + 73.2 batch_2_7_9 + 66.4 batch_0_4_8_9
   + 79.2 batch_2_6_7_10 + 81.2 batch_5_6_10_11
Subject To
 order_0: batch_0_4_8_9 = 1
 order_1: batch_1_3_9 + batch_1_3 = 1
 order_2: batch_2_7_11 + batch_2_7_9 + batch_2_6_7_10 = 1
 order_3: batch_1_3_9 + batch_1_3 = 1
 order_4: batch_0_4_8_9 = 1
 order_5: batch_5 + batch_5_9_11 + batch_5_6_9_10 + batch_5_6_10_11 = 1
 order_6: batch_5_6_9_10 + batch_2_6_7_10 + batch_5_6_10_11 = 1
 order_7: batch_2_7_11 + batch_2_7_9 + batch_2_6_7_10 = 1
 order_8: batch_0_4_8_9 = 1
 order_9: batch_9 + batch_5_9_11 + batch_1_3_9 + batch_5_6_9_10
   + batch_2_7_9 + batch_0_4_8_9 = 1
 order_10: batch_5_6_9_10 + batch_2_6_7_10 + batch_5_6_10_11 = 1
 order_11: batch_11 + batch_5_9_11 + batch_2_7_11 + batch_5_6_10_11 = 1
Bounds
End
