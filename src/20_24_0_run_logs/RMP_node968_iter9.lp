\ Model JOBPRP_RMP_968
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xec24269a5a9eb7b9
Minimize
  83.6 batch_3 + 91.2 batch_5 + 77.2 batch_9 + 70.4 batch_13 + 65.2 batch_14
   + 74.8 batch_15 + 77.2 batch_18 + 61.2 batch_19 + 115.2 batch_2_7_11
   + 123.2 batch_0_4_10_15_16 + 117.2 batch_1_14_17 + 127.2 batch_1_9_17
   + 125.2 batch_1_13_17 + 126 batch_6_8_12 + 116 batch_3_9_18_19
   + 133.2 batch_1_15_17 + 121.2 batch_1_17_19 + 89.2 batch_13_14_18
   + 97.2 batch_9_13_14 + 109.2 batch_3_14_19 + 119.2 batch_0_4_10_14_16
   + 131.2 batch_5_15_18_19 + 139.2 batch_5_13_15_18 + 93.2 batch_5_19
   + 122 batch_3_9_14_19
Subject To
 order_0: batch_0_4_10_15_16 + batch_0_4_10_14_16 = 1
 order_1: batch_1_14_17 + batch_1_9_17 + batch_1_13_17 + batch_1_15_17
   + batch_1_17_19 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3 + batch_3_9_18_19 + batch_3_14_19 + batch_3_9_14_19 = 1
 order_4: batch_0_4_10_15_16 + batch_0_4_10_14_16 = 1
 order_5: batch_5 + batch_5_15_18_19 + batch_5_13_15_18 + batch_5_19 = 1
 order_6: batch_6_8_12 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_6_8_12 = 1
 order_9: batch_9 + batch_1_9_17 + batch_3_9_18_19 + batch_9_13_14
   + batch_3_9_14_19 = 1
 order_10: batch_0_4_10_15_16 + batch_0_4_10_14_16 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_6_8_12 = 1
 order_13: batch_13 + batch_1_13_17 + batch_13_14_18 + batch_9_13_14
   + batch_5_13_15_18 = 1
 order_14: batch_14 + batch_1_14_17 + batch_13_14_18 + batch_9_13_14
   + batch_3_14_19 + batch_0_4_10_14_16 + batch_3_9_14_19 = 1
 order_15: batch_15 + batch_0_4_10_15_16 + batch_1_15_17 + batch_5_15_18_19
   + batch_5_13_15_18 = 1
 order_16: batch_0_4_10_15_16 + batch_0_4_10_14_16 = 1
 order_17: batch_1_14_17 + batch_1_9_17 + batch_1_13_17 + batch_1_15_17
   + batch_1_17_19 = 1
 order_18: batch_18 + batch_3_9_18_19 + batch_13_14_18 + batch_5_15_18_19
   + batch_5_13_15_18 = 1
 order_19: batch_19 + batch_3_9_18_19 + batch_1_17_19 + batch_3_14_19
   + batch_5_15_18_19 + batch_5_19 + batch_3_9_14_19 = 1
Bounds
End
