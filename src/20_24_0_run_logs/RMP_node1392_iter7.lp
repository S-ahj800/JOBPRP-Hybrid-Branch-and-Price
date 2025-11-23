\ Model JOBPRP_RMP_1392
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x807cd351ff684db5
Minimize
  91.2 batch_5 + 77.2 batch_9 + 78.4 batch_10 + 65.2 batch_14
   + 74.8 batch_15 + 77.2 batch_18 + 61.2 batch_19 + 115.2 batch_2_7_11
   + 115.2 batch_0_4_8_14_16 + 141.2 batch_9_10_14_15_19
   + 131.2 batch_3_12_14_19 + 109.2 batch_6_13_18_19 + 121.2 batch_1_17_19
   + 133.2 batch_1_15_17 + 127.2 batch_1_9_17 + 125.2 batch_9_10_14_18
   + 109.2 batch_6_13_14_18 + 118.4 batch_3_10_12 + 113.2 batch_5_9_18_19
   + 133.2 batch_6_10_13_15 + 125.2 batch_6_10_13_18
   + 135.2 batch_5_9_15_18 + 134 batch_6_13_14_15_19 + 125.2 batch_3_9_12
   + 101.2 batch_6_13_19 + 101.6 batch_3_12 + 103.2 batch_6_13_18
   + 129.2 batch_5_10_14_15 + 95.2 batch_6_13
Subject To
 order_0: batch_0_4_8_14_16 = 1
 order_1: batch_1_17_19 + batch_1_15_17 + batch_1_9_17 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_14_19 + batch_3_10_12 + batch_3_9_12 + batch_3_12 = 1
 order_4: batch_0_4_8_14_16 = 1
 order_5: batch_5 + batch_5_9_18_19 + batch_5_9_15_18 + batch_5_10_14_15
   = 1
 order_6: batch_6_13_18_19 + batch_6_13_14_18 + batch_6_10_13_15
   + batch_6_10_13_18 + batch_6_13_14_15_19 + batch_6_13_19 + batch_6_13_18
   + batch_6_13 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_0_4_8_14_16 = 1
 order_9: batch_9 + batch_9_10_14_15_19 + batch_1_9_17 + batch_9_10_14_18
   + batch_5_9_18_19 + batch_5_9_15_18 + batch_3_9_12 = 1
 order_10: batch_10 + batch_9_10_14_15_19 + batch_9_10_14_18
   + batch_3_10_12 + batch_6_10_13_15 + batch_6_10_13_18 + batch_5_10_14_15
   = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_12_14_19 + batch_3_10_12 + batch_3_9_12 + batch_3_12
   = 1
 order_13: batch_6_13_18_19 + batch_6_13_14_18 + batch_6_10_13_15
   + batch_6_10_13_18 + batch_6_13_14_15_19 + batch_6_13_19 + batch_6_13_18
   + batch_6_13 = 1
 order_14: batch_14 + batch_0_4_8_14_16 + batch_9_10_14_15_19
   + batch_3_12_14_19 + batch_9_10_14_18 + batch_6_13_14_18
   + batch_6_13_14_15_19 + batch_5_10_14_15 = 1
 order_15: batch_15 + batch_9_10_14_15_19 + batch_1_15_17
   + batch_6_10_13_15 + batch_5_9_15_18 + batch_6_13_14_15_19
   + batch_5_10_14_15 = 1
 order_16: batch_0_4_8_14_16 = 1
 order_17: batch_1_17_19 + batch_1_15_17 + batch_1_9_17 = 1
 order_18: batch_18 + batch_6_13_18_19 + batch_9_10_14_18
   + batch_6_13_14_18 + batch_5_9_18_19 + batch_6_10_13_18
   + batch_5_9_15_18 + batch_6_13_18 = 1
 order_19: batch_19 + batch_9_10_14_15_19 + batch_3_12_14_19
   + batch_6_13_18_19 + batch_1_17_19 + batch_5_9_18_19
   + batch_6_13_14_15_19 + batch_6_13_19 = 1
Bounds
End
