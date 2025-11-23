\ Model JOBPRP_RMP_2279
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x9e8a1c35255a1098
Minimize
  98 batch_1 + 89.2 batch_6 + 77.2 batch_9 + 78.4 batch_10 + 89.6 batch_12
   + 74.8 batch_15 + 61.2 batch_19 + 115.2 batch_6_8_18_19
   + 105.6 batch_3_12_16 + 115.2 batch_2_7_11 + 118 batch_1_6_9
   + 118 batch_3_12_16_19 + 130.4 batch_3_10_15_16 + 123.2 batch_0_4_5_17
   + 121.2 batch_1_8_18 + 125.2 batch_5_10_17_19 + 113.2 batch_1_9_13_14
   + 127.2 batch_0_4_12_15 + 111.2 batch_8_13_14_18_19
   + 131.2 batch_9_10_12 + 123.2 batch_5_15_17 + 129.2 batch_5_12_17
   + 107.2 batch_8_9_18_19 + 105.2 batch_8_13_14_18
   + 129.2 batch_10_12_13_14 + 125.2 batch_1_10_13_14
Subject To
 order_0: batch_0_4_5_17 + batch_0_4_12_15 = 1
 order_1: batch_1 + batch_1_6_9 + batch_1_8_18 + batch_1_9_13_14
   + batch_1_10_13_14 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16 + batch_3_12_16_19 + batch_3_10_15_16 = 1
 order_4: batch_0_4_5_17 + batch_0_4_12_15 = 1
 order_5: batch_0_4_5_17 + batch_5_10_17_19 + batch_5_15_17 + batch_5_12_17
   = 1
 order_6: batch_6 + batch_6_8_18_19 + batch_1_6_9 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_6_8_18_19 + batch_1_8_18 + batch_8_13_14_18_19
   + batch_8_9_18_19 + batch_8_13_14_18 = 1
 order_9: batch_9 + batch_1_6_9 + batch_1_9_13_14 + batch_9_10_12
   + batch_8_9_18_19 = 1
 order_10: batch_10 + batch_3_10_15_16 + batch_5_10_17_19 + batch_9_10_12
   + batch_10_12_13_14 + batch_1_10_13_14 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_3_12_16 + batch_3_12_16_19 + batch_0_4_12_15
   + batch_9_10_12 + batch_5_12_17 + batch_10_12_13_14 = 1
 order_13: batch_1_9_13_14 + batch_8_13_14_18_19 + batch_8_13_14_18
   + batch_10_12_13_14 + batch_1_10_13_14 = 1
 order_14: batch_1_9_13_14 + batch_8_13_14_18_19 + batch_8_13_14_18
   + batch_10_12_13_14 + batch_1_10_13_14 = 1
 order_15: batch_15 + batch_3_10_15_16 + batch_0_4_12_15 + batch_5_15_17
   = 1
 order_16: batch_3_12_16 + batch_3_12_16_19 + batch_3_10_15_16 = 1
 order_17: batch_0_4_5_17 + batch_5_10_17_19 + batch_5_15_17
   + batch_5_12_17 = 1
 order_18: batch_6_8_18_19 + batch_1_8_18 + batch_8_13_14_18_19
   + batch_8_9_18_19 + batch_8_13_14_18 = 1
 order_19: batch_19 + batch_6_8_18_19 + batch_3_12_16_19 + batch_5_10_17_19
   + batch_8_13_14_18_19 + batch_8_9_18_19 = 1
Bounds
End
