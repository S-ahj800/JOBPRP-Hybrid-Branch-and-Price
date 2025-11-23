\ Model JOBPRP_RMP_716
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x6af833475bea50bb
Minimize
  98 batch_1 + 77.2 batch_9 + 89.6 batch_12 + 77.2 batch_18
   + 115.2 batch_2_7_11 + 118 batch_3_12_16_19 + 119.2 batch_0_4_15_17
   + 119.2 batch_5_8_10_14 + 111.2 batch_1_9_18 + 120 batch_1_6_13
   + 122 batch_3_9_16_19 + 103.2 batch_6_13_18 + 135.2 batch_9_15_17
   + 144 batch_0_4_9_12 + 121.2 batch_6_12_13
Subject To
 order_0: batch_0_4_15_17 + batch_0_4_9_12 = 1
 order_1: batch_1 + batch_1_9_18 + batch_1_6_13 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16_19 + batch_3_9_16_19 = 1
 order_4: batch_0_4_15_17 + batch_0_4_9_12 = 1
 order_5: batch_5_8_10_14 = 1
 order_6: batch_1_6_13 + batch_6_13_18 + batch_6_12_13 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_5_8_10_14 = 1
 order_9: batch_9 + batch_1_9_18 + batch_3_9_16_19 + batch_9_15_17
   + batch_0_4_9_12 = 1
 order_10: batch_5_8_10_14 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_3_12_16_19 + batch_0_4_9_12 + batch_6_12_13
   = 1
 order_13: batch_1_6_13 + batch_6_13_18 + batch_6_12_13 = 1
 order_14: batch_5_8_10_14 = 1
 order_15: batch_0_4_15_17 + batch_9_15_17 = 1
 order_16: batch_3_12_16_19 + batch_3_9_16_19 = 1
 order_17: batch_0_4_15_17 + batch_9_15_17 = 1
 order_18: batch_18 + batch_1_9_18 + batch_6_13_18 = 1
 order_19: batch_3_12_16_19 + batch_3_9_16_19 = 1
Bounds
End
