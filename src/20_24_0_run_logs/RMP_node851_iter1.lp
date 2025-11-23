\ Model JOBPRP_RMP_851
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xc19d7ec94cee6173
Minimize
  72.4 batch_8 + 77.2 batch_9 + 78.4 batch_10 + 89.6 batch_12
   + 74.8 batch_15 + 77.2 batch_18 + 61.2 batch_19 + 115.2 batch_2_7_11
   + 109.2 batch_6_9_13_18 + 130.4 batch_3_10_15_16 + 105.2 batch_6_9_13_19
   + 119.2 batch_3_8_16_19 + 132 batch_0_4_8_12 + 126 batch_8_12_15_19
   + 121.2 batch_0_4_5_14_19 + 126 batch_0_4_8_15_19
   + 135.2 batch_0_4_10_12 + 123.2 batch_6_9_10_13 + 137.2 batch_5_12_14_15
   + 127.2 batch_1_9_17 + 127.2 batch_0_4_12_15 + 115.2 batch_0_4_10_15
   + 121.2 batch_1_17_19 + 133.2 batch_3_15_16_18 + 117.2 batch_0_4_8_15
   + 125.2 batch_3_5_14_16 + 123.2 batch_5_10_14_18
   + 125.2 batch_6_10_13_18 + 124 batch_6_12_13_19 + 129.2 batch_8_10_12_19
   + 119.2 batch_0_4_8_10
Subject To
 order_0: batch_0_4_8_12 + batch_0_4_5_14_19 + batch_0_4_8_15_19
   + batch_0_4_10_12 + batch_0_4_12_15 + batch_0_4_10_15 + batch_0_4_8_15
   + batch_0_4_8_10 = 1
 order_1: batch_1_9_17 + batch_1_17_19 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_10_15_16 + batch_3_8_16_19 + batch_3_15_16_18
   + batch_3_5_14_16 = 1
 order_4: batch_0_4_8_12 + batch_0_4_5_14_19 + batch_0_4_8_15_19
   + batch_0_4_10_12 + batch_0_4_12_15 + batch_0_4_10_15 + batch_0_4_8_15
   + batch_0_4_8_10 = 1
 order_5: batch_0_4_5_14_19 + batch_5_12_14_15 + batch_3_5_14_16
   + batch_5_10_14_18 = 1
 order_6: batch_6_9_13_18 + batch_6_9_13_19 + batch_6_9_10_13
   + batch_6_10_13_18 + batch_6_12_13_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_3_8_16_19 + batch_0_4_8_12 + batch_8_12_15_19
   + batch_0_4_8_15_19 + batch_0_4_8_15 + batch_8_10_12_19 + batch_0_4_8_10
   = 1
 order_9: batch_9 + batch_6_9_13_18 + batch_6_9_13_19 + batch_6_9_10_13
   + batch_1_9_17 = 1
 order_10: batch_10 + batch_3_10_15_16 + batch_0_4_10_12 + batch_6_9_10_13
   + batch_0_4_10_15 + batch_5_10_14_18 + batch_6_10_13_18
   + batch_8_10_12_19 + batch_0_4_8_10 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_0_4_8_12 + batch_8_12_15_19 + batch_0_4_10_12
   + batch_5_12_14_15 + batch_0_4_12_15 + batch_6_12_13_19
   + batch_8_10_12_19 = 1
 order_13: batch_6_9_13_18 + batch_6_9_13_19 + batch_6_9_10_13
   + batch_6_10_13_18 + batch_6_12_13_19 = 1
 order_14: batch_0_4_5_14_19 + batch_5_12_14_15 + batch_3_5_14_16
   + batch_5_10_14_18 = 1
 order_15: batch_15 + batch_3_10_15_16 + batch_8_12_15_19
   + batch_0_4_8_15_19 + batch_5_12_14_15 + batch_0_4_12_15
   + batch_0_4_10_15 + batch_3_15_16_18 + batch_0_4_8_15 = 1
 order_16: batch_3_10_15_16 + batch_3_8_16_19 + batch_3_15_16_18
   + batch_3_5_14_16 = 1
 order_17: batch_1_9_17 + batch_1_17_19 = 1
 order_18: batch_18 + batch_6_9_13_18 + batch_3_15_16_18 + batch_5_10_14_18
   + batch_6_10_13_18 = 1
 order_19: batch_19 + batch_6_9_13_19 + batch_3_8_16_19 + batch_8_12_15_19
   + batch_0_4_5_14_19 + batch_0_4_8_15_19 + batch_1_17_19
   + batch_6_12_13_19 + batch_8_10_12_19 = 1
Bounds
End
