\ Model JOBPRP_RMP_1816
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x1ad6cf1e70cdc9ef
Minimize
  91.2 batch_5 + 89.2 batch_6 + 77.2 batch_9 + 78.4 batch_10 + 70.4 batch_13
   + 74.8 batch_15 + 77.2 batch_18 + 61.2 batch_19 + 115.2 batch_2_7_11
   + 119.2 batch_3_8_12 + 117.2 batch_1_14_17 + 137.2 batch_0_4_9_13_16
   + 107.2 batch_6_9_18_19 + 135.2 batch_0_4_5_13_16
   + 117.2 batch_5_9_13_18 + 141.2 batch_0_4_6_16_19
   + 137.2 batch_0_4_15_16_18 + 127.2 batch_0_4_13_15_16
   + 131.2 batch_0_4_5_16_19 + 123.2 batch_5_10_13_18
   + 123.2 batch_6_9_10_19 + 131.2 batch_6_10_15 + 141.2 batch_5_9_10_15
   + 139.2 batch_5_10_15_18 + 113.2 batch_0_4_15_16
   + 135.2 batch_6_10_15_19
Subject To
 order_0: batch_0_4_9_13_16 + batch_0_4_5_13_16 + batch_0_4_6_16_19
   + batch_0_4_15_16_18 + batch_0_4_13_15_16 + batch_0_4_5_16_19
   + batch_0_4_15_16 = 1
 order_1: batch_1_14_17 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_8_12 = 1
 order_4: batch_0_4_9_13_16 + batch_0_4_5_13_16 + batch_0_4_6_16_19
   + batch_0_4_15_16_18 + batch_0_4_13_15_16 + batch_0_4_5_16_19
   + batch_0_4_15_16 = 1
 order_5: batch_5 + batch_0_4_5_13_16 + batch_5_9_13_18 + batch_0_4_5_16_19
   + batch_5_10_13_18 + batch_5_9_10_15 + batch_5_10_15_18 = 1
 order_6: batch_6 + batch_6_9_18_19 + batch_0_4_6_16_19 + batch_6_9_10_19
   + batch_6_10_15 + batch_6_10_15_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_3_8_12 = 1
 order_9: batch_9 + batch_0_4_9_13_16 + batch_6_9_18_19 + batch_5_9_13_18
   + batch_6_9_10_19 + batch_5_9_10_15 = 1
 order_10: batch_10 + batch_5_10_13_18 + batch_6_9_10_19 + batch_6_10_15
   + batch_5_9_10_15 + batch_5_10_15_18 + batch_6_10_15_19 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_8_12 = 1
 order_13: batch_13 + batch_0_4_9_13_16 + batch_0_4_5_13_16
   + batch_5_9_13_18 + batch_0_4_13_15_16 + batch_5_10_13_18 = 1
 order_14: batch_1_14_17 = 1
 order_15: batch_15 + batch_0_4_15_16_18 + batch_0_4_13_15_16
   + batch_6_10_15 + batch_5_9_10_15 + batch_5_10_15_18 + batch_0_4_15_16
   + batch_6_10_15_19 = 1
 order_16: batch_0_4_9_13_16 + batch_0_4_5_13_16 + batch_0_4_6_16_19
   + batch_0_4_15_16_18 + batch_0_4_13_15_16 + batch_0_4_5_16_19
   + batch_0_4_15_16 = 1
 order_17: batch_1_14_17 = 1
 order_18: batch_18 + batch_6_9_18_19 + batch_5_9_13_18
   + batch_0_4_15_16_18 + batch_5_10_13_18 + batch_5_10_15_18 = 1
 order_19: batch_19 + batch_6_9_18_19 + batch_0_4_6_16_19
   + batch_0_4_5_16_19 + batch_6_9_10_19 + batch_6_10_15_19 = 1
Bounds
End
