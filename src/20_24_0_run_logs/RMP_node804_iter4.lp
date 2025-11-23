\ Model JOBPRP_RMP_804
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x395d75feae7bb62b
Minimize
  91.2 batch_5 + 77.2 batch_9 + 78.4 batch_10 + 89.6 batch_12
   + 74.8 batch_15 + 137.2 batch_0_4_13_14_16_19 + 115.2 batch_2_7_11
   + 117.2 batch_0_4_14_15_16 + 109.2 batch_6_8_13_19 + 127.2 batch_1_9_17
   + 115.2 batch_3_5_18 + 127.2 batch_0_4_5_14_16 + 126 batch_6_8_12
   + 133.2 batch_1_15_17 + 115.2 batch_3_13_18_19 + 141.2 batch_5_9_10_15
   + 122 batch_9_12_13_19 + 117.2 batch_3_10_18 + 127.2 batch_10_12_13_19
   + 131.2 batch_5_10_12 + 135.2 batch_9_10_13_15_19
Subject To
 order_0: batch_0_4_13_14_16_19 + batch_0_4_14_15_16 + batch_0_4_5_14_16
   = 1
 order_1: batch_1_9_17 + batch_1_15_17 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_5_18 + batch_3_13_18_19 + batch_3_10_18 = 1
 order_4: batch_0_4_13_14_16_19 + batch_0_4_14_15_16 + batch_0_4_5_14_16
   = 1
 order_5: batch_5 + batch_3_5_18 + batch_0_4_5_14_16 + batch_5_9_10_15
   + batch_5_10_12 = 1
 order_6: batch_6_8_13_19 + batch_6_8_12 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_6_8_13_19 + batch_6_8_12 = 1
 order_9: batch_9 + batch_1_9_17 + batch_5_9_10_15 + batch_9_12_13_19
   + batch_9_10_13_15_19 = 1
 order_10: batch_10 + batch_5_9_10_15 + batch_3_10_18 + batch_10_12_13_19
   + batch_5_10_12 + batch_9_10_13_15_19 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_6_8_12 + batch_9_12_13_19 + batch_10_12_13_19
   + batch_5_10_12 = 1
 order_13: batch_0_4_13_14_16_19 + batch_6_8_13_19 + batch_3_13_18_19
   + batch_9_12_13_19 + batch_10_12_13_19 + batch_9_10_13_15_19 = 1
 order_14: batch_0_4_13_14_16_19 + batch_0_4_14_15_16 + batch_0_4_5_14_16
   = 1
 order_15: batch_15 + batch_0_4_14_15_16 + batch_1_15_17 + batch_5_9_10_15
   + batch_9_10_13_15_19 = 1
 order_16: batch_0_4_13_14_16_19 + batch_0_4_14_15_16 + batch_0_4_5_14_16
   = 1
 order_17: batch_1_9_17 + batch_1_15_17 = 1
 order_18: batch_3_5_18 + batch_3_13_18_19 + batch_3_10_18 = 1
 order_19: batch_0_4_13_14_16_19 + batch_6_8_13_19 + batch_3_13_18_19
   + batch_9_12_13_19 + batch_10_12_13_19 + batch_9_10_13_15_19 = 1
Bounds
End
