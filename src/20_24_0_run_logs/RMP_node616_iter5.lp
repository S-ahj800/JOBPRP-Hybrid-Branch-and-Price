\ Model JOBPRP_RMP_616
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x8f7c7f4682867ed0
Minimize
  91.2 batch_5 + 77.2 batch_9 + 78.4 batch_10 + 70.4 batch_13
   + 74.8 batch_15 + 77.2 batch_18 + 61.2 batch_19 + 115.2 batch_2_7_11
   + 123.2 batch_0_4_10_15_16 + 117.2 batch_1_14_17 + 109.2 batch_6_8_13_19
   + 135.2 batch_0_4_5_13_16 + 135.2 batch_5_9_13_15
   + 133.2 batch_0_4_13_16_18 + 123.2 batch_3_12_18
   + 137.2 batch_0_4_15_16_18 + 117.2 batch_5_9_13_18
   + 113.2 batch_5_9_18_19 + 123.2 batch_5_6_8 + 118.4 batch_3_10_12
   + 123.2 batch_6_8_10_19 + 131.2 batch_0_4_9_16_19 + 125.2 batch_3_9_12
   + 124 batch_3_12_13_19 + 135.2 batch_5_9_15_18
Subject To
 order_0: batch_0_4_10_15_16 + batch_0_4_5_13_16 + batch_0_4_13_16_18
   + batch_0_4_15_16_18 + batch_0_4_9_16_19 = 1
 order_1: batch_1_14_17 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_18 + batch_3_10_12 + batch_3_9_12 + batch_3_12_13_19
   = 1
 order_4: batch_0_4_10_15_16 + batch_0_4_5_13_16 + batch_0_4_13_16_18
   + batch_0_4_15_16_18 + batch_0_4_9_16_19 = 1
 order_5: batch_5 + batch_0_4_5_13_16 + batch_5_9_13_15 + batch_5_9_13_18
   + batch_5_9_18_19 + batch_5_6_8 + batch_5_9_15_18 = 1
 order_6: batch_6_8_13_19 + batch_5_6_8 + batch_6_8_10_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_6_8_13_19 + batch_5_6_8 + batch_6_8_10_19 = 1
 order_9: batch_9 + batch_5_9_13_15 + batch_5_9_13_18 + batch_5_9_18_19
   + batch_0_4_9_16_19 + batch_3_9_12 + batch_5_9_15_18 = 1
 order_10: batch_10 + batch_0_4_10_15_16 + batch_3_10_12 + batch_6_8_10_19
   = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_12_18 + batch_3_10_12 + batch_3_9_12 + batch_3_12_13_19
   = 1
 order_13: batch_13 + batch_6_8_13_19 + batch_0_4_5_13_16 + batch_5_9_13_15
   + batch_0_4_13_16_18 + batch_5_9_13_18 + batch_3_12_13_19 = 1
 order_14: batch_1_14_17 = 1
 order_15: batch_15 + batch_0_4_10_15_16 + batch_5_9_13_15
   + batch_0_4_15_16_18 + batch_5_9_15_18 = 1
 order_16: batch_0_4_10_15_16 + batch_0_4_5_13_16 + batch_0_4_13_16_18
   + batch_0_4_15_16_18 + batch_0_4_9_16_19 = 1
 order_17: batch_1_14_17 = 1
 order_18: batch_18 + batch_0_4_13_16_18 + batch_3_12_18
   + batch_0_4_15_16_18 + batch_5_9_13_18 + batch_5_9_18_19
   + batch_5_9_15_18 = 1
 order_19: batch_19 + batch_6_8_13_19 + batch_5_9_18_19 + batch_6_8_10_19
   + batch_0_4_9_16_19 + batch_3_12_13_19 = 1
Bounds
End
