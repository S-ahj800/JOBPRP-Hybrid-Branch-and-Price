\ Model JOBPRP_RMP_1680
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x36acfa589c62af5
Minimize
  89.2 batch_6 + 72.4 batch_8 + 77.2 batch_9 + 78.4 batch_10 + 70.4 batch_13
   + 65.2 batch_14 + 74.8 batch_15 + 77.2 batch_18 + 61.2 batch_19
   + 137.2 batch_0_4_13_14_16_19 + 115.2 batch_2_7_11 + 121.2 batch_3_5_12
   + 123.2 batch_0_4_10_15_16 + 127.2 batch_1_10_17
   + 117.2 batch_0_4_14_15_16 + 117.2 batch_1_14_17
   + 125.2 batch_6_10_14_18 + 137.2 batch_0_4_9_13_16 + 125.2 batch_1_13_17
   + 107.2 batch_6_9_18_19 + 115.2 batch_6_9_14_18
   + 111.2 batch_8_13_14_18_19 + 127.2 batch_1_9_17 + 136 batch_6_9_14_15
   + 141.2 batch_0_4_6_16_19 + 128.4 batch_8_10_13_15 + 133.2 batch_1_15_17
   + 133.2 batch_0_4_6_16 + 105.2 batch_8_13_14_18
Subject To
 order_0: batch_0_4_13_14_16_19 + batch_0_4_10_15_16 + batch_0_4_14_15_16
   + batch_0_4_9_13_16 + batch_0_4_6_16_19 + batch_0_4_6_16 = 1
 order_1: batch_1_10_17 + batch_1_14_17 + batch_1_13_17 + batch_1_9_17
   + batch_1_15_17 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_5_12 = 1
 order_4: batch_0_4_13_14_16_19 + batch_0_4_10_15_16 + batch_0_4_14_15_16
   + batch_0_4_9_13_16 + batch_0_4_6_16_19 + batch_0_4_6_16 = 1
 order_5: batch_3_5_12 = 1
 order_6: batch_6 + batch_6_10_14_18 + batch_6_9_18_19 + batch_6_9_14_18
   + batch_6_9_14_15 + batch_0_4_6_16_19 + batch_0_4_6_16 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_8_13_14_18_19 + batch_8_10_13_15
   + batch_8_13_14_18 = 1
 order_9: batch_9 + batch_0_4_9_13_16 + batch_6_9_18_19 + batch_6_9_14_18
   + batch_1_9_17 + batch_6_9_14_15 = 1
 order_10: batch_10 + batch_0_4_10_15_16 + batch_1_10_17 + batch_6_10_14_18
   + batch_8_10_13_15 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_5_12 = 1
 order_13: batch_13 + batch_0_4_13_14_16_19 + batch_0_4_9_13_16
   + batch_1_13_17 + batch_8_13_14_18_19 + batch_8_10_13_15
   + batch_8_13_14_18 = 1
 order_14: batch_14 + batch_0_4_13_14_16_19 + batch_0_4_14_15_16
   + batch_1_14_17 + batch_6_10_14_18 + batch_6_9_14_18
   + batch_8_13_14_18_19 + batch_6_9_14_15 + batch_8_13_14_18 = 1
 order_15: batch_15 + batch_0_4_10_15_16 + batch_0_4_14_15_16
   + batch_6_9_14_15 + batch_8_10_13_15 + batch_1_15_17 = 1
 order_16: batch_0_4_13_14_16_19 + batch_0_4_10_15_16 + batch_0_4_14_15_16
   + batch_0_4_9_13_16 + batch_0_4_6_16_19 + batch_0_4_6_16 = 1
 order_17: batch_1_10_17 + batch_1_14_17 + batch_1_13_17 + batch_1_9_17
   + batch_1_15_17 = 1
 order_18: batch_18 + batch_6_10_14_18 + batch_6_9_18_19 + batch_6_9_14_18
   + batch_8_13_14_18_19 + batch_8_13_14_18 = 1
 order_19: batch_19 + batch_0_4_13_14_16_19 + batch_6_9_18_19
   + batch_8_13_14_18_19 + batch_0_4_6_16_19 = 1
Bounds
End
