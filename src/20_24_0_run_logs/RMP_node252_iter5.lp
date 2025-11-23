\ Model JOBPRP_RMP_252
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x2cad5501777ed4a
Minimize
  91.2 batch_5 + 77.2 batch_9 + 78.4 batch_10 + 65.2 batch_14
   + 74.8 batch_15 + 61.2 batch_19 + 123.2 batch_1_17_18
   + 115.2 batch_2_7_11 + 115.2 batch_3_10_13_14 + 126 batch_6_8_12
   + 114 batch_3_9_13_19 + 127.2 batch_0_4_5_14_16 + 139.2 batch_9_10_14_15
   + 124 batch_3_9_13_14 + 128.4 batch_3_10_13_15 + 129.2 batch_0_4_9_16
   + 129.2 batch_0_4_9_14_16 + 131.2 batch_0_4_9_16_19
   + 133.2 batch_5_10_15_19 + 141.2 batch_3_9_13_15 + 107.2 batch_9_10
   + 114 batch_14_15_19
Subject To
 order_0: batch_0_4_5_14_16 + batch_0_4_9_16 + batch_0_4_9_14_16
   + batch_0_4_9_16_19 = 1
 order_1: batch_1_17_18 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_10_13_14 + batch_3_9_13_19 + batch_3_9_13_14
   + batch_3_10_13_15 + batch_3_9_13_15 = 1
 order_4: batch_0_4_5_14_16 + batch_0_4_9_16 + batch_0_4_9_14_16
   + batch_0_4_9_16_19 = 1
 order_5: batch_5 + batch_0_4_5_14_16 + batch_5_10_15_19 = 1
 order_6: batch_6_8_12 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_6_8_12 = 1
 order_9: batch_9 + batch_3_9_13_19 + batch_9_10_14_15 + batch_3_9_13_14
   + batch_0_4_9_16 + batch_0_4_9_14_16 + batch_0_4_9_16_19
   + batch_3_9_13_15 + batch_9_10 = 1
 order_10: batch_10 + batch_3_10_13_14 + batch_9_10_14_15
   + batch_3_10_13_15 + batch_5_10_15_19 + batch_9_10 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_6_8_12 = 1
 order_13: batch_3_10_13_14 + batch_3_9_13_19 + batch_3_9_13_14
   + batch_3_10_13_15 + batch_3_9_13_15 = 1
 order_14: batch_14 + batch_3_10_13_14 + batch_0_4_5_14_16
   + batch_9_10_14_15 + batch_3_9_13_14 + batch_0_4_9_14_16
   + batch_14_15_19 = 1
 order_15: batch_15 + batch_9_10_14_15 + batch_3_10_13_15
   + batch_5_10_15_19 + batch_3_9_13_15 + batch_14_15_19 = 1
 order_16: batch_0_4_5_14_16 + batch_0_4_9_16 + batch_0_4_9_14_16
   + batch_0_4_9_16_19 = 1
 order_17: batch_1_17_18 = 1
 order_18: batch_1_17_18 = 1
 order_19: batch_19 + batch_3_9_13_19 + batch_0_4_9_16_19
   + batch_5_10_15_19 + batch_14_15_19 = 1
Bounds
End
