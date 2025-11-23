\ Model JOBPRP_RMP_424
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xdf04b7b89de005e4
Minimize
  31.6 batch_3 + 67.2 batch_5 + 60.4 batch_10 + 56.8 batch_1_3_9
   + 73.2 batch_4_5_6_7 + 75.2 batch_0_2_8_11 + 77.2 batch_4_6_7_10
   + 71.2 batch_5_10 + 76.4 batch_1_9_10 + 79.2 batch_3_5_10
Subject To
 order_0: batch_0_2_8_11 = 1
 order_1: batch_1_3_9 + batch_1_9_10 = 1
 order_2: batch_0_2_8_11 = 1
 order_3: batch_3 + batch_1_3_9 + batch_3_5_10 = 1
 order_4: batch_4_5_6_7 + batch_4_6_7_10 = 1
 order_5: batch_5 + batch_4_5_6_7 + batch_5_10 + batch_3_5_10 = 1
 order_6: batch_4_5_6_7 + batch_4_6_7_10 = 1
 order_7: batch_4_5_6_7 + batch_4_6_7_10 = 1
 order_8: batch_0_2_8_11 = 1
 order_9: batch_1_3_9 + batch_1_9_10 = 1
 order_10: batch_10 + batch_4_6_7_10 + batch_5_10 + batch_1_9_10
   + batch_3_5_10 = 1
 order_11: batch_0_2_8_11 = 1
Bounds
End
