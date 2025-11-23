\ Model JOBPRP_RMP_528
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x43916399a27022a6
Minimize
  60.4 batch_10 + 67.2 batch_11 + 73.2 batch_7_9_11 + 33.6 batch_1_3
   + 75.2 batch_4_5_6_11 + 75.2 batch_0_2_8_11 + 68.4 batch_0_2_8_10
   + 75.19999331818181 batch_4_5_6_10
Subject To
 order_0: batch_0_2_8_11 + batch_0_2_8_10 = 1
 order_1: batch_1_3 = 1
 order_2: batch_0_2_8_11 + batch_0_2_8_10 = 1
 order_3: batch_1_3 = 1
 order_4: batch_4_5_6_11 + batch_4_5_6_10 = 1
 order_5: batch_4_5_6_11 + batch_4_5_6_10 = 1
 order_6: batch_4_5_6_11 + batch_4_5_6_10 = 1
 order_7: batch_7_9_11 = 1
 order_8: batch_0_2_8_11 + batch_0_2_8_10 = 1
 order_9: batch_7_9_11 = 1
 order_10: batch_10 + batch_0_2_8_10 + batch_4_5_6_10 = 1
 order_11: batch_11 + batch_7_9_11 + batch_4_5_6_11 + batch_0_2_8_11 = 1
Bounds
End
