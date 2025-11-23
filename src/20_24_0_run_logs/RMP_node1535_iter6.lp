\ Model JOBPRP_RMP_1535
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xd00b21627d73b590
Minimize
  77.2 batch_9 + 70.4 batch_13 + 65.2 batch_14 + 74.8 batch_15
   + 77.2 batch_18 + 61.2 batch_19 + 115.2 batch_2_7_11
   + 115.6 batch_3_12_15 + 127.2 batch_1_10_17 + 119.2 batch_5_6_9_19
   + 124 batch_3_12_13_19 + 137.2 batch_5_6_14_15 + 123.2 batch_5_6_18_19
   + 127.2 batch_0_4_8_13_16 + 136 batch_9_13_15_18_19
   + 105.2 batch_9_13_14_18_19 + 123.2 batch_3_12_18 + 136 batch_9_13_15_18
   + 119.2 batch_5_6_9 + 105.2 batch_9_13_14_18 + 120 batch_0_4_8_16_19
   + 125.2 batch_3_12_14 + 111.2 batch_0_4_8_16 + 125.2 batch_3_9_12
   + 121.2 batch_5_6_14_19
Subject To
 order_0: batch_0_4_8_13_16 + batch_0_4_8_16_19 + batch_0_4_8_16 = 1
 order_1: batch_1_10_17 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_15 + batch_3_12_13_19 + batch_3_12_18 + batch_3_12_14
   + batch_3_9_12 = 1
 order_4: batch_0_4_8_13_16 + batch_0_4_8_16_19 + batch_0_4_8_16 = 1
 order_5: batch_5_6_9_19 + batch_5_6_14_15 + batch_5_6_18_19 + batch_5_6_9
   + batch_5_6_14_19 = 1
 order_6: batch_5_6_9_19 + batch_5_6_14_15 + batch_5_6_18_19 + batch_5_6_9
   + batch_5_6_14_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_0_4_8_13_16 + batch_0_4_8_16_19 + batch_0_4_8_16 = 1
 order_9: batch_9 + batch_5_6_9_19 + batch_9_13_15_18_19
   + batch_9_13_14_18_19 + batch_9_13_15_18 + batch_5_6_9
   + batch_9_13_14_18 + batch_3_9_12 = 1
 order_10: batch_1_10_17 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_12_15 + batch_3_12_13_19 + batch_3_12_18 + batch_3_12_14
   + batch_3_9_12 = 1
 order_13: batch_13 + batch_3_12_13_19 + batch_0_4_8_13_16
   + batch_9_13_15_18_19 + batch_9_13_14_18_19 + batch_9_13_15_18
   + batch_9_13_14_18 = 1
 order_14: batch_14 + batch_5_6_14_15 + batch_9_13_14_18_19
   + batch_9_13_14_18 + batch_3_12_14 + batch_5_6_14_19 = 1
 order_15: batch_15 + batch_3_12_15 + batch_5_6_14_15 + batch_9_13_15_18_19
   + batch_9_13_15_18 = 1
 order_16: batch_0_4_8_13_16 + batch_0_4_8_16_19 + batch_0_4_8_16 = 1
 order_17: batch_1_10_17 = 1
 order_18: batch_18 + batch_5_6_18_19 + batch_9_13_15_18_19
   + batch_9_13_14_18_19 + batch_3_12_18 + batch_9_13_15_18
   + batch_9_13_14_18 = 1
 order_19: batch_19 + batch_5_6_9_19 + batch_3_12_13_19 + batch_5_6_18_19
   + batch_9_13_15_18_19 + batch_9_13_14_18_19 + batch_0_4_8_16_19
   + batch_5_6_14_19 = 1
Bounds
End
