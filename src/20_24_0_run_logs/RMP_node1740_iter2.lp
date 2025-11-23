\ Model JOBPRP_RMP_1740
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xfd6d2a86a0d7e91c
Minimize
  72.4 batch_8 + 65.2 batch_14 + 74.8 batch_15 + 89.2 batch_17
   + 115.2 batch_2_7_11 + 118 batch_3_12_16_19 + 117.2 batch_1_5_18
   + 121.1999957721094 batch_0_4_10_17 + 115.2 batch_0_4_10_15
   + 111.2 batch_6_9_13_14 + 115.1999959455878 batch_2_7_11
   + 130 batch_6_9_13_15 + 119.2 batch_0_4_8_10 + 111.2 batch_14_15_17
Subject To
 order_0: batch_0_4_10_17 + batch_0_4_10_15 + batch_0_4_8_10 = 1
 order_1: batch_1_5_18 = 1
 order_2: batch_2_7_11 + batch_2_7_11 = 1
 order_3: batch_3_12_16_19 = 1
 order_4: batch_0_4_10_17 + batch_0_4_10_15 + batch_0_4_8_10 = 1
 order_5: batch_1_5_18 = 1
 order_6: batch_6_9_13_14 + batch_6_9_13_15 = 1
 order_7: batch_2_7_11 + batch_2_7_11 = 1
 order_8: batch_8 + batch_0_4_8_10 = 1
 order_9: batch_6_9_13_14 + batch_6_9_13_15 = 1
 order_10: batch_0_4_10_17 + batch_0_4_10_15 + batch_0_4_8_10 = 1
 order_11: batch_2_7_11 + batch_2_7_11 = 1
 order_12: batch_3_12_16_19 = 1
 order_13: batch_6_9_13_14 + batch_6_9_13_15 = 1
 order_14: batch_14 + batch_6_9_13_14 + batch_14_15_17 = 1
 order_15: batch_15 + batch_0_4_10_15 + batch_6_9_13_15 + batch_14_15_17
   = 1
 order_16: batch_3_12_16_19 = 1
 order_17: batch_17 + batch_0_4_10_17 + batch_14_15_17 = 1
 order_18: batch_1_5_18 = 1
 order_19: batch_3_12_16_19 = 1
Bounds
End
