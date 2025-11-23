\ Model JOBPRP_RMP_1551
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x8658cbf914240835
Minimize
  91.2 batch_5 + 89.2 batch_6 + 77.2 batch_9 + 70.4 batch_13 + 65.2 batch_14
   + 74.8 batch_15 + 77.2 batch_18 + 61.2 batch_19 + 115.2 batch_2_7_11
   + 115.6 batch_3_12_15 + 127.2 batch_1_10_17 + 115.2 batch_0_4_8_14_16
   + 124 batch_3_12_13_19 + 107.2 batch_6_9_18_19 + 115.2 batch_6_9_14_18
   + 127.2 batch_0_4_8_13_16 + 136 batch_9_13_15_18_19
   + 105.2 batch_9_13_14_18_19 + 135.2 batch_5_9_15_18
   + 117.2 batch_5_9_13_18 + 137.2 batch_5_13_14_15_19 + 128 batch_6_9_15
   + 137.2 batch_6_14_15_18 + 135.2 batch_5_9_13_15 + 128 batch_6_9_15_19
   + 111.2 batch_5_9_13_19 + 117.2 batch_5_13_18_19
   + 117.2 batch_5_13_14_18 + 116.4 batch_3_12_13
Subject To
 order_0: batch_0_4_8_14_16 + batch_0_4_8_13_16 = 1
 order_1: batch_1_10_17 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_15 + batch_3_12_13_19 + batch_3_12_13 = 1
 order_4: batch_0_4_8_14_16 + batch_0_4_8_13_16 = 1
 order_5: batch_5 + batch_5_9_15_18 + batch_5_9_13_18 + batch_5_13_14_15_19
   + batch_5_9_13_15 + batch_5_9_13_19 + batch_5_13_18_19
   + batch_5_13_14_18 = 1
 order_6: batch_6 + batch_6_9_18_19 + batch_6_9_14_18 + batch_6_9_15
   + batch_6_14_15_18 + batch_6_9_15_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_0_4_8_14_16 + batch_0_4_8_13_16 = 1
 order_9: batch_9 + batch_6_9_18_19 + batch_6_9_14_18 + batch_9_13_15_18_19
   + batch_9_13_14_18_19 + batch_5_9_15_18 + batch_5_9_13_18 + batch_6_9_15
   + batch_5_9_13_15 + batch_6_9_15_19 + batch_5_9_13_19 = 1
 order_10: batch_1_10_17 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_12_15 + batch_3_12_13_19 + batch_3_12_13 = 1
 order_13: batch_13 + batch_3_12_13_19 + batch_0_4_8_13_16
   + batch_9_13_15_18_19 + batch_9_13_14_18_19 + batch_5_9_13_18
   + batch_5_13_14_15_19 + batch_5_9_13_15 + batch_5_9_13_19
   + batch_5_13_18_19 + batch_5_13_14_18 + batch_3_12_13 = 1
 order_14: batch_14 + batch_0_4_8_14_16 + batch_6_9_14_18
   + batch_9_13_14_18_19 + batch_5_13_14_15_19 + batch_6_14_15_18
   + batch_5_13_14_18 = 1
 order_15: batch_15 + batch_3_12_15 + batch_9_13_15_18_19 + batch_5_9_15_18
   + batch_5_13_14_15_19 + batch_6_9_15 + batch_6_14_15_18
   + batch_5_9_13_15 + batch_6_9_15_19 = 1
 order_16: batch_0_4_8_14_16 + batch_0_4_8_13_16 = 1
 order_17: batch_1_10_17 = 1
 order_18: batch_18 + batch_6_9_18_19 + batch_6_9_14_18
   + batch_9_13_15_18_19 + batch_9_13_14_18_19 + batch_5_9_15_18
   + batch_5_9_13_18 + batch_6_14_15_18 + batch_5_13_18_19
   + batch_5_13_14_18 = 1
 order_19: batch_19 + batch_3_12_13_19 + batch_6_9_18_19
   + batch_9_13_15_18_19 + batch_9_13_14_18_19 + batch_5_13_14_15_19
   + batch_6_9_15_19 + batch_5_9_13_19 + batch_5_13_18_19 = 1
Bounds
End
