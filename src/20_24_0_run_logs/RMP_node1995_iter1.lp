\ Model JOBPRP_RMP_1995
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xb2c3294281b05c16
Minimize
  91.2 batch_5 + 77.2 batch_9 + 89.6 batch_12 + 65.2 batch_14
   + 74.8 batch_15 + 89.2 batch_17 + 77.2 batch_18 + 61.2 batch_19
   + 105.6 batch_3_12_16 + 115.2 batch_2_7_11 + 121.2 batch_1_8_9
   + 129.2 batch_1_5_8 + 121.1999957721094 batch_0_4_10_17
   + 133.2 batch_3_15_16_18 + 121.2 batch_1_8_18 + 131.2 batch_12_15_17
   + 115.2 batch_0_4_10_15 + 113.2 batch_5_9_18 + 127.2 batch_5_9_12_19
   + 135.2 batch_5_9_15_18 + 135.2 batch_5_6_13_15 + 113.2 batch_5_9_18_19
   + 134 batch_0_4_9_10_19 + 121.1999982032085 batch_1_8_14_19
   + 125.2 batch_9_17_18_19 + 103.2 batch_6_13_18 + 125.2 batch_9_14_17_18
   + 113.2 batch_6_13_17
Subject To
 order_0: batch_0_4_10_17 + batch_0_4_10_15 + batch_0_4_9_10_19 = 1
 order_1: batch_1_8_9 + batch_1_5_8 + batch_1_8_18 + batch_1_8_14_19 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16 + batch_3_15_16_18 = 1
 order_4: batch_0_4_10_17 + batch_0_4_10_15 + batch_0_4_9_10_19 = 1
 order_5: batch_5 + batch_1_5_8 + batch_5_9_18 + batch_5_9_12_19
   + batch_5_9_15_18 + batch_5_6_13_15 + batch_5_9_18_19 = 1
 order_6: batch_5_6_13_15 + batch_6_13_18 + batch_6_13_17 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_1_8_9 + batch_1_5_8 + batch_1_8_18 + batch_1_8_14_19 = 1
 order_9: batch_9 + batch_1_8_9 + batch_5_9_18 + batch_5_9_12_19
   + batch_5_9_15_18 + batch_5_9_18_19 + batch_0_4_9_10_19
   + batch_9_17_18_19 + batch_9_14_17_18 = 1
 order_10: batch_0_4_10_17 + batch_0_4_10_15 + batch_0_4_9_10_19 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_3_12_16 + batch_12_15_17 + batch_5_9_12_19 = 1
 order_13: batch_5_6_13_15 + batch_6_13_18 + batch_6_13_17 = 1
 order_14: batch_14 + batch_1_8_14_19 + batch_9_14_17_18 = 1
 order_15: batch_15 + batch_3_15_16_18 + batch_12_15_17 + batch_0_4_10_15
   + batch_5_9_15_18 + batch_5_6_13_15 = 1
 order_16: batch_3_12_16 + batch_3_15_16_18 = 1
 order_17: batch_17 + batch_0_4_10_17 + batch_12_15_17 + batch_9_17_18_19
   + batch_9_14_17_18 + batch_6_13_17 = 1
 order_18: batch_18 + batch_3_15_16_18 + batch_1_8_18 + batch_5_9_18
   + batch_5_9_15_18 + batch_5_9_18_19 + batch_9_17_18_19 + batch_6_13_18
   + batch_9_14_17_18 = 1
 order_19: batch_19 + batch_5_9_12_19 + batch_5_9_18_19 + batch_0_4_9_10_19
   + batch_1_8_14_19 + batch_9_17_18_19 = 1
Bounds
End
