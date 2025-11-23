\ Model JOBPRP_RMP_948
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x3c7fda3750424688
Minimize
  78.4 batch_10 + 89.2 batch_17 + 77.2 batch_18 + 61.2 batch_19
   + 105.6 batch_3_12_16 + 115.2 batch_2_7_11 + 118 batch_3_12_16_19
   + 121.2 batch_0_4_5_14_19 + 126 batch_0_4_8_15_19 + 111.2 batch_1_9_18
   + 125.2 batch_10_17_18_19 + 113.2 batch_5_14_17_19
   + 139.2 batch_8_10_15_18 + 125.2 batch_6_10_13_18
   + 123.2 batch_5_6_13_14 + 113.2 batch_6_13_17 + 121.2 batch_6_13_17_19
   + 117.2 batch_0_4_8_15 + 107.2 batch_0_4_10 + 119.2 batch_10_17_18
   + 116.4 batch_8_10_15 + 119.2 batch_6_10_13_19 + 113.2 batch_6_10_13
   + 111.2 batch_5_10_14
Subject To
 order_0: batch_0_4_5_14_19 + batch_0_4_8_15_19 + batch_0_4_8_15
   + batch_0_4_10 = 1
 order_1: batch_1_9_18 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16 + batch_3_12_16_19 = 1
 order_4: batch_0_4_5_14_19 + batch_0_4_8_15_19 + batch_0_4_8_15
   + batch_0_4_10 = 1
 order_5: batch_0_4_5_14_19 + batch_5_14_17_19 + batch_5_6_13_14
   + batch_5_10_14 = 1
 order_6: batch_6_10_13_18 + batch_5_6_13_14 + batch_6_13_17
   + batch_6_13_17_19 + batch_6_10_13_19 + batch_6_10_13 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_0_4_8_15_19 + batch_8_10_15_18 + batch_0_4_8_15
   + batch_8_10_15 = 1
 order_9: batch_1_9_18 = 1
 order_10: batch_10 + batch_10_17_18_19 + batch_8_10_15_18
   + batch_6_10_13_18 + batch_0_4_10 + batch_10_17_18 + batch_8_10_15
   + batch_6_10_13_19 + batch_6_10_13 + batch_5_10_14 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_12_16 + batch_3_12_16_19 = 1
 order_13: batch_6_10_13_18 + batch_5_6_13_14 + batch_6_13_17
   + batch_6_13_17_19 + batch_6_10_13_19 + batch_6_10_13 = 1
 order_14: batch_0_4_5_14_19 + batch_5_14_17_19 + batch_5_6_13_14
   + batch_5_10_14 = 1
 order_15: batch_0_4_8_15_19 + batch_8_10_15_18 + batch_0_4_8_15
   + batch_8_10_15 = 1
 order_16: batch_3_12_16 + batch_3_12_16_19 = 1
 order_17: batch_17 + batch_10_17_18_19 + batch_5_14_17_19 + batch_6_13_17
   + batch_6_13_17_19 + batch_10_17_18 = 1
 order_18: batch_18 + batch_1_9_18 + batch_10_17_18_19 + batch_8_10_15_18
   + batch_6_10_13_18 + batch_10_17_18 = 1
 order_19: batch_19 + batch_3_12_16_19 + batch_0_4_5_14_19
   + batch_0_4_8_15_19 + batch_10_17_18_19 + batch_5_14_17_19
   + batch_6_13_17_19 + batch_6_10_13_19 = 1
Bounds
End
