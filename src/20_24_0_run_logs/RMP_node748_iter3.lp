\ Model JOBPRP_RMP_748
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x7128337dd08208d6
Minimize
  98 batch_1 + 77.2 batch_9 + 89.6 batch_12 + 77.2 batch_18 + 61.2 batch_19
   + 105.6 batch_3_12_16 + 115.2 batch_2_7_11 + 119.2 batch_0_4_15_17
   + 119.2 batch_5_8_10_14 + 120 batch_1_6_13 + 131.2 batch_1_3_16
   + 124 batch_6_12_13_19 + 109.2 batch_6_13_18_19 + 137.2 batch_9_15_17_19
   + 109.2 batch_1_9_19 + 129.2 batch_15_17_18 + 136 batch_1_9_12
   + 132 batch_0_4_9_18_19 + 122 batch_3_9_16 + 103.2 batch_6_13_18
Subject To
 order_0: batch_0_4_15_17 + batch_0_4_9_18_19 = 1
 order_1: batch_1 + batch_1_6_13 + batch_1_3_16 + batch_1_9_19
   + batch_1_9_12 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16 + batch_1_3_16 + batch_3_9_16 = 1
 order_4: batch_0_4_15_17 + batch_0_4_9_18_19 = 1
 order_5: batch_5_8_10_14 = 1
 order_6: batch_1_6_13 + batch_6_12_13_19 + batch_6_13_18_19
   + batch_6_13_18 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_5_8_10_14 = 1
 order_9: batch_9 + batch_9_15_17_19 + batch_1_9_19 + batch_1_9_12
   + batch_0_4_9_18_19 + batch_3_9_16 = 1
 order_10: batch_5_8_10_14 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_3_12_16 + batch_6_12_13_19 + batch_1_9_12 = 1
 order_13: batch_1_6_13 + batch_6_12_13_19 + batch_6_13_18_19
   + batch_6_13_18 = 1
 order_14: batch_5_8_10_14 = 1
 order_15: batch_0_4_15_17 + batch_9_15_17_19 + batch_15_17_18 = 1
 order_16: batch_3_12_16 + batch_1_3_16 + batch_3_9_16 = 1
 order_17: batch_0_4_15_17 + batch_9_15_17_19 + batch_15_17_18 = 1
 order_18: batch_18 + batch_6_13_18_19 + batch_15_17_18 + batch_0_4_9_18_19
   + batch_6_13_18 = 1
 order_19: batch_19 + batch_6_12_13_19 + batch_6_13_18_19
   + batch_9_15_17_19 + batch_1_9_19 + batch_0_4_9_18_19 = 1
Bounds
End
