\ Model JOBPRP_RMP_228
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x37732e9697b7af98
Minimize
  91.2 batch_5 + 77.2 batch_9 + 65.2 batch_14 + 74.8 batch_15
   + 61.2 batch_19 + 123.2 batch_1_17_18 + 115.2 batch_2_7_11
   + 123.2 batch_0_4_10_15_16 + 124 batch_3_12_13_19
   + 119.2 batch_0_4_10_14_16 + 113.2 batch_6_8_14_19 + 123.2 batch_5_6_8
   + 136 batch_6_8_14_15 + 115.2 batch_5_9_14_19 + 139.2 batch_5_9_14_15
   + 116.4 batch_3_12_13 + 91.2 batch_9_14 + 115.1999913692308 batch_2_7_11
Subject To
 order_0: batch_0_4_10_15_16 + batch_0_4_10_14_16 = 1
 order_1: batch_1_17_18 = 1
 order_2: batch_2_7_11 + batch_2_7_11 = 1
 order_3: batch_3_12_13_19 + batch_3_12_13 = 1
 order_4: batch_0_4_10_15_16 + batch_0_4_10_14_16 = 1
 order_5: batch_5 + batch_5_6_8 + batch_5_9_14_19 + batch_5_9_14_15 = 1
 order_6: batch_6_8_14_19 + batch_5_6_8 + batch_6_8_14_15 = 1
 order_7: batch_2_7_11 + batch_2_7_11 = 1
 order_8: batch_6_8_14_19 + batch_5_6_8 + batch_6_8_14_15 = 1
 order_9: batch_9 + batch_5_9_14_19 + batch_5_9_14_15 + batch_9_14 = 1
 order_10: batch_0_4_10_15_16 + batch_0_4_10_14_16 = 1
 order_11: batch_2_7_11 + batch_2_7_11 = 1
 order_12: batch_3_12_13_19 + batch_3_12_13 = 1
 order_13: batch_3_12_13_19 + batch_3_12_13 = 1
 order_14: batch_14 + batch_0_4_10_14_16 + batch_6_8_14_19
   + batch_6_8_14_15 + batch_5_9_14_19 + batch_5_9_14_15 + batch_9_14 = 1
 order_15: batch_15 + batch_0_4_10_15_16 + batch_6_8_14_15
   + batch_5_9_14_15 = 1
 order_16: batch_0_4_10_15_16 + batch_0_4_10_14_16 = 1
 order_17: batch_1_17_18 = 1
 order_18: batch_1_17_18 = 1
 order_19: batch_19 + batch_3_12_13_19 + batch_6_8_14_19 + batch_5_9_14_19
   = 1
Bounds
End
