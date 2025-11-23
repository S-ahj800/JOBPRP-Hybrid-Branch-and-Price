\ Model JOBPRP_RMP_192
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x85b8d1a3a1d5ca8a
Minimize
  77.2 batch_9 + 74.8 batch_15 + 89.2 batch_17 + 77.2 batch_18
   + 61.2 batch_19 + 105.6 batch_3_12_16 + 115.2 batch_2_7_11
   + 119.2 batch_0_4_15_17 + 123.2 batch_1_9_10 + 123.2 batch_5_8_14_18
   + 139.2 batch_1_10_15_19 + 125.2 batch_5_8_9_14 + 129.2 batch_1_10_18
   + 125.2 batch_9_17_18_19 + 132 batch_0_4_9_18_19
   + 109.2 batch_6_13_18_19 + 131.2 batch_0_4_17_18
   + 121.2 batch_6_13_17_19 + 135.2 batch_0_4_6_13_19 + 123.2 batch_6_13_15
   + 133.2 batch_6_13_15_18 + 127.2 batch_0_4_6_13
Subject To
 order_0: batch_0_4_15_17 + batch_0_4_9_18_19 + batch_0_4_17_18
   + batch_0_4_6_13_19 + batch_0_4_6_13 = 1
 order_1: batch_1_9_10 + batch_1_10_15_19 + batch_1_10_18 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16 = 1
 order_4: batch_0_4_15_17 + batch_0_4_9_18_19 + batch_0_4_17_18
   + batch_0_4_6_13_19 + batch_0_4_6_13 = 1
 order_5: batch_5_8_14_18 + batch_5_8_9_14 = 1
 order_6: batch_6_13_18_19 + batch_6_13_17_19 + batch_0_4_6_13_19
   + batch_6_13_15 + batch_6_13_15_18 + batch_0_4_6_13 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_5_8_14_18 + batch_5_8_9_14 = 1
 order_9: batch_9 + batch_1_9_10 + batch_5_8_9_14 + batch_9_17_18_19
   + batch_0_4_9_18_19 = 1
 order_10: batch_1_9_10 + batch_1_10_15_19 + batch_1_10_18 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_12_16 = 1
 order_13: batch_6_13_18_19 + batch_6_13_17_19 + batch_0_4_6_13_19
   + batch_6_13_15 + batch_6_13_15_18 + batch_0_4_6_13 = 1
 order_14: batch_5_8_14_18 + batch_5_8_9_14 = 1
 order_15: batch_15 + batch_0_4_15_17 + batch_1_10_15_19 + batch_6_13_15
   + batch_6_13_15_18 = 1
 order_16: batch_3_12_16 = 1
 order_17: batch_17 + batch_0_4_15_17 + batch_9_17_18_19 + batch_0_4_17_18
   + batch_6_13_17_19 = 1
 order_18: batch_18 + batch_5_8_14_18 + batch_1_10_18 + batch_9_17_18_19
   + batch_0_4_9_18_19 + batch_6_13_18_19 + batch_0_4_17_18
   + batch_6_13_15_18 = 1
 order_19: batch_19 + batch_1_10_15_19 + batch_9_17_18_19
   + batch_0_4_9_18_19 + batch_6_13_18_19 + batch_6_13_17_19
   + batch_0_4_6_13_19 = 1
Bounds
End
