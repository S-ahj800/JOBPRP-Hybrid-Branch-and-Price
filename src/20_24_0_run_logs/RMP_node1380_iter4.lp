\ Model JOBPRP_RMP_1380
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xf45d32b6e6f2992d
Minimize
  72.4 batch_8 + 77.2 batch_9 + 78.4 batch_10 + 65.2 batch_14
   + 74.8 batch_15 + 77.2 batch_18 + 61.2 batch_19 + 115.2 batch_2_7_11
   + 117.2 batch_0_4_14_15_16 + 115.2 batch_0_4_8_14_16
   + 119.2 batch_3_8_12 + 135.2 batch_5_6_13_15 + 117.2 batch_5_6_13_19
   + 141.2 batch_9_10_14_15_19 + 131.2 batch_0_4_9_16_19
   + 131.2 batch_3_12_14_19 + 99.2 batch_8_9_14_19
   + 137.2 batch_0_4_15_16_18 + 121.2 batch_1_17_19 + 107.2 batch_8_9_18_19
   + 133.2 batch_1_15_17 + 127.2 batch_1_9_17 + 125.2 batch_9_10_14_18
   + 118.4 batch_3_10_12 + 123.2 batch_5_6_13_14 + 123.2 batch_3_12_18
   + 141.2 batch_10_14_15_18_19 + 109.2 batch_8_9_14_18
Subject To
 order_0: batch_0_4_14_15_16 + batch_0_4_8_14_16 + batch_0_4_9_16_19
   + batch_0_4_15_16_18 = 1
 order_1: batch_1_17_19 + batch_1_15_17 + batch_1_9_17 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_8_12 + batch_3_12_14_19 + batch_3_10_12 + batch_3_12_18
   = 1
 order_4: batch_0_4_14_15_16 + batch_0_4_8_14_16 + batch_0_4_9_16_19
   + batch_0_4_15_16_18 = 1
 order_5: batch_5_6_13_15 + batch_5_6_13_19 + batch_5_6_13_14 = 1
 order_6: batch_5_6_13_15 + batch_5_6_13_19 + batch_5_6_13_14 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_0_4_8_14_16 + batch_3_8_12 + batch_8_9_14_19
   + batch_8_9_18_19 + batch_8_9_14_18 = 1
 order_9: batch_9 + batch_9_10_14_15_19 + batch_0_4_9_16_19
   + batch_8_9_14_19 + batch_8_9_18_19 + batch_1_9_17 + batch_9_10_14_18
   + batch_8_9_14_18 = 1
 order_10: batch_10 + batch_9_10_14_15_19 + batch_9_10_14_18
   + batch_3_10_12 + batch_10_14_15_18_19 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_8_12 + batch_3_12_14_19 + batch_3_10_12 + batch_3_12_18
   = 1
 order_13: batch_5_6_13_15 + batch_5_6_13_19 + batch_5_6_13_14 = 1
 order_14: batch_14 + batch_0_4_14_15_16 + batch_0_4_8_14_16
   + batch_9_10_14_15_19 + batch_3_12_14_19 + batch_8_9_14_19
   + batch_9_10_14_18 + batch_5_6_13_14 + batch_10_14_15_18_19
   + batch_8_9_14_18 = 1
 order_15: batch_15 + batch_0_4_14_15_16 + batch_5_6_13_15
   + batch_9_10_14_15_19 + batch_0_4_15_16_18 + batch_1_15_17
   + batch_10_14_15_18_19 = 1
 order_16: batch_0_4_14_15_16 + batch_0_4_8_14_16 + batch_0_4_9_16_19
   + batch_0_4_15_16_18 = 1
 order_17: batch_1_17_19 + batch_1_15_17 + batch_1_9_17 = 1
 order_18: batch_18 + batch_0_4_15_16_18 + batch_8_9_18_19
   + batch_9_10_14_18 + batch_3_12_18 + batch_10_14_15_18_19
   + batch_8_9_14_18 = 1
 order_19: batch_19 + batch_5_6_13_19 + batch_9_10_14_15_19
   + batch_0_4_9_16_19 + batch_3_12_14_19 + batch_8_9_14_19 + batch_1_17_19
   + batch_8_9_18_19 + batch_10_14_15_18_19 = 1
Bounds
End
