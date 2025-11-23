\ Model JOBPRP_RMP_580
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xd07654f7e5144097
Minimize
  31.6 batch_1 + 31.6 batch_3 + 60.4 batch_6 + 60.4 batch_10
   + 73.2 batch_2_4_5_11 + 33.6 batch_1_3 + 70.4 batch_1_3_6_10
   + 79.2 batch_0_7_8_9 + 64.4 batch_6_10
Subject To
 order_0: batch_0_7_8_9 = 1
 order_1: batch_1 + batch_1_3 + batch_1_3_6_10 = 1
 order_2: batch_2_4_5_11 = 1
 order_3: batch_3 + batch_1_3 + batch_1_3_6_10 = 1
 order_4: batch_2_4_5_11 = 1
 order_5: batch_2_4_5_11 = 1
 order_6: batch_6 + batch_1_3_6_10 + batch_6_10 = 1
 order_7: batch_0_7_8_9 = 1
 order_8: batch_0_7_8_9 = 1
 order_9: batch_0_7_8_9 = 1
 order_10: batch_10 + batch_1_3_6_10 + batch_6_10 = 1
 order_11: batch_2_4_5_11 = 1
Bounds
End
