\ Model JOBPRP_RMP_1207
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x486b6ce7ff9a98
Minimize
  98 batch_1 + 91.2 batch_5 + 77.2 batch_9 + 78.4 batch_10 + 65.2 batch_14
   + 74.8 batch_15 + 77.2 batch_18 + 61.2 batch_19 + 105.6 batch_3_12_16
   + 115.2 batch_2_7_11 + 105.2 batch_6_9_13_19 + 123.2 batch_0_4_8_17
   + 119.2 batch_1_10_14 + 111.2 batch_1_14_18_19 + 119.2 batch_6_10_13_14
   + 135.2 batch_5_9_15_18 + 123.2 batch_6_9_10_13 + 111.2 batch_6_9_13_14
   + 139.2 batch_5_10_15_18 + 130 batch_1_15_18_19
   + 141.2 batch_9_10_14_15_19 + 141.2 batch_5_9_10_15
   + 139.2 batch_1_10_15_19 + 134 batch_6_13_14_15_19
   + 133.2 batch_6_10_13_15 + 113.2 batch_5_9_18_19
Subject To
 order_0: batch_0_4_8_17 = 1
 order_1: batch_1 + batch_1_10_14 + batch_1_14_18_19 + batch_1_15_18_19
   + batch_1_10_15_19 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16 = 1
 order_4: batch_0_4_8_17 = 1
 order_5: batch_5 + batch_5_9_15_18 + batch_5_10_15_18 + batch_5_9_10_15
   + batch_5_9_18_19 = 1
 order_6: batch_6_9_13_19 + batch_6_10_13_14 + batch_6_9_10_13
   + batch_6_9_13_14 + batch_6_13_14_15_19 + batch_6_10_13_15 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_0_4_8_17 = 1
 order_9: batch_9 + batch_6_9_13_19 + batch_5_9_15_18 + batch_6_9_10_13
   + batch_6_9_13_14 + batch_9_10_14_15_19 + batch_5_9_10_15
   + batch_5_9_18_19 = 1
 order_10: batch_10 + batch_1_10_14 + batch_6_10_13_14 + batch_6_9_10_13
   + batch_5_10_15_18 + batch_9_10_14_15_19 + batch_5_9_10_15
   + batch_1_10_15_19 + batch_6_10_13_15 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_12_16 = 1
 order_13: batch_6_9_13_19 + batch_6_10_13_14 + batch_6_9_10_13
   + batch_6_9_13_14 + batch_6_13_14_15_19 + batch_6_10_13_15 = 1
 order_14: batch_14 + batch_1_10_14 + batch_1_14_18_19 + batch_6_10_13_14
   + batch_6_9_13_14 + batch_9_10_14_15_19 + batch_6_13_14_15_19 = 1
 order_15: batch_15 + batch_5_9_15_18 + batch_5_10_15_18 + batch_1_15_18_19
   + batch_9_10_14_15_19 + batch_5_9_10_15 + batch_1_10_15_19
   + batch_6_13_14_15_19 + batch_6_10_13_15 = 1
 order_16: batch_3_12_16 = 1
 order_17: batch_0_4_8_17 = 1
 order_18: batch_18 + batch_1_14_18_19 + batch_5_9_15_18 + batch_5_10_15_18
   + batch_1_15_18_19 + batch_5_9_18_19 = 1
 order_19: batch_19 + batch_6_9_13_19 + batch_1_14_18_19 + batch_1_15_18_19
   + batch_9_10_14_15_19 + batch_1_10_15_19 + batch_6_13_14_15_19
   + batch_5_9_18_19 = 1
Bounds
End
