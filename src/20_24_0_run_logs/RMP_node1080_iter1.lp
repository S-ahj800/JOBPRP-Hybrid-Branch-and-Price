\ Model JOBPRP_RMP_1080
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x452a2f87a6e893ca
Minimize
  77.2 batch_9 + 89.6 batch_12 + 65.2 batch_14 + 74.8 batch_15
   + 77.2 batch_18 + 61.2 batch_19 + 119.2 batch_0_4_10_14_15
   + 105.6 batch_3_12_16 + 115.2 batch_2_7_11 + 118 batch_3_12_16_19
   + 117.2 batch_1_5_18 + 119.2 batch_1_5_9 + 127.2 batch_8_14_15_17
   + 127.2 batch_6_12_13_14 + 131.2 batch_8_17_18_19
   + 134 batch_0_4_9_10_19 + 138 batch_0_4_10_18_19
   + 133.2 batch_6_13_15_18 + 109.2 batch_6_13_14_18
   + 125.2 batch_8_9_17_19 + 124 batch_6_12_13_19 + 109.2 batch_6_13_18_19
Subject To
 order_0: batch_0_4_10_14_15 + batch_0_4_9_10_19 + batch_0_4_10_18_19 = 1
 order_1: batch_1_5_18 + batch_1_5_9 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16 + batch_3_12_16_19 = 1
 order_4: batch_0_4_10_14_15 + batch_0_4_9_10_19 + batch_0_4_10_18_19 = 1
 order_5: batch_1_5_18 + batch_1_5_9 = 1
 order_6: batch_6_12_13_14 + batch_6_13_15_18 + batch_6_13_14_18
   + batch_6_12_13_19 + batch_6_13_18_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8_14_15_17 + batch_8_17_18_19 + batch_8_9_17_19 = 1
 order_9: batch_9 + batch_1_5_9 + batch_0_4_9_10_19 + batch_8_9_17_19 = 1
 order_10: batch_0_4_10_14_15 + batch_0_4_9_10_19 + batch_0_4_10_18_19 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_3_12_16 + batch_3_12_16_19 + batch_6_12_13_14
   + batch_6_12_13_19 = 1
 order_13: batch_6_12_13_14 + batch_6_13_15_18 + batch_6_13_14_18
   + batch_6_12_13_19 + batch_6_13_18_19 = 1
 order_14: batch_14 + batch_0_4_10_14_15 + batch_8_14_15_17
   + batch_6_12_13_14 + batch_6_13_14_18 = 1
 order_15: batch_15 + batch_0_4_10_14_15 + batch_8_14_15_17
   + batch_6_13_15_18 = 1
 order_16: batch_3_12_16 + batch_3_12_16_19 = 1
 order_17: batch_8_14_15_17 + batch_8_17_18_19 + batch_8_9_17_19 = 1
 order_18: batch_18 + batch_1_5_18 + batch_8_17_18_19 + batch_0_4_10_18_19
   + batch_6_13_15_18 + batch_6_13_14_18 + batch_6_13_18_19 = 1
 order_19: batch_19 + batch_3_12_16_19 + batch_8_17_18_19
   + batch_0_4_9_10_19 + batch_0_4_10_18_19 + batch_8_9_17_19
   + batch_6_12_13_19 + batch_6_13_18_19 = 1
Bounds
End
