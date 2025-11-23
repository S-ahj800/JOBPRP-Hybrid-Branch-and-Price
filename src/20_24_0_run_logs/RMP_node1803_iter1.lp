\ Model JOBPRP_RMP_1803
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x38b1dd56d9a2425a
Minimize
  91.2 batch_5 + 72.4 batch_8 + 74.8 batch_15 + 89.2 batch_17
   + 77.2 batch_18 + 115.2 batch_2_7_11 + 118 batch_3_12_16_19
   + 121.2 batch_1_8_9 + 121.1999957721094 batch_0_4_10_17
   + 127.2 batch_1_9_17 + 127.2 batch_0_4_5_10 + 115.2 batch_0_4_10_15
   + 119.2 batch_0_4_8_10 + 111.2 batch_1_9_18 + 109.2 batch_6_13_14_18
   + 115.2 batch_6_8_13_14
Subject To
 order_0: batch_0_4_10_17 + batch_0_4_5_10 + batch_0_4_10_15
   + batch_0_4_8_10 = 1
 order_1: batch_1_8_9 + batch_1_9_17 + batch_1_9_18 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16_19 = 1
 order_4: batch_0_4_10_17 + batch_0_4_5_10 + batch_0_4_10_15
   + batch_0_4_8_10 = 1
 order_5: batch_5 + batch_0_4_5_10 = 1
 order_6: batch_6_13_14_18 + batch_6_8_13_14 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_1_8_9 + batch_0_4_8_10 + batch_6_8_13_14 = 1
 order_9: batch_1_8_9 + batch_1_9_17 + batch_1_9_18 = 1
 order_10: batch_0_4_10_17 + batch_0_4_5_10 + batch_0_4_10_15
   + batch_0_4_8_10 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_12_16_19 = 1
 order_13: batch_6_13_14_18 + batch_6_8_13_14 = 1
 order_14: batch_6_13_14_18 + batch_6_8_13_14 = 1
 order_15: batch_15 + batch_0_4_10_15 = 1
 order_16: batch_3_12_16_19 = 1
 order_17: batch_17 + batch_0_4_10_17 + batch_1_9_17 = 1
 order_18: batch_18 + batch_1_9_18 + batch_6_13_14_18 = 1
 order_19: batch_3_12_16_19 = 1
Bounds
End
