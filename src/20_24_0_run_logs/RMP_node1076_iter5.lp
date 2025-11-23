\ Model JOBPRP_RMP_1076
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xeb5ed5d730704e50
Minimize
  98 batch_1 + 91.2 batch_5 + 65.2 batch_14 + 74.8 batch_15 + 77.2 batch_18
   + 61.2 batch_19 + 119.2 batch_0_4_10_14_15 + 105.6 batch_3_12_16
   + 115.2 batch_2_7_11 + 118 batch_3_12_16_19 + 117.2 batch_1_5_18
   + 105.2 batch_6_9_13_19 + 117.2 batch_5_8_17 + 127.2 batch_8_14_15_17
   + 131.2 batch_8_17_18_19 + 111.2 batch_1_14_18_19
   + 138 batch_0_4_10_18_19 + 111.2 batch_6_9_13_14
   + 129.9999981363636 batch_6_9_13_15 + 125.2 batch_8_17_18
   + 105.2 batch_6_9_13 + 107.2 batch_0_4_10 + 105.2 batch_1_18
   + 107.2 batch_8_14_17 + 115.2 batch_0_4_10_15
Subject To
 order_0: batch_0_4_10_14_15 + batch_0_4_10_18_19 + batch_0_4_10
   + batch_0_4_10_15 = 1
 order_1: batch_1 + batch_1_5_18 + batch_1_14_18_19 + batch_1_18 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16 + batch_3_12_16_19 = 1
 order_4: batch_0_4_10_14_15 + batch_0_4_10_18_19 + batch_0_4_10
   + batch_0_4_10_15 = 1
 order_5: batch_5 + batch_1_5_18 + batch_5_8_17 = 1
 order_6: batch_6_9_13_19 + batch_6_9_13_14 + batch_6_9_13_15
   + batch_6_9_13 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_5_8_17 + batch_8_14_15_17 + batch_8_17_18_19
   + batch_8_17_18 + batch_8_14_17 = 1
 order_9: batch_6_9_13_19 + batch_6_9_13_14 + batch_6_9_13_15
   + batch_6_9_13 = 1
 order_10: batch_0_4_10_14_15 + batch_0_4_10_18_19 + batch_0_4_10
   + batch_0_4_10_15 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_12_16 + batch_3_12_16_19 = 1
 order_13: batch_6_9_13_19 + batch_6_9_13_14 + batch_6_9_13_15
   + batch_6_9_13 = 1
 order_14: batch_14 + batch_0_4_10_14_15 + batch_8_14_15_17
   + batch_1_14_18_19 + batch_6_9_13_14 + batch_8_14_17 = 1
 order_15: batch_15 + batch_0_4_10_14_15 + batch_8_14_15_17
   + batch_6_9_13_15 + batch_0_4_10_15 = 1
 order_16: batch_3_12_16 + batch_3_12_16_19 = 1
 order_17: batch_5_8_17 + batch_8_14_15_17 + batch_8_17_18_19
   + batch_8_17_18 + batch_8_14_17 = 1
 order_18: batch_18 + batch_1_5_18 + batch_8_17_18_19 + batch_1_14_18_19
   + batch_0_4_10_18_19 + batch_8_17_18 + batch_1_18 = 1
 order_19: batch_19 + batch_3_12_16_19 + batch_6_9_13_19 + batch_8_17_18_19
   + batch_1_14_18_19 + batch_0_4_10_18_19 = 1
Bounds
End
