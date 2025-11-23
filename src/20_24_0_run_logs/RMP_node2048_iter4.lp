\ Model JOBPRP_RMP_2048
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x7ce1111c45e593ff
Minimize
  98 batch_1 + 91.2 batch_5 + 89.6 batch_12 + 65.2 batch_14 + 74.8 batch_15
   + 89.2 batch_17 + 77.2 batch_18 + 61.2 batch_19 + 105.6 batch_3_12_16
   + 115.2 batch_2_7_11 + 117.2 batch_1_5_18 + 109.2 batch_8_9_14_18
   + 107.2 batch_8_9_18_19 + 129.2 batch_5_12_17
   + 121.1999957721094 batch_0_4_10_17 + 124 batch_8_9_12_19
   + 125.2 batch_5_17_18_19 + 119.2 batch_5_8_9_19 + 133.2 batch_3_15_16_18
   + 131.2 batch_1_5_15 + 126 batch_0_4_10_14_19 + 115.2 batch_0_4_10_15
   + 135.2 batch_5_6_13_15 + 111.2 batch_1_14_18_19 + 123.2 batch_5_15_17
   + 107.2 batch_6_13_14_19 + 120 batch_1_6_13 + 99.2 batch_8_9_14_19
Subject To
 order_0: batch_0_4_10_17 + batch_0_4_10_14_19 + batch_0_4_10_15 = 1
 order_1: batch_1 + batch_1_5_18 + batch_1_5_15 + batch_1_14_18_19
   + batch_1_6_13 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16 + batch_3_15_16_18 = 1
 order_4: batch_0_4_10_17 + batch_0_4_10_14_19 + batch_0_4_10_15 = 1
 order_5: batch_5 + batch_1_5_18 + batch_5_12_17 + batch_5_17_18_19
   + batch_5_8_9_19 + batch_1_5_15 + batch_5_6_13_15 + batch_5_15_17 = 1
 order_6: batch_5_6_13_15 + batch_6_13_14_19 + batch_1_6_13 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8_9_14_18 + batch_8_9_18_19 + batch_8_9_12_19
   + batch_5_8_9_19 + batch_8_9_14_19 = 1
 order_9: batch_8_9_14_18 + batch_8_9_18_19 + batch_8_9_12_19
   + batch_5_8_9_19 + batch_8_9_14_19 = 1
 order_10: batch_0_4_10_17 + batch_0_4_10_14_19 + batch_0_4_10_15 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_3_12_16 + batch_5_12_17 + batch_8_9_12_19 = 1
 order_13: batch_5_6_13_15 + batch_6_13_14_19 + batch_1_6_13 = 1
 order_14: batch_14 + batch_8_9_14_18 + batch_0_4_10_14_19
   + batch_1_14_18_19 + batch_6_13_14_19 + batch_8_9_14_19 = 1
 order_15: batch_15 + batch_3_15_16_18 + batch_1_5_15 + batch_0_4_10_15
   + batch_5_6_13_15 + batch_5_15_17 = 1
 order_16: batch_3_12_16 + batch_3_15_16_18 = 1
 order_17: batch_17 + batch_5_12_17 + batch_0_4_10_17 + batch_5_17_18_19
   + batch_5_15_17 = 1
 order_18: batch_18 + batch_1_5_18 + batch_8_9_14_18 + batch_8_9_18_19
   + batch_5_17_18_19 + batch_3_15_16_18 + batch_1_14_18_19 = 1
 order_19: batch_19 + batch_8_9_18_19 + batch_8_9_12_19 + batch_5_17_18_19
   + batch_5_8_9_19 + batch_0_4_10_14_19 + batch_1_14_18_19
   + batch_6_13_14_19 + batch_8_9_14_19 = 1
Bounds
End
