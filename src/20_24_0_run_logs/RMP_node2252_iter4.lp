\ Model JOBPRP_RMP_2252
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x9addcbcc82ec93c3
Minimize
  98 batch_1 + 91.2 batch_5 + 78.4 batch_10 + 89.6 batch_12 + 65.2 batch_14
   + 74.8 batch_15 + 89.2 batch_17 + 77.2 batch_18 + 61.2 batch_19
   + 123.2 batch_1_17_18 + 115.2 batch_2_7_11 + 130.4 batch_3_10_15_16
   + 117.2 batch_1_5_18 + 123.2 batch_0_4_5_17 + 127.2 batch_1_10_17
   + 119.2 batch_0_4_15_17 + 109.2 batch_8_9_14_18 + 121.2 batch_1_8_9
   + 125.2 batch_5_10_17_19 + 107.2 batch_8_9_18_19
   + 125.2 batch_10_14_15_17 + 129.2 batch_0_1_4_14 + 137.2 batch_0_1_4_15
   + 127.2 batch_1_5_10 + 111.2 batch_1_14_18_19 + 127.2 batch_0_4_12_15
   + 117.2 batch_3_5_16 + 131.2 batch_1_3_16 + 124 batch_6_12_13_19
   + 133.2 batch_1_12_18 + 120 batch_1_6_13 + 117.2 batch_1_14_17
   + 141.2 batch_1_10_12
Subject To
 order_0: batch_0_4_5_17 + batch_0_4_15_17 + batch_0_1_4_14
   + batch_0_1_4_15 + batch_0_4_12_15 = 1
 order_1: batch_1 + batch_1_17_18 + batch_1_5_18 + batch_1_10_17
   + batch_1_8_9 + batch_0_1_4_14 + batch_0_1_4_15 + batch_1_5_10
   + batch_1_14_18_19 + batch_1_3_16 + batch_1_12_18 + batch_1_6_13
   + batch_1_14_17 + batch_1_10_12 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_10_15_16 + batch_3_5_16 + batch_1_3_16 = 1
 order_4: batch_0_4_5_17 + batch_0_4_15_17 + batch_0_1_4_14
   + batch_0_1_4_15 + batch_0_4_12_15 = 1
 order_5: batch_5 + batch_1_5_18 + batch_0_4_5_17 + batch_5_10_17_19
   + batch_1_5_10 + batch_3_5_16 = 1
 order_6: batch_6_12_13_19 + batch_1_6_13 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8_9_14_18 + batch_1_8_9 + batch_8_9_18_19 = 1
 order_9: batch_8_9_14_18 + batch_1_8_9 + batch_8_9_18_19 = 1
 order_10: batch_10 + batch_3_10_15_16 + batch_1_10_17 + batch_5_10_17_19
   + batch_10_14_15_17 + batch_1_5_10 + batch_1_10_12 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_0_4_12_15 + batch_6_12_13_19 + batch_1_12_18
   + batch_1_10_12 = 1
 order_13: batch_6_12_13_19 + batch_1_6_13 = 1
 order_14: batch_14 + batch_8_9_14_18 + batch_10_14_15_17 + batch_0_1_4_14
   + batch_1_14_18_19 + batch_1_14_17 = 1
 order_15: batch_15 + batch_3_10_15_16 + batch_0_4_15_17
   + batch_10_14_15_17 + batch_0_1_4_15 + batch_0_4_12_15 = 1
 order_16: batch_3_10_15_16 + batch_3_5_16 + batch_1_3_16 = 1
 order_17: batch_17 + batch_1_17_18 + batch_0_4_5_17 + batch_1_10_17
   + batch_0_4_15_17 + batch_5_10_17_19 + batch_10_14_15_17 + batch_1_14_17
   = 1
 order_18: batch_18 + batch_1_17_18 + batch_1_5_18 + batch_8_9_14_18
   + batch_8_9_18_19 + batch_1_14_18_19 + batch_1_12_18 = 1
 order_19: batch_19 + batch_5_10_17_19 + batch_8_9_18_19 + batch_1_14_18_19
   + batch_6_12_13_19 = 1
Bounds
End
