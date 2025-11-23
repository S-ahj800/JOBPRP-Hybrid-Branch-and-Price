\ Model JOBPRP_RMP_1947
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x64a2dca32f726ce2
Minimize
  91.2 batch_5 + 89.6 batch_12 + 65.2 batch_14 + 89.2 batch_17
   + 61.2 batch_19 + 115.2 batch_2_7_11 + 109.2 batch_6_9_13_18
   + 129.2 batch_1_5_8 + 129.2 batch_5_12_17 + 115.2 batch_0_4_10_15
   + 121.2 batch_1_8_14_19 + 117.2 batch_3_5_16 + 89.2 batch_14_17
   + 131.2 batch_3_16_17 + 113.2 batch_5_17_19 + 99.6 batch_3_16
   + 119.2 batch_1_8_14
Subject To
 order_0: batch_0_4_10_15 = 1
 order_1: batch_1_5_8 + batch_1_8_14_19 + batch_1_8_14 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_5_16 + batch_3_16_17 + batch_3_16 = 1
 order_4: batch_0_4_10_15 = 1
 order_5: batch_5 + batch_1_5_8 + batch_5_12_17 + batch_3_5_16
   + batch_5_17_19 = 1
 order_6: batch_6_9_13_18 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_1_5_8 + batch_1_8_14_19 + batch_1_8_14 = 1
 order_9: batch_6_9_13_18 = 1
 order_10: batch_0_4_10_15 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_5_12_17 = 1
 order_13: batch_6_9_13_18 = 1
 order_14: batch_14 + batch_1_8_14_19 + batch_14_17 + batch_1_8_14 = 1
 order_15: batch_0_4_10_15 = 1
 order_16: batch_3_5_16 + batch_3_16_17 + batch_3_16 = 1
 order_17: batch_17 + batch_5_12_17 + batch_14_17 + batch_3_16_17
   + batch_5_17_19 = 1
 order_18: batch_6_9_13_18 = 1
 order_19: batch_19 + batch_1_8_14_19 + batch_5_17_19 = 1
Bounds
End
