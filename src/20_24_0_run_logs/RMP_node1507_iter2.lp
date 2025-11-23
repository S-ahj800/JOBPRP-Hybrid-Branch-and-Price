\ Model JOBPRP_RMP_1507
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x66b8766575a33f9
Minimize
  98 batch_1 + 91.2 batch_5 + 78.4 batch_10 + 89.6 batch_12 + 77.2 batch_18
   + 105.6 batch_3_12_16 + 115.2 batch_2_7_11 + 113.2 batch_6_13_14_17
   + 117.2 batch_1_5_18 + 127.2 batch_0_4_5_10 + 130 batch_0_4_10_15_19
   + 127.2 batch_1_5_10 + 131.2 batch_0_4_5_15_19 + 107.2 batch_8_9_18
   + 117.2 batch_3_5_16 + 122 batch_8_9_15_19 + 125.2 batch_0_1_4
Subject To
 order_0: batch_0_4_5_10 + batch_0_4_10_15_19 + batch_0_4_5_15_19
   + batch_0_1_4 = 1
 order_1: batch_1 + batch_1_5_18 + batch_1_5_10 + batch_0_1_4 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16 + batch_3_5_16 = 1
 order_4: batch_0_4_5_10 + batch_0_4_10_15_19 + batch_0_4_5_15_19
   + batch_0_1_4 = 1
 order_5: batch_5 + batch_1_5_18 + batch_0_4_5_10 + batch_1_5_10
   + batch_0_4_5_15_19 + batch_3_5_16 = 1
 order_6: batch_6_13_14_17 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8_9_18 + batch_8_9_15_19 = 1
 order_9: batch_8_9_18 + batch_8_9_15_19 = 1
 order_10: batch_10 + batch_0_4_5_10 + batch_0_4_10_15_19 + batch_1_5_10
   = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_3_12_16 = 1
 order_13: batch_6_13_14_17 = 1
 order_14: batch_6_13_14_17 = 1
 order_15: batch_0_4_10_15_19 + batch_0_4_5_15_19 + batch_8_9_15_19 = 1
 order_16: batch_3_12_16 + batch_3_5_16 = 1
 order_17: batch_6_13_14_17 = 1
 order_18: batch_18 + batch_1_5_18 + batch_8_9_18 = 1
 order_19: batch_0_4_10_15_19 + batch_0_4_5_15_19 + batch_8_9_15_19 = 1
Bounds
End
