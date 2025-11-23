\ Model JOBPRP_RMP_1220
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xfd6d2a86a0d7e91c
Minimize
  91.2 batch_5 + 65.2 batch_14 + 74.8 batch_15 + 61.2 batch_19
   + 115.2 batch_2_7_11 + 109.2 batch_6_9_13_18 + 115.6 batch_3_12_15
   + 127.2 batch_1_10_17 + 115.2 batch_0_4_8_14_16 + 131.2 batch_3_12_14_19
   + 120 batch_0_4_8_16_19 + 127.2 batch_5_14_15_19 + 101.2 batch_5_14_19
   + 93.2 batch_5_19
Subject To
 order_0: batch_0_4_8_14_16 + batch_0_4_8_16_19 = 1
 order_1: batch_1_10_17 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_15 + batch_3_12_14_19 = 1
 order_4: batch_0_4_8_14_16 + batch_0_4_8_16_19 = 1
 order_5: batch_5 + batch_5_14_15_19 + batch_5_14_19 + batch_5_19 = 1
 order_6: batch_6_9_13_18 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_0_4_8_14_16 + batch_0_4_8_16_19 = 1
 order_9: batch_6_9_13_18 = 1
 order_10: batch_1_10_17 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_12_15 + batch_3_12_14_19 = 1
 order_13: batch_6_9_13_18 = 1
 order_14: batch_14 + batch_0_4_8_14_16 + batch_3_12_14_19
   + batch_5_14_15_19 + batch_5_14_19 = 1
 order_15: batch_15 + batch_3_12_15 + batch_5_14_15_19 = 1
 order_16: batch_0_4_8_14_16 + batch_0_4_8_16_19 = 1
 order_17: batch_1_10_17 = 1
 order_18: batch_6_9_13_18 = 1
 order_19: batch_19 + batch_3_12_14_19 + batch_0_4_8_16_19
   + batch_5_14_15_19 + batch_5_14_19 + batch_5_19 = 1
Bounds
End
