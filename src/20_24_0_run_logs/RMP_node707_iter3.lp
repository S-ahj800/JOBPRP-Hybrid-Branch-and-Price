\ Model JOBPRP_RMP_707
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x6e05cf452ebb7879
Minimize
  77.2 batch_9 + 78.4 batch_10 + 89.6 batch_12 + 77.2 batch_18
   + 115.2 batch_2_7_11 + 123.2 batch_5_14_15_17 + 118 batch_3_12_16_19
   + 119.2 batch_0_4_15_17 + 121.2 batch_1_8_9 + 135.2 batch_0_4_10_12
   + 122 batch_3_9_16_19 + 123.2 batch_5_6_13_14 + 123.2 batch_5_10_14_18
   + 123.2 batch_3_10_16_19 + 129.2 batch_5_9_10_14 + 103.2 batch_6_13_18
   + 121.2 batch_1_8_18
Subject To
 order_0: batch_0_4_15_17 + batch_0_4_10_12 = 1
 order_1: batch_1_8_9 + batch_1_8_18 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16_19 + batch_3_9_16_19 + batch_3_10_16_19 = 1
 order_4: batch_0_4_15_17 + batch_0_4_10_12 = 1
 order_5: batch_5_14_15_17 + batch_5_6_13_14 + batch_5_10_14_18
   + batch_5_9_10_14 = 1
 order_6: batch_5_6_13_14 + batch_6_13_18 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_1_8_9 + batch_1_8_18 = 1
 order_9: batch_9 + batch_1_8_9 + batch_3_9_16_19 + batch_5_9_10_14 = 1
 order_10: batch_10 + batch_0_4_10_12 + batch_5_10_14_18 + batch_3_10_16_19
   + batch_5_9_10_14 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_3_12_16_19 + batch_0_4_10_12 = 1
 order_13: batch_5_6_13_14 + batch_6_13_18 = 1
 order_14: batch_5_14_15_17 + batch_5_6_13_14 + batch_5_10_14_18
   + batch_5_9_10_14 = 1
 order_15: batch_5_14_15_17 + batch_0_4_15_17 = 1
 order_16: batch_3_12_16_19 + batch_3_9_16_19 + batch_3_10_16_19 = 1
 order_17: batch_5_14_15_17 + batch_0_4_15_17 = 1
 order_18: batch_18 + batch_5_10_14_18 + batch_6_13_18 + batch_1_8_18 = 1
 order_19: batch_3_12_16_19 + batch_3_9_16_19 + batch_3_10_16_19 = 1
Bounds
End
