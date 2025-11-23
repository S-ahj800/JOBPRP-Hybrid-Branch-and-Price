\ Model JOBPRP_RMP_1975
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x7d5a6f195da1bd58
Minimize
  91.2 batch_5 + 77.2 batch_9 + 89.6 batch_12 + 65.2 batch_14
   + 74.8 batch_15 + 89.2 batch_17 + 77.2 batch_18 + 105.6 batch_3_12_16
   + 115.2 batch_2_7_11 + 129.2 batch_1_5_8
   + 121.1999957721094 batch_0_4_10_17 + 133.2 batch_3_15_16_18
   + 121.2 batch_6_13_17_19 + 121.2 batch_1_8_18 + 131.2 batch_12_15_17
   + 115.2 batch_0_4_10_15 + 117.2 batch_5_6_13_19 + 113.2 batch_5_9_18
   + 135.2 batch_5_9_15_18 + 109.2 batch_6_13_18_19
   + 127.2 batch_3_14_16_18 + 138 batch_9_12_14_18 + 125.2 batch_9_14_17_18
   + 124 batch_6_12_13_19 + 137.2 batch_3_9_15_16 + 119.2 batch_1_8_14
Subject To
 order_0: batch_0_4_10_17 + batch_0_4_10_15 = 1
 order_1: batch_1_5_8 + batch_1_8_18 + batch_1_8_14 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16 + batch_3_15_16_18 + batch_3_14_16_18
   + batch_3_9_15_16 = 1
 order_4: batch_0_4_10_17 + batch_0_4_10_15 = 1
 order_5: batch_5 + batch_1_5_8 + batch_5_6_13_19 + batch_5_9_18
   + batch_5_9_15_18 = 1
 order_6: batch_6_13_17_19 + batch_5_6_13_19 + batch_6_13_18_19
   + batch_6_12_13_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_1_5_8 + batch_1_8_18 + batch_1_8_14 = 1
 order_9: batch_9 + batch_5_9_18 + batch_5_9_15_18 + batch_9_12_14_18
   + batch_9_14_17_18 + batch_3_9_15_16 = 1
 order_10: batch_0_4_10_17 + batch_0_4_10_15 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_3_12_16 + batch_12_15_17 + batch_9_12_14_18
   + batch_6_12_13_19 = 1
 order_13: batch_6_13_17_19 + batch_5_6_13_19 + batch_6_13_18_19
   + batch_6_12_13_19 = 1
 order_14: batch_14 + batch_3_14_16_18 + batch_9_12_14_18
   + batch_9_14_17_18 + batch_1_8_14 = 1
 order_15: batch_15 + batch_3_15_16_18 + batch_12_15_17 + batch_0_4_10_15
   + batch_5_9_15_18 + batch_3_9_15_16 = 1
 order_16: batch_3_12_16 + batch_3_15_16_18 + batch_3_14_16_18
   + batch_3_9_15_16 = 1
 order_17: batch_17 + batch_0_4_10_17 + batch_6_13_17_19 + batch_12_15_17
   + batch_9_14_17_18 = 1
 order_18: batch_18 + batch_3_15_16_18 + batch_1_8_18 + batch_5_9_18
   + batch_5_9_15_18 + batch_6_13_18_19 + batch_3_14_16_18
   + batch_9_12_14_18 + batch_9_14_17_18 = 1
 order_19: batch_6_13_17_19 + batch_5_6_13_19 + batch_6_13_18_19
   + batch_6_12_13_19 = 1
Bounds
End
