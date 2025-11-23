\ Model JOBPRP_RMP_899
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x648e1468607d0443
Minimize
  72.4 batch_8 + 78.4 batch_10 + 89.2 batch_17 + 77.2 batch_18
   + 115.2 batch_2_7_11 + 118 batch_3_12_16_19 + 119.2 batch_5_8_10_14
   + 121.2 batch_1_8_9 + 132 batch_6_8_13_15 + 123.2 batch_0_4_8_17
   + 111.2 batch_1_9_18 + 121.2 batch_0_4_10_17 + 133.2 batch_6_10_13_15
   + 117.2 batch_0_4_5_14 + 133.2 batch_6_13_15_18 + 108 batch_1_9
Subject To
 order_0: batch_0_4_8_17 + batch_0_4_10_17 + batch_0_4_5_14 = 1
 order_1: batch_1_8_9 + batch_1_9_18 + batch_1_9 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16_19 = 1
 order_4: batch_0_4_8_17 + batch_0_4_10_17 + batch_0_4_5_14 = 1
 order_5: batch_5_8_10_14 + batch_0_4_5_14 = 1
 order_6: batch_6_8_13_15 + batch_6_10_13_15 + batch_6_13_15_18 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_5_8_10_14 + batch_1_8_9 + batch_6_8_13_15
   + batch_0_4_8_17 = 1
 order_9: batch_1_8_9 + batch_1_9_18 + batch_1_9 = 1
 order_10: batch_10 + batch_5_8_10_14 + batch_0_4_10_17 + batch_6_10_13_15
   = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_12_16_19 = 1
 order_13: batch_6_8_13_15 + batch_6_10_13_15 + batch_6_13_15_18 = 1
 order_14: batch_5_8_10_14 + batch_0_4_5_14 = 1
 order_15: batch_6_8_13_15 + batch_6_10_13_15 + batch_6_13_15_18 = 1
 order_16: batch_3_12_16_19 = 1
 order_17: batch_17 + batch_0_4_8_17 + batch_0_4_10_17 = 1
 order_18: batch_18 + batch_1_9_18 + batch_6_13_15_18 = 1
 order_19: batch_3_12_16_19 = 1
Bounds
End
