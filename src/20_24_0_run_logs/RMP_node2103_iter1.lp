\ Model JOBPRP_RMP_2103
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x1dcbc8200d4a7103
Minimize
  98 batch_1 + 91.2 batch_5 + 72.4 batch_8 + 77.2 batch_9 + 78.4 batch_10
   + 89.6 batch_12 + 74.8 batch_15 + 89.2 batch_17 + 77.2 batch_18
   + 123.2 batch_1_17_18 + 115.2 batch_2_7_11 + 118 batch_3_12_16_19
   + 117.2 batch_1_5_18 + 123.2 batch_0_4_5_17 + 127.2 batch_1_10_17
   + 119.2 batch_0_4_15_17 + 119.2 batch_3_8_16_19 + 132 batch_0_4_8_12
   + 121.2 batch_1_8_9 + 129.2 batch_1_5_8 + 119.2 batch_1_5_9
   + 137.2 batch_0_1_4_15 + 127.2 batch_1_5_10 + 117.2 batch_0_4_8_15
   + 121.2 batch_0_4_5_8 + 121.2 batch_3_5_16_19 + 123.2 batch_3_10_16_19
   + 141.2 batch_9_10_15_18 + 109.2 batch_6_13_14_18
   + 137.2 batch_8_9_10_15 + 111.2 batch_1_9_18 + 141.2 batch_5_9_10_15
   + 139.2 batch_5_10_15_18
Subject To
 order_0: batch_0_4_5_17 + batch_0_4_15_17 + batch_0_4_8_12
   + batch_0_1_4_15 + batch_0_4_8_15 + batch_0_4_5_8 = 1
 order_1: batch_1 + batch_1_17_18 + batch_1_5_18 + batch_1_10_17
   + batch_1_8_9 + batch_1_5_8 + batch_1_5_9 + batch_0_1_4_15
   + batch_1_5_10 + batch_1_9_18 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16_19 + batch_3_8_16_19 + batch_3_5_16_19
   + batch_3_10_16_19 = 1
 order_4: batch_0_4_5_17 + batch_0_4_15_17 + batch_0_4_8_12
   + batch_0_1_4_15 + batch_0_4_8_15 + batch_0_4_5_8 = 1
 order_5: batch_5 + batch_1_5_18 + batch_0_4_5_17 + batch_1_5_8
   + batch_1_5_9 + batch_1_5_10 + batch_0_4_5_8 + batch_3_5_16_19
   + batch_5_9_10_15 + batch_5_10_15_18 = 1
 order_6: batch_6_13_14_18 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_3_8_16_19 + batch_0_4_8_12 + batch_1_8_9
   + batch_1_5_8 + batch_0_4_8_15 + batch_0_4_5_8 + batch_8_9_10_15 = 1
 order_9: batch_9 + batch_1_8_9 + batch_1_5_9 + batch_9_10_15_18
   + batch_8_9_10_15 + batch_1_9_18 + batch_5_9_10_15 = 1
 order_10: batch_10 + batch_1_10_17 + batch_1_5_10 + batch_3_10_16_19
   + batch_9_10_15_18 + batch_8_9_10_15 + batch_5_9_10_15
   + batch_5_10_15_18 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_3_12_16_19 + batch_0_4_8_12 = 1
 order_13: batch_6_13_14_18 = 1
 order_14: batch_6_13_14_18 = 1
 order_15: batch_15 + batch_0_4_15_17 + batch_0_1_4_15 + batch_0_4_8_15
   + batch_9_10_15_18 + batch_8_9_10_15 + batch_5_9_10_15
   + batch_5_10_15_18 = 1
 order_16: batch_3_12_16_19 + batch_3_8_16_19 + batch_3_5_16_19
   + batch_3_10_16_19 = 1
 order_17: batch_17 + batch_1_17_18 + batch_0_4_5_17 + batch_1_10_17
   + batch_0_4_15_17 = 1
 order_18: batch_18 + batch_1_17_18 + batch_1_5_18 + batch_9_10_15_18
   + batch_6_13_14_18 + batch_1_9_18 + batch_5_10_15_18 = 1
 order_19: batch_3_12_16_19 + batch_3_8_16_19 + batch_3_5_16_19
   + batch_3_10_16_19 = 1
Bounds
End
