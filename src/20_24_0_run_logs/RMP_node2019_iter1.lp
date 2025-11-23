\ Model JOBPRP_RMP_2019
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x6a7ed54a442e2762
Minimize
  91.2 batch_5 + 72.4 batch_8 + 77.2 batch_9 + 89.6 batch_12 + 74.8 batch_15
   + 61.2 batch_19 + 119.2 batch_0_4_10_14_15 + 105.6 batch_3_12_16
   + 115.2 batch_2_7_11 + 124 batch_8_9_12_19 + 119.2 batch_5_8_9_19
   + 121.2 batch_6_13_17_19 + 111.2 batch_1_9_18 + 119.2 batch_8_12_15
   + 113.2 batch_6_13_17 + 112.4 batch_3_8_16 + 111.2 batch_0_4_10_14
Subject To
 order_0: batch_0_4_10_14_15 + batch_0_4_10_14 = 1
 order_1: batch_1_9_18 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16 + batch_3_8_16 = 1
 order_4: batch_0_4_10_14_15 + batch_0_4_10_14 = 1
 order_5: batch_5 + batch_5_8_9_19 = 1
 order_6: batch_6_13_17_19 + batch_6_13_17 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_8_9_12_19 + batch_5_8_9_19 + batch_8_12_15
   + batch_3_8_16 = 1
 order_9: batch_9 + batch_8_9_12_19 + batch_5_8_9_19 + batch_1_9_18 = 1
 order_10: batch_0_4_10_14_15 + batch_0_4_10_14 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_3_12_16 + batch_8_9_12_19 + batch_8_12_15 = 1
 order_13: batch_6_13_17_19 + batch_6_13_17 = 1
 order_14: batch_0_4_10_14_15 + batch_0_4_10_14 = 1
 order_15: batch_15 + batch_0_4_10_14_15 + batch_8_12_15 = 1
 order_16: batch_3_12_16 + batch_3_8_16 = 1
 order_17: batch_6_13_17_19 + batch_6_13_17 = 1
 order_18: batch_1_9_18 = 1
 order_19: batch_19 + batch_8_9_12_19 + batch_5_8_9_19 + batch_6_13_17_19
   = 1
Bounds
End
