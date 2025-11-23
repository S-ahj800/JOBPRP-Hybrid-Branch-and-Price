\ Model JOBPRP_RMP_1016
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x6829d69e19ffbdf9
Minimize
  98 batch_1 + 77.2 batch_9 + 89.6 batch_12 + 89.2 batch_17 + 61.2 batch_19
   + 115.2 batch_2_7_11 + 109.2 batch_6_9_13_18 + 130.4 batch_3_10_15_16
   + 123.2 batch_0_4_8_17 + 121.2 batch_1_5_14_19 + 136 batch_1_9_12
   + 113.2 batch_5_14_17_19 + 114 batch_0_4_8_19 + 125.2 batch_5_12_14
   + 103.2 batch_6_13_18 + 109.2 batch_6_13_18_19
   + 121.1999979795489 batch_1_5_14_19
Subject To
 order_0: batch_0_4_8_17 + batch_0_4_8_19 = 1
 order_1: batch_1 + batch_1_5_14_19 + batch_1_9_12 + batch_1_5_14_19 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_10_15_16 = 1
 order_4: batch_0_4_8_17 + batch_0_4_8_19 = 1
 order_5: batch_1_5_14_19 + batch_5_14_17_19 + batch_5_12_14
   + batch_1_5_14_19 = 1
 order_6: batch_6_9_13_18 + batch_6_13_18 + batch_6_13_18_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_0_4_8_17 + batch_0_4_8_19 = 1
 order_9: batch_9 + batch_6_9_13_18 + batch_1_9_12 = 1
 order_10: batch_3_10_15_16 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_1_9_12 + batch_5_12_14 = 1
 order_13: batch_6_9_13_18 + batch_6_13_18 + batch_6_13_18_19 = 1
 order_14: batch_1_5_14_19 + batch_5_14_17_19 + batch_5_12_14
   + batch_1_5_14_19 = 1
 order_15: batch_3_10_15_16 = 1
 order_16: batch_3_10_15_16 = 1
 order_17: batch_17 + batch_0_4_8_17 + batch_5_14_17_19 = 1
 order_18: batch_6_9_13_18 + batch_6_13_18 + batch_6_13_18_19 = 1
 order_19: batch_19 + batch_1_5_14_19 + batch_5_14_17_19 + batch_0_4_8_19
   + batch_6_13_18_19 + batch_1_5_14_19 = 1
Bounds
End
