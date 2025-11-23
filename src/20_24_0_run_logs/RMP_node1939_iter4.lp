\ Model JOBPRP_RMP_1939
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xd0d07225a7a21ef9
Minimize
  91.2 batch_5 + 89.6 batch_12 + 65.2 batch_14 + 74.8 batch_15
   + 89.2 batch_17 + 77.2 batch_18 + 61.2 batch_19 + 105.6 batch_3_12_16
   + 115.2 batch_2_7_11 + 109.2 batch_6_9_13_18 + 105.2 batch_6_9_13_19
   + 129.2 batch_1_5_8 + 129.2 batch_5_12_17
   + 121.1999957721094 batch_0_4_10_17 + 125.2 batch_5_17_18_19
   + 133.2 batch_3_15_16_18 + 121.2 batch_1_8_18 + 131.2 batch_12_15_17
   + 123.2 batch_5_15_17 + 121.2 batch_1_8_14_19 + 117.2 batch_3_5_16
   + 127.2 batch_0_4_5_10 + 111.2 batch_6_9_13_14 + 130 batch_6_9_13_15
   + 129.2 batch_5_12_18_19
Subject To
 order_0: batch_0_4_10_17 + batch_0_4_5_10 = 1
 order_1: batch_1_5_8 + batch_1_8_18 + batch_1_8_14_19 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16 + batch_3_15_16_18 + batch_3_5_16 = 1
 order_4: batch_0_4_10_17 + batch_0_4_5_10 = 1
 order_5: batch_5 + batch_1_5_8 + batch_5_12_17 + batch_5_17_18_19
   + batch_5_15_17 + batch_3_5_16 + batch_0_4_5_10 + batch_5_12_18_19 = 1
 order_6: batch_6_9_13_18 + batch_6_9_13_19 + batch_6_9_13_14
   + batch_6_9_13_15 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_1_5_8 + batch_1_8_18 + batch_1_8_14_19 = 1
 order_9: batch_6_9_13_18 + batch_6_9_13_19 + batch_6_9_13_14
   + batch_6_9_13_15 = 1
 order_10: batch_0_4_10_17 + batch_0_4_5_10 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_3_12_16 + batch_5_12_17 + batch_12_15_17
   + batch_5_12_18_19 = 1
 order_13: batch_6_9_13_18 + batch_6_9_13_19 + batch_6_9_13_14
   + batch_6_9_13_15 = 1
 order_14: batch_14 + batch_1_8_14_19 + batch_6_9_13_14 = 1
 order_15: batch_15 + batch_3_15_16_18 + batch_12_15_17 + batch_5_15_17
   + batch_6_9_13_15 = 1
 order_16: batch_3_12_16 + batch_3_15_16_18 + batch_3_5_16 = 1
 order_17: batch_17 + batch_5_12_17 + batch_0_4_10_17 + batch_5_17_18_19
   + batch_12_15_17 + batch_5_15_17 = 1
 order_18: batch_18 + batch_6_9_13_18 + batch_5_17_18_19 + batch_3_15_16_18
   + batch_1_8_18 + batch_5_12_18_19 = 1
 order_19: batch_19 + batch_6_9_13_19 + batch_5_17_18_19 + batch_1_8_14_19
   + batch_5_12_18_19 = 1
Bounds
End
