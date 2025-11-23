\ Model JOBPRP_RMP_1896
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x3a076c9752ccadfd
Minimize
  83.6 batch_3 + 91.2 batch_5 + 77.2 batch_9 + 65.2 batch_14 + 74.8 batch_15
   + 77.2 batch_18 + 115.2 batch_2_7_11 + 127.2 batch_1_10_17
   + 115.2 batch_0_4_8_14_16 + 119.2 batch_5_6_9_19 + 107.2 batch_6_9_18_19
   + 129.2 batch_5_12_13 + 121.2 batch_5_9_14_18 + 143.2 batch_5_12_13_15
   + 115.2 batch_3_5_18 + 119.2 batch_3_5_9 + 127.2 batch_3_6_14_19
   + 134 batch_9_12_13_15 + 119.2 batch_3_6_19 + 139.2 batch_12_13_15_18
   + 136 batch_9_12_13_18 + 131.2 batch_5_6_15_19
Subject To
 order_0: batch_0_4_8_14_16 = 1
 order_1: batch_1_10_17 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3 + batch_3_5_18 + batch_3_5_9 + batch_3_6_14_19
   + batch_3_6_19 = 1
 order_4: batch_0_4_8_14_16 = 1
 order_5: batch_5 + batch_5_6_9_19 + batch_5_12_13 + batch_5_9_14_18
   + batch_5_12_13_15 + batch_3_5_18 + batch_3_5_9 + batch_5_6_15_19 = 1
 order_6: batch_5_6_9_19 + batch_6_9_18_19 + batch_3_6_14_19 + batch_3_6_19
   + batch_5_6_15_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_0_4_8_14_16 = 1
 order_9: batch_9 + batch_5_6_9_19 + batch_6_9_18_19 + batch_5_9_14_18
   + batch_3_5_9 + batch_9_12_13_15 + batch_9_12_13_18 = 1
 order_10: batch_1_10_17 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_5_12_13 + batch_5_12_13_15 + batch_9_12_13_15
   + batch_12_13_15_18 + batch_9_12_13_18 = 1
 order_13: batch_5_12_13 + batch_5_12_13_15 + batch_9_12_13_15
   + batch_12_13_15_18 + batch_9_12_13_18 = 1
 order_14: batch_14 + batch_0_4_8_14_16 + batch_5_9_14_18 + batch_3_6_14_19
   = 1
 order_15: batch_15 + batch_5_12_13_15 + batch_9_12_13_15
   + batch_12_13_15_18 + batch_5_6_15_19 = 1
 order_16: batch_0_4_8_14_16 = 1
 order_17: batch_1_10_17 = 1
 order_18: batch_18 + batch_6_9_18_19 + batch_5_9_14_18 + batch_3_5_18
   + batch_12_13_15_18 + batch_9_12_13_18 = 1
 order_19: batch_5_6_9_19 + batch_6_9_18_19 + batch_3_6_14_19
   + batch_3_6_19 + batch_5_6_15_19 = 1
Bounds
End
