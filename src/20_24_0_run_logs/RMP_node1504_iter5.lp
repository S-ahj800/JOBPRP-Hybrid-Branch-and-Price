\ Model JOBPRP_RMP_1504
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x5fb893392fb6c321
Minimize
  89.2 batch_6 + 72.4 batch_8 + 77.2 batch_9 + 70.4 batch_13 + 61.2 batch_19
   + 123.2 batch_1_17_18 + 115.2 batch_2_7_11 + 123.2 batch_0_4_10_15_16
   + 119.2 batch_3_8_12 + 124 batch_3_12_13_19 + 137.2 batch_0_4_9_13_16
   + 116.4 batch_3_12_13 + 117.2 batch_5_9_13_14_19
   + 135.2 batch_9_10_13_15_19 + 131.2 batch_0_4_9_16_19
   + 120 batch_0_4_8_16_19 + 127.2 batch_0_4_5_14_16 + 133.2 batch_0_4_6_16
   + 129.2 batch_5_10_14_15 + 125.2 batch_3_9_12 + 131.2 batch_6_10_15
   + 103.2 batch_6_9
Subject To
 order_0: batch_0_4_10_15_16 + batch_0_4_9_13_16 + batch_0_4_9_16_19
   + batch_0_4_8_16_19 + batch_0_4_5_14_16 + batch_0_4_6_16 = 1
 order_1: batch_1_17_18 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_8_12 + batch_3_12_13_19 + batch_3_12_13 + batch_3_9_12
   = 1
 order_4: batch_0_4_10_15_16 + batch_0_4_9_13_16 + batch_0_4_9_16_19
   + batch_0_4_8_16_19 + batch_0_4_5_14_16 + batch_0_4_6_16 = 1
 order_5: batch_5_9_13_14_19 + batch_0_4_5_14_16 + batch_5_10_14_15 = 1
 order_6: batch_6 + batch_0_4_6_16 + batch_6_10_15 + batch_6_9 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_3_8_12 + batch_0_4_8_16_19 = 1
 order_9: batch_9 + batch_0_4_9_13_16 + batch_5_9_13_14_19
   + batch_9_10_13_15_19 + batch_0_4_9_16_19 + batch_3_9_12 + batch_6_9
   = 1
 order_10: batch_0_4_10_15_16 + batch_9_10_13_15_19 + batch_5_10_14_15
   + batch_6_10_15 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_8_12 + batch_3_12_13_19 + batch_3_12_13 + batch_3_9_12
   = 1
 order_13: batch_13 + batch_3_12_13_19 + batch_0_4_9_13_16 + batch_3_12_13
   + batch_5_9_13_14_19 + batch_9_10_13_15_19 = 1
 order_14: batch_5_9_13_14_19 + batch_0_4_5_14_16 + batch_5_10_14_15 = 1
 order_15: batch_0_4_10_15_16 + batch_9_10_13_15_19 + batch_5_10_14_15
   + batch_6_10_15 = 1
 order_16: batch_0_4_10_15_16 + batch_0_4_9_13_16 + batch_0_4_9_16_19
   + batch_0_4_8_16_19 + batch_0_4_5_14_16 + batch_0_4_6_16 = 1
 order_17: batch_1_17_18 = 1
 order_18: batch_1_17_18 = 1
 order_19: batch_19 + batch_3_12_13_19 + batch_5_9_13_14_19
   + batch_9_10_13_15_19 + batch_0_4_9_16_19 + batch_0_4_8_16_19 = 1
Bounds
End
