\ Model JOBPRP_RMP_743
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x6c4dc287d514bc5e
Minimize
  98 batch_1 + 77.2 batch_9 + 78.4 batch_10 + 89.6 batch_12 + 77.2 batch_18
   + 61.2 batch_19 + 105.6 batch_3_12_16 + 115.2 batch_2_7_11
   + 119.2 batch_0_4_15_17 + 119.2 batch_5_8_10_14 + 135.2 batch_0_4_10_12
   + 120 batch_1_6_13 + 125.2 batch_6_10_13_18 + 131.2 batch_1_3_16
   + 134 batch_0_4_9_10_19 + 124 batch_6_12_13_19 + 109.2 batch_6_13_18_19
   + 137.2 batch_9_15_17_19 + 125.2 batch_5_8_9_14 + 109.2 batch_1_9_19
   + 119.2 batch_6_10_13_19
Subject To
 order_0: batch_0_4_15_17 + batch_0_4_10_12 + batch_0_4_9_10_19 = 1
 order_1: batch_1 + batch_1_6_13 + batch_1_3_16 + batch_1_9_19 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16 + batch_1_3_16 = 1
 order_4: batch_0_4_15_17 + batch_0_4_10_12 + batch_0_4_9_10_19 = 1
 order_5: batch_5_8_10_14 + batch_5_8_9_14 = 1
 order_6: batch_1_6_13 + batch_6_10_13_18 + batch_6_12_13_19
   + batch_6_13_18_19 + batch_6_10_13_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_5_8_10_14 + batch_5_8_9_14 = 1
 order_9: batch_9 + batch_0_4_9_10_19 + batch_9_15_17_19 + batch_5_8_9_14
   + batch_1_9_19 = 1
 order_10: batch_10 + batch_5_8_10_14 + batch_0_4_10_12 + batch_6_10_13_18
   + batch_0_4_9_10_19 + batch_6_10_13_19 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_3_12_16 + batch_0_4_10_12 + batch_6_12_13_19
   = 1
 order_13: batch_1_6_13 + batch_6_10_13_18 + batch_6_12_13_19
   + batch_6_13_18_19 + batch_6_10_13_19 = 1
 order_14: batch_5_8_10_14 + batch_5_8_9_14 = 1
 order_15: batch_0_4_15_17 + batch_9_15_17_19 = 1
 order_16: batch_3_12_16 + batch_1_3_16 = 1
 order_17: batch_0_4_15_17 + batch_9_15_17_19 = 1
 order_18: batch_18 + batch_6_10_13_18 + batch_6_13_18_19 = 1
 order_19: batch_19 + batch_0_4_9_10_19 + batch_6_12_13_19
   + batch_6_13_18_19 + batch_9_15_17_19 + batch_1_9_19 + batch_6_10_13_19
   = 1
Bounds
End
