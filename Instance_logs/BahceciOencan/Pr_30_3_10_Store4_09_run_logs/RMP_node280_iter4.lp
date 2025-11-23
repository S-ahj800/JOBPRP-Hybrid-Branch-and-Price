\ Model JOBPRP_RMP_280
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xa3d3c0661992d352
Minimize
  31.6 batch_1 + 55.6 batch_2 + 31.6 batch_3 + 67.2 batch_5 + 60.4 batch_6
   + 60.4 batch_10 + 67.2 batch_11 + 73.2 batch_7_9_11 + 33.6 batch_1_3
   + 79.2 batch_2_5_10_11 + 66.4 batch_0_4_8_10 + 75.2 batch_5_6_11
   + 77.2 batch_2_5_6_11 + 71.2 batch_0_4_5_8 + 64.4 batch_0_4_6_8
   + 77.2 batch_2_6_7_9 + 73.2 batch_3_7_9 + 73.2 batch_6_7_9
Subject To
 order_0: batch_0_4_8_10 + batch_0_4_5_8 + batch_0_4_6_8 = 1
 order_1: batch_1 + batch_1_3 = 1
 order_2: batch_2 + batch_2_5_10_11 + batch_2_5_6_11 + batch_2_6_7_9 = 1
 order_3: batch_3 + batch_1_3 + batch_3_7_9 = 1
 order_4: batch_0_4_8_10 + batch_0_4_5_8 + batch_0_4_6_8 = 1
 order_5: batch_5 + batch_2_5_10_11 + batch_5_6_11 + batch_2_5_6_11
   + batch_0_4_5_8 = 1
 order_6: batch_6 + batch_5_6_11 + batch_2_5_6_11 + batch_0_4_6_8
   + batch_2_6_7_9 + batch_6_7_9 = 1
 order_7: batch_7_9_11 + batch_2_6_7_9 + batch_3_7_9 + batch_6_7_9 = 1
 order_8: batch_0_4_8_10 + batch_0_4_5_8 + batch_0_4_6_8 = 1
 order_9: batch_7_9_11 + batch_2_6_7_9 + batch_3_7_9 + batch_6_7_9 = 1
 order_10: batch_10 + batch_2_5_10_11 + batch_0_4_8_10 = 1
 order_11: batch_11 + batch_7_9_11 + batch_2_5_10_11 + batch_5_6_11
   + batch_2_5_6_11 = 1
Bounds
End
