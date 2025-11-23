\ Model JOBPRP_RMP_1427
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x7128337dd08208d6
Minimize
  98 batch_1 + 72.4 batch_8 + 78.4 batch_10 + 89.6 batch_12 + 65.2 batch_14
   + 77.2 batch_18 + 115.2 batch_2_7_11 + 123.2 batch_0_4_5_17
   + 126 batch_8_12_15_19 + 129.2 batch_3_10_14_16 + 111.2 batch_6_9_13_14
   + 123.2 batch_6_9_10_13 + 130 batch_1_15_18_19 + 133.2 batch_1_12_18
   + 119.2 batch_1_10_14 + 121.2 batch_1_8_18 + 139.2 batch_1_10_15_19
   + 112.4 batch_3_8_16 + 133.2 batch_10_12_14_18 + 126 batch_3_15_16_19
Subject To
 order_0: batch_0_4_5_17 = 1
 order_1: batch_1 + batch_1_15_18_19 + batch_1_12_18 + batch_1_10_14
   + batch_1_8_18 + batch_1_10_15_19 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_10_14_16 + batch_3_8_16 + batch_3_15_16_19 = 1
 order_4: batch_0_4_5_17 = 1
 order_5: batch_0_4_5_17 = 1
 order_6: batch_6_9_13_14 + batch_6_9_10_13 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_8_12_15_19 + batch_1_8_18 + batch_3_8_16 = 1
 order_9: batch_6_9_13_14 + batch_6_9_10_13 = 1
 order_10: batch_10 + batch_3_10_14_16 + batch_6_9_10_13 + batch_1_10_14
   + batch_1_10_15_19 + batch_10_12_14_18 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_8_12_15_19 + batch_1_12_18 + batch_10_12_14_18
   = 1
 order_13: batch_6_9_13_14 + batch_6_9_10_13 = 1
 order_14: batch_14 + batch_3_10_14_16 + batch_6_9_13_14 + batch_1_10_14
   + batch_10_12_14_18 = 1
 order_15: batch_8_12_15_19 + batch_1_15_18_19 + batch_1_10_15_19
   + batch_3_15_16_19 = 1
 order_16: batch_3_10_14_16 + batch_3_8_16 + batch_3_15_16_19 = 1
 order_17: batch_0_4_5_17 = 1
 order_18: batch_18 + batch_1_15_18_19 + batch_1_12_18 + batch_1_8_18
   + batch_10_12_14_18 = 1
 order_19: batch_8_12_15_19 + batch_1_15_18_19 + batch_1_10_15_19
   + batch_3_15_16_19 = 1
Bounds
End
