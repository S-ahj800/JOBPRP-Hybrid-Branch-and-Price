\ Model JOBPRP_RMP_1608
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x1e51dffbbc8e51c
Minimize
  91.2 batch_5 + 72.4 batch_8 + 77.2 batch_9 + 89.6 batch_12 + 89.2 batch_17
   + 77.2 batch_18 + 105.6 batch_3_12_16 + 115.2 batch_2_7_11
   + 127.2 batch_1_10_17 + 126 batch_8_12_15_19 + 131.2 batch_0_4_5_15_19
   + 113.2 batch_5_9_18 + 109.2 batch_6_13_14_18 + 107.2 batch_8_9_18
   + 122 batch_3_9_16 + 139.2 batch_9_12_17 + 115.2 batch_6_8_13_14
   + 122 batch_8_9_15_19 + 112.4 batch_3_8_16 + 117.2 batch_3_5_16
   + 128 batch_9_12_15_19 + 129.2 batch_0_4_5_9 + 123.2 batch_1_9_10
Subject To
 order_0: batch_0_4_5_15_19 + batch_0_4_5_9 = 1
 order_1: batch_1_10_17 + batch_1_9_10 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16 + batch_3_9_16 + batch_3_8_16 + batch_3_5_16 = 1
 order_4: batch_0_4_5_15_19 + batch_0_4_5_9 = 1
 order_5: batch_5 + batch_0_4_5_15_19 + batch_5_9_18 + batch_3_5_16
   + batch_0_4_5_9 = 1
 order_6: batch_6_13_14_18 + batch_6_8_13_14 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_8_12_15_19 + batch_8_9_18 + batch_6_8_13_14
   + batch_8_9_15_19 + batch_3_8_16 = 1
 order_9: batch_9 + batch_5_9_18 + batch_8_9_18 + batch_3_9_16
   + batch_9_12_17 + batch_8_9_15_19 + batch_9_12_15_19 + batch_0_4_5_9
   + batch_1_9_10 = 1
 order_10: batch_1_10_17 + batch_1_9_10 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_3_12_16 + batch_8_12_15_19 + batch_9_12_17
   + batch_9_12_15_19 = 1
 order_13: batch_6_13_14_18 + batch_6_8_13_14 = 1
 order_14: batch_6_13_14_18 + batch_6_8_13_14 = 1
 order_15: batch_8_12_15_19 + batch_0_4_5_15_19 + batch_8_9_15_19
   + batch_9_12_15_19 = 1
 order_16: batch_3_12_16 + batch_3_9_16 + batch_3_8_16 + batch_3_5_16 = 1
 order_17: batch_17 + batch_1_10_17 + batch_9_12_17 = 1
 order_18: batch_18 + batch_5_9_18 + batch_6_13_14_18 + batch_8_9_18 = 1
 order_19: batch_8_12_15_19 + batch_0_4_5_15_19 + batch_8_9_15_19
   + batch_9_12_15_19 = 1
Bounds
End
