\ Model JOBPRP_RMP_1827
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x979611262945d7a8
Minimize
  83.6 batch_3 + 91.2 batch_5 + 89.2 batch_6 + 72.4 batch_8 + 77.2 batch_9
   + 78.4 batch_10 + 65.2 batch_14 + 74.8 batch_15 + 77.2 batch_18
   + 61.2 batch_19 + 123.2 batch_1_17_18 + 115.2 batch_2_7_11
   + 123.2 batch_0_4_10_15_16 + 127.2 batch_1_10_17
   + 117.2 batch_0_4_14_15_16 + 115.2 batch_0_4_8_14_16
   + 124 batch_6_12_13_19 + 117.2 batch_1_14_17 + 119.2 batch_5_6_9_19
   + 125.2 batch_6_10_14_18 + 123.2 batch_3_5_6 + 125.2 batch_5_6_10_19
   + 116 batch_3_9_18_19 + 127.2 batch_6_12_13_14 + 117.2 batch_3_5_14_19
   + 107.2 batch_6_9_18_19 + 129.2 batch_5_12_13 + 121.2 batch_5_9_14_18
   + 131.2 batch_9_10_12_13 + 127.2 batch_1_9_17 + 129.2 batch_5_8_14_15
   + 134 batch_3_8_15_19 + 143.2 batch_5_12_13_15 + 130.4 batch_10_12_13_15
   + 119.2 batch_5_8_9_19 + 133.2 batch_3_5_15_19 + 112.4 batch_3_8_10
Subject To
 order_0: batch_0_4_10_15_16 + batch_0_4_14_15_16 + batch_0_4_8_14_16 = 1
 order_1: batch_1_17_18 + batch_1_10_17 + batch_1_14_17 + batch_1_9_17 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3 + batch_3_5_6 + batch_3_9_18_19 + batch_3_5_14_19
   + batch_3_8_15_19 + batch_3_5_15_19 + batch_3_8_10 = 1
 order_4: batch_0_4_10_15_16 + batch_0_4_14_15_16 + batch_0_4_8_14_16 = 1
 order_5: batch_5 + batch_5_6_9_19 + batch_3_5_6 + batch_5_6_10_19
   + batch_3_5_14_19 + batch_5_12_13 + batch_5_9_14_18 + batch_5_8_14_15
   + batch_5_12_13_15 + batch_5_8_9_19 + batch_3_5_15_19 = 1
 order_6: batch_6 + batch_6_12_13_19 + batch_5_6_9_19 + batch_6_10_14_18
   + batch_3_5_6 + batch_5_6_10_19 + batch_6_12_13_14 + batch_6_9_18_19
   = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_0_4_8_14_16 + batch_5_8_14_15 + batch_3_8_15_19
   + batch_5_8_9_19 + batch_3_8_10 = 1
 order_9: batch_9 + batch_5_6_9_19 + batch_3_9_18_19 + batch_6_9_18_19
   + batch_5_9_14_18 + batch_9_10_12_13 + batch_1_9_17 + batch_5_8_9_19
   = 1
 order_10: batch_10 + batch_0_4_10_15_16 + batch_1_10_17 + batch_6_10_14_18
   + batch_5_6_10_19 + batch_9_10_12_13 + batch_10_12_13_15 + batch_3_8_10
   = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_6_12_13_19 + batch_6_12_13_14 + batch_5_12_13
   + batch_9_10_12_13 + batch_5_12_13_15 + batch_10_12_13_15 = 1
 order_13: batch_6_12_13_19 + batch_6_12_13_14 + batch_5_12_13
   + batch_9_10_12_13 + batch_5_12_13_15 + batch_10_12_13_15 = 1
 order_14: batch_14 + batch_0_4_14_15_16 + batch_0_4_8_14_16
   + batch_1_14_17 + batch_6_10_14_18 + batch_6_12_13_14 + batch_3_5_14_19
   + batch_5_9_14_18 + batch_5_8_14_15 = 1
 order_15: batch_15 + batch_0_4_10_15_16 + batch_0_4_14_15_16
   + batch_5_8_14_15 + batch_3_8_15_19 + batch_5_12_13_15
   + batch_10_12_13_15 + batch_3_5_15_19 = 1
 order_16: batch_0_4_10_15_16 + batch_0_4_14_15_16 + batch_0_4_8_14_16 = 1
 order_17: batch_1_17_18 + batch_1_10_17 + batch_1_14_17 + batch_1_9_17
   = 1
 order_18: batch_18 + batch_1_17_18 + batch_6_10_14_18 + batch_3_9_18_19
   + batch_6_9_18_19 + batch_5_9_14_18 = 1
 order_19: batch_19 + batch_6_12_13_19 + batch_5_6_9_19 + batch_5_6_10_19
   + batch_3_9_18_19 + batch_3_5_14_19 + batch_6_9_18_19 + batch_3_8_15_19
   + batch_5_8_9_19 + batch_3_5_15_19 = 1
Bounds
End
