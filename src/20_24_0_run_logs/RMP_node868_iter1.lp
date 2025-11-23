\ Model JOBPRP_RMP_868
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xa94a82156785d1b7
Minimize
  98 batch_1 + 72.4 batch_8 + 78.4 batch_10 + 74.8 batch_15 + 89.2 batch_17
   + 61.2 batch_19 + 105.6 batch_3_12_16 + 115.2 batch_2_7_11
   + 109.2 batch_6_9_13_18 + 118 batch_3_12_16_19 + 119.2 batch_5_8_10_14
   + 123.2 batch_0_4_8_17 + 121.2 batch_0_4_5_14_19 + 121.2 batch_1_5_14_19
   + 121.2 batch_0_4_10_17 + 113.2 batch_5_14_17_19
   + 129.2 batch_5_10_14_15 + 129.2 batch_8_10_17_19
   + 115.2 batch_0_4_10_15
Subject To
 order_0: batch_0_4_8_17 + batch_0_4_5_14_19 + batch_0_4_10_17
   + batch_0_4_10_15 = 1
 order_1: batch_1 + batch_1_5_14_19 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16 + batch_3_12_16_19 = 1
 order_4: batch_0_4_8_17 + batch_0_4_5_14_19 + batch_0_4_10_17
   + batch_0_4_10_15 = 1
 order_5: batch_5_8_10_14 + batch_0_4_5_14_19 + batch_1_5_14_19
   + batch_5_14_17_19 + batch_5_10_14_15 = 1
 order_6: batch_6_9_13_18 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_5_8_10_14 + batch_0_4_8_17 + batch_8_10_17_19
   = 1
 order_9: batch_6_9_13_18 = 1
 order_10: batch_10 + batch_5_8_10_14 + batch_0_4_10_17 + batch_5_10_14_15
   + batch_8_10_17_19 + batch_0_4_10_15 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_12_16 + batch_3_12_16_19 = 1
 order_13: batch_6_9_13_18 = 1
 order_14: batch_5_8_10_14 + batch_0_4_5_14_19 + batch_1_5_14_19
   + batch_5_14_17_19 + batch_5_10_14_15 = 1
 order_15: batch_15 + batch_5_10_14_15 + batch_0_4_10_15 = 1
 order_16: batch_3_12_16 + batch_3_12_16_19 = 1
 order_17: batch_17 + batch_0_4_8_17 + batch_0_4_10_17 + batch_5_14_17_19
   + batch_8_10_17_19 = 1
 order_18: batch_6_9_13_18 = 1
 order_19: batch_19 + batch_3_12_16_19 + batch_0_4_5_14_19
   + batch_1_5_14_19 + batch_5_14_17_19 + batch_8_10_17_19 = 1
Bounds
End
