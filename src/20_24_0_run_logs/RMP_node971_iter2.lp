\ Model JOBPRP_RMP_971
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x807cd351ff684db5
Minimize
  83.6 batch_3 + 91.2 batch_5 + 77.2 batch_9 + 78.4 batch_10 + 70.4 batch_13
   + 65.2 batch_14 + 74.8 batch_15 + 77.2 batch_18 + 61.2 batch_19
   + 115.2 batch_2_7_11 + 127.2 batch_1_10_17 + 117.2 batch_1_14_17
   + 135.2 batch_0_4_5_13_16 + 127.2 batch_1_9_17
   + 133.2 batch_0_4_13_16_18 + 125.2 batch_1_13_17
   + 137.2 batch_0_4_15_16_18 + 126 batch_6_8_12 + 116 batch_3_9_18_19
   + 133.2 batch_1_15_17 + 121.2 batch_1_17_19 + 123.2 batch_5_10_13_18
   + 141.2 batch_9_10_14_15_19 + 137.2 batch_3_10_14_15
   + 133.2 batch_5_10_15_19 + 121.2 batch_3_9_10_19
   + 139.2 batch_5_10_15_18 + 137.2 batch_5_10_13_15
   + 127.2 batch_0_4_13_15_16
Subject To
 order_0: batch_0_4_5_13_16 + batch_0_4_13_16_18 + batch_0_4_15_16_18
   + batch_0_4_13_15_16 = 1
 order_1: batch_1_10_17 + batch_1_14_17 + batch_1_9_17 + batch_1_13_17
   + batch_1_15_17 + batch_1_17_19 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3 + batch_3_9_18_19 + batch_3_10_14_15 + batch_3_9_10_19
   = 1
 order_4: batch_0_4_5_13_16 + batch_0_4_13_16_18 + batch_0_4_15_16_18
   + batch_0_4_13_15_16 = 1
 order_5: batch_5 + batch_0_4_5_13_16 + batch_5_10_13_18 + batch_5_10_15_19
   + batch_5_10_15_18 + batch_5_10_13_15 = 1
 order_6: batch_6_8_12 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_6_8_12 = 1
 order_9: batch_9 + batch_1_9_17 + batch_3_9_18_19 + batch_9_10_14_15_19
   + batch_3_9_10_19 = 1
 order_10: batch_10 + batch_1_10_17 + batch_5_10_13_18
   + batch_9_10_14_15_19 + batch_3_10_14_15 + batch_5_10_15_19
   + batch_3_9_10_19 + batch_5_10_15_18 + batch_5_10_13_15 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_6_8_12 = 1
 order_13: batch_13 + batch_0_4_5_13_16 + batch_0_4_13_16_18
   + batch_1_13_17 + batch_5_10_13_18 + batch_5_10_13_15
   + batch_0_4_13_15_16 = 1
 order_14: batch_14 + batch_1_14_17 + batch_9_10_14_15_19
   + batch_3_10_14_15 = 1
 order_15: batch_15 + batch_0_4_15_16_18 + batch_1_15_17
   + batch_9_10_14_15_19 + batch_3_10_14_15 + batch_5_10_15_19
   + batch_5_10_15_18 + batch_5_10_13_15 + batch_0_4_13_15_16 = 1
 order_16: batch_0_4_5_13_16 + batch_0_4_13_16_18 + batch_0_4_15_16_18
   + batch_0_4_13_15_16 = 1
 order_17: batch_1_10_17 + batch_1_14_17 + batch_1_9_17 + batch_1_13_17
   + batch_1_15_17 + batch_1_17_19 = 1
 order_18: batch_18 + batch_0_4_13_16_18 + batch_0_4_15_16_18
   + batch_3_9_18_19 + batch_5_10_13_18 + batch_5_10_15_18 = 1
 order_19: batch_19 + batch_3_9_18_19 + batch_1_17_19 + batch_9_10_14_15_19
   + batch_5_10_15_19 + batch_3_9_10_19 = 1
Bounds
End
