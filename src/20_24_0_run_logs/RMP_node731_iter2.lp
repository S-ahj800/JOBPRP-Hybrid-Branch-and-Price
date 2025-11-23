\ Model JOBPRP_RMP_731
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x85df6dfbfc67dedc
Minimize
  91.2 batch_5 + 77.2 batch_9 + 78.4 batch_10 + 70.4 batch_13
   + 65.2 batch_14 + 74.8 batch_15 + 77.2 batch_18 + 61.2 batch_19
   + 115.2 batch_2_7_11 + 127.2 batch_1_10_17 + 135.2 batch_0_4_5_13_16
   + 105.2 batch_9_13_14_18_19 + 115.2 batch_6_8_13_14
   + 135.2 batch_5_9_13_15 + 117.2 batch_5_9_13_14_19
   + 133.2 batch_0_4_13_16_18 + 125.2 batch_1_13_17
   + 137.2 batch_0_4_15_16_18 + 117.2 batch_5_9_13_18
   + 113.2 batch_5_9_18_19 + 123.2 batch_5_6_8 + 118.4 batch_3_10_12
   + 133.2 batch_1_15_17 + 127.1999966503068 batch_1_10_17
   + 131.2 batch_0_4_9_16_19 + 139.2 batch_0_4_9_15_16
   + 124 batch_3_12_13_19 + 121.2 batch_1_17_19 + 131.2 batch_3_12_14_19
   + 131.2 batch_0_4_5_16_19 + 101.6 batch_3_12
Subject To
 order_0: batch_0_4_5_13_16 + batch_0_4_13_16_18 + batch_0_4_15_16_18
   + batch_0_4_9_16_19 + batch_0_4_9_15_16 + batch_0_4_5_16_19 = 1
 order_1: batch_1_10_17 + batch_1_13_17 + batch_1_15_17 + batch_1_10_17
   + batch_1_17_19 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_10_12 + batch_3_12_13_19 + batch_3_12_14_19 + batch_3_12
   = 1
 order_4: batch_0_4_5_13_16 + batch_0_4_13_16_18 + batch_0_4_15_16_18
   + batch_0_4_9_16_19 + batch_0_4_9_15_16 + batch_0_4_5_16_19 = 1
 order_5: batch_5 + batch_0_4_5_13_16 + batch_5_9_13_15
   + batch_5_9_13_14_19 + batch_5_9_13_18 + batch_5_9_18_19 + batch_5_6_8
   + batch_0_4_5_16_19 = 1
 order_6: batch_6_8_13_14 + batch_5_6_8 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_6_8_13_14 + batch_5_6_8 = 1
 order_9: batch_9 + batch_9_13_14_18_19 + batch_5_9_13_15
   + batch_5_9_13_14_19 + batch_5_9_13_18 + batch_5_9_18_19
   + batch_0_4_9_16_19 + batch_0_4_9_15_16 = 1
 order_10: batch_10 + batch_1_10_17 + batch_3_10_12 + batch_1_10_17 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_10_12 + batch_3_12_13_19 + batch_3_12_14_19 + batch_3_12
   = 1
 order_13: batch_13 + batch_0_4_5_13_16 + batch_9_13_14_18_19
   + batch_6_8_13_14 + batch_5_9_13_15 + batch_5_9_13_14_19
   + batch_0_4_13_16_18 + batch_1_13_17 + batch_5_9_13_18
   + batch_3_12_13_19 = 1
 order_14: batch_14 + batch_9_13_14_18_19 + batch_6_8_13_14
   + batch_5_9_13_14_19 + batch_3_12_14_19 = 1
 order_15: batch_15 + batch_5_9_13_15 + batch_0_4_15_16_18 + batch_1_15_17
   + batch_0_4_9_15_16 = 1
 order_16: batch_0_4_5_13_16 + batch_0_4_13_16_18 + batch_0_4_15_16_18
   + batch_0_4_9_16_19 + batch_0_4_9_15_16 + batch_0_4_5_16_19 = 1
 order_17: batch_1_10_17 + batch_1_13_17 + batch_1_15_17 + batch_1_10_17
   + batch_1_17_19 = 1
 order_18: batch_18 + batch_9_13_14_18_19 + batch_0_4_13_16_18
   + batch_0_4_15_16_18 + batch_5_9_13_18 + batch_5_9_18_19 = 1
 order_19: batch_19 + batch_9_13_14_18_19 + batch_5_9_13_14_19
   + batch_5_9_18_19 + batch_0_4_9_16_19 + batch_3_12_13_19 + batch_1_17_19
   + batch_3_12_14_19 + batch_0_4_5_16_19 = 1
Bounds
End
