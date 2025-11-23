\ Model JOBPRP_RMP_1643
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x9e8a1c35255a1098
Minimize
  98 batch_1 + 91.2 batch_5 + 72.4 batch_8 + 78.4 batch_10 + 89.6 batch_12
   + 89.2 batch_17 + 77.2 batch_18 + 123.2 batch_1_17_18
   + 105.6 batch_3_12_16 + 115.2 batch_2_7_11 + 126 batch_8_12_15_19
   + 127.2 batch_0_4_5_10 + 130 batch_0_4_10_15_19
   + 131.2 batch_0_4_5_15_19 + 125.2 batch_6_10_13_18 + 113.2 batch_6_13_17
   + 125.2 batch_9_10_14_17 + 120 batch_1_6_13 + 126 batch_3_15_16_19
   + 131.2 batch_5_8_15_19 + 117.2 batch_3_5_16 + 112.4 batch_3_8_16
   + 121.2 batch_0_4_10_17 + 119.2 batch_5_8_10 + 119.2 batch_0_4_9_14
   + 125.2 batch_9_14_17_18
Subject To
 order_0: batch_0_4_5_10 + batch_0_4_10_15_19 + batch_0_4_5_15_19
   + batch_0_4_10_17 + batch_0_4_9_14 = 1
 order_1: batch_1 + batch_1_17_18 + batch_1_6_13 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16 + batch_3_15_16_19 + batch_3_5_16 + batch_3_8_16
   = 1
 order_4: batch_0_4_5_10 + batch_0_4_10_15_19 + batch_0_4_5_15_19
   + batch_0_4_10_17 + batch_0_4_9_14 = 1
 order_5: batch_5 + batch_0_4_5_10 + batch_0_4_5_15_19 + batch_5_8_15_19
   + batch_3_5_16 + batch_5_8_10 = 1
 order_6: batch_6_10_13_18 + batch_6_13_17 + batch_1_6_13 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_8_12_15_19 + batch_5_8_15_19 + batch_3_8_16
   + batch_5_8_10 = 1
 order_9: batch_9_10_14_17 + batch_0_4_9_14 + batch_9_14_17_18 = 1
 order_10: batch_10 + batch_0_4_5_10 + batch_0_4_10_15_19
   + batch_6_10_13_18 + batch_9_10_14_17 + batch_0_4_10_17 + batch_5_8_10
   = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_3_12_16 + batch_8_12_15_19 = 1
 order_13: batch_6_10_13_18 + batch_6_13_17 + batch_1_6_13 = 1
 order_14: batch_9_10_14_17 + batch_0_4_9_14 + batch_9_14_17_18 = 1
 order_15: batch_8_12_15_19 + batch_0_4_10_15_19 + batch_0_4_5_15_19
   + batch_3_15_16_19 + batch_5_8_15_19 = 1
 order_16: batch_3_12_16 + batch_3_15_16_19 + batch_3_5_16 + batch_3_8_16
   = 1
 order_17: batch_17 + batch_1_17_18 + batch_6_13_17 + batch_9_10_14_17
   + batch_0_4_10_17 + batch_9_14_17_18 = 1
 order_18: batch_18 + batch_1_17_18 + batch_6_10_13_18 + batch_9_14_17_18
   = 1
 order_19: batch_8_12_15_19 + batch_0_4_10_15_19 + batch_0_4_5_15_19
   + batch_3_15_16_19 + batch_5_8_15_19 = 1
Bounds
End
