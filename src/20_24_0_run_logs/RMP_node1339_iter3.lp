\ Model JOBPRP_RMP_1339
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xc47800d6c15ee79
Minimize
  72.4 batch_8 + 78.4 batch_10 + 65.2 batch_14 + 89.2 batch_17
   + 105.6 batch_3_12_16 + 115.2 batch_2_7_11 + 109.2 batch_6_9_13_18
   + 129.2 batch_1_5_8 + 126 batch_0_4_8_15_19 + 130 batch_0_4_10_15_19
   + 119.2 batch_0_4_8_10 + 111.2 batch_0_4_10_14 + 125.2 batch_8_10_15_19
   + 105.2 batch_10_14_17 + 109.2 batch_0_4_14_17 + 125.2 batch_15_17_19
   + 111.2 batch_1_5
Subject To
 order_0: batch_0_4_8_15_19 + batch_0_4_10_15_19 + batch_0_4_8_10
   + batch_0_4_10_14 + batch_0_4_14_17 = 1
 order_1: batch_1_5_8 + batch_1_5 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16 = 1
 order_4: batch_0_4_8_15_19 + batch_0_4_10_15_19 + batch_0_4_8_10
   + batch_0_4_10_14 + batch_0_4_14_17 = 1
 order_5: batch_1_5_8 + batch_1_5 = 1
 order_6: batch_6_9_13_18 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_1_5_8 + batch_0_4_8_15_19 + batch_0_4_8_10
   + batch_8_10_15_19 = 1
 order_9: batch_6_9_13_18 = 1
 order_10: batch_10 + batch_0_4_10_15_19 + batch_0_4_8_10 + batch_0_4_10_14
   + batch_8_10_15_19 + batch_10_14_17 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_12_16 = 1
 order_13: batch_6_9_13_18 = 1
 order_14: batch_14 + batch_0_4_10_14 + batch_10_14_17 + batch_0_4_14_17
   = 1
 order_15: batch_0_4_8_15_19 + batch_0_4_10_15_19 + batch_8_10_15_19
   + batch_15_17_19 = 1
 order_16: batch_3_12_16 = 1
 order_17: batch_17 + batch_10_14_17 + batch_0_4_14_17 + batch_15_17_19
   = 1
 order_18: batch_6_9_13_18 = 1
 order_19: batch_0_4_8_15_19 + batch_0_4_10_15_19 + batch_8_10_15_19
   + batch_15_17_19 = 1
Bounds
End
