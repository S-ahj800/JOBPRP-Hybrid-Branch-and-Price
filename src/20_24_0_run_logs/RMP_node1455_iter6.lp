\ Model JOBPRP_RMP_1455
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x6c43c644a3120237
Minimize
  91.2 batch_5 + 89.2 batch_6 + 77.2 batch_9 + 78.4 batch_10 + 65.2 batch_14
   + 74.8 batch_15 + 61.2 batch_19 + 123.2 batch_1_17_18
   + 115.2 batch_2_7_11 + 121.2 batch_3_5_12 + 123.2 batch_0_4_10_15_16
   + 119.2 batch_5_6_9_19 + 125.2 batch_5_6_10_19 + 137.2 batch_5_8_13_15
   + 121.2 batch_6_9_10_14 + 127.2 batch_0_4_8_13_16 + 114 batch_3_12_19
   + 128 batch_6_9_15 + 128.4 batch_8_10_13_15 + 128 batch_6_9_15_19
   + 141.2 batch_0_4_6_16_19 + 118.4 batch_3_10_12 + 115.2 batch_5_9_14_19
   + 131.2 batch_3_12_14_19 + 115.2 batch_5_8_13_14
   + 125.1999973333333 batch_3_9_12 + 111.2 batch_6_9_14_19
Subject To
 order_0: batch_0_4_10_15_16 + batch_0_4_8_13_16 + batch_0_4_6_16_19 = 1
 order_1: batch_1_17_18 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_5_12 + batch_3_12_19 + batch_3_10_12 + batch_3_12_14_19
   + batch_3_9_12 = 1
 order_4: batch_0_4_10_15_16 + batch_0_4_8_13_16 + batch_0_4_6_16_19 = 1
 order_5: batch_5 + batch_3_5_12 + batch_5_6_9_19 + batch_5_6_10_19
   + batch_5_8_13_15 + batch_5_9_14_19 + batch_5_8_13_14 = 1
 order_6: batch_6 + batch_5_6_9_19 + batch_5_6_10_19 + batch_6_9_10_14
   + batch_6_9_15 + batch_6_9_15_19 + batch_0_4_6_16_19 + batch_6_9_14_19
   = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_5_8_13_15 + batch_0_4_8_13_16 + batch_8_10_13_15
   + batch_5_8_13_14 = 1
 order_9: batch_9 + batch_5_6_9_19 + batch_6_9_10_14 + batch_6_9_15
   + batch_6_9_15_19 + batch_5_9_14_19 + batch_3_9_12 + batch_6_9_14_19
   = 1
 order_10: batch_10 + batch_0_4_10_15_16 + batch_5_6_10_19
   + batch_6_9_10_14 + batch_8_10_13_15 + batch_3_10_12 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_5_12 + batch_3_12_19 + batch_3_10_12 + batch_3_12_14_19
   + batch_3_9_12 = 1
 order_13: batch_5_8_13_15 + batch_0_4_8_13_16 + batch_8_10_13_15
   + batch_5_8_13_14 = 1
 order_14: batch_14 + batch_6_9_10_14 + batch_5_9_14_19 + batch_3_12_14_19
   + batch_5_8_13_14 + batch_6_9_14_19 = 1
 order_15: batch_15 + batch_0_4_10_15_16 + batch_5_8_13_15 + batch_6_9_15
   + batch_8_10_13_15 + batch_6_9_15_19 = 1
 order_16: batch_0_4_10_15_16 + batch_0_4_8_13_16 + batch_0_4_6_16_19 = 1
 order_17: batch_1_17_18 = 1
 order_18: batch_1_17_18 = 1
 order_19: batch_19 + batch_5_6_9_19 + batch_5_6_10_19 + batch_3_12_19
   + batch_6_9_15_19 + batch_0_4_6_16_19 + batch_5_9_14_19
   + batch_3_12_14_19 + batch_6_9_14_19 = 1
Bounds
End
