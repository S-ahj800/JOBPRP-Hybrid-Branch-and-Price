\ Model JOBPRP_RMP_303
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xbbe6dc8ff012d2b1
Minimize
  83.6 batch_3 + 91.2 batch_5 + 77.2 batch_9 + 89.6 batch_12 + 70.4 batch_13
   + 65.2 batch_14 + 74.8 batch_15 + 61.2 batch_19 + 115.2 batch_6_8_18_19
   + 115.2 batch_2_7_11 + 115.6 batch_3_12_15 + 123.2 batch_0_4_10_15_16
   + 117.2 batch_1_14_17 + 135.2 batch_5_9_13_15 + 127.2 batch_1_9_17
   + 117.2 batch_5_9_13_14_19 + 125.2 batch_1_13_17 + 117.2 batch_5_9_13_14
   + 119.2 batch_3_5_13_14 + 116.4 batch_3_12_13 + 119.2 batch_0_4_10_14_16
   + 134 batch_9_12_13_15 + 101.6 batch_3_12 + 111.2 batch_5_9_13
Subject To
 order_0: batch_0_4_10_15_16 + batch_0_4_10_14_16 = 1
 order_1: batch_1_14_17 + batch_1_9_17 + batch_1_13_17 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3 + batch_3_12_15 + batch_3_5_13_14 + batch_3_12_13
   + batch_3_12 = 1
 order_4: batch_0_4_10_15_16 + batch_0_4_10_14_16 = 1
 order_5: batch_5 + batch_5_9_13_15 + batch_5_9_13_14_19 + batch_5_9_13_14
   + batch_3_5_13_14 + batch_5_9_13 = 1
 order_6: batch_6_8_18_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_6_8_18_19 = 1
 order_9: batch_9 + batch_5_9_13_15 + batch_1_9_17 + batch_5_9_13_14_19
   + batch_5_9_13_14 + batch_9_12_13_15 + batch_5_9_13 = 1
 order_10: batch_0_4_10_15_16 + batch_0_4_10_14_16 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_3_12_15 + batch_3_12_13 + batch_9_12_13_15
   + batch_3_12 = 1
 order_13: batch_13 + batch_5_9_13_15 + batch_5_9_13_14_19 + batch_1_13_17
   + batch_5_9_13_14 + batch_3_5_13_14 + batch_3_12_13 + batch_9_12_13_15
   + batch_5_9_13 = 1
 order_14: batch_14 + batch_1_14_17 + batch_5_9_13_14_19 + batch_5_9_13_14
   + batch_3_5_13_14 + batch_0_4_10_14_16 = 1
 order_15: batch_15 + batch_3_12_15 + batch_0_4_10_15_16 + batch_5_9_13_15
   + batch_9_12_13_15 = 1
 order_16: batch_0_4_10_15_16 + batch_0_4_10_14_16 = 1
 order_17: batch_1_14_17 + batch_1_9_17 + batch_1_13_17 = 1
 order_18: batch_6_8_18_19 = 1
 order_19: batch_19 + batch_6_8_18_19 + batch_5_9_13_14_19 = 1
Bounds
End
