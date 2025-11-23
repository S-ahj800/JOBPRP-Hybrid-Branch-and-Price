\ Model JOBPRP_RMP_1592
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x349232db593a39c
Minimize
  72.4 batch_8 + 78.4 batch_10 + 89.6 batch_12 + 105.6 batch_3_12_16
   + 115.2 batch_2_7_11 + 123.2 batch_0_4_5_17 + 126 batch_8_12_15_19
   + 111.2 batch_1_9_18 + 119.2 batch_6_10_13_14 + 115.2 batch_6_8_13_14
   + 112.4 batch_3_8_16 + 126 batch_3_15_16_19 + 134 batch_6_13_14_15_19
   + 116.4 batch_3_10_16
Subject To
 order_0: batch_0_4_5_17 = 1
 order_1: batch_1_9_18 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16 + batch_3_8_16 + batch_3_15_16_19 + batch_3_10_16
   = 1
 order_4: batch_0_4_5_17 = 1
 order_5: batch_0_4_5_17 = 1
 order_6: batch_6_10_13_14 + batch_6_8_13_14 + batch_6_13_14_15_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_8_12_15_19 + batch_6_8_13_14 + batch_3_8_16 = 1
 order_9: batch_1_9_18 = 1
 order_10: batch_10 + batch_6_10_13_14 + batch_3_10_16 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_3_12_16 + batch_8_12_15_19 = 1
 order_13: batch_6_10_13_14 + batch_6_8_13_14 + batch_6_13_14_15_19 = 1
 order_14: batch_6_10_13_14 + batch_6_8_13_14 + batch_6_13_14_15_19 = 1
 order_15: batch_8_12_15_19 + batch_3_15_16_19 + batch_6_13_14_15_19 = 1
 order_16: batch_3_12_16 + batch_3_8_16 + batch_3_15_16_19 + batch_3_10_16
   = 1
 order_17: batch_0_4_5_17 = 1
 order_18: batch_1_9_18 = 1
 order_19: batch_8_12_15_19 + batch_3_15_16_19 + batch_6_13_14_15_19 = 1
Bounds
End
