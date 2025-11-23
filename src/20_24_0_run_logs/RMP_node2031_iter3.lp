\ Model JOBPRP_RMP_2031
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xa8f7350126f325e
Minimize
  72.4 batch_8 + 77.2 batch_9 + 89.6 batch_12 + 65.2 batch_14
   + 74.8 batch_15 + 61.2 batch_19 + 105.6 batch_3_12_16
   + 115.2 batch_2_7_11 + 117.2 batch_1_5_18 + 132 batch_8_12_14_15
   + 124 batch_8_9_12_19 + 121.2 batch_6_13_17_19 + 119.2 batch_8_12_15
   + 119.2 batch_0_4_8_10 + 115.2 batch_0_4_10_15 + 112.4 batch_3_8_16
   + 134 batch_0_4_9_10_19 + 137.2 batch_3_9_15_16 + 99.2 batch_8_9_14_19
   + 130 batch_9_12_14 + 136 batch_3_9_14_16
Subject To
 order_0: batch_0_4_8_10 + batch_0_4_10_15 + batch_0_4_9_10_19 = 1
 order_1: batch_1_5_18 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16 + batch_3_8_16 + batch_3_9_15_16 + batch_3_9_14_16
   = 1
 order_4: batch_0_4_8_10 + batch_0_4_10_15 + batch_0_4_9_10_19 = 1
 order_5: batch_1_5_18 = 1
 order_6: batch_6_13_17_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_8_12_14_15 + batch_8_9_12_19 + batch_8_12_15
   + batch_0_4_8_10 + batch_3_8_16 + batch_8_9_14_19 = 1
 order_9: batch_9 + batch_8_9_12_19 + batch_0_4_9_10_19 + batch_3_9_15_16
   + batch_8_9_14_19 + batch_9_12_14 + batch_3_9_14_16 = 1
 order_10: batch_0_4_8_10 + batch_0_4_10_15 + batch_0_4_9_10_19 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_3_12_16 + batch_8_12_14_15 + batch_8_9_12_19
   + batch_8_12_15 + batch_9_12_14 = 1
 order_13: batch_6_13_17_19 = 1
 order_14: batch_14 + batch_8_12_14_15 + batch_8_9_14_19 + batch_9_12_14
   + batch_3_9_14_16 = 1
 order_15: batch_15 + batch_8_12_14_15 + batch_8_12_15 + batch_0_4_10_15
   + batch_3_9_15_16 = 1
 order_16: batch_3_12_16 + batch_3_8_16 + batch_3_9_15_16 + batch_3_9_14_16
   = 1
 order_17: batch_6_13_17_19 = 1
 order_18: batch_1_5_18 = 1
 order_19: batch_19 + batch_8_9_12_19 + batch_6_13_17_19
   + batch_0_4_9_10_19 + batch_8_9_14_19 = 1
Bounds
End
