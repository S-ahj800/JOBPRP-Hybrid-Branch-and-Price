\ Model JOBPRP_RMP_596
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x77042c24e53dc356
Minimize
  91.2 batch_5 + 77.2 batch_9 + 78.4 batch_10 + 65.2 batch_14
   + 77.2 batch_18 + 61.2 batch_19 + 115.2 batch_2_7_11
   + 115.6 batch_3_12_15 + 109.2 batch_6_8_13_19 + 115.2 batch_6_8_13_14
   + 127.2 batch_1_9_17 + 127.2 batch_0_4_5_14_16 + 113.2 batch_5_9_18_19
   + 133.2 batch_0_4_14_16_18 + 119.2 batch_0_4_10_14_16
   + 123.2 batch_5_10_18 + 109.2 batch_6_8_13 + 115.2 batch_0_4_10_16
   + 123.2 batch_5_10_14_18 + 131.2 batch_0_4_16_18
Subject To
 order_0: batch_0_4_5_14_16 + batch_0_4_14_16_18 + batch_0_4_10_14_16
   + batch_0_4_10_16 + batch_0_4_16_18 = 1
 order_1: batch_1_9_17 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_15 = 1
 order_4: batch_0_4_5_14_16 + batch_0_4_14_16_18 + batch_0_4_10_14_16
   + batch_0_4_10_16 + batch_0_4_16_18 = 1
 order_5: batch_5 + batch_0_4_5_14_16 + batch_5_9_18_19 + batch_5_10_18
   + batch_5_10_14_18 = 1
 order_6: batch_6_8_13_19 + batch_6_8_13_14 + batch_6_8_13 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_6_8_13_19 + batch_6_8_13_14 + batch_6_8_13 = 1
 order_9: batch_9 + batch_1_9_17 + batch_5_9_18_19 = 1
 order_10: batch_10 + batch_0_4_10_14_16 + batch_5_10_18 + batch_0_4_10_16
   + batch_5_10_14_18 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_12_15 = 1
 order_13: batch_6_8_13_19 + batch_6_8_13_14 + batch_6_8_13 = 1
 order_14: batch_14 + batch_6_8_13_14 + batch_0_4_5_14_16
   + batch_0_4_14_16_18 + batch_0_4_10_14_16 + batch_5_10_14_18 = 1
 order_15: batch_3_12_15 = 1
 order_16: batch_0_4_5_14_16 + batch_0_4_14_16_18 + batch_0_4_10_14_16
   + batch_0_4_10_16 + batch_0_4_16_18 = 1
 order_17: batch_1_9_17 = 1
 order_18: batch_18 + batch_5_9_18_19 + batch_0_4_14_16_18 + batch_5_10_18
   + batch_5_10_14_18 + batch_0_4_16_18 = 1
 order_19: batch_19 + batch_6_8_13_19 + batch_5_9_18_19 = 1
Bounds
End
