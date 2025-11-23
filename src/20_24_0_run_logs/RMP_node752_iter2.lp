\ Model JOBPRP_RMP_752
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x52cd8a6156fa137
Minimize
  98 batch_1 + 77.2 batch_9 + 78.4 batch_10 + 89.6 batch_12 + 77.2 batch_18
   + 61.2 batch_19 + 105.6 batch_3_12_16 + 115.2 batch_2_7_11
   + 123.2 batch_5_14_15_17 + 119.2 batch_0_4_15_17 + 109.2 batch_6_8_13_19
   + 121.2 batch_0_4_5_14_19 + 121.2 batch_1_5_14_19 + 111.2 batch_1_9_18
   + 135.2 batch_0_4_10_12 + 131.2 batch_1_3_16 + 134 batch_0_4_9_10_19
   + 125.2 batch_3_5_14_16 + 121.2 batch_9_10_18
Subject To
 order_0: batch_0_4_15_17 + batch_0_4_5_14_19 + batch_0_4_10_12
   + batch_0_4_9_10_19 = 1
 order_1: batch_1 + batch_1_5_14_19 + batch_1_9_18 + batch_1_3_16 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16 + batch_1_3_16 + batch_3_5_14_16 = 1
 order_4: batch_0_4_15_17 + batch_0_4_5_14_19 + batch_0_4_10_12
   + batch_0_4_9_10_19 = 1
 order_5: batch_5_14_15_17 + batch_0_4_5_14_19 + batch_1_5_14_19
   + batch_3_5_14_16 = 1
 order_6: batch_6_8_13_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_6_8_13_19 = 1
 order_9: batch_9 + batch_1_9_18 + batch_0_4_9_10_19 + batch_9_10_18 = 1
 order_10: batch_10 + batch_0_4_10_12 + batch_0_4_9_10_19 + batch_9_10_18
   = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_3_12_16 + batch_0_4_10_12 = 1
 order_13: batch_6_8_13_19 = 1
 order_14: batch_5_14_15_17 + batch_0_4_5_14_19 + batch_1_5_14_19
   + batch_3_5_14_16 = 1
 order_15: batch_5_14_15_17 + batch_0_4_15_17 = 1
 order_16: batch_3_12_16 + batch_1_3_16 + batch_3_5_14_16 = 1
 order_17: batch_5_14_15_17 + batch_0_4_15_17 = 1
 order_18: batch_18 + batch_1_9_18 + batch_9_10_18 = 1
 order_19: batch_19 + batch_6_8_13_19 + batch_0_4_5_14_19 + batch_1_5_14_19
   + batch_0_4_9_10_19 = 1
Bounds
End
