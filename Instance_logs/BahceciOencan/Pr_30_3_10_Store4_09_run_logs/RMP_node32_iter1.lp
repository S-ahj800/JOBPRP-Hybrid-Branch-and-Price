\ Model JOBPRP_RMP_32
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x12ae5d1835566cef
Minimize
  55.6 batch_2 + 68.4 batch_0_4_6_8_10 + 73.2 batch_5_7_11
   + 56.8 batch_1_3_9
Subject To
 order_0: batch_0_4_6_8_10 = 1
 order_1: batch_1_3_9 = 1
 order_2: batch_2 = 1
 order_3: batch_1_3_9 = 1
 order_4: batch_0_4_6_8_10 = 1
 order_5: batch_5_7_11 = 1
 order_6: batch_0_4_6_8_10 = 1
 order_7: batch_5_7_11 = 1
 order_8: batch_0_4_6_8_10 = 1
 order_9: batch_1_3_9 = 1
 order_10: batch_0_4_6_8_10 = 1
 order_11: batch_5_7_11 = 1
Bounds
End
