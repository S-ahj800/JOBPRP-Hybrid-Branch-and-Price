\ Model JOBPRP_RMP_1400
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x3a80ca946a88d756
Minimize
  98 batch_1 + 91.2 batch_5 + 78.4 batch_10 + 89.6 batch_12 + 65.2 batch_14
   + 89.2 batch_17 + 115.2 batch_2_7_11 + 109.2 batch_6_9_13_18
   + 127.2 batch_5_15_17_19 + 124 batch_0_4_14_15_19
   + 130 batch_0_4_10_15_19 + 126 batch_3_8_14_16 + 117.2 batch_1_14_17
   + 111.2 batch_0_4_10_14 + 133.2 batch_5_12_15_19
   + 139.2 batch_12_15_17_19 + 109.2 batch_0_4_14_17
   + 121.2 batch_0_4_10_17 + 129.2 batch_0_1_4_14 + 135.2 batch_0_4_10_12
Subject To
 order_0: batch_0_4_14_15_19 + batch_0_4_10_15_19 + batch_0_4_10_14
   + batch_0_4_14_17 + batch_0_4_10_17 + batch_0_1_4_14 + batch_0_4_10_12
   = 1
 order_1: batch_1 + batch_1_14_17 + batch_0_1_4_14 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_8_14_16 = 1
 order_4: batch_0_4_14_15_19 + batch_0_4_10_15_19 + batch_0_4_10_14
   + batch_0_4_14_17 + batch_0_4_10_17 + batch_0_1_4_14 + batch_0_4_10_12
   = 1
 order_5: batch_5 + batch_5_15_17_19 + batch_5_12_15_19 = 1
 order_6: batch_6_9_13_18 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_3_8_14_16 = 1
 order_9: batch_6_9_13_18 = 1
 order_10: batch_10 + batch_0_4_10_15_19 + batch_0_4_10_14
   + batch_0_4_10_17 + batch_0_4_10_12 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_5_12_15_19 + batch_12_15_17_19
   + batch_0_4_10_12 = 1
 order_13: batch_6_9_13_18 = 1
 order_14: batch_14 + batch_0_4_14_15_19 + batch_3_8_14_16 + batch_1_14_17
   + batch_0_4_10_14 + batch_0_4_14_17 + batch_0_1_4_14 = 1
 order_15: batch_5_15_17_19 + batch_0_4_14_15_19 + batch_0_4_10_15_19
   + batch_5_12_15_19 + batch_12_15_17_19 = 1
 order_16: batch_3_8_14_16 = 1
 order_17: batch_17 + batch_5_15_17_19 + batch_1_14_17 + batch_12_15_17_19
   + batch_0_4_14_17 + batch_0_4_10_17 = 1
 order_18: batch_6_9_13_18 = 1
 order_19: batch_5_15_17_19 + batch_0_4_14_15_19 + batch_0_4_10_15_19
   + batch_5_12_15_19 + batch_12_15_17_19 = 1
Bounds
End
