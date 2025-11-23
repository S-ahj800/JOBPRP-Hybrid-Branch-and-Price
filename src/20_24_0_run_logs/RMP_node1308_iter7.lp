\ Model JOBPRP_RMP_1308
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x8a19e49c8586eda9
Minimize
  72.4 batch_8 + 77.2 batch_9 + 65.2 batch_14 + 74.8 batch_15
   + 77.2 batch_18 + 61.2 batch_19 + 115.2 batch_2_7_11
   + 121.2 batch_3_5_12 + 123.2 batch_0_4_10_15_16 + 117.2 batch_1_14_17
   + 109.2 batch_6_13_18_19 + 121.2 batch_1_17_19 + 133.2 batch_1_15_17
   + 127.2 batch_1_9_17 + 109.2 batch_6_13_14_18 + 138 batch_9_14_15_18_19
   + 127.1999909189689 batch_1_9_17 + 119.2 batch_0_4_10_14_16
   + 107.2 batch_6_13_14_19 + 109.1999965217391 batch_8_14_18_19
   + 110 batch_8_15_19 + 92 batch_8_14_19 + 81.2 batch_8_19
Subject To
 order_0: batch_0_4_10_15_16 + batch_0_4_10_14_16 = 1
 order_1: batch_1_14_17 + batch_1_17_19 + batch_1_15_17 + batch_1_9_17
   + batch_1_9_17 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_5_12 = 1
 order_4: batch_0_4_10_15_16 + batch_0_4_10_14_16 = 1
 order_5: batch_3_5_12 = 1
 order_6: batch_6_13_18_19 + batch_6_13_14_18 + batch_6_13_14_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_8_14_18_19 + batch_8_15_19 + batch_8_14_19
   + batch_8_19 = 1
 order_9: batch_9 + batch_1_9_17 + batch_9_14_15_18_19 + batch_1_9_17 = 1
 order_10: batch_0_4_10_15_16 + batch_0_4_10_14_16 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_5_12 = 1
 order_13: batch_6_13_18_19 + batch_6_13_14_18 + batch_6_13_14_19 = 1
 order_14: batch_14 + batch_1_14_17 + batch_6_13_14_18
   + batch_9_14_15_18_19 + batch_0_4_10_14_16 + batch_6_13_14_19
   + batch_8_14_18_19 + batch_8_14_19 = 1
 order_15: batch_15 + batch_0_4_10_15_16 + batch_1_15_17
   + batch_9_14_15_18_19 + batch_8_15_19 = 1
 order_16: batch_0_4_10_15_16 + batch_0_4_10_14_16 = 1
 order_17: batch_1_14_17 + batch_1_17_19 + batch_1_15_17 + batch_1_9_17
   + batch_1_9_17 = 1
 order_18: batch_18 + batch_6_13_18_19 + batch_6_13_14_18
   + batch_9_14_15_18_19 + batch_8_14_18_19 = 1
 order_19: batch_19 + batch_6_13_18_19 + batch_1_17_19
   + batch_9_14_15_18_19 + batch_6_13_14_19 + batch_8_14_18_19
   + batch_8_15_19 + batch_8_14_19 + batch_8_19 = 1
Bounds
End
