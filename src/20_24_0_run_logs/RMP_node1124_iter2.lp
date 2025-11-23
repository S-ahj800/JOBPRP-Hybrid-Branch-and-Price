\ Model JOBPRP_RMP_1124
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x133ad55d838dc193
Minimize
  78.4 batch_10 + 65.2 batch_14 + 74.8 batch_15 + 115.2 batch_2_7_11
   + 109.2 batch_6_9_13_18 + 118 batch_3_12_16_19 + 123.2 batch_0_4_8_17
   + 127.2 batch_1_5_10 + 131.2 batch_1_5_15 + 117.2 batch_10_14_15
Subject To
 order_0: batch_0_4_8_17 = 1
 order_1: batch_1_5_10 + batch_1_5_15 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16_19 = 1
 order_4: batch_0_4_8_17 = 1
 order_5: batch_1_5_10 + batch_1_5_15 = 1
 order_6: batch_6_9_13_18 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_0_4_8_17 = 1
 order_9: batch_6_9_13_18 = 1
 order_10: batch_10 + batch_1_5_10 + batch_10_14_15 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_12_16_19 = 1
 order_13: batch_6_9_13_18 = 1
 order_14: batch_14 + batch_10_14_15 = 1
 order_15: batch_15 + batch_1_5_15 + batch_10_14_15 = 1
 order_16: batch_3_12_16_19 = 1
 order_17: batch_0_4_8_17 = 1
 order_18: batch_6_9_13_18 = 1
 order_19: batch_3_12_16_19 = 1
Bounds
End
