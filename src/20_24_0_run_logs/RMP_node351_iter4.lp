\ Model JOBPRP_RMP_351
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x53727bb31f8dbc29
Minimize
  91.2 batch_5 + 77.2 batch_9 + 70.4 batch_13 + 65.2 batch_14
   + 74.8 batch_15 + 61.2 batch_19 + 137.2 batch_0_4_13_14_16_19
   + 115.2 batch_6_8_18_19 + 115.2 batch_2_7_11 + 127.2 batch_1_10_17
   + 135.2 batch_0_4_5_13_16 + 135.2 batch_5_9_13_15
   + 117.2 batch_5_9_13_14_19 + 117.2 batch_5_9_13_14 + 125.2 batch_3_9_12
   + 129.2 batch_0_4_9_14_16 + 137.2 batch_0_4_9_13_16
   + 116.4 batch_3_12_13 + 127.2 batch_0_4_5_14_16 + 101.6 batch_3_12
   + 139.2 batch_5_9_14_15 + 134 batch_9_13_14_15_19 + 124 batch_3_12_13_19
Subject To
 order_0: batch_0_4_13_14_16_19 + batch_0_4_5_13_16 + batch_0_4_9_14_16
   + batch_0_4_9_13_16 + batch_0_4_5_14_16 = 1
 order_1: batch_1_10_17 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_9_12 + batch_3_12_13 + batch_3_12 + batch_3_12_13_19 = 1
 order_4: batch_0_4_13_14_16_19 + batch_0_4_5_13_16 + batch_0_4_9_14_16
   + batch_0_4_9_13_16 + batch_0_4_5_14_16 = 1
 order_5: batch_5 + batch_0_4_5_13_16 + batch_5_9_13_15
   + batch_5_9_13_14_19 + batch_5_9_13_14 + batch_0_4_5_14_16
   + batch_5_9_14_15 = 1
 order_6: batch_6_8_18_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_6_8_18_19 = 1
 order_9: batch_9 + batch_5_9_13_15 + batch_5_9_13_14_19 + batch_5_9_13_14
   + batch_3_9_12 + batch_0_4_9_14_16 + batch_0_4_9_13_16 + batch_5_9_14_15
   + batch_9_13_14_15_19 = 1
 order_10: batch_1_10_17 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_9_12 + batch_3_12_13 + batch_3_12 + batch_3_12_13_19
   = 1
 order_13: batch_13 + batch_0_4_13_14_16_19 + batch_0_4_5_13_16
   + batch_5_9_13_15 + batch_5_9_13_14_19 + batch_5_9_13_14
   + batch_0_4_9_13_16 + batch_3_12_13 + batch_9_13_14_15_19
   + batch_3_12_13_19 = 1
 order_14: batch_14 + batch_0_4_13_14_16_19 + batch_5_9_13_14_19
   + batch_5_9_13_14 + batch_0_4_9_14_16 + batch_0_4_5_14_16
   + batch_5_9_14_15 + batch_9_13_14_15_19 = 1
 order_15: batch_15 + batch_5_9_13_15 + batch_5_9_14_15
   + batch_9_13_14_15_19 = 1
 order_16: batch_0_4_13_14_16_19 + batch_0_4_5_13_16 + batch_0_4_9_14_16
   + batch_0_4_9_13_16 + batch_0_4_5_14_16 = 1
 order_17: batch_1_10_17 = 1
 order_18: batch_6_8_18_19 = 1
 order_19: batch_19 + batch_0_4_13_14_16_19 + batch_6_8_18_19
   + batch_5_9_13_14_19 + batch_9_13_14_15_19 + batch_3_12_13_19 = 1
Bounds
End
