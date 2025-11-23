\ Model JOBPRP_RMP_1760
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x3247be77de34f5e2
Minimize
  77.2 batch_9 + 70.4 batch_13 + 74.8 batch_15 + 77.2 batch_18
   + 61.2 batch_19 + 137.2 batch_0_4_13_14_16_19 + 115.2 batch_2_7_11
   + 117.2 batch_0_4_14_15_16 + 119.2 batch_3_8_12 + 125.2 batch_5_6_10_19
   + 125.2 batch_1_13_17 + 127.2 batch_1_9_17 + 101.2 batch_9_13_18
   + 133.2 batch_0_4_14_16_18 + 134 batch_13_15_18_19 + 133.2 batch_1_15_17
   + 121.2 batch_1_17_19
Subject To
 order_0: batch_0_4_13_14_16_19 + batch_0_4_14_15_16 + batch_0_4_14_16_18
   = 1
 order_1: batch_1_13_17 + batch_1_9_17 + batch_1_15_17 + batch_1_17_19 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_8_12 = 1
 order_4: batch_0_4_13_14_16_19 + batch_0_4_14_15_16 + batch_0_4_14_16_18
   = 1
 order_5: batch_5_6_10_19 = 1
 order_6: batch_5_6_10_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_3_8_12 = 1
 order_9: batch_9 + batch_1_9_17 + batch_9_13_18 = 1
 order_10: batch_5_6_10_19 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_8_12 = 1
 order_13: batch_13 + batch_0_4_13_14_16_19 + batch_1_13_17 + batch_9_13_18
   + batch_13_15_18_19 = 1
 order_14: batch_0_4_13_14_16_19 + batch_0_4_14_15_16 + batch_0_4_14_16_18
   = 1
 order_15: batch_15 + batch_0_4_14_15_16 + batch_13_15_18_19
   + batch_1_15_17 = 1
 order_16: batch_0_4_13_14_16_19 + batch_0_4_14_15_16 + batch_0_4_14_16_18
   = 1
 order_17: batch_1_13_17 + batch_1_9_17 + batch_1_15_17 + batch_1_17_19
   = 1
 order_18: batch_18 + batch_9_13_18 + batch_0_4_14_16_18
   + batch_13_15_18_19 = 1
 order_19: batch_19 + batch_0_4_13_14_16_19 + batch_5_6_10_19
   + batch_13_15_18_19 + batch_1_17_19 = 1
Bounds
End
