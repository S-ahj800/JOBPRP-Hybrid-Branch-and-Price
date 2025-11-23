\ Model JOBPRP_RMP_324
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x4d1d250ef315d850
Minimize
  72.4 batch_8 + 77.2 batch_9 + 74.8 batch_15 + 89.2 batch_17
   + 77.2 batch_18 + 61.2 batch_19 + 115.2 batch_2_7_11
   + 127.2 batch_1_10_17 + 123.2 batch_1_9_10 + 123.2 batch_5_8_14_18
   + 125.2 batch_3_5_14_16 + 131.2 batch_1_8_10 + 123.2 batch_5_6_13_14
   + 139.2 batch_1_10_15_19 + 127.2 batch_0_4_12_15 + 125.2 batch_5_8_9_14
   + 113.2 batch_5_14_17_19 + 133.2 batch_3_15_16_18
   + 107.2 batch_8_9_18_19 + 137.2 batch_3_16_17_19 + 137.2 batch_3_9_15_16
   + 103.2 batch_6_13_18 + 122 batch_3_9_16_19 + 113.2 batch_6_13_17
   + 144 batch_0_4_9_12
Subject To
 order_0: batch_0_4_12_15 + batch_0_4_9_12 = 1
 order_1: batch_1_10_17 + batch_1_9_10 + batch_1_8_10 + batch_1_10_15_19
   = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_5_14_16 + batch_3_15_16_18 + batch_3_16_17_19
   + batch_3_9_15_16 + batch_3_9_16_19 = 1
 order_4: batch_0_4_12_15 + batch_0_4_9_12 = 1
 order_5: batch_5_8_14_18 + batch_3_5_14_16 + batch_5_6_13_14
   + batch_5_8_9_14 + batch_5_14_17_19 = 1
 order_6: batch_5_6_13_14 + batch_6_13_18 + batch_6_13_17 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_5_8_14_18 + batch_1_8_10 + batch_5_8_9_14
   + batch_8_9_18_19 = 1
 order_9: batch_9 + batch_1_9_10 + batch_5_8_9_14 + batch_8_9_18_19
   + batch_3_9_15_16 + batch_3_9_16_19 + batch_0_4_9_12 = 1
 order_10: batch_1_10_17 + batch_1_9_10 + batch_1_8_10 + batch_1_10_15_19
   = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_0_4_12_15 + batch_0_4_9_12 = 1
 order_13: batch_5_6_13_14 + batch_6_13_18 + batch_6_13_17 = 1
 order_14: batch_5_8_14_18 + batch_3_5_14_16 + batch_5_6_13_14
   + batch_5_8_9_14 + batch_5_14_17_19 = 1
 order_15: batch_15 + batch_1_10_15_19 + batch_0_4_12_15 + batch_3_15_16_18
   + batch_3_9_15_16 = 1
 order_16: batch_3_5_14_16 + batch_3_15_16_18 + batch_3_16_17_19
   + batch_3_9_15_16 + batch_3_9_16_19 = 1
 order_17: batch_17 + batch_1_10_17 + batch_5_14_17_19 + batch_3_16_17_19
   + batch_6_13_17 = 1
 order_18: batch_18 + batch_5_8_14_18 + batch_3_15_16_18 + batch_8_9_18_19
   + batch_6_13_18 = 1
 order_19: batch_19 + batch_1_10_15_19 + batch_5_14_17_19 + batch_8_9_18_19
   + batch_3_16_17_19 + batch_3_9_16_19 = 1
Bounds
End
