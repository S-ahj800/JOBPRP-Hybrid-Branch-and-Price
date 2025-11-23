\ Model JOBPRP_RMP_1823
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x54b6c84ea7b651a1
Minimize
  83.6 batch_3 + 91.2 batch_5 + 89.2 batch_6 + 72.4 batch_8 + 77.2 batch_9
   + 78.4 batch_10 + 89.6 batch_12 + 70.4 batch_13 + 65.2 batch_14
   + 74.8 batch_15 + 77.2 batch_18 + 61.2 batch_19
   + 137.2 batch_0_4_13_14_16_19 + 123.2 batch_1_17_18 + 115.2 batch_2_7_11
   + 109.2 batch_6_9_13_18 + 133.2 batch_5_10_12_19
   + 123.2 batch_0_4_10_15_16 + 127.2 batch_1_10_17
   + 117.2 batch_0_4_14_15_16 + 115.2 batch_0_4_8_14_16
   + 105.2 batch_8_9_13_14_19 + 135.2 batch_5_6_13_15
   + 123.2 batch_3_6_13_19 + 117.2 batch_1_14_17 + 134 batch_6_12_15_19
   + 119.2 batch_5_6_9_19 + 125.2 batch_6_10_14_18 + 123.2 batch_3_5_6
   + 125.2 batch_5_6_10_19 + 127.2 batch_5_9_12_19 + 116 batch_3_9_18_19
   + 119.2 batch_3_5_13_14 + 117.2 batch_3_5_14_19 + 107.2 batch_6_9_18_19
   + 111.2 batch_3_10_13_19 + 119.2 batch_8_12_15 + 127.2 batch_0_4_12_16
   + 124 batch_8_9_12_19 + 115.2 batch_3_10_13_14 + 127.2 batch_1_9_17
   + 138.8 batch_0_4_12_16_19 + 127.2 batch_5_6_12
Subject To
 order_0: batch_0_4_13_14_16_19 + batch_0_4_10_15_16 + batch_0_4_14_15_16
   + batch_0_4_8_14_16 + batch_0_4_12_16 + batch_0_4_12_16_19 = 1
 order_1: batch_1_17_18 + batch_1_10_17 + batch_1_14_17 + batch_1_9_17 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3 + batch_3_6_13_19 + batch_3_5_6 + batch_3_9_18_19
   + batch_3_5_13_14 + batch_3_5_14_19 + batch_3_10_13_19
   + batch_3_10_13_14 = 1
 order_4: batch_0_4_13_14_16_19 + batch_0_4_10_15_16 + batch_0_4_14_15_16
   + batch_0_4_8_14_16 + batch_0_4_12_16 + batch_0_4_12_16_19 = 1
 order_5: batch_5 + batch_5_10_12_19 + batch_5_6_13_15 + batch_5_6_9_19
   + batch_3_5_6 + batch_5_6_10_19 + batch_5_9_12_19 + batch_3_5_13_14
   + batch_3_5_14_19 + batch_5_6_12 = 1
 order_6: batch_6 + batch_6_9_13_18 + batch_5_6_13_15 + batch_3_6_13_19
   + batch_6_12_15_19 + batch_5_6_9_19 + batch_6_10_14_18 + batch_3_5_6
   + batch_5_6_10_19 + batch_6_9_18_19 + batch_5_6_12 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_0_4_8_14_16 + batch_8_9_13_14_19 + batch_8_12_15
   + batch_8_9_12_19 = 1
 order_9: batch_9 + batch_6_9_13_18 + batch_8_9_13_14_19 + batch_5_6_9_19
   + batch_5_9_12_19 + batch_3_9_18_19 + batch_6_9_18_19 + batch_8_9_12_19
   + batch_1_9_17 = 1
 order_10: batch_10 + batch_5_10_12_19 + batch_0_4_10_15_16 + batch_1_10_17
   + batch_6_10_14_18 + batch_5_6_10_19 + batch_3_10_13_19
   + batch_3_10_13_14 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_5_10_12_19 + batch_6_12_15_19 + batch_5_9_12_19
   + batch_8_12_15 + batch_0_4_12_16 + batch_8_9_12_19 + batch_0_4_12_16_19
   + batch_5_6_12 = 1
 order_13: batch_13 + batch_0_4_13_14_16_19 + batch_6_9_13_18
   + batch_8_9_13_14_19 + batch_5_6_13_15 + batch_3_6_13_19
   + batch_3_5_13_14 + batch_3_10_13_19 + batch_3_10_13_14 = 1
 order_14: batch_14 + batch_0_4_13_14_16_19 + batch_0_4_14_15_16
   + batch_0_4_8_14_16 + batch_8_9_13_14_19 + batch_1_14_17
   + batch_6_10_14_18 + batch_3_5_13_14 + batch_3_5_14_19
   + batch_3_10_13_14 = 1
 order_15: batch_15 + batch_0_4_10_15_16 + batch_0_4_14_15_16
   + batch_5_6_13_15 + batch_6_12_15_19 + batch_8_12_15 = 1
 order_16: batch_0_4_13_14_16_19 + batch_0_4_10_15_16 + batch_0_4_14_15_16
   + batch_0_4_8_14_16 + batch_0_4_12_16 + batch_0_4_12_16_19 = 1
 order_17: batch_1_17_18 + batch_1_10_17 + batch_1_14_17 + batch_1_9_17
   = 1
 order_18: batch_18 + batch_1_17_18 + batch_6_9_13_18 + batch_6_10_14_18
   + batch_3_9_18_19 + batch_6_9_18_19 = 1
 order_19: batch_19 + batch_0_4_13_14_16_19 + batch_5_10_12_19
   + batch_8_9_13_14_19 + batch_3_6_13_19 + batch_6_12_15_19
   + batch_5_6_9_19 + batch_5_6_10_19 + batch_5_9_12_19 + batch_3_9_18_19
   + batch_3_5_14_19 + batch_6_9_18_19 + batch_3_10_13_19 + batch_8_9_12_19
   + batch_0_4_12_16_19 = 1
Bounds
End
