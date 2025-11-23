\ Model JOBPRP_RMP_415
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x9f037a323d1639f1
Minimize
  72.4 batch_8 + 77.2 batch_9 + 78.4 batch_10 + 89.6 batch_12
   + 89.2 batch_17 + 77.2 batch_18 + 115.2 batch_2_7_11
   + 118 batch_3_12_16_19 + 119.2 batch_3_8_16_19 + 132 batch_0_4_8_12
   + 137.2 batch_0_1_4_15 + 135.2 batch_0_4_10_12 + 133.2 batch_1_15_17
   + 121.2 batch_5_9_14_18 + 119.2 batch_10_17_18 + 119.2 batch_0_4_8_10
   + 123.2 batch_5_6_13_14 + 123.2 batch_0_4_8_9 + 137.2 batch_3_16_17_19
   + 111.2 batch_5_14_17 + 125.2 batch_6_10_13_18 + 113.2 batch_6_13_17
   + 124 batch_8_9_12 + 109.2 batch_6_8_13
Subject To
 order_0: batch_0_4_8_12 + batch_0_1_4_15 + batch_0_4_10_12
   + batch_0_4_8_10 + batch_0_4_8_9 = 1
 order_1: batch_0_1_4_15 + batch_1_15_17 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16_19 + batch_3_8_16_19 + batch_3_16_17_19 = 1
 order_4: batch_0_4_8_12 + batch_0_1_4_15 + batch_0_4_10_12
   + batch_0_4_8_10 + batch_0_4_8_9 = 1
 order_5: batch_5_9_14_18 + batch_5_6_13_14 + batch_5_14_17 = 1
 order_6: batch_5_6_13_14 + batch_6_10_13_18 + batch_6_13_17 + batch_6_8_13
   = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_3_8_16_19 + batch_0_4_8_12 + batch_0_4_8_10
   + batch_0_4_8_9 + batch_8_9_12 + batch_6_8_13 = 1
 order_9: batch_9 + batch_5_9_14_18 + batch_0_4_8_9 + batch_8_9_12 = 1
 order_10: batch_10 + batch_0_4_10_12 + batch_10_17_18 + batch_0_4_8_10
   + batch_6_10_13_18 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_3_12_16_19 + batch_0_4_8_12 + batch_0_4_10_12
   + batch_8_9_12 = 1
 order_13: batch_5_6_13_14 + batch_6_10_13_18 + batch_6_13_17
   + batch_6_8_13 = 1
 order_14: batch_5_9_14_18 + batch_5_6_13_14 + batch_5_14_17 = 1
 order_15: batch_0_1_4_15 + batch_1_15_17 = 1
 order_16: batch_3_12_16_19 + batch_3_8_16_19 + batch_3_16_17_19 = 1
 order_17: batch_17 + batch_1_15_17 + batch_10_17_18 + batch_3_16_17_19
   + batch_5_14_17 + batch_6_13_17 = 1
 order_18: batch_18 + batch_5_9_14_18 + batch_10_17_18 + batch_6_10_13_18
   = 1
 order_19: batch_3_12_16_19 + batch_3_8_16_19 + batch_3_16_17_19 = 1
Bounds
End
