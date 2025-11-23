\ Model JOBPRP_RMP_708
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x77042c24e53dc356
Minimize
  91.2 batch_5 + 78.4 batch_10 + 70.4 batch_13 + 74.8 batch_15
   + 77.2 batch_18 + 61.2 batch_19 + 137.2 batch_0_4_13_14_16_19
   + 115.2 batch_2_7_11 + 127.2 batch_1_10_17 + 117.2 batch_0_4_14_15_16
   + 109.2 batch_6_8_13_19 + 125.2 batch_1_13_17 + 127.2 batch_0_4_5_14_16
   + 123.2 batch_5_6_8 + 123.2 batch_6_8_10_19 + 133.2 batch_1_15_17
   + 125.2 batch_3_9_12 + 127.1999966503068 batch_1_10_17
   + 123.2 batch_5_10_13_18 + 133.2 batch_0_4_14_16_18
Subject To
 order_0: batch_0_4_13_14_16_19 + batch_0_4_14_15_16 + batch_0_4_5_14_16
   + batch_0_4_14_16_18 = 1
 order_1: batch_1_10_17 + batch_1_13_17 + batch_1_15_17 + batch_1_10_17
   = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_9_12 = 1
 order_4: batch_0_4_13_14_16_19 + batch_0_4_14_15_16 + batch_0_4_5_14_16
   + batch_0_4_14_16_18 = 1
 order_5: batch_5 + batch_0_4_5_14_16 + batch_5_6_8 + batch_5_10_13_18 = 1
 order_6: batch_6_8_13_19 + batch_5_6_8 + batch_6_8_10_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_6_8_13_19 + batch_5_6_8 + batch_6_8_10_19 = 1
 order_9: batch_3_9_12 = 1
 order_10: batch_10 + batch_1_10_17 + batch_6_8_10_19 + batch_1_10_17
   + batch_5_10_13_18 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_9_12 = 1
 order_13: batch_13 + batch_0_4_13_14_16_19 + batch_6_8_13_19
   + batch_1_13_17 + batch_5_10_13_18 = 1
 order_14: batch_0_4_13_14_16_19 + batch_0_4_14_15_16 + batch_0_4_5_14_16
   + batch_0_4_14_16_18 = 1
 order_15: batch_15 + batch_0_4_14_15_16 + batch_1_15_17 = 1
 order_16: batch_0_4_13_14_16_19 + batch_0_4_14_15_16 + batch_0_4_5_14_16
   + batch_0_4_14_16_18 = 1
 order_17: batch_1_10_17 + batch_1_13_17 + batch_1_15_17 + batch_1_10_17
   = 1
 order_18: batch_18 + batch_5_10_13_18 + batch_0_4_14_16_18 = 1
 order_19: batch_19 + batch_0_4_13_14_16_19 + batch_6_8_13_19
   + batch_6_8_10_19 = 1
Bounds
End
