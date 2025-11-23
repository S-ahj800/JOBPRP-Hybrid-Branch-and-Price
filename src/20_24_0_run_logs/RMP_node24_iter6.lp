\ Model JOBPRP_RMP_24
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x94ed0aea9f3b70a4
Minimize
  98 batch_1 + 72.4 batch_8 + 77.2 batch_9 + 78.4 batch_10 + 89.6 batch_12
   + 74.8 batch_15 + 89.2 batch_17 + 77.2 batch_18 + 61.2 batch_19
   + 123.2 batch_1_17_18 + 105.6 batch_3_12_16 + 115.2 batch_2_7_11
   + 109.2 batch_6_9_13_18 + 123.2 batch_5_14_15_17 + 118 batch_3_12_16_19
   + 130.4 batch_3_10_15_16 + 127.2 batch_1_10_17 + 119.2 batch_0_4_15_17
   + 119.2 batch_5_8_10_14 + 105.2 batch_6_9_13_19 + 119.2 batch_3_8_16_19
   + 132 batch_0_4_8_12 + 121.2 batch_1_8_9 + 132 batch_6_8_13_15
   + 126 batch_8_12_15_19 + 123.2 batch_0_4_8_17 + 109.2 batch_6_8_13_19
   + 121.2 batch_0_4_5_14_19 + 137.2 batch_0_1_4_15 + 126 batch_0_4_8_15_19
   + 121.2 batch_1_5_14_19 + 111.2 batch_1_9_18
Subject To
 order_0: batch_0_4_15_17 + batch_0_4_8_12 + batch_0_4_8_17
   + batch_0_4_5_14_19 + batch_0_1_4_15 + batch_0_4_8_15_19 = 1
 order_1: batch_1 + batch_1_17_18 + batch_1_10_17 + batch_1_8_9
   + batch_0_1_4_15 + batch_1_5_14_19 + batch_1_9_18 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16 + batch_3_12_16_19 + batch_3_10_15_16
   + batch_3_8_16_19 = 1
 order_4: batch_0_4_15_17 + batch_0_4_8_12 + batch_0_4_8_17
   + batch_0_4_5_14_19 + batch_0_1_4_15 + batch_0_4_8_15_19 = 1
 order_5: batch_5_14_15_17 + batch_5_8_10_14 + batch_0_4_5_14_19
   + batch_1_5_14_19 = 1
 order_6: batch_6_9_13_18 + batch_6_9_13_19 + batch_6_8_13_15
   + batch_6_8_13_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_5_8_10_14 + batch_3_8_16_19 + batch_0_4_8_12
   + batch_1_8_9 + batch_6_8_13_15 + batch_8_12_15_19 + batch_0_4_8_17
   + batch_6_8_13_19 + batch_0_4_8_15_19 = 1
 order_9: batch_9 + batch_6_9_13_18 + batch_6_9_13_19 + batch_1_8_9
   + batch_1_9_18 = 1
 order_10: batch_10 + batch_3_10_15_16 + batch_1_10_17 + batch_5_8_10_14
   = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_3_12_16 + batch_3_12_16_19 + batch_0_4_8_12
   + batch_8_12_15_19 = 1
 order_13: batch_6_9_13_18 + batch_6_9_13_19 + batch_6_8_13_15
   + batch_6_8_13_19 = 1
 order_14: batch_5_14_15_17 + batch_5_8_10_14 + batch_0_4_5_14_19
   + batch_1_5_14_19 = 1
 order_15: batch_15 + batch_5_14_15_17 + batch_3_10_15_16 + batch_0_4_15_17
   + batch_6_8_13_15 + batch_8_12_15_19 + batch_0_1_4_15
   + batch_0_4_8_15_19 = 1
 order_16: batch_3_12_16 + batch_3_12_16_19 + batch_3_10_15_16
   + batch_3_8_16_19 = 1
 order_17: batch_17 + batch_1_17_18 + batch_5_14_15_17 + batch_1_10_17
   + batch_0_4_15_17 + batch_0_4_8_17 = 1
 order_18: batch_18 + batch_1_17_18 + batch_6_9_13_18 + batch_1_9_18 = 1
 order_19: batch_19 + batch_3_12_16_19 + batch_6_9_13_19 + batch_3_8_16_19
   + batch_8_12_15_19 + batch_6_8_13_19 + batch_0_4_5_14_19
   + batch_0_4_8_15_19 + batch_1_5_14_19 = 1
Bounds
End
