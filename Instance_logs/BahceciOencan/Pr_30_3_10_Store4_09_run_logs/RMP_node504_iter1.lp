\ Model JOBPRP_RMP_504
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x343db015bf75f3f0
Minimize
  60.4 batch_6 + 67.2 batch_11 + 71.2 batch_5_7_9 + 33.6 batch_1_3
   + 79.2 batch_4_6_10_11 + 75.2 batch_0_2_8_11 + 74.4 batch_1_3_4_10
Subject To
 order_0: batch_0_2_8_11 = 1
 order_1: batch_1_3 + batch_1_3_4_10 = 1
 order_2: batch_0_2_8_11 = 1
 order_3: batch_1_3 + batch_1_3_4_10 = 1
 order_4: batch_4_6_10_11 + batch_1_3_4_10 = 1
 order_5: batch_5_7_9 = 1
 order_6: batch_6 + batch_4_6_10_11 = 1
 order_7: batch_5_7_9 = 1
 order_8: batch_0_2_8_11 = 1
 order_9: batch_5_7_9 = 1
 order_10: batch_4_6_10_11 + batch_1_3_4_10 = 1
 order_11: batch_11 + batch_4_6_10_11 + batch_0_2_8_11 = 1
Bounds
End
