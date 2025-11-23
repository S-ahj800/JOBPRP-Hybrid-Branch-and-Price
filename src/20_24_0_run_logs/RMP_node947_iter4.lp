\ Model JOBPRP_RMP_947
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x4d1d250ef315d850
Minimize
  83.6 batch_3 + 77.2 batch_9 + 70.4 batch_13 + 74.8 batch_15
   + 77.2 batch_18 + 61.2 batch_19 + 115.2 batch_2_7_11
   + 131.2 batch_9_10_12_13 + 130.4 batch_10_12_13_15
   + 133.2 batch_0_4_13_16_18 + 125.2 batch_1_13_17
   + 137.2 batch_0_4_15_16_18 + 127.2 batch_0_4_5_14_16
   + 116 batch_3_9_18_19 + 133.2 batch_1_15_17 + 125.2 batch_3_6_8
   + 121.2 batch_1_17_19 + 117.2 batch_5_13_14_18 + 130 batch_6_8_15_19
   + 139.2 batch_10_12_18_19 + 131.2 batch_10_12_13_18
   + 131.2 batch_9_10_12_19 + 97.2 batch_9_18 + 107.2 batch_6_8_19
   + 97.2 batch_9_18_19
Subject To
 order_0: batch_0_4_13_16_18 + batch_0_4_15_16_18 + batch_0_4_5_14_16 = 1
 order_1: batch_1_13_17 + batch_1_15_17 + batch_1_17_19 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3 + batch_3_9_18_19 + batch_3_6_8 = 1
 order_4: batch_0_4_13_16_18 + batch_0_4_15_16_18 + batch_0_4_5_14_16 = 1
 order_5: batch_0_4_5_14_16 + batch_5_13_14_18 = 1
 order_6: batch_3_6_8 + batch_6_8_15_19 + batch_6_8_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_3_6_8 + batch_6_8_15_19 + batch_6_8_19 = 1
 order_9: batch_9 + batch_9_10_12_13 + batch_3_9_18_19 + batch_9_10_12_19
   + batch_9_18 + batch_9_18_19 = 1
 order_10: batch_9_10_12_13 + batch_10_12_13_15 + batch_10_12_18_19
   + batch_10_12_13_18 + batch_9_10_12_19 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_9_10_12_13 + batch_10_12_13_15 + batch_10_12_18_19
   + batch_10_12_13_18 + batch_9_10_12_19 = 1
 order_13: batch_13 + batch_9_10_12_13 + batch_10_12_13_15
   + batch_0_4_13_16_18 + batch_1_13_17 + batch_5_13_14_18
   + batch_10_12_13_18 = 1
 order_14: batch_0_4_5_14_16 + batch_5_13_14_18 = 1
 order_15: batch_15 + batch_10_12_13_15 + batch_0_4_15_16_18
   + batch_1_15_17 + batch_6_8_15_19 = 1
 order_16: batch_0_4_13_16_18 + batch_0_4_15_16_18 + batch_0_4_5_14_16 = 1
 order_17: batch_1_13_17 + batch_1_15_17 + batch_1_17_19 = 1
 order_18: batch_18 + batch_0_4_13_16_18 + batch_0_4_15_16_18
   + batch_3_9_18_19 + batch_5_13_14_18 + batch_10_12_18_19
   + batch_10_12_13_18 + batch_9_18 + batch_9_18_19 = 1
 order_19: batch_19 + batch_3_9_18_19 + batch_1_17_19 + batch_6_8_15_19
   + batch_10_12_18_19 + batch_9_10_12_19 + batch_6_8_19 + batch_9_18_19
   = 1
Bounds
End
