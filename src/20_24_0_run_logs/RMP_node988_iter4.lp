\ Model JOBPRP_RMP_988
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x38387f59c1e61901
Minimize
  98 batch_1 + 72.4 batch_8 + 74.8 batch_15 + 89.2 batch_17 + 77.2 batch_18
   + 61.2 batch_19 + 115.2 batch_2_7_11 + 109.2 batch_6_9_13_18
   + 130.4 batch_3_10_15_16 + 105.2 batch_6_9_13_19 + 132 batch_0_4_8_12
   + 121.2 batch_1_5_14_19 + 127.2 batch_0_4_12_15 + 121.2 batch_1_8_18
   + 113.2 batch_5_14_17_19 + 105.2 batch_1_18_19 + 117.2 batch_1_5_14
   + 107.2 batch_8_17
Subject To
 order_0: batch_0_4_8_12 + batch_0_4_12_15 = 1
 order_1: batch_1 + batch_1_5_14_19 + batch_1_8_18 + batch_1_18_19
   + batch_1_5_14 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_10_15_16 = 1
 order_4: batch_0_4_8_12 + batch_0_4_12_15 = 1
 order_5: batch_1_5_14_19 + batch_5_14_17_19 + batch_1_5_14 = 1
 order_6: batch_6_9_13_18 + batch_6_9_13_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_0_4_8_12 + batch_1_8_18 + batch_8_17 = 1
 order_9: batch_6_9_13_18 + batch_6_9_13_19 = 1
 order_10: batch_3_10_15_16 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_0_4_8_12 + batch_0_4_12_15 = 1
 order_13: batch_6_9_13_18 + batch_6_9_13_19 = 1
 order_14: batch_1_5_14_19 + batch_5_14_17_19 + batch_1_5_14 = 1
 order_15: batch_15 + batch_3_10_15_16 + batch_0_4_12_15 = 1
 order_16: batch_3_10_15_16 = 1
 order_17: batch_17 + batch_5_14_17_19 + batch_8_17 = 1
 order_18: batch_18 + batch_6_9_13_18 + batch_1_8_18 + batch_1_18_19 = 1
 order_19: batch_19 + batch_6_9_13_19 + batch_1_5_14_19 + batch_5_14_17_19
   + batch_1_18_19 = 1
Bounds
End
