\ Model JOBPRP_RMP_144
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x72a3192c018ca037
Minimize
  91.2 batch_5 + 78.4 batch_10 + 70.4 batch_13 + 65.2 batch_14
   + 74.8 batch_15 + 61.2 batch_19 + 137.2 batch_0_4_13_14_16_19
   + 123.2 batch_1_17_18 + 115.2 batch_2_7_11 + 123.2 batch_0_4_10_15_16
   + 117.2 batch_0_4_14_15_16 + 135.2 batch_0_4_5_13_16
   + 131.2 batch_9_10_12_13 + 127.2 batch_5_9_12_19
   + 119.2 batch_0_4_10_14_16 + 125.2 batch_3_6_8
   + 125.2 batch_5_10_13_14_19 + 134 batch_9_12_13_15
   + 122 batch_9_12_13_19
Subject To
 order_0: batch_0_4_13_14_16_19 + batch_0_4_10_15_16 + batch_0_4_14_15_16
   + batch_0_4_5_13_16 + batch_0_4_10_14_16 = 1
 order_1: batch_1_17_18 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_6_8 = 1
 order_4: batch_0_4_13_14_16_19 + batch_0_4_10_15_16 + batch_0_4_14_15_16
   + batch_0_4_5_13_16 + batch_0_4_10_14_16 = 1
 order_5: batch_5 + batch_0_4_5_13_16 + batch_5_9_12_19
   + batch_5_10_13_14_19 = 1
 order_6: batch_3_6_8 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_3_6_8 = 1
 order_9: batch_9_10_12_13 + batch_5_9_12_19 + batch_9_12_13_15
   + batch_9_12_13_19 = 1
 order_10: batch_10 + batch_0_4_10_15_16 + batch_9_10_12_13
   + batch_0_4_10_14_16 + batch_5_10_13_14_19 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_9_10_12_13 + batch_5_9_12_19 + batch_9_12_13_15
   + batch_9_12_13_19 = 1
 order_13: batch_13 + batch_0_4_13_14_16_19 + batch_0_4_5_13_16
   + batch_9_10_12_13 + batch_5_10_13_14_19 + batch_9_12_13_15
   + batch_9_12_13_19 = 1
 order_14: batch_14 + batch_0_4_13_14_16_19 + batch_0_4_14_15_16
   + batch_0_4_10_14_16 + batch_5_10_13_14_19 = 1
 order_15: batch_15 + batch_0_4_10_15_16 + batch_0_4_14_15_16
   + batch_9_12_13_15 = 1
 order_16: batch_0_4_13_14_16_19 + batch_0_4_10_15_16 + batch_0_4_14_15_16
   + batch_0_4_5_13_16 + batch_0_4_10_14_16 = 1
 order_17: batch_1_17_18 = 1
 order_18: batch_1_17_18 = 1
 order_19: batch_19 + batch_0_4_13_14_16_19 + batch_5_9_12_19
   + batch_5_10_13_14_19 + batch_9_12_13_19 = 1
Bounds
End
