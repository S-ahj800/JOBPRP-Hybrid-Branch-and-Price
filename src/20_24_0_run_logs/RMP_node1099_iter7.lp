\ Model JOBPRP_RMP_1099
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xf1b42c7b5ce83229
Minimize
  72.4 batch_8 + 77.2 batch_9 + 78.4 batch_10 + 74.8 batch_15
   + 61.2 batch_19 + 123.2 batch_1_17_18 + 115.2 batch_2_7_11
   + 123.2 batch_0_4_10_15_16 + 119.2 batch_3_8_12
   + 131.2 batch_0_4_9_16_19 + 119.2 batch_5_8_10_14 + 118.4 batch_3_10_12
   + 127.2 batch_0_4_5_14_16 + 125.2 batch_3_9_12 + 123.2 batch_5_6_13_14
   + 115.2 batch_5_9_14_19 + 125.2 batch_5_8_9_14 + 122 batch_8_9_15_19
   + 113.2 batch_6_10_13 + 117.2 batch_8_9_10_19 + 119.2 batch_6_10_13_19
   + 120 batch_0_4_8_16_19 + 89.2 batch_8_9_19
Subject To
 order_0: batch_0_4_10_15_16 + batch_0_4_9_16_19 + batch_0_4_5_14_16
   + batch_0_4_8_16_19 = 1
 order_1: batch_1_17_18 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_8_12 + batch_3_10_12 + batch_3_9_12 = 1
 order_4: batch_0_4_10_15_16 + batch_0_4_9_16_19 + batch_0_4_5_14_16
   + batch_0_4_8_16_19 = 1
 order_5: batch_5_8_10_14 + batch_0_4_5_14_16 + batch_5_6_13_14
   + batch_5_9_14_19 + batch_5_8_9_14 = 1
 order_6: batch_5_6_13_14 + batch_6_10_13 + batch_6_10_13_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_3_8_12 + batch_5_8_10_14 + batch_5_8_9_14
   + batch_8_9_15_19 + batch_8_9_10_19 + batch_0_4_8_16_19 + batch_8_9_19
   = 1
 order_9: batch_9 + batch_0_4_9_16_19 + batch_3_9_12 + batch_5_9_14_19
   + batch_5_8_9_14 + batch_8_9_15_19 + batch_8_9_10_19 + batch_8_9_19 = 1
 order_10: batch_10 + batch_0_4_10_15_16 + batch_5_8_10_14 + batch_3_10_12
   + batch_6_10_13 + batch_8_9_10_19 + batch_6_10_13_19 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_8_12 + batch_3_10_12 + batch_3_9_12 = 1
 order_13: batch_5_6_13_14 + batch_6_10_13 + batch_6_10_13_19 = 1
 order_14: batch_5_8_10_14 + batch_0_4_5_14_16 + batch_5_6_13_14
   + batch_5_9_14_19 + batch_5_8_9_14 = 1
 order_15: batch_15 + batch_0_4_10_15_16 + batch_8_9_15_19 = 1
 order_16: batch_0_4_10_15_16 + batch_0_4_9_16_19 + batch_0_4_5_14_16
   + batch_0_4_8_16_19 = 1
 order_17: batch_1_17_18 = 1
 order_18: batch_1_17_18 = 1
 order_19: batch_19 + batch_0_4_9_16_19 + batch_5_9_14_19 + batch_8_9_15_19
   + batch_8_9_10_19 + batch_6_10_13_19 + batch_0_4_8_16_19 + batch_8_9_19
   = 1
Bounds
End
