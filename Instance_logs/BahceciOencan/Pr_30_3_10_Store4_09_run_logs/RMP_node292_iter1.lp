\ Model JOBPRP_RMP_292
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x69086b92f884a36d
Minimize
  31.6 batch_1 + 31.6 batch_3 + 60.4 batch_6 + 60.4 batch_10 + 67.2 batch_11
   + 33.6 batch_1_3 + 79.2 batch_2_5_10_11 + 66.4 batch_0_4_8_10
   + 77.2 batch_2_5_6_11 + 64.4 batch_0_4_6_8 + 73.2 batch_3_7_9
   + 73.2 batch_6_7_9 + 75.2 batch_0_4_8_11 + 70.4 batch_0_1_4_8
Subject To
 order_0: batch_0_4_8_10 + batch_0_4_6_8 + batch_0_4_8_11 + batch_0_1_4_8
   = 1
 order_1: batch_1 + batch_1_3 + batch_0_1_4_8 = 1
 order_2: batch_2_5_10_11 + batch_2_5_6_11 = 1
 order_3: batch_3 + batch_1_3 + batch_3_7_9 = 1
 order_4: batch_0_4_8_10 + batch_0_4_6_8 + batch_0_4_8_11 + batch_0_1_4_8
   = 1
 order_5: batch_2_5_10_11 + batch_2_5_6_11 = 1
 order_6: batch_6 + batch_2_5_6_11 + batch_0_4_6_8 + batch_6_7_9 = 1
 order_7: batch_3_7_9 + batch_6_7_9 = 1
 order_8: batch_0_4_8_10 + batch_0_4_6_8 + batch_0_4_8_11 + batch_0_1_4_8
   = 1
 order_9: batch_3_7_9 + batch_6_7_9 = 1
 order_10: batch_10 + batch_2_5_10_11 + batch_0_4_8_10 = 1
 order_11: batch_11 + batch_2_5_10_11 + batch_2_5_6_11 + batch_0_4_8_11
   = 1
Bounds
End
