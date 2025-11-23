\ Model JOBPRP_RMP_812
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x9e8a1c35255a1098
Minimize
  83.6 batch_3 + 91.2 batch_5 + 77.2 batch_9 + 78.4 batch_10 + 89.6 batch_12
   + 65.2 batch_14 + 74.8 batch_15 + 77.2 batch_18 + 115.2 batch_2_7_11
   + 127.2 batch_1_10_17 + 109.2 batch_6_8_13_19 + 138 batch_9_12_14_18
   + 127.2 batch_1_9_17 + 127.2 batch_0_4_12_16 + 115.2 batch_3_5_18
   + 137.2 batch_0_4_15_16_18 + 133.2 batch_1_15_17 + 141.2 batch_5_9_10_15
   + 139.2 batch_0_4_9_15_16 + 135.2 batch_5_9_15_18
   + 137.2 batch_3_10_14_15 + 137.2 batch_5_12_14_15 + 127.2 batch_0_4_5_16
   + 121.2 batch_5_9_14_18 + 133.2 batch_10_12_14_18 + 131.2 batch_0_3_4_16
Subject To
 order_0: batch_0_4_12_16 + batch_0_4_15_16_18 + batch_0_4_9_15_16
   + batch_0_4_5_16 + batch_0_3_4_16 = 1
 order_1: batch_1_10_17 + batch_1_9_17 + batch_1_15_17 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3 + batch_3_5_18 + batch_3_10_14_15 + batch_0_3_4_16 = 1
 order_4: batch_0_4_12_16 + batch_0_4_15_16_18 + batch_0_4_9_15_16
   + batch_0_4_5_16 + batch_0_3_4_16 = 1
 order_5: batch_5 + batch_3_5_18 + batch_5_9_10_15 + batch_5_9_15_18
   + batch_5_12_14_15 + batch_0_4_5_16 + batch_5_9_14_18 = 1
 order_6: batch_6_8_13_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_6_8_13_19 = 1
 order_9: batch_9 + batch_9_12_14_18 + batch_1_9_17 + batch_5_9_10_15
   + batch_0_4_9_15_16 + batch_5_9_15_18 + batch_5_9_14_18 = 1
 order_10: batch_10 + batch_1_10_17 + batch_5_9_10_15 + batch_3_10_14_15
   + batch_10_12_14_18 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_9_12_14_18 + batch_0_4_12_16 + batch_5_12_14_15
   + batch_10_12_14_18 = 1
 order_13: batch_6_8_13_19 = 1
 order_14: batch_14 + batch_9_12_14_18 + batch_3_10_14_15
   + batch_5_12_14_15 + batch_5_9_14_18 + batch_10_12_14_18 = 1
 order_15: batch_15 + batch_0_4_15_16_18 + batch_1_15_17 + batch_5_9_10_15
   + batch_0_4_9_15_16 + batch_5_9_15_18 + batch_3_10_14_15
   + batch_5_12_14_15 = 1
 order_16: batch_0_4_12_16 + batch_0_4_15_16_18 + batch_0_4_9_15_16
   + batch_0_4_5_16 + batch_0_3_4_16 = 1
 order_17: batch_1_10_17 + batch_1_9_17 + batch_1_15_17 = 1
 order_18: batch_18 + batch_9_12_14_18 + batch_3_5_18 + batch_0_4_15_16_18
   + batch_5_9_15_18 + batch_5_9_14_18 + batch_10_12_14_18 = 1
 order_19: batch_6_8_13_19 = 1
Bounds
End
