\ Model JOBPRP_RMP_375
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x647afa202a01d8f8
Minimize
  60.4 batch_4 + 67.2 batch_5 + 67.2 batch_11 + 70.4 batch_0_2_6_8_10
   + 33.6 batch_1_3 + 71.2 batch_4_5_11 + 73.2 batch_4_7_9
   + 77.2 batch_1_3_5
Subject To
 order_0: batch_0_2_6_8_10 = 1
 order_1: batch_1_3 + batch_1_3_5 = 1
 order_2: batch_0_2_6_8_10 = 1
 order_3: batch_1_3 + batch_1_3_5 = 1
 order_4: batch_4 + batch_4_5_11 + batch_4_7_9 = 1
 order_5: batch_5 + batch_4_5_11 + batch_1_3_5 = 1
 order_6: batch_0_2_6_8_10 = 1
 order_7: batch_4_7_9 = 1
 order_8: batch_0_2_6_8_10 = 1
 order_9: batch_4_7_9 = 1
 order_10: batch_0_2_6_8_10 = 1
 order_11: batch_11 + batch_4_5_11 = 1
Bounds
End
