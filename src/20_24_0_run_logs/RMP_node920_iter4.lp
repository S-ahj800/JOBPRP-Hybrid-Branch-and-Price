\ Model JOBPRP_RMP_920
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x99f6ce91848ba301
Minimize
  83.6 batch_3 + 70.4 batch_13 + 65.2 batch_14 + 74.8 batch_15
   + 77.2 batch_18 + 61.2 batch_19 + 115.2 batch_2_7_11
   + 123.2 batch_0_4_10_15_16 + 127.2 batch_5_9_12_19 + 125.2 batch_1_13_17
   + 113.2 batch_6_8_14_19 + 133.2 batch_1_15_17 + 125.2 batch_3_6_8
   + 121.2 batch_1_17_19 + 115.2 batch_3_14_18_19 + 113.2 batch_6_8_14
   + 111.2 batch_3_14_18 + 119.1999970989011 batch_0_4_10_14_16
Subject To
 order_0: batch_0_4_10_15_16 + batch_0_4_10_14_16 = 1
 order_1: batch_1_13_17 + batch_1_15_17 + batch_1_17_19 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3 + batch_3_6_8 + batch_3_14_18_19 + batch_3_14_18 = 1
 order_4: batch_0_4_10_15_16 + batch_0_4_10_14_16 = 1
 order_5: batch_5_9_12_19 = 1
 order_6: batch_6_8_14_19 + batch_3_6_8 + batch_6_8_14 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_6_8_14_19 + batch_3_6_8 + batch_6_8_14 = 1
 order_9: batch_5_9_12_19 = 1
 order_10: batch_0_4_10_15_16 + batch_0_4_10_14_16 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_5_9_12_19 = 1
 order_13: batch_13 + batch_1_13_17 = 1
 order_14: batch_14 + batch_6_8_14_19 + batch_3_14_18_19 + batch_6_8_14
   + batch_3_14_18 + batch_0_4_10_14_16 = 1
 order_15: batch_15 + batch_0_4_10_15_16 + batch_1_15_17 = 1
 order_16: batch_0_4_10_15_16 + batch_0_4_10_14_16 = 1
 order_17: batch_1_13_17 + batch_1_15_17 + batch_1_17_19 = 1
 order_18: batch_18 + batch_3_14_18_19 + batch_3_14_18 = 1
 order_19: batch_19 + batch_5_9_12_19 + batch_6_8_14_19 + batch_1_17_19
   + batch_3_14_18_19 = 1
Bounds
End
