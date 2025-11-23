\ Model JOBPRP_RMP_755
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x9e8a1c35255a1098
Minimize
  83.6 batch_3 + 91.2 batch_5 + 77.2 batch_9 + 78.4 batch_10 + 74.8 batch_15
   + 77.2 batch_18 + 115.2 batch_2_7_11 + 123.2 batch_0_4_10_15_16
   + 117.2 batch_1_14_17 + 137.2 batch_0_4_15_16_18 + 126 batch_6_8_12
   + 121.2 batch_9_10_18 + 101.2 batch_9_13_18_19 + 115.2 batch_0_4_10_16
   + 121.2 batch_3_9_10 + 119.2 batch_3_5_9 + 111.2 batch_5_9_13_19
   + 139.2 batch_5_10_15_18 + 135.2 batch_5_9_15_18 + 123.2 batch_5_10_18
   + 113.2 batch_5_9_18 + 117.2 batch_5_13_18_19 + 131.2 batch_0_3_4_16
   + 126.4 batch_3_10_15 + 123.2 batch_3_5_10 + 131.2 batch_3_5_15
Subject To
 order_0: batch_0_4_10_15_16 + batch_0_4_15_16_18 + batch_0_4_10_16
   + batch_0_3_4_16 = 1
 order_1: batch_1_14_17 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3 + batch_3_9_10 + batch_3_5_9 + batch_0_3_4_16
   + batch_3_10_15 + batch_3_5_10 + batch_3_5_15 = 1
 order_4: batch_0_4_10_15_16 + batch_0_4_15_16_18 + batch_0_4_10_16
   + batch_0_3_4_16 = 1
 order_5: batch_5 + batch_3_5_9 + batch_5_9_13_19 + batch_5_10_15_18
   + batch_5_9_15_18 + batch_5_10_18 + batch_5_9_18 + batch_5_13_18_19
   + batch_3_5_10 + batch_3_5_15 = 1
 order_6: batch_6_8_12 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_6_8_12 = 1
 order_9: batch_9 + batch_9_10_18 + batch_9_13_18_19 + batch_3_9_10
   + batch_3_5_9 + batch_5_9_13_19 + batch_5_9_15_18 + batch_5_9_18 = 1
 order_10: batch_10 + batch_0_4_10_15_16 + batch_9_10_18 + batch_0_4_10_16
   + batch_3_9_10 + batch_5_10_15_18 + batch_5_10_18 + batch_3_10_15
   + batch_3_5_10 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_6_8_12 = 1
 order_13: batch_9_13_18_19 + batch_5_9_13_19 + batch_5_13_18_19 = 1
 order_14: batch_1_14_17 = 1
 order_15: batch_15 + batch_0_4_10_15_16 + batch_0_4_15_16_18
   + batch_5_10_15_18 + batch_5_9_15_18 + batch_3_10_15 + batch_3_5_15 = 1
 order_16: batch_0_4_10_15_16 + batch_0_4_15_16_18 + batch_0_4_10_16
   + batch_0_3_4_16 = 1
 order_17: batch_1_14_17 = 1
 order_18: batch_18 + batch_0_4_15_16_18 + batch_9_10_18 + batch_9_13_18_19
   + batch_5_10_15_18 + batch_5_9_15_18 + batch_5_10_18 + batch_5_9_18
   + batch_5_13_18_19 = 1
 order_19: batch_9_13_18_19 + batch_5_9_13_19 + batch_5_13_18_19 = 1
Bounds
End
