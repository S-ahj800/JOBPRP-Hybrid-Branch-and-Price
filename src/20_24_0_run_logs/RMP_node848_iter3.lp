\ Model JOBPRP_RMP_848
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xdac18aff8d9cbc88
Minimize
  77.2 batch_9 + 78.4 batch_10 + 89.6 batch_12 + 74.8 batch_15
   + 77.2 batch_18 + 61.2 batch_19 + 105.6 batch_3_12_16
   + 115.2 batch_2_7_11 + 118 batch_3_12_16_19 + 130.4 batch_3_10_15_16
   + 132 batch_6_8_13_15 + 109.2 batch_6_8_13_19 + 121.2 batch_0_4_5_14_19
   + 135.2 batch_0_4_10_12 + 137.2 batch_5_12_14_15 + 127.2 batch_1_9_17
   + 127.2 batch_0_4_12_15 + 115.2 batch_0_4_10_15 + 121.2 batch_1_17_19
   + 133.2 batch_3_15_16_18 + 125.2 batch_3_5_14_16
   + 123.2 batch_5_10_14_18 + 132 batch_0_4_9_18 + 127.2 batch_0_4_10_18
Subject To
 order_0: batch_0_4_5_14_19 + batch_0_4_10_12 + batch_0_4_12_15
   + batch_0_4_10_15 + batch_0_4_9_18 + batch_0_4_10_18 = 1
 order_1: batch_1_9_17 + batch_1_17_19 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16 + batch_3_12_16_19 + batch_3_10_15_16
   + batch_3_15_16_18 + batch_3_5_14_16 = 1
 order_4: batch_0_4_5_14_19 + batch_0_4_10_12 + batch_0_4_12_15
   + batch_0_4_10_15 + batch_0_4_9_18 + batch_0_4_10_18 = 1
 order_5: batch_0_4_5_14_19 + batch_5_12_14_15 + batch_3_5_14_16
   + batch_5_10_14_18 = 1
 order_6: batch_6_8_13_15 + batch_6_8_13_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_6_8_13_15 + batch_6_8_13_19 = 1
 order_9: batch_9 + batch_1_9_17 + batch_0_4_9_18 = 1
 order_10: batch_10 + batch_3_10_15_16 + batch_0_4_10_12 + batch_0_4_10_15
   + batch_5_10_14_18 + batch_0_4_10_18 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_3_12_16 + batch_3_12_16_19 + batch_0_4_10_12
   + batch_5_12_14_15 + batch_0_4_12_15 = 1
 order_13: batch_6_8_13_15 + batch_6_8_13_19 = 1
 order_14: batch_0_4_5_14_19 + batch_5_12_14_15 + batch_3_5_14_16
   + batch_5_10_14_18 = 1
 order_15: batch_15 + batch_3_10_15_16 + batch_6_8_13_15 + batch_5_12_14_15
   + batch_0_4_12_15 + batch_0_4_10_15 + batch_3_15_16_18 = 1
 order_16: batch_3_12_16 + batch_3_12_16_19 + batch_3_10_15_16
   + batch_3_15_16_18 + batch_3_5_14_16 = 1
 order_17: batch_1_9_17 + batch_1_17_19 = 1
 order_18: batch_18 + batch_3_15_16_18 + batch_5_10_14_18 + batch_0_4_9_18
   + batch_0_4_10_18 = 1
 order_19: batch_19 + batch_3_12_16_19 + batch_6_8_13_19
   + batch_0_4_5_14_19 + batch_1_17_19 = 1
Bounds
End
