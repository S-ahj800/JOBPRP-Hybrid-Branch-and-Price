\ Model JOBPRP_RMP_1168
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xa8f7350126f325e
Minimize
  91.2 batch_5 + 77.2 batch_9 + 78.4 batch_10 + 65.2 batch_14
   + 74.8 batch_15 + 61.2 batch_19 + 123.2 batch_1_17_18
   + 115.2 batch_2_7_11 + 115.2 batch_0_4_8_14_16 + 131.2 batch_3_12_14_19
   + 123.2 batch_6_9_10_13 + 105.2 batch_6_9_13_19 + 118.4 batch_3_10_12
   + 125.2 batch_3_9_12 + 111.2 batch_6_9_13_14 + 133.2 batch_6_10_13_15
   + 130 batch_6_9_13_15 + 120 batch_0_4_8_16_19 + 141.2 batch_5_9_10_15
   + 119.2 batch_5_15_19 + 101.6 batch_3_12
Subject To
 order_0: batch_0_4_8_14_16 + batch_0_4_8_16_19 = 1
 order_1: batch_1_17_18 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_14_19 + batch_3_10_12 + batch_3_9_12 + batch_3_12 = 1
 order_4: batch_0_4_8_14_16 + batch_0_4_8_16_19 = 1
 order_5: batch_5 + batch_5_9_10_15 + batch_5_15_19 = 1
 order_6: batch_6_9_10_13 + batch_6_9_13_19 + batch_6_9_13_14
   + batch_6_10_13_15 + batch_6_9_13_15 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_0_4_8_14_16 + batch_0_4_8_16_19 = 1
 order_9: batch_9 + batch_6_9_10_13 + batch_6_9_13_19 + batch_3_9_12
   + batch_6_9_13_14 + batch_6_9_13_15 + batch_5_9_10_15 = 1
 order_10: batch_10 + batch_6_9_10_13 + batch_3_10_12 + batch_6_10_13_15
   + batch_5_9_10_15 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_12_14_19 + batch_3_10_12 + batch_3_9_12 + batch_3_12
   = 1
 order_13: batch_6_9_10_13 + batch_6_9_13_19 + batch_6_9_13_14
   + batch_6_10_13_15 + batch_6_9_13_15 = 1
 order_14: batch_14 + batch_0_4_8_14_16 + batch_3_12_14_19
   + batch_6_9_13_14 = 1
 order_15: batch_15 + batch_6_10_13_15 + batch_6_9_13_15 + batch_5_9_10_15
   + batch_5_15_19 = 1
 order_16: batch_0_4_8_14_16 + batch_0_4_8_16_19 = 1
 order_17: batch_1_17_18 = 1
 order_18: batch_1_17_18 = 1
 order_19: batch_19 + batch_3_12_14_19 + batch_6_9_13_19
   + batch_0_4_8_16_19 + batch_5_15_19 = 1
Bounds
End
