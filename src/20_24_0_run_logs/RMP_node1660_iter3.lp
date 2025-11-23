\ Model JOBPRP_RMP_1660
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xeb5ed5d730704e50
Minimize
  91.2 batch_5 + 77.2 batch_9 + 78.4 batch_10 + 89.6 batch_12
   + 65.2 batch_14 + 89.2 batch_17 + 77.2 batch_18 + 105.6 batch_3_12_16
   + 115.2 batch_2_7_11 + 121.2 batch_1_8_9 + 129.2 batch_1_5_8
   + 129.2 batch_3_10_14_16 + 124 batch_0_4_14_15_19 + 127.2 batch_0_4_5_10
   + 130 batch_0_4_10_15_19 + 119.2 batch_10_14_17_18
   + 131.2 batch_0_4_5_15_19 + 125.2 batch_6_10_13_18 + 113.2 batch_6_13_17
   + 128 batch_9_12_15_19 + 109.2 batch_0_4_14_17 + 103.2 batch_6_13_18
   + 121.2 batch_0_4_10_17 + 117.2 batch_5_6_13 + 119.2 batch_1_8_14
Subject To
 order_0: batch_0_4_14_15_19 + batch_0_4_5_10 + batch_0_4_10_15_19
   + batch_0_4_5_15_19 + batch_0_4_14_17 + batch_0_4_10_17 = 1
 order_1: batch_1_8_9 + batch_1_5_8 + batch_1_8_14 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16 + batch_3_10_14_16 = 1
 order_4: batch_0_4_14_15_19 + batch_0_4_5_10 + batch_0_4_10_15_19
   + batch_0_4_5_15_19 + batch_0_4_14_17 + batch_0_4_10_17 = 1
 order_5: batch_5 + batch_1_5_8 + batch_0_4_5_10 + batch_0_4_5_15_19
   + batch_5_6_13 = 1
 order_6: batch_6_10_13_18 + batch_6_13_17 + batch_6_13_18 + batch_5_6_13
   = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_1_8_9 + batch_1_5_8 + batch_1_8_14 = 1
 order_9: batch_9 + batch_1_8_9 + batch_9_12_15_19 = 1
 order_10: batch_10 + batch_3_10_14_16 + batch_0_4_5_10
   + batch_0_4_10_15_19 + batch_10_14_17_18 + batch_6_10_13_18
   + batch_0_4_10_17 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_3_12_16 + batch_9_12_15_19 = 1
 order_13: batch_6_10_13_18 + batch_6_13_17 + batch_6_13_18 + batch_5_6_13
   = 1
 order_14: batch_14 + batch_3_10_14_16 + batch_0_4_14_15_19
   + batch_10_14_17_18 + batch_0_4_14_17 + batch_1_8_14 = 1
 order_15: batch_0_4_14_15_19 + batch_0_4_10_15_19 + batch_0_4_5_15_19
   + batch_9_12_15_19 = 1
 order_16: batch_3_12_16 + batch_3_10_14_16 = 1
 order_17: batch_17 + batch_10_14_17_18 + batch_6_13_17 + batch_0_4_14_17
   + batch_0_4_10_17 = 1
 order_18: batch_18 + batch_10_14_17_18 + batch_6_10_13_18 + batch_6_13_18
   = 1
 order_19: batch_0_4_14_15_19 + batch_0_4_10_15_19 + batch_0_4_5_15_19
   + batch_9_12_15_19 = 1
Bounds
End
