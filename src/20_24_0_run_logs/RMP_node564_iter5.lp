\ Model JOBPRP_RMP_564
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xa6e87ebf698e1dca
Minimize
  78.4 batch_10 + 70.4 batch_13 + 65.2 batch_14 + 74.8 batch_15
   + 77.2 batch_18 + 61.2 batch_19 + 137.2 batch_0_4_13_14_16_19
   + 115.2 batch_2_7_11 + 121.2 batch_3_5_12 + 117.2 batch_0_4_14_15_16
   + 109.2 batch_6_8_13_19 + 115.2 batch_6_8_13_14 + 127.2 batch_1_9_17
   + 137.2 batch_0_4_15_16_18 + 113.2 batch_6_8_14_19
   + 123.2 batch_6_8_10_19 + 133.2 batch_0_4_14_16_18 + 132 batch_6_8_13_15
   + 141.2 batch_10_14_15_18_19 + 94.4 batch_10_13
   + 127.2 batch_0_4_13_15_16 + 109.2 batch_10_14_18
Subject To
 order_0: batch_0_4_13_14_16_19 + batch_0_4_14_15_16 + batch_0_4_15_16_18
   + batch_0_4_14_16_18 + batch_0_4_13_15_16 = 1
 order_1: batch_1_9_17 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_5_12 = 1
 order_4: batch_0_4_13_14_16_19 + batch_0_4_14_15_16 + batch_0_4_15_16_18
   + batch_0_4_14_16_18 + batch_0_4_13_15_16 = 1
 order_5: batch_3_5_12 = 1
 order_6: batch_6_8_13_19 + batch_6_8_13_14 + batch_6_8_14_19
   + batch_6_8_10_19 + batch_6_8_13_15 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_6_8_13_19 + batch_6_8_13_14 + batch_6_8_14_19
   + batch_6_8_10_19 + batch_6_8_13_15 = 1
 order_9: batch_1_9_17 = 1
 order_10: batch_10 + batch_6_8_10_19 + batch_10_14_15_18_19 + batch_10_13
   + batch_10_14_18 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_5_12 = 1
 order_13: batch_13 + batch_0_4_13_14_16_19 + batch_6_8_13_19
   + batch_6_8_13_14 + batch_6_8_13_15 + batch_10_13 + batch_0_4_13_15_16
   = 1
 order_14: batch_14 + batch_0_4_13_14_16_19 + batch_0_4_14_15_16
   + batch_6_8_13_14 + batch_6_8_14_19 + batch_0_4_14_16_18
   + batch_10_14_15_18_19 + batch_10_14_18 = 1
 order_15: batch_15 + batch_0_4_14_15_16 + batch_0_4_15_16_18
   + batch_6_8_13_15 + batch_10_14_15_18_19 + batch_0_4_13_15_16 = 1
 order_16: batch_0_4_13_14_16_19 + batch_0_4_14_15_16 + batch_0_4_15_16_18
   + batch_0_4_14_16_18 + batch_0_4_13_15_16 = 1
 order_17: batch_1_9_17 = 1
 order_18: batch_18 + batch_0_4_15_16_18 + batch_0_4_14_16_18
   + batch_10_14_15_18_19 + batch_10_14_18 = 1
 order_19: batch_19 + batch_0_4_13_14_16_19 + batch_6_8_13_19
   + batch_6_8_14_19 + batch_6_8_10_19 + batch_10_14_15_18_19 = 1
Bounds
End
