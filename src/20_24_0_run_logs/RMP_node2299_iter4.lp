\ Model JOBPRP_RMP_2299
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x56e0d2b1d3c68c96
Minimize
  98 batch_1 + 89.2 batch_6 + 77.2 batch_9 + 78.4 batch_10 + 89.6 batch_12
   + 70.4 batch_13 + 74.8 batch_15 + 61.2 batch_19 + 125.2 batch_1_6_10
   + 105.6 batch_3_12_16 + 115.2 batch_2_7_11 + 118 batch_1_6_9
   + 118 batch_3_12_16_19 + 130.4 batch_3_10_15_16 + 107.2 batch_8_9_13_18
   + 121.2 batch_1_8_18 + 125.2 batch_5_10_17_19 + 131.2 batch_0_4_6_14_19
   + 133.2 batch_0_4_9_14_15 + 130 batch_12_13_15_19
   + 125.2 batch_1_10_13_19 + 129.2 batch_0_1_4_14 + 118.4 batch_3_10_13_16
   + 133.2 batch_5_13_15_17 + 127.2 batch_5_6_17 + 121.2 batch_8_10_13_18
   + 109.2 batch_0_4_14_15 + 127.2 batch_5_15_17_19
Subject To
 order_0: batch_0_4_6_14_19 + batch_0_4_9_14_15 + batch_0_1_4_14
   + batch_0_4_14_15 = 1
 order_1: batch_1 + batch_1_6_10 + batch_1_6_9 + batch_1_8_18
   + batch_1_10_13_19 + batch_0_1_4_14 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16 + batch_3_12_16_19 + batch_3_10_15_16
   + batch_3_10_13_16 = 1
 order_4: batch_0_4_6_14_19 + batch_0_4_9_14_15 + batch_0_1_4_14
   + batch_0_4_14_15 = 1
 order_5: batch_5_10_17_19 + batch_5_13_15_17 + batch_5_6_17
   + batch_5_15_17_19 = 1
 order_6: batch_6 + batch_1_6_10 + batch_1_6_9 + batch_0_4_6_14_19
   + batch_5_6_17 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8_9_13_18 + batch_1_8_18 + batch_8_10_13_18 = 1
 order_9: batch_9 + batch_1_6_9 + batch_8_9_13_18 + batch_0_4_9_14_15 = 1
 order_10: batch_10 + batch_1_6_10 + batch_3_10_15_16 + batch_5_10_17_19
   + batch_1_10_13_19 + batch_3_10_13_16 + batch_8_10_13_18 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_3_12_16 + batch_3_12_16_19 + batch_12_13_15_19
   = 1
 order_13: batch_13 + batch_8_9_13_18 + batch_12_13_15_19
   + batch_1_10_13_19 + batch_3_10_13_16 + batch_5_13_15_17
   + batch_8_10_13_18 = 1
 order_14: batch_0_4_6_14_19 + batch_0_4_9_14_15 + batch_0_1_4_14
   + batch_0_4_14_15 = 1
 order_15: batch_15 + batch_3_10_15_16 + batch_0_4_9_14_15
   + batch_12_13_15_19 + batch_5_13_15_17 + batch_0_4_14_15
   + batch_5_15_17_19 = 1
 order_16: batch_3_12_16 + batch_3_12_16_19 + batch_3_10_15_16
   + batch_3_10_13_16 = 1
 order_17: batch_5_10_17_19 + batch_5_13_15_17 + batch_5_6_17
   + batch_5_15_17_19 = 1
 order_18: batch_8_9_13_18 + batch_1_8_18 + batch_8_10_13_18 = 1
 order_19: batch_19 + batch_3_12_16_19 + batch_5_10_17_19
   + batch_0_4_6_14_19 + batch_12_13_15_19 + batch_1_10_13_19
   + batch_5_15_17_19 = 1
Bounds
End
