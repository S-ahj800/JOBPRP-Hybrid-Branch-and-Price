\ Model JOBPRP_RMP_1847
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x1c157ddeb2b85cb1
Minimize
  91.2 batch_5 + 72.4 batch_8 + 77.2 batch_9 + 89.6 batch_12 + 65.2 batch_14
   + 74.8 batch_15 + 77.2 batch_18 + 119.2 batch_0_4_10_14_15
   + 105.6 batch_3_12_16 + 115.2 batch_2_7_11 + 109.2 batch_8_9_14_18
   + 105.2 batch_6_9_13_19 + 109.2 batch_6_8_13_19 + 132 batch_8_12_14_15
   + 133.2 batch_1_15_17 + 133.2 batch_3_15_16_18 + 127.2 batch_1_9_17
   + 117.2 batch_3_5_16 + 117.2 batch_5_6_13_19 + 119.2 batch_0_4_8_10
   + 135.2 batch_5_9_15_18 + 133.2 batch_5_8_12 + 119.2 batch_5_8_9
   + 117.2 batch_1_14_17
Subject To
 order_0: batch_0_4_10_14_15 + batch_0_4_8_10 = 1
 order_1: batch_1_15_17 + batch_1_9_17 + batch_1_14_17 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16 + batch_3_15_16_18 + batch_3_5_16 = 1
 order_4: batch_0_4_10_14_15 + batch_0_4_8_10 = 1
 order_5: batch_5 + batch_3_5_16 + batch_5_6_13_19 + batch_5_9_15_18
   + batch_5_8_12 + batch_5_8_9 = 1
 order_6: batch_6_9_13_19 + batch_6_8_13_19 + batch_5_6_13_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_8_9_14_18 + batch_6_8_13_19 + batch_8_12_14_15
   + batch_0_4_8_10 + batch_5_8_12 + batch_5_8_9 = 1
 order_9: batch_9 + batch_8_9_14_18 + batch_6_9_13_19 + batch_1_9_17
   + batch_5_9_15_18 + batch_5_8_9 = 1
 order_10: batch_0_4_10_14_15 + batch_0_4_8_10 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_3_12_16 + batch_8_12_14_15 + batch_5_8_12 = 1
 order_13: batch_6_9_13_19 + batch_6_8_13_19 + batch_5_6_13_19 = 1
 order_14: batch_14 + batch_0_4_10_14_15 + batch_8_9_14_18
   + batch_8_12_14_15 + batch_1_14_17 = 1
 order_15: batch_15 + batch_0_4_10_14_15 + batch_8_12_14_15 + batch_1_15_17
   + batch_3_15_16_18 + batch_5_9_15_18 = 1
 order_16: batch_3_12_16 + batch_3_15_16_18 + batch_3_5_16 = 1
 order_17: batch_1_15_17 + batch_1_9_17 + batch_1_14_17 = 1
 order_18: batch_18 + batch_8_9_14_18 + batch_3_15_16_18 + batch_5_9_15_18
   = 1
 order_19: batch_6_9_13_19 + batch_6_8_13_19 + batch_5_6_13_19 = 1
Bounds
End
