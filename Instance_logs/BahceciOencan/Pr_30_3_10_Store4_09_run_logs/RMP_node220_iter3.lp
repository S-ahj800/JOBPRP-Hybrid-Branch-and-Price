\ Model JOBPRP_RMP_220
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x3990724bb82727ce
Minimize
  31.6 batch_3 + 67.2 batch_5 + 60.4 batch_6 + 60.4 batch_10 + 67.2 batch_11
   + 56.8 batch_1_3_9 + 77.2 batch_2_7_10_11 + 66.4 batch_0_4_8_10
   + 71.2 batch_0_4_5_8 + 72.4 batch_1_6_9 + 64.4 batch_0_4_6_8
   + 71.2 batch_2_3_7 + 79.2 batch_3_5_10
Subject To
 order_0: batch_0_4_8_10 + batch_0_4_5_8 + batch_0_4_6_8 = 1
 order_1: batch_1_3_9 + batch_1_6_9 = 1
 order_2: batch_2_7_10_11 + batch_2_3_7 = 1
 order_3: batch_3 + batch_1_3_9 + batch_2_3_7 + batch_3_5_10 = 1
 order_4: batch_0_4_8_10 + batch_0_4_5_8 + batch_0_4_6_8 = 1
 order_5: batch_5 + batch_0_4_5_8 + batch_3_5_10 = 1
 order_6: batch_6 + batch_1_6_9 + batch_0_4_6_8 = 1
 order_7: batch_2_7_10_11 + batch_2_3_7 = 1
 order_8: batch_0_4_8_10 + batch_0_4_5_8 + batch_0_4_6_8 = 1
 order_9: batch_1_3_9 + batch_1_6_9 = 1
 order_10: batch_10 + batch_2_7_10_11 + batch_0_4_8_10 + batch_3_5_10 = 1
 order_11: batch_11 + batch_2_7_10_11 = 1
Bounds
End
