\ Model JOBPRP_RMP_468
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x3d4f273dac736a18
Minimize
  77.2 batch_9 + 89.6 batch_12 + 89.2 batch_17 + 77.2 batch_18
   + 61.2 batch_19 + 105.6 batch_3_12_16 + 115.2 batch_2_7_11
   + 137.2 batch_0_1_4_15 + 133.2 batch_1_15_17 + 130 batch_1_15_18_19
   + 135.2 batch_1_9_15_19 + 132 batch_0_4_9_18_19 + 131.2 batch_0_3_4_16
   + 125.2 batch_9_17_18_19 + 125.2 batch_5_8_9_14 + 125.2 batch_6_10_13_18
   + 123.2 batch_5_8_14_18 + 138.8 batch_0_4_12_19
Subject To
 order_0: batch_0_1_4_15 + batch_0_4_9_18_19 + batch_0_3_4_16
   + batch_0_4_12_19 = 1
 order_1: batch_0_1_4_15 + batch_1_15_17 + batch_1_15_18_19
   + batch_1_9_15_19 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16 + batch_0_3_4_16 = 1
 order_4: batch_0_1_4_15 + batch_0_4_9_18_19 + batch_0_3_4_16
   + batch_0_4_12_19 = 1
 order_5: batch_5_8_9_14 + batch_5_8_14_18 = 1
 order_6: batch_6_10_13_18 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_5_8_9_14 + batch_5_8_14_18 = 1
 order_9: batch_9 + batch_1_9_15_19 + batch_0_4_9_18_19 + batch_9_17_18_19
   + batch_5_8_9_14 = 1
 order_10: batch_6_10_13_18 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_3_12_16 + batch_0_4_12_19 = 1
 order_13: batch_6_10_13_18 = 1
 order_14: batch_5_8_9_14 + batch_5_8_14_18 = 1
 order_15: batch_0_1_4_15 + batch_1_15_17 + batch_1_15_18_19
   + batch_1_9_15_19 = 1
 order_16: batch_3_12_16 + batch_0_3_4_16 = 1
 order_17: batch_17 + batch_1_15_17 + batch_9_17_18_19 = 1
 order_18: batch_18 + batch_1_15_18_19 + batch_0_4_9_18_19
   + batch_9_17_18_19 + batch_6_10_13_18 + batch_5_8_14_18 = 1
 order_19: batch_19 + batch_1_15_18_19 + batch_1_9_15_19
   + batch_0_4_9_18_19 + batch_9_17_18_19 + batch_0_4_12_19 = 1
Bounds
End
