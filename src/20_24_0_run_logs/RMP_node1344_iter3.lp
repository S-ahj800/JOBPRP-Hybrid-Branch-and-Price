\ Model JOBPRP_RMP_1344
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xd07e0f00fe4cae9
Minimize
  91.2 batch_5 + 72.4 batch_8 + 77.2 batch_9 + 78.4 batch_10 + 74.8 batch_15
   + 77.2 batch_18 + 61.2 batch_19 + 115.2 batch_2_7_11
   + 123.2 batch_0_4_10_15_16 + 119.2 batch_3_8_12 + 135.2 batch_5_6_13_15
   + 117.2 batch_1_14_17 + 117.2 batch_5_6_13_19 + 119.2 batch_5_8_9_19
   + 131.2 batch_0_4_9_16_19 + 109.2 batch_6_13_18_19
   + 137.2 batch_0_4_15_16_18 + 123.2 batch_5_8_18_19
   + 107.2 batch_8_9_18_19 + 118.4 batch_3_10_12 + 113.2 batch_5_9_18_19
   + 125.2 batch_6_10_13_18 + 125.2 batch_3_9_12
Subject To
 order_0: batch_0_4_10_15_16 + batch_0_4_9_16_19 + batch_0_4_15_16_18 = 1
 order_1: batch_1_14_17 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_8_12 + batch_3_10_12 + batch_3_9_12 = 1
 order_4: batch_0_4_10_15_16 + batch_0_4_9_16_19 + batch_0_4_15_16_18 = 1
 order_5: batch_5 + batch_5_6_13_15 + batch_5_6_13_19 + batch_5_8_9_19
   + batch_5_8_18_19 + batch_5_9_18_19 = 1
 order_6: batch_5_6_13_15 + batch_5_6_13_19 + batch_6_13_18_19
   + batch_6_10_13_18 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_3_8_12 + batch_5_8_9_19 + batch_5_8_18_19
   + batch_8_9_18_19 = 1
 order_9: batch_9 + batch_5_8_9_19 + batch_0_4_9_16_19 + batch_8_9_18_19
   + batch_5_9_18_19 + batch_3_9_12 = 1
 order_10: batch_10 + batch_0_4_10_15_16 + batch_3_10_12 + batch_6_10_13_18
   = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_8_12 + batch_3_10_12 + batch_3_9_12 = 1
 order_13: batch_5_6_13_15 + batch_5_6_13_19 + batch_6_13_18_19
   + batch_6_10_13_18 = 1
 order_14: batch_1_14_17 = 1
 order_15: batch_15 + batch_0_4_10_15_16 + batch_5_6_13_15
   + batch_0_4_15_16_18 = 1
 order_16: batch_0_4_10_15_16 + batch_0_4_9_16_19 + batch_0_4_15_16_18 = 1
 order_17: batch_1_14_17 = 1
 order_18: batch_18 + batch_6_13_18_19 + batch_0_4_15_16_18
   + batch_5_8_18_19 + batch_8_9_18_19 + batch_5_9_18_19 + batch_6_10_13_18
   = 1
 order_19: batch_19 + batch_5_6_13_19 + batch_5_8_9_19 + batch_0_4_9_16_19
   + batch_6_13_18_19 + batch_5_8_18_19 + batch_8_9_18_19 + batch_5_9_18_19
   = 1
Bounds
End
