\ Model JOBPRP_RMP_1167
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xce02157c65b78c37
Minimize
  91.2 batch_5 + 72.4 batch_8 + 77.2 batch_9 + 78.4 batch_10 + 65.2 batch_14
   + 74.8 batch_15 + 61.2 batch_19 + 123.2 batch_1_17_18
   + 115.2 batch_2_7_11 + 119.2 batch_3_8_12 + 119.2 batch_5_8_9_19
   + 131.2 batch_0_4_9_16_19 + 131.2 batch_3_12_14_19
   + 99.2 batch_8_9_14_19 + 123.2 batch_6_9_10_13 + 105.2 batch_6_9_13_19
   + 118.4 batch_3_10_12 + 125.2 batch_3_9_12 + 111.2 batch_6_9_13_14
   + 131.2 batch_5_8_15_19 + 131.2 batch_0_4_5_16_19
   + 123.2 batch_5_8_10_19 + 133.2 batch_6_10_13_15
   + 139.2 batch_0_4_9_15_16 + 130 batch_6_9_13_15 + 107.2 batch_0_4_14_16
   + 113.2 batch_0_4_15_16
Subject To
 order_0: batch_0_4_9_16_19 + batch_0_4_5_16_19 + batch_0_4_9_15_16
   + batch_0_4_14_16 + batch_0_4_15_16 = 1
 order_1: batch_1_17_18 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_8_12 + batch_3_12_14_19 + batch_3_10_12 + batch_3_9_12
   = 1
 order_4: batch_0_4_9_16_19 + batch_0_4_5_16_19 + batch_0_4_9_15_16
   + batch_0_4_14_16 + batch_0_4_15_16 = 1
 order_5: batch_5 + batch_5_8_9_19 + batch_5_8_15_19 + batch_0_4_5_16_19
   + batch_5_8_10_19 = 1
 order_6: batch_6_9_10_13 + batch_6_9_13_19 + batch_6_9_13_14
   + batch_6_10_13_15 + batch_6_9_13_15 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_3_8_12 + batch_5_8_9_19 + batch_8_9_14_19
   + batch_5_8_15_19 + batch_5_8_10_19 = 1
 order_9: batch_9 + batch_5_8_9_19 + batch_0_4_9_16_19 + batch_8_9_14_19
   + batch_6_9_10_13 + batch_6_9_13_19 + batch_3_9_12 + batch_6_9_13_14
   + batch_0_4_9_15_16 + batch_6_9_13_15 = 1
 order_10: batch_10 + batch_6_9_10_13 + batch_3_10_12 + batch_5_8_10_19
   + batch_6_10_13_15 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_8_12 + batch_3_12_14_19 + batch_3_10_12 + batch_3_9_12
   = 1
 order_13: batch_6_9_10_13 + batch_6_9_13_19 + batch_6_9_13_14
   + batch_6_10_13_15 + batch_6_9_13_15 = 1
 order_14: batch_14 + batch_3_12_14_19 + batch_8_9_14_19 + batch_6_9_13_14
   + batch_0_4_14_16 = 1
 order_15: batch_15 + batch_5_8_15_19 + batch_6_10_13_15
   + batch_0_4_9_15_16 + batch_6_9_13_15 + batch_0_4_15_16 = 1
 order_16: batch_0_4_9_16_19 + batch_0_4_5_16_19 + batch_0_4_9_15_16
   + batch_0_4_14_16 + batch_0_4_15_16 = 1
 order_17: batch_1_17_18 = 1
 order_18: batch_1_17_18 = 1
 order_19: batch_19 + batch_5_8_9_19 + batch_0_4_9_16_19 + batch_3_12_14_19
   + batch_8_9_14_19 + batch_6_9_13_19 + batch_5_8_15_19
   + batch_0_4_5_16_19 + batch_5_8_10_19 = 1
Bounds
End
