\ Model JOBPRP_RMP_108
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xdadfbf11c852c58c
Minimize
  55.6 batch_2 + 31.6 batch_3 + 67.2 batch_5 + 61.2 batch_7 + 67.2 batch_11
   + 56.8 batch_1_3_9 + 79.2 batch_2_5_6_10 + 66.4 batch_0_2_4_8
   + 73.2 batch_2_5_11 + 71.2 batch_0_4_5_8 + 83.2 batch_3_6_10_11
   + 79.2 batch_6_7_10_11 + 77.2 batch_0_4_7_8 + 67.6 batch_1_2_9
   + 79.19999802 batch_2_5_6_10
Subject To
 order_0: batch_0_2_4_8 + batch_0_4_5_8 + batch_0_4_7_8 = 1
 order_1: batch_1_3_9 + batch_1_2_9 = 1
 order_2: batch_2 + batch_2_5_6_10 + batch_0_2_4_8 + batch_2_5_11
   + batch_1_2_9 + batch_2_5_6_10 = 1
 order_3: batch_3 + batch_1_3_9 + batch_3_6_10_11 = 1
 order_4: batch_0_2_4_8 + batch_0_4_5_8 + batch_0_4_7_8 = 1
 order_5: batch_5 + batch_2_5_6_10 + batch_2_5_11 + batch_0_4_5_8
   + batch_2_5_6_10 = 1
 order_6: batch_2_5_6_10 + batch_3_6_10_11 + batch_6_7_10_11
   + batch_2_5_6_10 = 1
 order_7: batch_7 + batch_6_7_10_11 + batch_0_4_7_8 = 1
 order_8: batch_0_2_4_8 + batch_0_4_5_8 + batch_0_4_7_8 = 1
 order_9: batch_1_3_9 + batch_1_2_9 = 1
 order_10: batch_2_5_6_10 + batch_3_6_10_11 + batch_6_7_10_11
   + batch_2_5_6_10 = 1
 order_11: batch_11 + batch_2_5_11 + batch_3_6_10_11 + batch_6_7_10_11 = 1
Bounds
End
