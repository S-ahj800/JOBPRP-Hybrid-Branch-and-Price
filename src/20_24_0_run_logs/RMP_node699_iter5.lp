\ Model JOBPRP_RMP_699
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x85df6dfbfc67dedc
Minimize
  91.2 batch_5 + 78.4 batch_10 + 70.4 batch_13 + 65.2 batch_14
   + 74.8 batch_15 + 77.2 batch_18 + 61.2 batch_19 + 115.2 batch_2_7_11
   + 135.2 batch_0_4_5_13_16 + 127.2 batch_1_9_17 + 113.2 batch_6_8_14_19
   + 123.2 batch_5_6_8 + 118.4 batch_3_10_12 + 123.2 batch_6_8_10_19
   + 123.2 batch_5_13_14_18_19 + 137.2 batch_5_10_13_15
   + 123.2 batch_5_10_13_18 + 131.2 batch_5_15_18_19
   + 139.2 batch_5_10_15_18 + 131.2 batch_0_4_5_16_19 + 130 batch_6_8_15_19
   + 116.4 batch_3_12_13 + 124 batch_3_12_13_19 + 123.2 batch_5_14_15
   + 129.2 batch_5_10_14_15 + 136 batch_6_8_14_15
   + 127.2 batch_0_4_13_15_16 + 101.6 batch_3_12 + 123.2 batch_5_10_14_18
   + 113.2 batch_0_4_15_16 + 109.2 batch_5_18_19
Subject To
 order_0: batch_0_4_5_13_16 + batch_0_4_5_16_19 + batch_0_4_13_15_16
   + batch_0_4_15_16 = 1
 order_1: batch_1_9_17 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_10_12 + batch_3_12_13 + batch_3_12_13_19 + batch_3_12
   = 1
 order_4: batch_0_4_5_13_16 + batch_0_4_5_16_19 + batch_0_4_13_15_16
   + batch_0_4_15_16 = 1
 order_5: batch_5 + batch_0_4_5_13_16 + batch_5_6_8 + batch_5_13_14_18_19
   + batch_5_10_13_15 + batch_5_10_13_18 + batch_5_15_18_19
   + batch_5_10_15_18 + batch_0_4_5_16_19 + batch_5_14_15
   + batch_5_10_14_15 + batch_5_10_14_18 + batch_5_18_19 = 1
 order_6: batch_6_8_14_19 + batch_5_6_8 + batch_6_8_10_19 + batch_6_8_15_19
   + batch_6_8_14_15 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_6_8_14_19 + batch_5_6_8 + batch_6_8_10_19 + batch_6_8_15_19
   + batch_6_8_14_15 = 1
 order_9: batch_1_9_17 = 1
 order_10: batch_10 + batch_3_10_12 + batch_6_8_10_19 + batch_5_10_13_15
   + batch_5_10_13_18 + batch_5_10_15_18 + batch_5_10_14_15
   + batch_5_10_14_18 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_10_12 + batch_3_12_13 + batch_3_12_13_19 + batch_3_12
   = 1
 order_13: batch_13 + batch_0_4_5_13_16 + batch_5_13_14_18_19
   + batch_5_10_13_15 + batch_5_10_13_18 + batch_3_12_13 + batch_3_12_13_19
   + batch_0_4_13_15_16 = 1
 order_14: batch_14 + batch_6_8_14_19 + batch_5_13_14_18_19 + batch_5_14_15
   + batch_5_10_14_15 + batch_6_8_14_15 + batch_5_10_14_18 = 1
 order_15: batch_15 + batch_5_10_13_15 + batch_5_15_18_19
   + batch_5_10_15_18 + batch_6_8_15_19 + batch_5_14_15 + batch_5_10_14_15
   + batch_6_8_14_15 + batch_0_4_13_15_16 + batch_0_4_15_16 = 1
 order_16: batch_0_4_5_13_16 + batch_0_4_5_16_19 + batch_0_4_13_15_16
   + batch_0_4_15_16 = 1
 order_17: batch_1_9_17 = 1
 order_18: batch_18 + batch_5_13_14_18_19 + batch_5_10_13_18
   + batch_5_15_18_19 + batch_5_10_15_18 + batch_5_10_14_18 + batch_5_18_19
   = 1
 order_19: batch_19 + batch_6_8_14_19 + batch_6_8_10_19
   + batch_5_13_14_18_19 + batch_5_15_18_19 + batch_0_4_5_16_19
   + batch_6_8_15_19 + batch_3_12_13_19 + batch_5_18_19 = 1
Bounds
End
