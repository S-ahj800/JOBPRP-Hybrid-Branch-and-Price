\ Model JOBPRP_RMP_1584
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x349232db593a39c
Minimize
  91.2 batch_5 + 77.2 batch_9 + 89.6 batch_12 + 105.6 batch_3_12_16
   + 115.2 batch_2_7_11 + 123.2 batch_0_4_5_17 + 111.2 batch_1_9_18
   + 125.2 batch_8_10_15_19 + 122 batch_3_9_16 + 117.2 batch_3_5_16
   + 128 batch_9_12_15_19 + 126 batch_3_15_16_19 + 130 batch_1_15_18_19
   + 134 batch_6_13_14_15_19
Subject To
 order_0: batch_0_4_5_17 = 1
 order_1: batch_1_9_18 + batch_1_15_18_19 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16 + batch_3_9_16 + batch_3_5_16 + batch_3_15_16_19
   = 1
 order_4: batch_0_4_5_17 = 1
 order_5: batch_5 + batch_0_4_5_17 + batch_3_5_16 = 1
 order_6: batch_6_13_14_15_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8_10_15_19 = 1
 order_9: batch_9 + batch_1_9_18 + batch_3_9_16 + batch_9_12_15_19 = 1
 order_10: batch_8_10_15_19 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_3_12_16 + batch_9_12_15_19 = 1
 order_13: batch_6_13_14_15_19 = 1
 order_14: batch_6_13_14_15_19 = 1
 order_15: batch_8_10_15_19 + batch_9_12_15_19 + batch_3_15_16_19
   + batch_1_15_18_19 + batch_6_13_14_15_19 = 1
 order_16: batch_3_12_16 + batch_3_9_16 + batch_3_5_16 + batch_3_15_16_19
   = 1
 order_17: batch_0_4_5_17 = 1
 order_18: batch_1_9_18 + batch_1_15_18_19 = 1
 order_19: batch_8_10_15_19 + batch_9_12_15_19 + batch_3_15_16_19
   + batch_1_15_18_19 + batch_6_13_14_15_19 = 1
Bounds
End
