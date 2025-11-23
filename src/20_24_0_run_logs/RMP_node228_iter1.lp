\ Model JOBPRP_RMP_228
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xcfc41e7cf1610279
Minimize
  74.8 batch_15 + 89.2 batch_17 + 77.2 batch_18 + 61.2 batch_19
   + 115.2 batch_2_7_11 + 109.2 batch_6_9_13_18 + 105.2 batch_6_9_13_19
   + 132 batch_0_4_8_12 + 125.2 batch_3_5_14_16 + 139.2 batch_1_10_15_19
   + 125.2 batch_3_16_18_19 + 133.2 batch_3_15_16_18
   + 113.2 batch_5_14_17_19 + 130 batch_6_9_13_15 + 126 batch_3_15_16_19
   + 129.1999907162352 batch_1_10_18 + 135.2 batch_1_10_15
Subject To
 order_0: batch_0_4_8_12 = 1
 order_1: batch_1_10_15_19 + batch_1_10_18 + batch_1_10_15 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_5_14_16 + batch_3_16_18_19 + batch_3_15_16_18
   + batch_3_15_16_19 = 1
 order_4: batch_0_4_8_12 = 1
 order_5: batch_3_5_14_16 + batch_5_14_17_19 = 1
 order_6: batch_6_9_13_18 + batch_6_9_13_19 + batch_6_9_13_15 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_0_4_8_12 = 1
 order_9: batch_6_9_13_18 + batch_6_9_13_19 + batch_6_9_13_15 = 1
 order_10: batch_1_10_15_19 + batch_1_10_18 + batch_1_10_15 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_0_4_8_12 = 1
 order_13: batch_6_9_13_18 + batch_6_9_13_19 + batch_6_9_13_15 = 1
 order_14: batch_3_5_14_16 + batch_5_14_17_19 = 1
 order_15: batch_15 + batch_1_10_15_19 + batch_3_15_16_18 + batch_6_9_13_15
   + batch_3_15_16_19 + batch_1_10_15 = 1
 order_16: batch_3_5_14_16 + batch_3_16_18_19 + batch_3_15_16_18
   + batch_3_15_16_19 = 1
 order_17: batch_17 + batch_5_14_17_19 = 1
 order_18: batch_18 + batch_6_9_13_18 + batch_3_16_18_19 + batch_3_15_16_18
   + batch_1_10_18 = 1
 order_19: batch_19 + batch_6_9_13_19 + batch_1_10_15_19 + batch_3_16_18_19
   + batch_5_14_17_19 + batch_3_15_16_19 = 1
Bounds
End
