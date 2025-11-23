\ Model JOBPRP_RMP_427
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x9e8a1c35255a1098
Minimize
  83.6 batch_3 + 91.2 batch_5 + 89.6 batch_12 + 70.4 batch_13
   + 65.2 batch_14 + 74.8 batch_15 + 77.2 batch_18 + 61.2 batch_19
   + 115.2 batch_2_7_11 + 121.2 batch_3_5_12 + 115.6 batch_3_12_15
   + 127.2 batch_1_10_17 + 113.2 batch_6_8_9_19 + 143.2 batch_5_12_13_15
   + 135.2 batch_0_4_5_13_16 + 133.2 batch_0_4_13_16_18
   + 127.2 batch_0_4_12_16 + 115.2 batch_3_5_18 + 129.2 batch_5_12_18_19
   + 123.2 batch_3_12_18 + 137.2 batch_0_4_15_16_18
   + 113.2 batch_3_13_14_18 + 139.2 batch_12_13_15_18
   + 117.2 batch_5_13_14_18 + 137.2 batch_5_12_14_15 + 131.2 batch_0_3_4_16
Subject To
 order_0: batch_0_4_5_13_16 + batch_0_4_13_16_18 + batch_0_4_12_16
   + batch_0_4_15_16_18 + batch_0_3_4_16 = 1
 order_1: batch_1_10_17 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3 + batch_3_5_12 + batch_3_12_15 + batch_3_5_18
   + batch_3_12_18 + batch_3_13_14_18 + batch_0_3_4_16 = 1
 order_4: batch_0_4_5_13_16 + batch_0_4_13_16_18 + batch_0_4_12_16
   + batch_0_4_15_16_18 + batch_0_3_4_16 = 1
 order_5: batch_5 + batch_3_5_12 + batch_5_12_13_15 + batch_0_4_5_13_16
   + batch_3_5_18 + batch_5_12_18_19 + batch_5_13_14_18 + batch_5_12_14_15
   = 1
 order_6: batch_6_8_9_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_6_8_9_19 = 1
 order_9: batch_6_8_9_19 = 1
 order_10: batch_1_10_17 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_3_5_12 + batch_3_12_15 + batch_5_12_13_15
   + batch_0_4_12_16 + batch_5_12_18_19 + batch_3_12_18 + batch_12_13_15_18
   + batch_5_12_14_15 = 1
 order_13: batch_13 + batch_5_12_13_15 + batch_0_4_5_13_16
   + batch_0_4_13_16_18 + batch_3_13_14_18 + batch_12_13_15_18
   + batch_5_13_14_18 = 1
 order_14: batch_14 + batch_3_13_14_18 + batch_5_13_14_18
   + batch_5_12_14_15 = 1
 order_15: batch_15 + batch_3_12_15 + batch_5_12_13_15 + batch_0_4_15_16_18
   + batch_12_13_15_18 + batch_5_12_14_15 = 1
 order_16: batch_0_4_5_13_16 + batch_0_4_13_16_18 + batch_0_4_12_16
   + batch_0_4_15_16_18 + batch_0_3_4_16 = 1
 order_17: batch_1_10_17 = 1
 order_18: batch_18 + batch_0_4_13_16_18 + batch_3_5_18 + batch_5_12_18_19
   + batch_3_12_18 + batch_0_4_15_16_18 + batch_3_13_14_18
   + batch_12_13_15_18 + batch_5_13_14_18 = 1
 order_19: batch_19 + batch_6_8_9_19 + batch_5_12_18_19 = 1
Bounds
End
