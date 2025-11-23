\ Model JOBPRP_RMP_1632
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x20a746d73a910da
Minimize
  89.2 batch_6 + 70.4 batch_13 + 65.2 batch_14 + 74.8 batch_15
   + 61.2 batch_19 + 137.2 batch_0_4_13_14_16_19 + 115.2 batch_2_7_11
   + 121.2 batch_3_5_12 + 127.2 batch_1_10_17 + 117.2 batch_0_4_14_15_16
   + 107.2 batch_8_9_13_18 + 141.2 batch_0_4_6_16_19 + 133.2 batch_0_4_6_16
   + 109.2 batch_8_9_14_18 + 107.2 batch_8_9_18_19 + 132 batch_6_14_15_19
Subject To
 order_0: batch_0_4_13_14_16_19 + batch_0_4_14_15_16 + batch_0_4_6_16_19
   + batch_0_4_6_16 = 1
 order_1: batch_1_10_17 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_5_12 = 1
 order_4: batch_0_4_13_14_16_19 + batch_0_4_14_15_16 + batch_0_4_6_16_19
   + batch_0_4_6_16 = 1
 order_5: batch_3_5_12 = 1
 order_6: batch_6 + batch_0_4_6_16_19 + batch_0_4_6_16 + batch_6_14_15_19
   = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8_9_13_18 + batch_8_9_14_18 + batch_8_9_18_19 = 1
 order_9: batch_8_9_13_18 + batch_8_9_14_18 + batch_8_9_18_19 = 1
 order_10: batch_1_10_17 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_5_12 = 1
 order_13: batch_13 + batch_0_4_13_14_16_19 + batch_8_9_13_18 = 1
 order_14: batch_14 + batch_0_4_13_14_16_19 + batch_0_4_14_15_16
   + batch_8_9_14_18 + batch_6_14_15_19 = 1
 order_15: batch_15 + batch_0_4_14_15_16 + batch_6_14_15_19 = 1
 order_16: batch_0_4_13_14_16_19 + batch_0_4_14_15_16 + batch_0_4_6_16_19
   + batch_0_4_6_16 = 1
 order_17: batch_1_10_17 = 1
 order_18: batch_8_9_13_18 + batch_8_9_14_18 + batch_8_9_18_19 = 1
 order_19: batch_19 + batch_0_4_13_14_16_19 + batch_0_4_6_16_19
   + batch_8_9_18_19 + batch_6_14_15_19 = 1
Bounds
End
