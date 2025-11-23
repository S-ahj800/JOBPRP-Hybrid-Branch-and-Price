\ Model JOBPRP_RMP_208
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x9b4ec1837accb1ce
Minimize
  31.6 batch_3 + 67.2 batch_5 + 61.2 batch_7 + 60.4 batch_10
   + 56.8 batch_1_3_9 + 75.2 batch_2_6_7_11 + 66.4 batch_0_4_8_10
   + 71.2 batch_0_4_5_8 + 77.2 batch_1_7_9 + 71.2 batch_5_10
   + 79.2 batch_1_5_9 + 77.2 batch_2_3_6_11 + 79.2 batch_3_5_10
Subject To
 order_0: batch_0_4_8_10 + batch_0_4_5_8 = 1
 order_1: batch_1_3_9 + batch_1_7_9 + batch_1_5_9 = 1
 order_2: batch_2_6_7_11 + batch_2_3_6_11 = 1
 order_3: batch_3 + batch_1_3_9 + batch_2_3_6_11 + batch_3_5_10 = 1
 order_4: batch_0_4_8_10 + batch_0_4_5_8 = 1
 order_5: batch_5 + batch_0_4_5_8 + batch_5_10 + batch_1_5_9 + batch_3_5_10
   = 1
 order_6: batch_2_6_7_11 + batch_2_3_6_11 = 1
 order_7: batch_7 + batch_2_6_7_11 + batch_1_7_9 = 1
 order_8: batch_0_4_8_10 + batch_0_4_5_8 = 1
 order_9: batch_1_3_9 + batch_1_7_9 + batch_1_5_9 = 1
 order_10: batch_10 + batch_0_4_8_10 + batch_5_10 + batch_3_5_10 = 1
 order_11: batch_2_6_7_11 + batch_2_3_6_11 = 1
Bounds
End
