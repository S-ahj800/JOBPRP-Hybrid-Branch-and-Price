\ Model JOBPRP_RMP_220
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x72a3192c018ca037
Minimize
  77.2 batch_9 + 74.8 batch_15 + 77.2 batch_18 + 61.2 batch_19
   + 115.2 batch_2_7_11 + 109.2 batch_6_9_13_18 + 127.2 batch_1_10_17
   + 105.2 batch_6_9_13_19 + 132 batch_0_4_8_12 + 125.2 batch_3_5_14_16
   + 123.2 batch_5_6_13_14 + 109.2 batch_6_13_18_19
   + 125.2 batch_3_16_18_19 + 122 batch_3_9_16_19 + 133.2 batch_3_15_16_18
   + 130 batch_6_9_13_15 + 137.2 batch_3_9_15_16 + 126 batch_3_15_16_19
   + 117.2 batch_5_14_18_19
Subject To
 order_0: batch_0_4_8_12 = 1
 order_1: batch_1_10_17 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_5_14_16 + batch_3_16_18_19 + batch_3_9_16_19
   + batch_3_15_16_18 + batch_3_9_15_16 + batch_3_15_16_19 = 1
 order_4: batch_0_4_8_12 = 1
 order_5: batch_3_5_14_16 + batch_5_6_13_14 + batch_5_14_18_19 = 1
 order_6: batch_6_9_13_18 + batch_6_9_13_19 + batch_5_6_13_14
   + batch_6_13_18_19 + batch_6_9_13_15 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_0_4_8_12 = 1
 order_9: batch_9 + batch_6_9_13_18 + batch_6_9_13_19 + batch_3_9_16_19
   + batch_6_9_13_15 + batch_3_9_15_16 = 1
 order_10: batch_1_10_17 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_0_4_8_12 = 1
 order_13: batch_6_9_13_18 + batch_6_9_13_19 + batch_5_6_13_14
   + batch_6_13_18_19 + batch_6_9_13_15 = 1
 order_14: batch_3_5_14_16 + batch_5_6_13_14 + batch_5_14_18_19 = 1
 order_15: batch_15 + batch_3_15_16_18 + batch_6_9_13_15 + batch_3_9_15_16
   + batch_3_15_16_19 = 1
 order_16: batch_3_5_14_16 + batch_3_16_18_19 + batch_3_9_16_19
   + batch_3_15_16_18 + batch_3_9_15_16 + batch_3_15_16_19 = 1
 order_17: batch_1_10_17 = 1
 order_18: batch_18 + batch_6_9_13_18 + batch_6_13_18_19 + batch_3_16_18_19
   + batch_3_15_16_18 + batch_5_14_18_19 = 1
 order_19: batch_19 + batch_6_9_13_19 + batch_6_13_18_19 + batch_3_16_18_19
   + batch_3_9_16_19 + batch_3_15_16_19 + batch_5_14_18_19 = 1
Bounds
End
