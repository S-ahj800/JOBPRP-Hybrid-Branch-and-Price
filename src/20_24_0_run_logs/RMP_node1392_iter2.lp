\ Model JOBPRP_RMP_1392
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x37732e9697b7af98
Minimize
  98 batch_1 + 72.4 batch_8 + 78.4 batch_10 + 65.2 batch_14 + 89.2 batch_17
   + 115.2 batch_2_7_11 + 109.2 batch_6_9_13_18 + 123.2 batch_0_4_5_17
   + 127.2 batch_1_10_17 + 126 batch_8_12_15_19 + 126 batch_3_8_14_16
   + 117.2 batch_1_14_17 + 121.2 batch_0_4_5_8 + 131.2 batch_1_3_16
   + 139.2 batch_12_15_17_19 + 105.1999989807935 batch_10_14_17
   + 137.2 batch_10_12_15_19 + 134 batch_12_14_15_19
Subject To
 order_0: batch_0_4_5_17 + batch_0_4_5_8 = 1
 order_1: batch_1 + batch_1_10_17 + batch_1_14_17 + batch_1_3_16 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_8_14_16 + batch_1_3_16 = 1
 order_4: batch_0_4_5_17 + batch_0_4_5_8 = 1
 order_5: batch_0_4_5_17 + batch_0_4_5_8 = 1
 order_6: batch_6_9_13_18 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_8_12_15_19 + batch_3_8_14_16 + batch_0_4_5_8 = 1
 order_9: batch_6_9_13_18 = 1
 order_10: batch_10 + batch_1_10_17 + batch_10_14_17 + batch_10_12_15_19
   = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_8_12_15_19 + batch_12_15_17_19 + batch_10_12_15_19
   + batch_12_14_15_19 = 1
 order_13: batch_6_9_13_18 = 1
 order_14: batch_14 + batch_3_8_14_16 + batch_1_14_17 + batch_10_14_17
   + batch_12_14_15_19 = 1
 order_15: batch_8_12_15_19 + batch_12_15_17_19 + batch_10_12_15_19
   + batch_12_14_15_19 = 1
 order_16: batch_3_8_14_16 + batch_1_3_16 = 1
 order_17: batch_17 + batch_0_4_5_17 + batch_1_10_17 + batch_1_14_17
   + batch_12_15_17_19 + batch_10_14_17 = 1
 order_18: batch_6_9_13_18 = 1
 order_19: batch_8_12_15_19 + batch_12_15_17_19 + batch_10_12_15_19
   + batch_12_14_15_19 = 1
Bounds
End
