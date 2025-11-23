\ Model JOBPRP_RMP_256
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x2cad5501777ed4a
Minimize
  77.2 batch_9 + 89.6 batch_12 + 74.8 batch_15 + 89.2 batch_17
   + 77.2 batch_18 + 61.2 batch_19 + 115.2 batch_2_7_11
   + 109.2 batch_6_9_13_18 + 127.2 batch_1_10_17 + 119.2 batch_0_4_15_17
   + 105.2 batch_6_9_13_19 + 119.2 batch_3_8_16_19
   + 121.2 batch_0_4_5_14_19 + 123.2 batch_1_9_10 + 123.2 batch_5_6_13_14
   + 139.2 batch_1_10_15_19 + 127.2 batch_0_4_12_15
   + 109.2 batch_6_13_18_19 + 124 batch_6_12_13_19 + 132 batch_9_12_18_19
   + 141.2 batch_1_10_12 + 113.2 batch_5_14_17_19
Subject To
 order_0: batch_0_4_15_17 + batch_0_4_5_14_19 + batch_0_4_12_15 = 1
 order_1: batch_1_10_17 + batch_1_9_10 + batch_1_10_15_19 + batch_1_10_12
   = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_8_16_19 = 1
 order_4: batch_0_4_15_17 + batch_0_4_5_14_19 + batch_0_4_12_15 = 1
 order_5: batch_0_4_5_14_19 + batch_5_6_13_14 + batch_5_14_17_19 = 1
 order_6: batch_6_9_13_18 + batch_6_9_13_19 + batch_5_6_13_14
   + batch_6_13_18_19 + batch_6_12_13_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_3_8_16_19 = 1
 order_9: batch_9 + batch_6_9_13_18 + batch_6_9_13_19 + batch_1_9_10
   + batch_9_12_18_19 = 1
 order_10: batch_1_10_17 + batch_1_9_10 + batch_1_10_15_19 + batch_1_10_12
   = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_0_4_12_15 + batch_6_12_13_19 + batch_9_12_18_19
   + batch_1_10_12 = 1
 order_13: batch_6_9_13_18 + batch_6_9_13_19 + batch_5_6_13_14
   + batch_6_13_18_19 + batch_6_12_13_19 = 1
 order_14: batch_0_4_5_14_19 + batch_5_6_13_14 + batch_5_14_17_19 = 1
 order_15: batch_15 + batch_0_4_15_17 + batch_1_10_15_19 + batch_0_4_12_15
   = 1
 order_16: batch_3_8_16_19 = 1
 order_17: batch_17 + batch_1_10_17 + batch_0_4_15_17 + batch_5_14_17_19
   = 1
 order_18: batch_18 + batch_6_9_13_18 + batch_6_13_18_19 + batch_9_12_18_19
   = 1
 order_19: batch_19 + batch_6_9_13_19 + batch_3_8_16_19 + batch_0_4_5_14_19
   + batch_1_10_15_19 + batch_6_13_18_19 + batch_6_12_13_19
   + batch_9_12_18_19 + batch_5_14_17_19 = 1
Bounds
End
