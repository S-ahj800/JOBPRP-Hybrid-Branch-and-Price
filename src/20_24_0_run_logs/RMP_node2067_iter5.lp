\ Model JOBPRP_RMP_2067
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xc1c969ffbbc3f1
Minimize
  91.2 batch_5 + 77.2 batch_9 + 89.6 batch_12 + 74.8 batch_15
   + 89.2 batch_17 + 77.2 batch_18 + 115.2 batch_2_7_11
   + 118 batch_3_12_16_19 + 123.2 batch_0_4_5_17 + 119.2 batch_0_4_15_17
   + 121.2 batch_1_8_9 + 129.2 batch_1_5_8 + 125.2 batch_10_14_15_17
   + 119.2 batch_6_10_13_14 + 119.2 batch_10_14_17_18
   + 127.2 batch_0_4_5_15 + 119.2 batch_0_4_18 + 125.2 batch_3_16_18_19
   + 121.2 batch_1_8_18 + 121.2 batch_3_5_16_19 + 135.2 batch_5_9_15_18
   + 141.2 batch_0_4_12_18 + 132 batch_0_4_9_18 + 127.2 batch_0_4_12_15
Subject To
 order_0: batch_0_4_5_17 + batch_0_4_15_17 + batch_0_4_5_15 + batch_0_4_18
   + batch_0_4_12_18 + batch_0_4_9_18 + batch_0_4_12_15 = 1
 order_1: batch_1_8_9 + batch_1_5_8 + batch_1_8_18 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16_19 + batch_3_16_18_19 + batch_3_5_16_19 = 1
 order_4: batch_0_4_5_17 + batch_0_4_15_17 + batch_0_4_5_15 + batch_0_4_18
   + batch_0_4_12_18 + batch_0_4_9_18 + batch_0_4_12_15 = 1
 order_5: batch_5 + batch_0_4_5_17 + batch_1_5_8 + batch_0_4_5_15
   + batch_3_5_16_19 + batch_5_9_15_18 = 1
 order_6: batch_6_10_13_14 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_1_8_9 + batch_1_5_8 + batch_1_8_18 = 1
 order_9: batch_9 + batch_1_8_9 + batch_5_9_15_18 + batch_0_4_9_18 = 1
 order_10: batch_10_14_15_17 + batch_6_10_13_14 + batch_10_14_17_18 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_3_12_16_19 + batch_0_4_12_18 + batch_0_4_12_15
   = 1
 order_13: batch_6_10_13_14 = 1
 order_14: batch_10_14_15_17 + batch_6_10_13_14 + batch_10_14_17_18 = 1
 order_15: batch_15 + batch_0_4_15_17 + batch_10_14_15_17 + batch_0_4_5_15
   + batch_5_9_15_18 + batch_0_4_12_15 = 1
 order_16: batch_3_12_16_19 + batch_3_16_18_19 + batch_3_5_16_19 = 1
 order_17: batch_17 + batch_0_4_5_17 + batch_0_4_15_17 + batch_10_14_15_17
   + batch_10_14_17_18 = 1
 order_18: batch_18 + batch_10_14_17_18 + batch_0_4_18 + batch_3_16_18_19
   + batch_1_8_18 + batch_5_9_15_18 + batch_0_4_12_18 + batch_0_4_9_18 = 1
 order_19: batch_3_12_16_19 + batch_3_16_18_19 + batch_3_5_16_19 = 1
Bounds
End
