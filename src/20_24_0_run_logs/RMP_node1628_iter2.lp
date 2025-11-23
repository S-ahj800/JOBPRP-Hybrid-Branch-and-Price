\ Model JOBPRP_RMP_1628
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x9e8a1c35255a1098
Minimize
  98 batch_1 + 91.2 batch_5 + 72.4 batch_8 + 78.4 batch_10 + 89.6 batch_12
   + 89.2 batch_17 + 77.2 batch_18 + 123.2 batch_1_17_18
   + 105.6 batch_3_12_16 + 115.2 batch_2_7_11 + 117.2 batch_1_5_18
   + 127.2 batch_1_10_17 + 109.2 batch_8_9_14_18 + 132 batch_0_4_8_12
   + 126 batch_8_12_15_19 + 129.2 batch_1_5_8 + 126 batch_0_4_8_15_19
   + 127.2 batch_0_4_5_10 + 130 batch_0_4_10_15_19 + 127.2 batch_1_5_10
   + 131.2 batch_0_4_5_15_19 + 125.2 batch_6_10_13_18 + 113.2 batch_6_13_17
   + 125.2 batch_9_10_14_17 + 120 batch_1_6_13 + 126 batch_3_15_16_19
Subject To
 order_0: batch_0_4_8_12 + batch_0_4_8_15_19 + batch_0_4_5_10
   + batch_0_4_10_15_19 + batch_0_4_5_15_19 = 1
 order_1: batch_1 + batch_1_17_18 + batch_1_5_18 + batch_1_10_17
   + batch_1_5_8 + batch_1_5_10 + batch_1_6_13 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16 + batch_3_15_16_19 = 1
 order_4: batch_0_4_8_12 + batch_0_4_8_15_19 + batch_0_4_5_10
   + batch_0_4_10_15_19 + batch_0_4_5_15_19 = 1
 order_5: batch_5 + batch_1_5_18 + batch_1_5_8 + batch_0_4_5_10
   + batch_1_5_10 + batch_0_4_5_15_19 = 1
 order_6: batch_6_10_13_18 + batch_6_13_17 + batch_1_6_13 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_8_9_14_18 + batch_0_4_8_12 + batch_8_12_15_19
   + batch_1_5_8 + batch_0_4_8_15_19 = 1
 order_9: batch_8_9_14_18 + batch_9_10_14_17 = 1
 order_10: batch_10 + batch_1_10_17 + batch_0_4_5_10 + batch_0_4_10_15_19
   + batch_1_5_10 + batch_6_10_13_18 + batch_9_10_14_17 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_3_12_16 + batch_0_4_8_12 + batch_8_12_15_19
   = 1
 order_13: batch_6_10_13_18 + batch_6_13_17 + batch_1_6_13 = 1
 order_14: batch_8_9_14_18 + batch_9_10_14_17 = 1
 order_15: batch_8_12_15_19 + batch_0_4_8_15_19 + batch_0_4_10_15_19
   + batch_0_4_5_15_19 + batch_3_15_16_19 = 1
 order_16: batch_3_12_16 + batch_3_15_16_19 = 1
 order_17: batch_17 + batch_1_17_18 + batch_1_10_17 + batch_6_13_17
   + batch_9_10_14_17 = 1
 order_18: batch_18 + batch_1_17_18 + batch_1_5_18 + batch_8_9_14_18
   + batch_6_10_13_18 = 1
 order_19: batch_8_12_15_19 + batch_0_4_8_15_19 + batch_0_4_10_15_19
   + batch_0_4_5_15_19 + batch_3_15_16_19 = 1
Bounds
End
