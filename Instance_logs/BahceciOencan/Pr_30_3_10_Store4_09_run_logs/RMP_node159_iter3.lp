\ Model JOBPRP_RMP_159
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xa3d3c0661992d352
Minimize
  31.6 batch_1 + 31.6 batch_3 + 60.4 batch_6 + 34.8 batch_9 + 60.4 batch_10
   + 67.2 batch_11 + 70.4 batch_0_2_4_8_10 + 71.2 batch_5_7_9
   + 77.2 batch_1_5_7 + 70.4 batch_3_6_9 + 73.2 batch_5_6_7
   + 77.2 batch_1_6_11 + 79.2 batch_9_10_11 + 77.2 batch_6_9_11
   + 66.4 batch_0_2_4_8 + 77.2 batch_3_6_11 + 79.2 batch_3_9_11
   + 73.2 batch_3_5_7
Subject To
 order_0: batch_0_2_4_8_10 + batch_0_2_4_8 = 1
 order_1: batch_1 + batch_1_5_7 + batch_1_6_11 = 1
 order_2: batch_0_2_4_8_10 + batch_0_2_4_8 = 1
 order_3: batch_3 + batch_3_6_9 + batch_3_6_11 + batch_3_9_11 + batch_3_5_7
   = 1
 order_4: batch_0_2_4_8_10 + batch_0_2_4_8 = 1
 order_5: batch_5_7_9 + batch_1_5_7 + batch_5_6_7 + batch_3_5_7 = 1
 order_6: batch_6 + batch_3_6_9 + batch_5_6_7 + batch_1_6_11 + batch_6_9_11
   + batch_3_6_11 = 1
 order_7: batch_5_7_9 + batch_1_5_7 + batch_5_6_7 + batch_3_5_7 = 1
 order_8: batch_0_2_4_8_10 + batch_0_2_4_8 = 1
 order_9: batch_9 + batch_5_7_9 + batch_3_6_9 + batch_9_10_11
   + batch_6_9_11 + batch_3_9_11 = 1
 order_10: batch_10 + batch_0_2_4_8_10 + batch_9_10_11 = 1
 order_11: batch_11 + batch_1_6_11 + batch_9_10_11 + batch_6_9_11
   + batch_3_6_11 + batch_3_9_11 = 1
Bounds
End
