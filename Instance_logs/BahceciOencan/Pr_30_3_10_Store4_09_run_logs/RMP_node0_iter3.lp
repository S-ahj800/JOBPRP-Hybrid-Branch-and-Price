\ Model JOBPRP_RMP_0
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xf343a0f6cc81f484
Minimize
  54.4 batch_0 + 31.6 batch_1 + 55.6 batch_2 + 31.6 batch_3 + 60.4 batch_4
   + 67.2 batch_5 + 60.4 batch_6 + 61.2 batch_7 + 58.4 batch_8
   + 34.8 batch_9 + 60.4 batch_10 + 67.2 batch_11 + 68.4 batch_0_4_6_8_10
   + 68.4 batch_0_2_4_6_8
Subject To
 order_0: batch_0 + batch_0_4_6_8_10 + batch_0_2_4_6_8 = 1
 order_1: batch_1 = 1
 order_2: batch_2 + batch_0_2_4_6_8 = 1
 order_3: batch_3 = 1
 order_4: batch_4 + batch_0_4_6_8_10 + batch_0_2_4_6_8 = 1
 order_5: batch_5 = 1
 order_6: batch_6 + batch_0_4_6_8_10 + batch_0_2_4_6_8 = 1
 order_7: batch_7 = 1
 order_8: batch_8 + batch_0_4_6_8_10 + batch_0_2_4_6_8 = 1
 order_9: batch_9 = 1
 order_10: batch_10 + batch_0_4_6_8_10 = 1
 order_11: batch_11 = 1
Bounds
End
