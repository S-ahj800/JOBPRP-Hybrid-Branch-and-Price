\ Model JOBPRP_RMP_1739
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x135d37943c5caec2
Minimize
  78.4 batch_10 + 70.4 batch_13 + 65.2 batch_14 + 74.8 batch_15
   + 77.2 batch_18 + 115.2 batch_2_7_11 + 127.2 batch_1_10_17
   + 119.2 batch_3_8_12 + 125.2 batch_1_13_17 + 137.2 batch_5_6_14_15
   + 105.2 batch_9_13_14_18_19 + 133.2 batch_0_4_13_16_18
   + 137.2 batch_0_4_15_16_18 + 123.2 batch_5_6_18
   + 105.1999982631751 batch_9_13_14_18_19 + 135.2 batch_9_10_13_15_19
   + 127.2 batch_0_4_13_15_16 + 125.2 batch_5_6_10
   + 131.2 batch_0_4_9_16_19 + 113.2 batch_0_4_15_16 + 133.2 batch_1_15_17
Subject To
 order_0: batch_0_4_13_16_18 + batch_0_4_15_16_18 + batch_0_4_13_15_16
   + batch_0_4_9_16_19 + batch_0_4_15_16 = 1
 order_1: batch_1_10_17 + batch_1_13_17 + batch_1_15_17 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_8_12 = 1
 order_4: batch_0_4_13_16_18 + batch_0_4_15_16_18 + batch_0_4_13_15_16
   + batch_0_4_9_16_19 + batch_0_4_15_16 = 1
 order_5: batch_5_6_14_15 + batch_5_6_18 + batch_5_6_10 = 1
 order_6: batch_5_6_14_15 + batch_5_6_18 + batch_5_6_10 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_3_8_12 = 1
 order_9: batch_9_13_14_18_19 + batch_9_13_14_18_19 + batch_9_10_13_15_19
   + batch_0_4_9_16_19 = 1
 order_10: batch_10 + batch_1_10_17 + batch_9_10_13_15_19 + batch_5_6_10
   = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_8_12 = 1
 order_13: batch_13 + batch_1_13_17 + batch_9_13_14_18_19
   + batch_0_4_13_16_18 + batch_9_13_14_18_19 + batch_9_10_13_15_19
   + batch_0_4_13_15_16 = 1
 order_14: batch_14 + batch_5_6_14_15 + batch_9_13_14_18_19
   + batch_9_13_14_18_19 = 1
 order_15: batch_15 + batch_5_6_14_15 + batch_0_4_15_16_18
   + batch_9_10_13_15_19 + batch_0_4_13_15_16 + batch_0_4_15_16
   + batch_1_15_17 = 1
 order_16: batch_0_4_13_16_18 + batch_0_4_15_16_18 + batch_0_4_13_15_16
   + batch_0_4_9_16_19 + batch_0_4_15_16 = 1
 order_17: batch_1_10_17 + batch_1_13_17 + batch_1_15_17 = 1
 order_18: batch_18 + batch_9_13_14_18_19 + batch_0_4_13_16_18
   + batch_0_4_15_16_18 + batch_5_6_18 + batch_9_13_14_18_19 = 1
 order_19: batch_9_13_14_18_19 + batch_9_13_14_18_19 + batch_9_10_13_15_19
   + batch_0_4_9_16_19 = 1
Bounds
End
