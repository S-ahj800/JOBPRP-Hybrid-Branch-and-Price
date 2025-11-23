\ Model JOBPRP_RMP_1464
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xa026cec7f9235b1c
Minimize
  91.2 batch_5 + 89.2 batch_6 + 77.2 batch_9 + 65.2 batch_14 + 74.8 batch_15
   + 61.2 batch_19 + 123.2 batch_1_17_18 + 115.2 batch_2_7_11
   + 121.2 batch_3_5_12 + 123.2 batch_0_4_10_15_16 + 119.2 batch_5_6_9_19
   + 137.2 batch_5_8_13_15 + 114 batch_3_12_19 + 128 batch_6_9_15
   + 128 batch_6_9_15_19 + 115.2 batch_5_9_14_19 + 131.2 batch_3_12_14_19
   + 115.2 batch_5_8_13_14 + 125.1999973333333 batch_3_9_12
   + 111.2 batch_6_9_14_19 + 93.2 batch_8_13_19 + 86.4 batch_8_13
   + 101.6 batch_3_12
Subject To
 order_0: batch_0_4_10_15_16 = 1
 order_1: batch_1_17_18 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_5_12 + batch_3_12_19 + batch_3_12_14_19 + batch_3_9_12
   + batch_3_12 = 1
 order_4: batch_0_4_10_15_16 = 1
 order_5: batch_5 + batch_3_5_12 + batch_5_6_9_19 + batch_5_8_13_15
   + batch_5_9_14_19 + batch_5_8_13_14 = 1
 order_6: batch_6 + batch_5_6_9_19 + batch_6_9_15 + batch_6_9_15_19
   + batch_6_9_14_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_5_8_13_15 + batch_5_8_13_14 + batch_8_13_19 + batch_8_13
   = 1
 order_9: batch_9 + batch_5_6_9_19 + batch_6_9_15 + batch_6_9_15_19
   + batch_5_9_14_19 + batch_3_9_12 + batch_6_9_14_19 = 1
 order_10: batch_0_4_10_15_16 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_5_12 + batch_3_12_19 + batch_3_12_14_19 + batch_3_9_12
   + batch_3_12 = 1
 order_13: batch_5_8_13_15 + batch_5_8_13_14 + batch_8_13_19 + batch_8_13
   = 1
 order_14: batch_14 + batch_5_9_14_19 + batch_3_12_14_19 + batch_5_8_13_14
   + batch_6_9_14_19 = 1
 order_15: batch_15 + batch_0_4_10_15_16 + batch_5_8_13_15 + batch_6_9_15
   + batch_6_9_15_19 = 1
 order_16: batch_0_4_10_15_16 = 1
 order_17: batch_1_17_18 = 1
 order_18: batch_1_17_18 = 1
 order_19: batch_19 + batch_5_6_9_19 + batch_3_12_19 + batch_6_9_15_19
   + batch_5_9_14_19 + batch_3_12_14_19 + batch_6_9_14_19 + batch_8_13_19
   = 1
Bounds
End
