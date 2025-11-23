\ Model JOBPRP_RMP_368
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xa18ad3f5f2ee199c
Minimize
  72.4 batch_8 + 78.4 batch_10 + 77.2 batch_18 + 61.2 batch_19
   + 105.6 batch_3_12_16 + 115.2 batch_2_7_11 + 118 batch_3_12_16_19
   + 105.2 batch_6_9_13_19 + 123.2 batch_0_4_8_17 + 123.2 batch_6_9_10_13
   + 121.2 batch_0_4_10_17 + 130 batch_1_15_18_19 + 123.2 batch_5_10_14_18
   + 131.2 batch_0_4_17_18
Subject To
 order_0: batch_0_4_8_17 + batch_0_4_10_17 + batch_0_4_17_18 = 1
 order_1: batch_1_15_18_19 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16 + batch_3_12_16_19 = 1
 order_4: batch_0_4_8_17 + batch_0_4_10_17 + batch_0_4_17_18 = 1
 order_5: batch_5_10_14_18 = 1
 order_6: batch_6_9_13_19 + batch_6_9_10_13 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_0_4_8_17 = 1
 order_9: batch_6_9_13_19 + batch_6_9_10_13 = 1
 order_10: batch_10 + batch_6_9_10_13 + batch_0_4_10_17 + batch_5_10_14_18
   = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_12_16 + batch_3_12_16_19 = 1
 order_13: batch_6_9_13_19 + batch_6_9_10_13 = 1
 order_14: batch_5_10_14_18 = 1
 order_15: batch_1_15_18_19 = 1
 order_16: batch_3_12_16 + batch_3_12_16_19 = 1
 order_17: batch_0_4_8_17 + batch_0_4_10_17 + batch_0_4_17_18 = 1
 order_18: batch_18 + batch_1_15_18_19 + batch_5_10_14_18 + batch_0_4_17_18
   = 1
 order_19: batch_19 + batch_3_12_16_19 + batch_6_9_13_19 + batch_1_15_18_19
   = 1
Bounds
End
