\ Model JOBPRP_RMP_1088
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x8ff5dd439a42a829
Minimize
  77.2 batch_9 + 89.6 batch_12 + 65.2 batch_14 + 74.8 batch_15
   + 77.2 batch_18 + 61.2 batch_19 + 119.2 batch_0_4_10_14_15
   + 105.6 batch_3_12_16 + 115.2 batch_2_7_11 + 118 batch_3_12_16_19
   + 117.2 batch_5_8_17 + 120 batch_1_6_13 + 134 batch_0_4_9_10_19
   + 138 batch_0_4_10_18_19 + 137.2 batch_3_9_15_16 + 122 batch_3_9_16_19
   + 138 batch_9_12_14_18 + 129.2 batch_12_15_18 + 127.2 batch_0_4_10_18
   + 127.2 batch_3_14_16_18 + 131.9999983068783 batch_9_12_18_19
   + 133.2 batch_3_15_16_18 + 103.2 batch_9_14_18_19
Subject To
 order_0: batch_0_4_10_14_15 + batch_0_4_9_10_19 + batch_0_4_10_18_19
   + batch_0_4_10_18 = 1
 order_1: batch_1_6_13 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16 + batch_3_12_16_19 + batch_3_9_15_16
   + batch_3_9_16_19 + batch_3_14_16_18 + batch_3_15_16_18 = 1
 order_4: batch_0_4_10_14_15 + batch_0_4_9_10_19 + batch_0_4_10_18_19
   + batch_0_4_10_18 = 1
 order_5: batch_5_8_17 = 1
 order_6: batch_1_6_13 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_5_8_17 = 1
 order_9: batch_9 + batch_0_4_9_10_19 + batch_3_9_15_16 + batch_3_9_16_19
   + batch_9_12_14_18 + batch_9_12_18_19 + batch_9_14_18_19 = 1
 order_10: batch_0_4_10_14_15 + batch_0_4_9_10_19 + batch_0_4_10_18_19
   + batch_0_4_10_18 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_3_12_16 + batch_3_12_16_19 + batch_9_12_14_18
   + batch_12_15_18 + batch_9_12_18_19 = 1
 order_13: batch_1_6_13 = 1
 order_14: batch_14 + batch_0_4_10_14_15 + batch_9_12_14_18
   + batch_3_14_16_18 + batch_9_14_18_19 = 1
 order_15: batch_15 + batch_0_4_10_14_15 + batch_3_9_15_16 + batch_12_15_18
   + batch_3_15_16_18 = 1
 order_16: batch_3_12_16 + batch_3_12_16_19 + batch_3_9_15_16
   + batch_3_9_16_19 + batch_3_14_16_18 + batch_3_15_16_18 = 1
 order_17: batch_5_8_17 = 1
 order_18: batch_18 + batch_0_4_10_18_19 + batch_9_12_14_18
   + batch_12_15_18 + batch_0_4_10_18 + batch_3_14_16_18 + batch_9_12_18_19
   + batch_3_15_16_18 + batch_9_14_18_19 = 1
 order_19: batch_19 + batch_3_12_16_19 + batch_0_4_9_10_19
   + batch_0_4_10_18_19 + batch_3_9_16_19 + batch_9_12_18_19
   + batch_9_14_18_19 = 1
Bounds
End
