\ Model JOBPRP_RMP_1231
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x7dd3cd16755de6b1
Minimize
  91.2 batch_5 + 78.4 batch_10 + 89.6 batch_12 + 65.2 batch_14
   + 74.8 batch_15 + 77.2 batch_18 + 61.2 batch_19 + 115.2 batch_2_7_11
   + 123.2 batch_0_4_8_17 + 127.2 batch_6_12_13_14 + 113.2 batch_1_9_14_19
   + 119.2 batch_6_10_13_14 + 135.2 batch_5_6_13_15
   + 139.2 batch_10_12_14_15 + 139.2 batch_5_10_15_18 + 111.2 batch_1_9_18
   + 127.2 batch_3_14_16_18 + 121.2 batch_3_5_16_19 + 124 batch_6_12_13_19
   + 123.2 batch_1_9_10 + 136 batch_1_9_12 + 117.2 batch_5_6_13_19
   + 133.2 batch_10_12_14_18 + 113.6 batch_3_15_16
Subject To
 order_0: batch_0_4_8_17 = 1
 order_1: batch_1_9_14_19 + batch_1_9_18 + batch_1_9_10 + batch_1_9_12 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_14_16_18 + batch_3_5_16_19 + batch_3_15_16 = 1
 order_4: batch_0_4_8_17 = 1
 order_5: batch_5 + batch_5_6_13_15 + batch_5_10_15_18 + batch_3_5_16_19
   + batch_5_6_13_19 = 1
 order_6: batch_6_12_13_14 + batch_6_10_13_14 + batch_5_6_13_15
   + batch_6_12_13_19 + batch_5_6_13_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_0_4_8_17 = 1
 order_9: batch_1_9_14_19 + batch_1_9_18 + batch_1_9_10 + batch_1_9_12 = 1
 order_10: batch_10 + batch_6_10_13_14 + batch_10_12_14_15
   + batch_5_10_15_18 + batch_1_9_10 + batch_10_12_14_18 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_6_12_13_14 + batch_10_12_14_15
   + batch_6_12_13_19 + batch_1_9_12 + batch_10_12_14_18 = 1
 order_13: batch_6_12_13_14 + batch_6_10_13_14 + batch_5_6_13_15
   + batch_6_12_13_19 + batch_5_6_13_19 = 1
 order_14: batch_14 + batch_6_12_13_14 + batch_1_9_14_19 + batch_6_10_13_14
   + batch_10_12_14_15 + batch_3_14_16_18 + batch_10_12_14_18 = 1
 order_15: batch_15 + batch_5_6_13_15 + batch_10_12_14_15
   + batch_5_10_15_18 + batch_3_15_16 = 1
 order_16: batch_3_14_16_18 + batch_3_5_16_19 + batch_3_15_16 = 1
 order_17: batch_0_4_8_17 = 1
 order_18: batch_18 + batch_5_10_15_18 + batch_1_9_18 + batch_3_14_16_18
   + batch_10_12_14_18 = 1
 order_19: batch_19 + batch_1_9_14_19 + batch_3_5_16_19 + batch_6_12_13_19
   + batch_5_6_13_19 = 1
Bounds
End
