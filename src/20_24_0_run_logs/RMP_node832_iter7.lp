\ Model JOBPRP_RMP_832
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x1d06775ce31c079a
Minimize
  77.2 batch_9 + 78.4 batch_10 + 89.6 batch_12 + 70.4 batch_13
   + 65.2 batch_14 + 74.8 batch_15 + 77.2 batch_18 + 61.2 batch_19
   + 115.2 batch_2_7_11 + 123.2 batch_0_4_10_15_16 + 127.2 batch_1_10_17
   + 117.2 batch_0_4_14_15_16 + 117.2 batch_1_14_17 + 138 batch_9_12_14_18
   + 131.2 batch_9_10_12_13 + 127.2 batch_1_9_17 + 130.4 batch_10_12_13_15
   + 133.2 batch_0_4_13_16_18 + 125.2 batch_1_13_17 + 127.2 batch_0_4_12_16
   + 115.2 batch_3_5_18 + 137.2 batch_0_4_15_16_18 + 113.2 batch_6_8_14_19
   + 126 batch_6_8_12 + 119.2 batch_3_5_13_14 + 133.2 batch_1_15_17
   + 121.2 batch_1_17_19 + 128 batch_9_12_15_19 + 131.2 batch_10_12_13_18
   + 138.8 batch_0_4_12_16_19 + 136 batch_9_12_13_18
   + 139.2 batch_12_13_15_18 + 130 batch_6_8_15_19
Subject To
 order_0: batch_0_4_10_15_16 + batch_0_4_14_15_16 + batch_0_4_13_16_18
   + batch_0_4_12_16 + batch_0_4_15_16_18 + batch_0_4_12_16_19 = 1
 order_1: batch_1_10_17 + batch_1_14_17 + batch_1_9_17 + batch_1_13_17
   + batch_1_15_17 + batch_1_17_19 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_5_18 + batch_3_5_13_14 = 1
 order_4: batch_0_4_10_15_16 + batch_0_4_14_15_16 + batch_0_4_13_16_18
   + batch_0_4_12_16 + batch_0_4_15_16_18 + batch_0_4_12_16_19 = 1
 order_5: batch_3_5_18 + batch_3_5_13_14 = 1
 order_6: batch_6_8_14_19 + batch_6_8_12 + batch_6_8_15_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_6_8_14_19 + batch_6_8_12 + batch_6_8_15_19 = 1
 order_9: batch_9 + batch_9_12_14_18 + batch_9_10_12_13 + batch_1_9_17
   + batch_9_12_15_19 + batch_9_12_13_18 = 1
 order_10: batch_10 + batch_0_4_10_15_16 + batch_1_10_17 + batch_9_10_12_13
   + batch_10_12_13_15 + batch_10_12_13_18 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_9_12_14_18 + batch_9_10_12_13
   + batch_10_12_13_15 + batch_0_4_12_16 + batch_6_8_12 + batch_9_12_15_19
   + batch_10_12_13_18 + batch_0_4_12_16_19 + batch_9_12_13_18
   + batch_12_13_15_18 = 1
 order_13: batch_13 + batch_9_10_12_13 + batch_10_12_13_15
   + batch_0_4_13_16_18 + batch_1_13_17 + batch_3_5_13_14
   + batch_10_12_13_18 + batch_9_12_13_18 + batch_12_13_15_18 = 1
 order_14: batch_14 + batch_0_4_14_15_16 + batch_1_14_17 + batch_9_12_14_18
   + batch_6_8_14_19 + batch_3_5_13_14 = 1
 order_15: batch_15 + batch_0_4_10_15_16 + batch_0_4_14_15_16
   + batch_10_12_13_15 + batch_0_4_15_16_18 + batch_1_15_17
   + batch_9_12_15_19 + batch_12_13_15_18 + batch_6_8_15_19 = 1
 order_16: batch_0_4_10_15_16 + batch_0_4_14_15_16 + batch_0_4_13_16_18
   + batch_0_4_12_16 + batch_0_4_15_16_18 + batch_0_4_12_16_19 = 1
 order_17: batch_1_10_17 + batch_1_14_17 + batch_1_9_17 + batch_1_13_17
   + batch_1_15_17 + batch_1_17_19 = 1
 order_18: batch_18 + batch_9_12_14_18 + batch_0_4_13_16_18 + batch_3_5_18
   + batch_0_4_15_16_18 + batch_10_12_13_18 + batch_9_12_13_18
   + batch_12_13_15_18 = 1
 order_19: batch_19 + batch_6_8_14_19 + batch_1_17_19 + batch_9_12_15_19
   + batch_0_4_12_16_19 + batch_6_8_15_19 = 1
Bounds
End
