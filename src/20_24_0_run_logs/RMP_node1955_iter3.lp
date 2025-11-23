\ Model JOBPRP_RMP_1955
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x4b37aa8fdb377de
Minimize
  91.2 batch_5 + 89.6 batch_12 + 65.2 batch_14 + 74.8 batch_15
   + 77.2 batch_18 + 61.2 batch_19 + 115.2 batch_2_7_11
   + 109.2 batch_6_9_13_18 + 105.2 batch_6_9_13_19 + 129.2 batch_1_5_8
   + 121.1999957721094 batch_0_4_10_17 + 133.2 batch_3_15_16_18
   + 121.2 batch_1_8_18 + 121.2 batch_1_8_14_19 + 117.2 batch_3_5_16
   + 111.2 batch_6_9_13_14 + 130 batch_6_9_13_15 + 129.2 batch_5_12_18_19
   + 129.2 batch_5_12_15 + 113.6 batch_3_15_16 + 103.6 batch_12_15
Subject To
 order_0: batch_0_4_10_17 = 1
 order_1: batch_1_5_8 + batch_1_8_18 + batch_1_8_14_19 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_15_16_18 + batch_3_5_16 + batch_3_15_16 = 1
 order_4: batch_0_4_10_17 = 1
 order_5: batch_5 + batch_1_5_8 + batch_3_5_16 + batch_5_12_18_19
   + batch_5_12_15 = 1
 order_6: batch_6_9_13_18 + batch_6_9_13_19 + batch_6_9_13_14
   + batch_6_9_13_15 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_1_5_8 + batch_1_8_18 + batch_1_8_14_19 = 1
 order_9: batch_6_9_13_18 + batch_6_9_13_19 + batch_6_9_13_14
   + batch_6_9_13_15 = 1
 order_10: batch_0_4_10_17 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_5_12_18_19 + batch_5_12_15 + batch_12_15 = 1
 order_13: batch_6_9_13_18 + batch_6_9_13_19 + batch_6_9_13_14
   + batch_6_9_13_15 = 1
 order_14: batch_14 + batch_1_8_14_19 + batch_6_9_13_14 = 1
 order_15: batch_15 + batch_3_15_16_18 + batch_6_9_13_15 + batch_5_12_15
   + batch_3_15_16 + batch_12_15 = 1
 order_16: batch_3_15_16_18 + batch_3_5_16 + batch_3_15_16 = 1
 order_17: batch_0_4_10_17 = 1
 order_18: batch_18 + batch_6_9_13_18 + batch_3_15_16_18 + batch_1_8_18
   + batch_5_12_18_19 = 1
 order_19: batch_19 + batch_6_9_13_19 + batch_1_8_14_19 + batch_5_12_18_19
   = 1
Bounds
End
