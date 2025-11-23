\ Model JOBPRP_RMP_2223
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x89a0869f6dcac450
Minimize
  98 batch_1 + 78.4 batch_10 + 65.2 batch_14 + 74.8 batch_15 + 89.2 batch_17
   + 77.2 batch_18 + 61.2 batch_19 + 123.2 batch_1_17_18
   + 105.6 batch_3_12_16 + 115.2 batch_2_7_11 + 123.2 batch_0_4_5_17
   + 127.2 batch_1_10_17 + 121.2 batch_1_8_9 + 107.2 batch_8_9_18_19
   + 111.2 batch_1_14_18_19 + 131.2 batch_10_14_15_18
   + 119.1999935298778 batch_6_10_13_14 + 117.2 batch_8_9_10_19
   + 127.2 batch_0_4_5_15 + 133.2 batch_6_10_13_15 + 137.2 batch_8_9_10_15
   + 125.2 batch_6_10_13_18 + 120 batch_1_6_13 + 133.2 batch_1_15_17
   + 133.2 batch_6_13_15_18
Subject To
 order_0: batch_0_4_5_17 + batch_0_4_5_15 = 1
 order_1: batch_1 + batch_1_17_18 + batch_1_10_17 + batch_1_8_9
   + batch_1_14_18_19 + batch_1_6_13 + batch_1_15_17 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16 = 1
 order_4: batch_0_4_5_17 + batch_0_4_5_15 = 1
 order_5: batch_0_4_5_17 + batch_0_4_5_15 = 1
 order_6: batch_6_10_13_14 + batch_6_10_13_15 + batch_6_10_13_18
   + batch_1_6_13 + batch_6_13_15_18 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_1_8_9 + batch_8_9_18_19 + batch_8_9_10_19 + batch_8_9_10_15
   = 1
 order_9: batch_1_8_9 + batch_8_9_18_19 + batch_8_9_10_19 + batch_8_9_10_15
   = 1
 order_10: batch_10 + batch_1_10_17 + batch_10_14_15_18 + batch_6_10_13_14
   + batch_8_9_10_19 + batch_6_10_13_15 + batch_8_9_10_15
   + batch_6_10_13_18 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_12_16 = 1
 order_13: batch_6_10_13_14 + batch_6_10_13_15 + batch_6_10_13_18
   + batch_1_6_13 + batch_6_13_15_18 = 1
 order_14: batch_14 + batch_1_14_18_19 + batch_10_14_15_18
   + batch_6_10_13_14 = 1
 order_15: batch_15 + batch_10_14_15_18 + batch_0_4_5_15 + batch_6_10_13_15
   + batch_8_9_10_15 + batch_1_15_17 + batch_6_13_15_18 = 1
 order_16: batch_3_12_16 = 1
 order_17: batch_17 + batch_1_17_18 + batch_0_4_5_17 + batch_1_10_17
   + batch_1_15_17 = 1
 order_18: batch_18 + batch_1_17_18 + batch_8_9_18_19 + batch_1_14_18_19
   + batch_10_14_15_18 + batch_6_10_13_18 + batch_6_13_15_18 = 1
 order_19: batch_19 + batch_8_9_18_19 + batch_1_14_18_19 + batch_8_9_10_19
   = 1
Bounds
End
