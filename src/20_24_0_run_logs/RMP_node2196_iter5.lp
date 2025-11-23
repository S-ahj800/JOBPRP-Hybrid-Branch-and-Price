\ Model JOBPRP_RMP_2196
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xc23c33341c8ab68a
Minimize
  77.2 batch_9 + 78.4 batch_10 + 74.8 batch_15 + 89.2 batch_17
   + 77.2 batch_18 + 61.2 batch_19 + 105.6 batch_3_12_16
   + 115.2 batch_2_7_11 + 119.2 batch_0_4_15_17 + 109.2 batch_8_9_14_18
   + 119.2 batch_1_5_9 + 127.2 batch_1_5_10 + 127.2 batch_8_10_14_15
   + 115.2 batch_6_8_13_14 + 125.2 batch_10_17_18_19 + 99.2 batch_8_9_14_19
   + 123.2 batch_8_10_14_18 + 125.2 batch_6_10_13_18 + 130 batch_0_4_18_19
   + 131.2 batch_1_5_15 + 109.2 batch_6_13_18_19 + 135.2 batch_0_4_6_13_19
Subject To
 order_0: batch_0_4_15_17 + batch_0_4_18_19 + batch_0_4_6_13_19 = 1
 order_1: batch_1_5_9 + batch_1_5_10 + batch_1_5_15 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16 = 1
 order_4: batch_0_4_15_17 + batch_0_4_18_19 + batch_0_4_6_13_19 = 1
 order_5: batch_1_5_9 + batch_1_5_10 + batch_1_5_15 = 1
 order_6: batch_6_8_13_14 + batch_6_10_13_18 + batch_6_13_18_19
   + batch_0_4_6_13_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8_9_14_18 + batch_8_10_14_15 + batch_6_8_13_14
   + batch_8_9_14_19 + batch_8_10_14_18 = 1
 order_9: batch_9 + batch_8_9_14_18 + batch_1_5_9 + batch_8_9_14_19 = 1
 order_10: batch_10 + batch_1_5_10 + batch_8_10_14_15 + batch_10_17_18_19
   + batch_8_10_14_18 + batch_6_10_13_18 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_12_16 = 1
 order_13: batch_6_8_13_14 + batch_6_10_13_18 + batch_6_13_18_19
   + batch_0_4_6_13_19 = 1
 order_14: batch_8_9_14_18 + batch_8_10_14_15 + batch_6_8_13_14
   + batch_8_9_14_19 + batch_8_10_14_18 = 1
 order_15: batch_15 + batch_0_4_15_17 + batch_8_10_14_15 + batch_1_5_15
   = 1
 order_16: batch_3_12_16 = 1
 order_17: batch_17 + batch_0_4_15_17 + batch_10_17_18_19 = 1
 order_18: batch_18 + batch_8_9_14_18 + batch_10_17_18_19
   + batch_8_10_14_18 + batch_6_10_13_18 + batch_0_4_18_19
   + batch_6_13_18_19 = 1
 order_19: batch_19 + batch_10_17_18_19 + batch_8_9_14_19 + batch_0_4_18_19
   + batch_6_13_18_19 + batch_0_4_6_13_19 = 1
Bounds
End
