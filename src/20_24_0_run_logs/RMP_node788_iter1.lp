\ Model JOBPRP_RMP_788
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xa36e896e52ca1737
Minimize
  98 batch_1 + 72.4 batch_8 + 77.2 batch_9 + 89.6 batch_12 + 77.2 batch_18
   + 61.2 batch_19 + 105.6 batch_3_12_16 + 115.2 batch_2_7_11
   + 123.2 batch_5_14_15_17 + 119.2 batch_0_4_15_17
   + 121.2 batch_0_4_5_14_19 + 121.2 batch_1_5_14_19
   + 125.2 batch_6_10_13_18 + 131.2 batch_1_3_16 + 125.2 batch_3_5_14_16
   + 107.2 batch_8_9_18_19 + 124 batch_8_9_12_19 + 112.4 batch_3_8_16
   + 117.2 batch_1_5_14
Subject To
 order_0: batch_0_4_15_17 + batch_0_4_5_14_19 = 1
 order_1: batch_1 + batch_1_5_14_19 + batch_1_3_16 + batch_1_5_14 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16 + batch_1_3_16 + batch_3_5_14_16 + batch_3_8_16
   = 1
 order_4: batch_0_4_15_17 + batch_0_4_5_14_19 = 1
 order_5: batch_5_14_15_17 + batch_0_4_5_14_19 + batch_1_5_14_19
   + batch_3_5_14_16 + batch_1_5_14 = 1
 order_6: batch_6_10_13_18 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_8_9_18_19 + batch_8_9_12_19 + batch_3_8_16 = 1
 order_9: batch_9 + batch_8_9_18_19 + batch_8_9_12_19 = 1
 order_10: batch_6_10_13_18 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_3_12_16 + batch_8_9_12_19 = 1
 order_13: batch_6_10_13_18 = 1
 order_14: batch_5_14_15_17 + batch_0_4_5_14_19 + batch_1_5_14_19
   + batch_3_5_14_16 + batch_1_5_14 = 1
 order_15: batch_5_14_15_17 + batch_0_4_15_17 = 1
 order_16: batch_3_12_16 + batch_1_3_16 + batch_3_5_14_16 + batch_3_8_16
   = 1
 order_17: batch_5_14_15_17 + batch_0_4_15_17 = 1
 order_18: batch_18 + batch_6_10_13_18 + batch_8_9_18_19 = 1
 order_19: batch_19 + batch_0_4_5_14_19 + batch_1_5_14_19 + batch_8_9_18_19
   + batch_8_9_12_19 = 1
Bounds
End
