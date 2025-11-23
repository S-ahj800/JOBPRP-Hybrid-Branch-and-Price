\ Model JOBPRP_RMP_587
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xea46c36f4917cfe0
Minimize
  72.4 batch_8 + 77.2 batch_9 + 78.4 batch_10 + 89.6 batch_12
   + 89.2 batch_17 + 77.2 batch_18 + 61.2 batch_19 + 115.2 batch_2_7_11
   + 109.2 batch_6_9_13_18 + 105.2 batch_6_9_13_19 + 109.2 batch_6_8_13_19
   + 123.2 batch_6_9_10_13 + 130 batch_1_15_18_19 + 121.2 batch_5_9_14_18
   + 125.2 batch_3_5_14_16 + 113.2 batch_5_14_17_19 + 135.2 batch_1_9_15_19
   + 119.2 batch_10_17_18 + 127.2 batch_9_10_17_19 + 119.2 batch_0_4_8_10
   + 107.2 batch_8_9_18_19 + 131.2 batch_8_17_18_19 + 125.2 batch_8_9_17_19
   + 129.2 batch_8_10_17_19 + 121.2 batch_6_13_17_19
   + 123.2 batch_5_10_14_18 + 124 batch_8_9_12_19 + 129.2 batch_8_10_12_19
   + 131.2 batch_0_3_4_16 + 125.2 batch_10_17_18_19 + 135.2 batch_8_12_17
   + 133.2 batch_10_12_17 + 141.2 batch_1_12_15 + 124 batch_6_12_13_19
   + 133.2 batch_12_17_18 + 131.2 batch_3_16_17
Subject To
 order_0: batch_0_4_8_10 + batch_0_3_4_16 = 1
 order_1: batch_1_15_18_19 + batch_1_9_15_19 + batch_1_12_15 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_5_14_16 + batch_0_3_4_16 + batch_3_16_17 = 1
 order_4: batch_0_4_8_10 + batch_0_3_4_16 = 1
 order_5: batch_5_9_14_18 + batch_3_5_14_16 + batch_5_14_17_19
   + batch_5_10_14_18 = 1
 order_6: batch_6_9_13_18 + batch_6_9_13_19 + batch_6_8_13_19
   + batch_6_9_10_13 + batch_6_13_17_19 + batch_6_12_13_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_6_8_13_19 + batch_0_4_8_10 + batch_8_9_18_19
   + batch_8_17_18_19 + batch_8_9_17_19 + batch_8_10_17_19
   + batch_8_9_12_19 + batch_8_10_12_19 + batch_8_12_17 = 1
 order_9: batch_9 + batch_6_9_13_18 + batch_6_9_13_19 + batch_6_9_10_13
   + batch_5_9_14_18 + batch_1_9_15_19 + batch_9_10_17_19 + batch_8_9_18_19
   + batch_8_9_17_19 + batch_8_9_12_19 = 1
 order_10: batch_10 + batch_6_9_10_13 + batch_10_17_18 + batch_9_10_17_19
   + batch_0_4_8_10 + batch_8_10_17_19 + batch_5_10_14_18
   + batch_8_10_12_19 + batch_10_17_18_19 + batch_10_12_17 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_8_9_12_19 + batch_8_10_12_19 + batch_8_12_17
   + batch_10_12_17 + batch_1_12_15 + batch_6_12_13_19 + batch_12_17_18
   = 1
 order_13: batch_6_9_13_18 + batch_6_9_13_19 + batch_6_8_13_19
   + batch_6_9_10_13 + batch_6_13_17_19 + batch_6_12_13_19 = 1
 order_14: batch_5_9_14_18 + batch_3_5_14_16 + batch_5_14_17_19
   + batch_5_10_14_18 = 1
 order_15: batch_1_15_18_19 + batch_1_9_15_19 + batch_1_12_15 = 1
 order_16: batch_3_5_14_16 + batch_0_3_4_16 + batch_3_16_17 = 1
 order_17: batch_17 + batch_5_14_17_19 + batch_10_17_18 + batch_9_10_17_19
   + batch_8_17_18_19 + batch_8_9_17_19 + batch_8_10_17_19
   + batch_6_13_17_19 + batch_10_17_18_19 + batch_8_12_17 + batch_10_12_17
   + batch_12_17_18 + batch_3_16_17 = 1
 order_18: batch_18 + batch_6_9_13_18 + batch_1_15_18_19 + batch_5_9_14_18
   + batch_10_17_18 + batch_8_9_18_19 + batch_8_17_18_19 + batch_5_10_14_18
   + batch_10_17_18_19 + batch_12_17_18 = 1
 order_19: batch_19 + batch_6_9_13_19 + batch_6_8_13_19 + batch_1_15_18_19
   + batch_5_14_17_19 + batch_1_9_15_19 + batch_9_10_17_19
   + batch_8_9_18_19 + batch_8_17_18_19 + batch_8_9_17_19
   + batch_8_10_17_19 + batch_6_13_17_19 + batch_8_9_12_19
   + batch_8_10_12_19 + batch_10_17_18_19 + batch_6_12_13_19 = 1
Bounds
End
