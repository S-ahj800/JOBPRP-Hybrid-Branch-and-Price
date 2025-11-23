\ Model JOBPRP_RMP_288
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x100c5ee8de3d8183
Minimize
  55.6 batch_2 + 67.2 batch_5 + 60.4 batch_6 + 60.4 batch_10
   + 73.2 batch_7_9_11 + 33.6 batch_1_3 + 66.4 batch_0_4_8_10
   + 71.2 batch_0_4_5_8 + 64.4 batch_0_4_6_8 + 59.6 batch_1_2_3
   + 66.4 batch_1_2_3_6
Subject To
 order_0: batch_0_4_8_10 + batch_0_4_5_8 + batch_0_4_6_8 = 1
 order_1: batch_1_3 + batch_1_2_3 + batch_1_2_3_6 = 1
 order_2: batch_2 + batch_1_2_3 + batch_1_2_3_6 = 1
 order_3: batch_1_3 + batch_1_2_3 + batch_1_2_3_6 = 1
 order_4: batch_0_4_8_10 + batch_0_4_5_8 + batch_0_4_6_8 = 1
 order_5: batch_5 + batch_0_4_5_8 = 1
 order_6: batch_6 + batch_0_4_6_8 + batch_1_2_3_6 = 1
 order_7: batch_7_9_11 = 1
 order_8: batch_0_4_8_10 + batch_0_4_5_8 + batch_0_4_6_8 = 1
 order_9: batch_7_9_11 = 1
 order_10: batch_10 + batch_0_4_8_10 = 1
 order_11: batch_7_9_11 = 1
Bounds
End
