\ Model JOBPRP_RMP_996
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x6ec63027d28a54e9
Minimize
  83.6 batch_3 + 77.2 batch_9 + 65.2 batch_14 + 74.8 batch_15
   + 77.2 batch_18 + 61.2 batch_19 + 115.2 batch_2_7_11
   + 117.2 batch_0_4_14_15_16 + 127.2 batch_1_9_17 + 129.2 batch_5_12_18_19
   + 137.2 batch_0_4_15_16_18 + 113.2 batch_6_8_14_19 + 116 batch_3_9_18_19
   + 133.2 batch_1_15_17 + 125.2 batch_3_6_8 + 121.2 batch_1_17_19
   + 131.2 batch_0_3_4_16 + 133.2 batch_5_12_15_19
   + 129.2 batch_0_4_10_13_16 + 111.2 batch_10_13_14_18 + 122 batch_3_9_14
   + 123.2 batch_9_10_13_18 + 130 batch_6_8_15_19
Subject To
 order_0: batch_0_4_14_15_16 + batch_0_4_15_16_18 + batch_0_3_4_16
   + batch_0_4_10_13_16 = 1
 order_1: batch_1_9_17 + batch_1_15_17 + batch_1_17_19 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3 + batch_3_9_18_19 + batch_3_6_8 + batch_0_3_4_16
   + batch_3_9_14 = 1
 order_4: batch_0_4_14_15_16 + batch_0_4_15_16_18 + batch_0_3_4_16
   + batch_0_4_10_13_16 = 1
 order_5: batch_5_12_18_19 + batch_5_12_15_19 = 1
 order_6: batch_6_8_14_19 + batch_3_6_8 + batch_6_8_15_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_6_8_14_19 + batch_3_6_8 + batch_6_8_15_19 = 1
 order_9: batch_9 + batch_1_9_17 + batch_3_9_18_19 + batch_3_9_14
   + batch_9_10_13_18 = 1
 order_10: batch_0_4_10_13_16 + batch_10_13_14_18 + batch_9_10_13_18 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_5_12_18_19 + batch_5_12_15_19 = 1
 order_13: batch_0_4_10_13_16 + batch_10_13_14_18 + batch_9_10_13_18 = 1
 order_14: batch_14 + batch_0_4_14_15_16 + batch_6_8_14_19
   + batch_10_13_14_18 + batch_3_9_14 = 1
 order_15: batch_15 + batch_0_4_14_15_16 + batch_0_4_15_16_18
   + batch_1_15_17 + batch_5_12_15_19 + batch_6_8_15_19 = 1
 order_16: batch_0_4_14_15_16 + batch_0_4_15_16_18 + batch_0_3_4_16
   + batch_0_4_10_13_16 = 1
 order_17: batch_1_9_17 + batch_1_15_17 + batch_1_17_19 = 1
 order_18: batch_18 + batch_5_12_18_19 + batch_0_4_15_16_18
   + batch_3_9_18_19 + batch_10_13_14_18 + batch_9_10_13_18 = 1
 order_19: batch_19 + batch_5_12_18_19 + batch_6_8_14_19 + batch_3_9_18_19
   + batch_1_17_19 + batch_5_12_15_19 + batch_6_8_15_19 = 1
Bounds
End
