\ Model JOBPRP_RMP_427
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x3f6c6af2cce2e24e
Minimize
  31.6 batch_3 + 67.2 batch_5 + 60.4 batch_10 + 67.2 batch_11
   + 56.8 batch_1_3_9 + 73.2 batch_4_5_6_7 + 75.2 batch_4_6_7_11
   + 66.4 batch_0_2_3_8 + 77.2 batch_5_10_11
   + 83.19999082898522 batch_1_9_11 + 75.2 batch_0_2_5_8
   + 76.4 batch_1_9_10 + 77.2 batch_4_6_7_10
Subject To
 order_0: batch_0_2_3_8 + batch_0_2_5_8 = 1
 order_1: batch_1_3_9 + batch_1_9_11 + batch_1_9_10 = 1
 order_2: batch_0_2_3_8 + batch_0_2_5_8 = 1
 order_3: batch_3 + batch_1_3_9 + batch_0_2_3_8 = 1
 order_4: batch_4_5_6_7 + batch_4_6_7_11 + batch_4_6_7_10 = 1
 order_5: batch_5 + batch_4_5_6_7 + batch_5_10_11 + batch_0_2_5_8 = 1
 order_6: batch_4_5_6_7 + batch_4_6_7_11 + batch_4_6_7_10 = 1
 order_7: batch_4_5_6_7 + batch_4_6_7_11 + batch_4_6_7_10 = 1
 order_8: batch_0_2_3_8 + batch_0_2_5_8 = 1
 order_9: batch_1_3_9 + batch_1_9_11 + batch_1_9_10 = 1
 order_10: batch_10 + batch_5_10_11 + batch_1_9_10 + batch_4_6_7_10 = 1
 order_11: batch_11 + batch_4_6_7_11 + batch_5_10_11 + batch_1_9_11 = 1
Bounds
End
