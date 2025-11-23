\ Model JOBPRP_RMP_1775
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xc8e82f2f828a190
Minimize
  72.4 batch_8 + 77.2 batch_9 + 89.6 batch_12 + 74.8 batch_15
   + 89.2 batch_17 + 77.2 batch_18 + 115.2 batch_2_7_11
   + 118 batch_3_12_16_19 + 119.2 batch_3_8_16_19 + 129.2 batch_1_5_8
   + 121.1999957721094 batch_0_4_10_17 + 119.2 batch_8_12_15
   + 115.2 batch_0_4_10_15 + 119.2 batch_0_4_8_10 + 109.2 batch_6_13_14_18
   + 138 batch_8_9_15_18 + 135.2 batch_9_15_17 + 131.2 batch_1_5_15
   + 115.2 batch_6_8_13_14 + 137.2 batch_3_16_17_19 + 131.2 batch_12_15_17
   + 129.2 batch_6_13_14_15 + 122 batch_3_9_16_19 + 124 batch_8_9_12
   + 127.2 batch_6_12_13_14
Subject To
 order_0: batch_0_4_10_17 + batch_0_4_10_15 + batch_0_4_8_10 = 1
 order_1: batch_1_5_8 + batch_1_5_15 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16_19 + batch_3_8_16_19 + batch_3_16_17_19
   + batch_3_9_16_19 = 1
 order_4: batch_0_4_10_17 + batch_0_4_10_15 + batch_0_4_8_10 = 1
 order_5: batch_1_5_8 + batch_1_5_15 = 1
 order_6: batch_6_13_14_18 + batch_6_8_13_14 + batch_6_13_14_15
   + batch_6_12_13_14 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_3_8_16_19 + batch_1_5_8 + batch_8_12_15
   + batch_0_4_8_10 + batch_8_9_15_18 + batch_6_8_13_14 + batch_8_9_12 = 1
 order_9: batch_9 + batch_8_9_15_18 + batch_9_15_17 + batch_3_9_16_19
   + batch_8_9_12 = 1
 order_10: batch_0_4_10_17 + batch_0_4_10_15 + batch_0_4_8_10 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_3_12_16_19 + batch_8_12_15 + batch_12_15_17
   + batch_8_9_12 + batch_6_12_13_14 = 1
 order_13: batch_6_13_14_18 + batch_6_8_13_14 + batch_6_13_14_15
   + batch_6_12_13_14 = 1
 order_14: batch_6_13_14_18 + batch_6_8_13_14 + batch_6_13_14_15
   + batch_6_12_13_14 = 1
 order_15: batch_15 + batch_8_12_15 + batch_0_4_10_15 + batch_8_9_15_18
   + batch_9_15_17 + batch_1_5_15 + batch_12_15_17 + batch_6_13_14_15 = 1
 order_16: batch_3_12_16_19 + batch_3_8_16_19 + batch_3_16_17_19
   + batch_3_9_16_19 = 1
 order_17: batch_17 + batch_0_4_10_17 + batch_9_15_17 + batch_3_16_17_19
   + batch_12_15_17 = 1
 order_18: batch_18 + batch_6_13_14_18 + batch_8_9_15_18 = 1
 order_19: batch_3_12_16_19 + batch_3_8_16_19 + batch_3_16_17_19
   + batch_3_9_16_19 = 1
Bounds
End
