\ Model JOBPRP_RMP_683
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x66b8766575a33f9
Minimize
  98 batch_1 + 72.4 batch_8 + 78.4 batch_10 + 89.6 batch_12 + 77.2 batch_18
   + 115.2 batch_2_7_11 + 123.2 batch_5_14_15_17 + 105.2 batch_6_9_13_19
   + 132 batch_0_4_8_12 + 135.2 batch_0_4_10_12 + 131.2 batch_1_3_16
   + 121.2 batch_1_8_18 + 133.2 batch_1_12_18 + 119.2 batch_0_4_8_10
   + 131.2 batch_0_3_4_16 + 127.2 batch_0_4_10_18 + 125.2 batch_0_1_4
Subject To
 order_0: batch_0_4_8_12 + batch_0_4_10_12 + batch_0_4_8_10
   + batch_0_3_4_16 + batch_0_4_10_18 + batch_0_1_4 = 1
 order_1: batch_1 + batch_1_3_16 + batch_1_8_18 + batch_1_12_18
   + batch_0_1_4 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_1_3_16 + batch_0_3_4_16 = 1
 order_4: batch_0_4_8_12 + batch_0_4_10_12 + batch_0_4_8_10
   + batch_0_3_4_16 + batch_0_4_10_18 + batch_0_1_4 = 1
 order_5: batch_5_14_15_17 = 1
 order_6: batch_6_9_13_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_0_4_8_12 + batch_1_8_18 + batch_0_4_8_10 = 1
 order_9: batch_6_9_13_19 = 1
 order_10: batch_10 + batch_0_4_10_12 + batch_0_4_8_10 + batch_0_4_10_18
   = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_0_4_8_12 + batch_0_4_10_12 + batch_1_12_18 = 1
 order_13: batch_6_9_13_19 = 1
 order_14: batch_5_14_15_17 = 1
 order_15: batch_5_14_15_17 = 1
 order_16: batch_1_3_16 + batch_0_3_4_16 = 1
 order_17: batch_5_14_15_17 = 1
 order_18: batch_18 + batch_1_8_18 + batch_1_12_18 + batch_0_4_10_18 = 1
 order_19: batch_6_9_13_19 = 1
Bounds
End
