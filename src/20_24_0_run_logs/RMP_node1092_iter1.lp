\ Model JOBPRP_RMP_1092
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x3a076c9752ccadfd
Minimize
  91.2 batch_5 + 77.2 batch_9 + 89.6 batch_12 + 74.8 batch_15
   + 77.2 batch_18 + 61.2 batch_19 + 119.2 batch_0_4_10_14_15
   + 105.6 batch_3_12_16 + 115.2 batch_2_7_11 + 118 batch_3_12_16_19
   + 120 batch_1_6_13 + 131.2 batch_8_17_18_19 + 125.2 batch_8_9_17_19
   + 137.2 batch_3_9_15_16 + 121.2 batch_3_5_16_19 + 122 batch_3_9_16_19
   + 133.2 batch_5_12_15_19 + 113.2 batch_5_9_18_19 + 129.2 batch_12_15_18
   + 135.2 batch_5_9_15_18 + 125.2 batch_8_17_18 + 125.2 batch_8_9_17
Subject To
 order_0: batch_0_4_10_14_15 = 1
 order_1: batch_1_6_13 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16 + batch_3_12_16_19 + batch_3_9_15_16
   + batch_3_5_16_19 + batch_3_9_16_19 = 1
 order_4: batch_0_4_10_14_15 = 1
 order_5: batch_5 + batch_3_5_16_19 + batch_5_12_15_19 + batch_5_9_18_19
   + batch_5_9_15_18 = 1
 order_6: batch_1_6_13 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8_17_18_19 + batch_8_9_17_19 + batch_8_17_18 + batch_8_9_17
   = 1
 order_9: batch_9 + batch_8_9_17_19 + batch_3_9_15_16 + batch_3_9_16_19
   + batch_5_9_18_19 + batch_5_9_15_18 + batch_8_9_17 = 1
 order_10: batch_0_4_10_14_15 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_3_12_16 + batch_3_12_16_19 + batch_5_12_15_19
   + batch_12_15_18 = 1
 order_13: batch_1_6_13 = 1
 order_14: batch_0_4_10_14_15 = 1
 order_15: batch_15 + batch_0_4_10_14_15 + batch_3_9_15_16
   + batch_5_12_15_19 + batch_12_15_18 + batch_5_9_15_18 = 1
 order_16: batch_3_12_16 + batch_3_12_16_19 + batch_3_9_15_16
   + batch_3_5_16_19 + batch_3_9_16_19 = 1
 order_17: batch_8_17_18_19 + batch_8_9_17_19 + batch_8_17_18
   + batch_8_9_17 = 1
 order_18: batch_18 + batch_8_17_18_19 + batch_5_9_18_19 + batch_12_15_18
   + batch_5_9_15_18 + batch_8_17_18 = 1
 order_19: batch_19 + batch_3_12_16_19 + batch_8_17_18_19 + batch_8_9_17_19
   + batch_3_5_16_19 + batch_3_9_16_19 + batch_5_12_15_19 + batch_5_9_18_19
   = 1
Bounds
End
