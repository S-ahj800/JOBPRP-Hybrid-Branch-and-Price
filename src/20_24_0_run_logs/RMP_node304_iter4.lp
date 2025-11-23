\ Model JOBPRP_RMP_304
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x6cc72084ecd0e5b7
Minimize
  72.4 batch_8 + 89.6 batch_12 + 74.8 batch_15 + 77.2 batch_18
   + 61.2 batch_19 + 115.2 batch_2_7_11 + 109.2 batch_6_9_13_18
   + 127.2 batch_1_10_17 + 105.2 batch_6_9_13_19 + 121.2 batch_0_4_5_14_19
   + 126 batch_0_4_8_15_19 + 123.2 batch_5_8_14_18 + 125.2 batch_3_5_14_16
   + 127.2 batch_0_4_12_15 + 133.2 batch_3_15_16_18 + 114 batch_0_4_8_19
   + 125.2 batch_3_16_18_19 + 81.2 batch_8_19 + 129.2 batch_5_12_14_19
Subject To
 order_0: batch_0_4_5_14_19 + batch_0_4_8_15_19 + batch_0_4_12_15
   + batch_0_4_8_19 = 1
 order_1: batch_1_10_17 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_5_14_16 + batch_3_15_16_18 + batch_3_16_18_19 = 1
 order_4: batch_0_4_5_14_19 + batch_0_4_8_15_19 + batch_0_4_12_15
   + batch_0_4_8_19 = 1
 order_5: batch_0_4_5_14_19 + batch_5_8_14_18 + batch_3_5_14_16
   + batch_5_12_14_19 = 1
 order_6: batch_6_9_13_18 + batch_6_9_13_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_0_4_8_15_19 + batch_5_8_14_18 + batch_0_4_8_19
   + batch_8_19 = 1
 order_9: batch_6_9_13_18 + batch_6_9_13_19 = 1
 order_10: batch_1_10_17 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_0_4_12_15 + batch_5_12_14_19 = 1
 order_13: batch_6_9_13_18 + batch_6_9_13_19 = 1
 order_14: batch_0_4_5_14_19 + batch_5_8_14_18 + batch_3_5_14_16
   + batch_5_12_14_19 = 1
 order_15: batch_15 + batch_0_4_8_15_19 + batch_0_4_12_15
   + batch_3_15_16_18 = 1
 order_16: batch_3_5_14_16 + batch_3_15_16_18 + batch_3_16_18_19 = 1
 order_17: batch_1_10_17 = 1
 order_18: batch_18 + batch_6_9_13_18 + batch_5_8_14_18 + batch_3_15_16_18
   + batch_3_16_18_19 = 1
 order_19: batch_19 + batch_6_9_13_19 + batch_0_4_5_14_19
   + batch_0_4_8_15_19 + batch_0_4_8_19 + batch_3_16_18_19 + batch_8_19
   + batch_5_12_14_19 = 1
Bounds
End
