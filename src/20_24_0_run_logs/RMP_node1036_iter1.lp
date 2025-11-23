\ Model JOBPRP_RMP_1036
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x395d75feae7bb62b
Minimize
  77.2 batch_9 + 78.4 batch_10 + 89.2 batch_17 + 77.2 batch_18
   + 61.2 batch_19 + 115.2 batch_2_7_11 + 109.2 batch_6_9_13_18
   + 105.2 batch_6_9_13_19 + 132 batch_6_8_13_15 + 121.2 batch_0_4_5_14_19
   + 126 batch_0_4_8_15_19 + 123.2 batch_6_9_10_13 + 121.2 batch_0_4_10_17
   + 125.2 batch_10_17_18_19 + 131.2 batch_3_16_17 + 133.2 batch_1_12_18
   + 136 batch_1_9_12 + 125.2 batch_3_5_14_16 + 121.2 batch_6_13_17_19
   + 113.2 batch_5_14_17_19 + 137.2 batch_3_16_17_19
Subject To
 order_0: batch_0_4_5_14_19 + batch_0_4_8_15_19 + batch_0_4_10_17 = 1
 order_1: batch_1_12_18 + batch_1_9_12 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_16_17 + batch_3_5_14_16 + batch_3_16_17_19 = 1
 order_4: batch_0_4_5_14_19 + batch_0_4_8_15_19 + batch_0_4_10_17 = 1
 order_5: batch_0_4_5_14_19 + batch_3_5_14_16 + batch_5_14_17_19 = 1
 order_6: batch_6_9_13_18 + batch_6_9_13_19 + batch_6_8_13_15
   + batch_6_9_10_13 + batch_6_13_17_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_6_8_13_15 + batch_0_4_8_15_19 = 1
 order_9: batch_9 + batch_6_9_13_18 + batch_6_9_13_19 + batch_6_9_10_13
   + batch_1_9_12 = 1
 order_10: batch_10 + batch_6_9_10_13 + batch_0_4_10_17 + batch_10_17_18_19
   = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_1_12_18 + batch_1_9_12 = 1
 order_13: batch_6_9_13_18 + batch_6_9_13_19 + batch_6_8_13_15
   + batch_6_9_10_13 + batch_6_13_17_19 = 1
 order_14: batch_0_4_5_14_19 + batch_3_5_14_16 + batch_5_14_17_19 = 1
 order_15: batch_6_8_13_15 + batch_0_4_8_15_19 = 1
 order_16: batch_3_16_17 + batch_3_5_14_16 + batch_3_16_17_19 = 1
 order_17: batch_17 + batch_0_4_10_17 + batch_10_17_18_19 + batch_3_16_17
   + batch_6_13_17_19 + batch_5_14_17_19 + batch_3_16_17_19 = 1
 order_18: batch_18 + batch_6_9_13_18 + batch_10_17_18_19 + batch_1_12_18
   = 1
 order_19: batch_19 + batch_6_9_13_19 + batch_0_4_5_14_19
   + batch_0_4_8_15_19 + batch_10_17_18_19 + batch_6_13_17_19
   + batch_5_14_17_19 + batch_3_16_17_19 = 1
Bounds
End
