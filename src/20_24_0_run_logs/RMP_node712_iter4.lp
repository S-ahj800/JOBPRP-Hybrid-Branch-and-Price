\ Model JOBPRP_RMP_712
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x52cd8a6156fa137
Minimize
  98 batch_1 + 72.4 batch_8 + 77.2 batch_9 + 89.6 batch_12 + 77.2 batch_18
   + 115.2 batch_2_7_11 + 118 batch_3_12_16_19 + 119.2 batch_0_4_15_17
   + 119.2 batch_5_8_10_14 + 119.2 batch_3_8_16_19 + 132 batch_0_4_8_12
   + 111.2 batch_1_9_18 + 120 batch_1_6_13 + 122 batch_3_9_16_19
   + 124 batch_8_9_12 + 123.2 batch_0_4_8_9 + 103.2 batch_6_13_18
   + 129.2 batch_5_9_10_14 + 135.2 batch_9_15_17
Subject To
 order_0: batch_0_4_15_17 + batch_0_4_8_12 + batch_0_4_8_9 = 1
 order_1: batch_1 + batch_1_9_18 + batch_1_6_13 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16_19 + batch_3_8_16_19 + batch_3_9_16_19 = 1
 order_4: batch_0_4_15_17 + batch_0_4_8_12 + batch_0_4_8_9 = 1
 order_5: batch_5_8_10_14 + batch_5_9_10_14 = 1
 order_6: batch_1_6_13 + batch_6_13_18 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_5_8_10_14 + batch_3_8_16_19 + batch_0_4_8_12
   + batch_8_9_12 + batch_0_4_8_9 = 1
 order_9: batch_9 + batch_1_9_18 + batch_3_9_16_19 + batch_8_9_12
   + batch_0_4_8_9 + batch_5_9_10_14 + batch_9_15_17 = 1
 order_10: batch_5_8_10_14 + batch_5_9_10_14 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_3_12_16_19 + batch_0_4_8_12 + batch_8_9_12 = 1
 order_13: batch_1_6_13 + batch_6_13_18 = 1
 order_14: batch_5_8_10_14 + batch_5_9_10_14 = 1
 order_15: batch_0_4_15_17 + batch_9_15_17 = 1
 order_16: batch_3_12_16_19 + batch_3_8_16_19 + batch_3_9_16_19 = 1
 order_17: batch_0_4_15_17 + batch_9_15_17 = 1
 order_18: batch_18 + batch_1_9_18 + batch_6_13_18 = 1
 order_19: batch_3_12_16_19 + batch_3_8_16_19 + batch_3_9_16_19 = 1
Bounds
End
