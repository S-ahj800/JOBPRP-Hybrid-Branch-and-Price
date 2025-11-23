\ Model JOBPRP_RMP_135
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x978da8e00969cc5a
Minimize
  31.6 batch_1 + 55.6 batch_2 + 31.6 batch_3 + 60.4 batch_6 + 34.8 batch_9
   + 60.4 batch_10 + 67.2 batch_11 + 73.2 batch_5_7_11 + 71.2 batch_5_7_9
   + 56.8 batch_1_3_9 + 77.2 batch_1_5_7 + 33.6 batch_1_3
   + 74.4 batch_2_3_9_10 + 66.4 batch_0_4_8_10 + 70.4 batch_3_6_9
   + 73.2 batch_5_6_7 + 72.4 batch_2_3_6_9 + 77.2 batch_1_2_6_11
   + 79.2 batch_2_6_9_11
Subject To
 order_0: batch_0_4_8_10 = 1
 order_1: batch_1 + batch_1_3_9 + batch_1_5_7 + batch_1_3 + batch_1_2_6_11
   = 1
 order_2: batch_2 + batch_2_3_9_10 + batch_2_3_6_9 + batch_1_2_6_11
   + batch_2_6_9_11 = 1
 order_3: batch_3 + batch_1_3_9 + batch_1_3 + batch_2_3_9_10 + batch_3_6_9
   + batch_2_3_6_9 = 1
 order_4: batch_0_4_8_10 = 1
 order_5: batch_5_7_11 + batch_5_7_9 + batch_1_5_7 + batch_5_6_7 = 1
 order_6: batch_6 + batch_3_6_9 + batch_5_6_7 + batch_2_3_6_9
   + batch_1_2_6_11 + batch_2_6_9_11 = 1
 order_7: batch_5_7_11 + batch_5_7_9 + batch_1_5_7 + batch_5_6_7 = 1
 order_8: batch_0_4_8_10 = 1
 order_9: batch_9 + batch_5_7_9 + batch_1_3_9 + batch_2_3_9_10
   + batch_3_6_9 + batch_2_3_6_9 + batch_2_6_9_11 = 1
 order_10: batch_10 + batch_2_3_9_10 + batch_0_4_8_10 = 1
 order_11: batch_11 + batch_5_7_11 + batch_1_2_6_11 + batch_2_6_9_11 = 1
Bounds
End
