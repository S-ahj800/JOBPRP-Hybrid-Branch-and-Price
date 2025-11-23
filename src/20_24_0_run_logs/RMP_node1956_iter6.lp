\ Model JOBPRP_RMP_1956
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x6671c9e0c05901de
Minimize
  89.2 batch_6 + 72.4 batch_8 + 77.2 batch_9 + 65.2 batch_14 + 74.8 batch_15
   + 61.2 batch_19 + 123.2 batch_1_17_18 + 115.2 batch_2_7_11
   + 123.2 batch_0_4_10_15_16 + 123.2 batch_3_5_6 + 127.2 batch_6_12_13_14
   + 117.2 batch_3_5_14_19 + 133.2 batch_3_5_15_19 + 125.2 batch_3_5_8
   + 99.2 batch_8_9_14_19 + 119.2 batch_3_5_9 + 116 batch_12_13_19
   + 89.2 batch_8_9_19 + 130 batch_0_4_10_16_19 + 109.2 batch_3_5_19
   + 121.2 batch_6_12_13
Subject To
 order_0: batch_0_4_10_15_16 + batch_0_4_10_16_19 = 1
 order_1: batch_1_17_18 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_5_6 + batch_3_5_14_19 + batch_3_5_15_19 + batch_3_5_8
   + batch_3_5_9 + batch_3_5_19 = 1
 order_4: batch_0_4_10_15_16 + batch_0_4_10_16_19 = 1
 order_5: batch_3_5_6 + batch_3_5_14_19 + batch_3_5_15_19 + batch_3_5_8
   + batch_3_5_9 + batch_3_5_19 = 1
 order_6: batch_6 + batch_3_5_6 + batch_6_12_13_14 + batch_6_12_13 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_3_5_8 + batch_8_9_14_19 + batch_8_9_19 = 1
 order_9: batch_9 + batch_8_9_14_19 + batch_3_5_9 + batch_8_9_19 = 1
 order_10: batch_0_4_10_15_16 + batch_0_4_10_16_19 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_6_12_13_14 + batch_12_13_19 + batch_6_12_13 = 1
 order_13: batch_6_12_13_14 + batch_12_13_19 + batch_6_12_13 = 1
 order_14: batch_14 + batch_6_12_13_14 + batch_3_5_14_19 + batch_8_9_14_19
   = 1
 order_15: batch_15 + batch_0_4_10_15_16 + batch_3_5_15_19 = 1
 order_16: batch_0_4_10_15_16 + batch_0_4_10_16_19 = 1
 order_17: batch_1_17_18 = 1
 order_18: batch_1_17_18 = 1
 order_19: batch_19 + batch_3_5_14_19 + batch_3_5_15_19 + batch_8_9_14_19
   + batch_12_13_19 + batch_8_9_19 + batch_0_4_10_16_19 + batch_3_5_19 = 1
Bounds
End
