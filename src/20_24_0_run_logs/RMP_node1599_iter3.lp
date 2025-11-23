\ Model JOBPRP_RMP_1599
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x4d1d250ef315d850
Minimize
  77.2 batch_9 + 78.4 batch_10 + 70.4 batch_13 + 65.2 batch_14
   + 74.8 batch_15 + 77.2 batch_18 + 61.2 batch_19 + 115.2 batch_2_7_11
   + 117.2 batch_1_14_17 + 119.2 batch_5_6_9_19 + 124 batch_3_12_13_19
   + 125.2 batch_1_13_17 + 137.2 batch_5_6_14_15 + 123.2 batch_5_6_18_19
   + 127.2 batch_0_4_8_13_16 + 133.2 batch_1_15_17 + 118.4 batch_3_10_12
   + 135.2 batch_9_10_13_15_19 + 127.2 batch_1_9_17
   + 105.2 batch_9_13_14_18_19 + 123.2 batch_3_12_18
   + 141.2 batch_9_10_15_18 + 123.2 batch_9_10_13_18
   + 120 batch_0_4_8_16_19 + 111.2 batch_0_4_8_16
Subject To
 order_0: batch_0_4_8_13_16 + batch_0_4_8_16_19 + batch_0_4_8_16 = 1
 order_1: batch_1_14_17 + batch_1_13_17 + batch_1_15_17 + batch_1_9_17 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_13_19 + batch_3_10_12 + batch_3_12_18 = 1
 order_4: batch_0_4_8_13_16 + batch_0_4_8_16_19 + batch_0_4_8_16 = 1
 order_5: batch_5_6_9_19 + batch_5_6_14_15 + batch_5_6_18_19 = 1
 order_6: batch_5_6_9_19 + batch_5_6_14_15 + batch_5_6_18_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_0_4_8_13_16 + batch_0_4_8_16_19 + batch_0_4_8_16 = 1
 order_9: batch_9 + batch_5_6_9_19 + batch_9_10_13_15_19 + batch_1_9_17
   + batch_9_13_14_18_19 + batch_9_10_15_18 + batch_9_10_13_18 = 1
 order_10: batch_10 + batch_3_10_12 + batch_9_10_13_15_19
   + batch_9_10_15_18 + batch_9_10_13_18 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_12_13_19 + batch_3_10_12 + batch_3_12_18 = 1
 order_13: batch_13 + batch_3_12_13_19 + batch_1_13_17 + batch_0_4_8_13_16
   + batch_9_10_13_15_19 + batch_9_13_14_18_19 + batch_9_10_13_18 = 1
 order_14: batch_14 + batch_1_14_17 + batch_5_6_14_15 + batch_9_13_14_18_19
   = 1
 order_15: batch_15 + batch_5_6_14_15 + batch_1_15_17 + batch_9_10_13_15_19
   + batch_9_10_15_18 = 1
 order_16: batch_0_4_8_13_16 + batch_0_4_8_16_19 + batch_0_4_8_16 = 1
 order_17: batch_1_14_17 + batch_1_13_17 + batch_1_15_17 + batch_1_9_17
   = 1
 order_18: batch_18 + batch_5_6_18_19 + batch_9_13_14_18_19 + batch_3_12_18
   + batch_9_10_15_18 + batch_9_10_13_18 = 1
 order_19: batch_19 + batch_5_6_9_19 + batch_3_12_13_19 + batch_5_6_18_19
   + batch_9_10_13_15_19 + batch_9_13_14_18_19 + batch_0_4_8_16_19 = 1
Bounds
End
