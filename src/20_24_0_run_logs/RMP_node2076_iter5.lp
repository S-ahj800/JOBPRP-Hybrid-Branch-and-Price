\ Model JOBPRP_RMP_2076
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x972871e842a1103f
Minimize
  98 batch_1 + 91.2 batch_5 + 72.4 batch_8 + 89.6 batch_12 + 89.2 batch_17
   + 77.2 batch_18 + 123.2 batch_1_17_18 + 115.2 batch_2_7_11
   + 109.2 batch_6_9_13_18 + 118 batch_3_12_16_19 + 117.2 batch_1_5_18
   + 123.2 batch_0_4_5_17 + 119.2 batch_3_8_16_19 + 132 batch_0_4_8_12
   + 125.2 batch_10_14_15_17 + 121.2 batch_0_4_5_8 + 121.2 batch_3_5_16_19
   + 125.2 batch_0_1_4 + 127.2 batch_8_10_14_15 + 111.2 batch_1_5
Subject To
 order_0: batch_0_4_5_17 + batch_0_4_8_12 + batch_0_4_5_8 + batch_0_1_4
   = 1
 order_1: batch_1 + batch_1_17_18 + batch_1_5_18 + batch_0_1_4 + batch_1_5
   = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16_19 + batch_3_8_16_19 + batch_3_5_16_19 = 1
 order_4: batch_0_4_5_17 + batch_0_4_8_12 + batch_0_4_5_8 + batch_0_1_4
   = 1
 order_5: batch_5 + batch_1_5_18 + batch_0_4_5_17 + batch_0_4_5_8
   + batch_3_5_16_19 + batch_1_5 = 1
 order_6: batch_6_9_13_18 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_3_8_16_19 + batch_0_4_8_12 + batch_0_4_5_8
   + batch_8_10_14_15 = 1
 order_9: batch_6_9_13_18 = 1
 order_10: batch_10_14_15_17 + batch_8_10_14_15 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_3_12_16_19 + batch_0_4_8_12 = 1
 order_13: batch_6_9_13_18 = 1
 order_14: batch_10_14_15_17 + batch_8_10_14_15 = 1
 order_15: batch_10_14_15_17 + batch_8_10_14_15 = 1
 order_16: batch_3_12_16_19 + batch_3_8_16_19 + batch_3_5_16_19 = 1
 order_17: batch_17 + batch_1_17_18 + batch_0_4_5_17 + batch_10_14_15_17
   = 1
 order_18: batch_18 + batch_1_17_18 + batch_6_9_13_18 + batch_1_5_18 = 1
 order_19: batch_3_12_16_19 + batch_3_8_16_19 + batch_3_5_16_19 = 1
Bounds
End
