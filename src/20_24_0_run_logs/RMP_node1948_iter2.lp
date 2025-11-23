\ Model JOBPRP_RMP_1948
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x7128337dd08208d6
Minimize
  89.2 batch_6 + 72.4 batch_8 + 77.2 batch_9 + 78.4 batch_10 + 65.2 batch_14
   + 74.8 batch_15 + 61.2 batch_19 + 123.2 batch_1_17_18
   + 115.2 batch_2_7_11 + 123.2 batch_0_4_10_15_16 + 123.2 batch_3_5_6
   + 127.2 batch_6_12_13_14 + 117.2 batch_3_5_14_19
   + 131.2 batch_9_10_12_13 + 130.4 batch_10_12_13_15
   + 133.2 batch_3_5_15_19 + 120 batch_0_4_8_16_19 + 125.2 batch_3_5_8
   + 134 batch_9_12_13_15 + 121.2 batch_6_9_10_14
Subject To
 order_0: batch_0_4_10_15_16 + batch_0_4_8_16_19 = 1
 order_1: batch_1_17_18 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_5_6 + batch_3_5_14_19 + batch_3_5_15_19 + batch_3_5_8
   = 1
 order_4: batch_0_4_10_15_16 + batch_0_4_8_16_19 = 1
 order_5: batch_3_5_6 + batch_3_5_14_19 + batch_3_5_15_19 + batch_3_5_8
   = 1
 order_6: batch_6 + batch_3_5_6 + batch_6_12_13_14 + batch_6_9_10_14 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_0_4_8_16_19 + batch_3_5_8 = 1
 order_9: batch_9 + batch_9_10_12_13 + batch_9_12_13_15 + batch_6_9_10_14
   = 1
 order_10: batch_10 + batch_0_4_10_15_16 + batch_9_10_12_13
   + batch_10_12_13_15 + batch_6_9_10_14 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_6_12_13_14 + batch_9_10_12_13 + batch_10_12_13_15
   + batch_9_12_13_15 = 1
 order_13: batch_6_12_13_14 + batch_9_10_12_13 + batch_10_12_13_15
   + batch_9_12_13_15 = 1
 order_14: batch_14 + batch_6_12_13_14 + batch_3_5_14_19 + batch_6_9_10_14
   = 1
 order_15: batch_15 + batch_0_4_10_15_16 + batch_10_12_13_15
   + batch_3_5_15_19 + batch_9_12_13_15 = 1
 order_16: batch_0_4_10_15_16 + batch_0_4_8_16_19 = 1
 order_17: batch_1_17_18 = 1
 order_18: batch_1_17_18 = 1
 order_19: batch_19 + batch_3_5_14_19 + batch_3_5_15_19 + batch_0_4_8_16_19
   = 1
Bounds
End
