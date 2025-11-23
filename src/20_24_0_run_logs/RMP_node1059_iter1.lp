\ Model JOBPRP_RMP_1059
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x52cd8a6156fa137
Minimize
  98 batch_1 + 91.2 batch_5 + 89.6 batch_12 + 65.2 batch_14 + 74.8 batch_15
   + 61.2 batch_19 + 119.2 batch_0_4_10_14_15 + 105.6 batch_3_12_16
   + 115.2 batch_2_7_11 + 109.2 batch_6_9_13_18 + 118 batch_3_12_16_19
   + 117.2 batch_5_8_17 + 127.2 batch_8_14_15_17 + 131.2 batch_1_3_16
   + 135.2 batch_0_4_10_12 + 115.2 batch_1_5_19 + 133.2 batch_8_15_17_19
   + 115.2 batch_8_14_17_19 + 130 batch_0_4_10_15_19
Subject To
 order_0: batch_0_4_10_14_15 + batch_0_4_10_12 + batch_0_4_10_15_19 = 1
 order_1: batch_1 + batch_1_3_16 + batch_1_5_19 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16 + batch_3_12_16_19 + batch_1_3_16 = 1
 order_4: batch_0_4_10_14_15 + batch_0_4_10_12 + batch_0_4_10_15_19 = 1
 order_5: batch_5 + batch_5_8_17 + batch_1_5_19 = 1
 order_6: batch_6_9_13_18 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_5_8_17 + batch_8_14_15_17 + batch_8_15_17_19
   + batch_8_14_17_19 = 1
 order_9: batch_6_9_13_18 = 1
 order_10: batch_0_4_10_14_15 + batch_0_4_10_12 + batch_0_4_10_15_19 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_3_12_16 + batch_3_12_16_19 + batch_0_4_10_12
   = 1
 order_13: batch_6_9_13_18 = 1
 order_14: batch_14 + batch_0_4_10_14_15 + batch_8_14_15_17
   + batch_8_14_17_19 = 1
 order_15: batch_15 + batch_0_4_10_14_15 + batch_8_14_15_17
   + batch_8_15_17_19 + batch_0_4_10_15_19 = 1
 order_16: batch_3_12_16 + batch_3_12_16_19 + batch_1_3_16 = 1
 order_17: batch_5_8_17 + batch_8_14_15_17 + batch_8_15_17_19
   + batch_8_14_17_19 = 1
 order_18: batch_6_9_13_18 = 1
 order_19: batch_19 + batch_3_12_16_19 + batch_1_5_19 + batch_8_15_17_19
   + batch_8_14_17_19 + batch_0_4_10_15_19 = 1
Bounds
End
