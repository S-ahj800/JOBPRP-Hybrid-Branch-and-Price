\ Model JOBPRP_RMP_1879
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x98ae238e109e5618
Minimize
  83.6 batch_3 + 91.2 batch_5 + 72.4 batch_8 + 77.2 batch_9 + 78.4 batch_10
   + 65.2 batch_14 + 74.8 batch_15 + 77.2 batch_18 + 115.2 batch_2_7_11
   + 127.2 batch_1_10_17 + 115.2 batch_0_4_8_14_16 + 124 batch_6_12_13_19
   + 117.2 batch_1_14_17 + 121.2 batch_5_9_14_18 + 129.2 batch_5_8_14_15
   + 112.4 batch_3_8_10 + 115.2 batch_3_5_18 + 133.2 batch_1_15_17
   + 119.2 batch_3_5_9 + 109.2 batch_8_9_14_18 + 119.2 batch_5_8_10_14
   + 116 batch_3_9_18 + 118 batch_3_8_9 + 135.2 batch_5_9_15_18
   + 126.4 batch_3_10_15 + 131.2 batch_0_3_4_16
Subject To
 order_0: batch_0_4_8_14_16 + batch_0_3_4_16 = 1
 order_1: batch_1_10_17 + batch_1_14_17 + batch_1_15_17 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3 + batch_3_8_10 + batch_3_5_18 + batch_3_5_9
   + batch_3_9_18 + batch_3_8_9 + batch_3_10_15 + batch_0_3_4_16 = 1
 order_4: batch_0_4_8_14_16 + batch_0_3_4_16 = 1
 order_5: batch_5 + batch_5_9_14_18 + batch_5_8_14_15 + batch_3_5_18
   + batch_3_5_9 + batch_5_8_10_14 + batch_5_9_15_18 = 1
 order_6: batch_6_12_13_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_0_4_8_14_16 + batch_5_8_14_15 + batch_3_8_10
   + batch_8_9_14_18 + batch_5_8_10_14 + batch_3_8_9 = 1
 order_9: batch_9 + batch_5_9_14_18 + batch_3_5_9 + batch_8_9_14_18
   + batch_3_9_18 + batch_3_8_9 + batch_5_9_15_18 = 1
 order_10: batch_10 + batch_1_10_17 + batch_3_8_10 + batch_5_8_10_14
   + batch_3_10_15 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_6_12_13_19 = 1
 order_13: batch_6_12_13_19 = 1
 order_14: batch_14 + batch_0_4_8_14_16 + batch_1_14_17 + batch_5_9_14_18
   + batch_5_8_14_15 + batch_8_9_14_18 + batch_5_8_10_14 = 1
 order_15: batch_15 + batch_5_8_14_15 + batch_1_15_17 + batch_5_9_15_18
   + batch_3_10_15 = 1
 order_16: batch_0_4_8_14_16 + batch_0_3_4_16 = 1
 order_17: batch_1_10_17 + batch_1_14_17 + batch_1_15_17 = 1
 order_18: batch_18 + batch_5_9_14_18 + batch_3_5_18 + batch_8_9_14_18
   + batch_3_9_18 + batch_5_9_15_18 = 1
 order_19: batch_6_12_13_19 = 1
Bounds
End
