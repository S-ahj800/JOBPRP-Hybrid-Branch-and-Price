\ Model JOBPRP_RMP_1911
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xca55c513c34a0f62
Minimize
  83.6 batch_3 + 91.2 batch_5 + 89.2 batch_6 + 72.4 batch_8 + 77.2 batch_9
   + 78.4 batch_10 + 74.8 batch_15 + 77.2 batch_18 + 61.2 batch_19
   + 115.2 batch_2_7_11 + 127.2 batch_1_10_17 + 117.2 batch_0_4_14_15_16
   + 115.2 batch_0_4_8_14_16 + 123.2 batch_3_5_6 + 116 batch_3_9_18_19
   + 129.2 batch_5_12_13 + 131.2 batch_9_10_12_13 + 127.2 batch_1_9_17
   + 134 batch_3_8_15_19 + 143.2 batch_5_12_13_15 + 130.4 batch_10_12_13_15
   + 119.2 batch_5_8_9_19 + 133.2 batch_3_5_15_19 + 112.4 batch_3_8_10
   + 121.2 batch_6_12_13 + 131.2 batch_5_12_13_19 + 113.2 batch_5_9_18_19
   + 121.2 batch_1_17_19 + 107.2 batch_8_9_18_19 + 122 batch_9_12_13_19
   + 107.2 batch_6_9_18 + 139.2 batch_12_13_15_18 + 133.2 batch_1_15_17
   + 131.2 batch_10_12_13_18
Subject To
 order_0: batch_0_4_14_15_16 + batch_0_4_8_14_16 = 1
 order_1: batch_1_10_17 + batch_1_9_17 + batch_1_17_19 + batch_1_15_17 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3 + batch_3_5_6 + batch_3_9_18_19 + batch_3_8_15_19
   + batch_3_5_15_19 + batch_3_8_10 = 1
 order_4: batch_0_4_14_15_16 + batch_0_4_8_14_16 = 1
 order_5: batch_5 + batch_3_5_6 + batch_5_12_13 + batch_5_12_13_15
   + batch_5_8_9_19 + batch_3_5_15_19 + batch_5_12_13_19 + batch_5_9_18_19
   = 1
 order_6: batch_6 + batch_3_5_6 + batch_6_12_13 + batch_6_9_18 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_0_4_8_14_16 + batch_3_8_15_19 + batch_5_8_9_19
   + batch_3_8_10 + batch_8_9_18_19 = 1
 order_9: batch_9 + batch_3_9_18_19 + batch_9_10_12_13 + batch_1_9_17
   + batch_5_8_9_19 + batch_5_9_18_19 + batch_8_9_18_19 + batch_9_12_13_19
   + batch_6_9_18 = 1
 order_10: batch_10 + batch_1_10_17 + batch_9_10_12_13 + batch_10_12_13_15
   + batch_3_8_10 + batch_10_12_13_18 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_5_12_13 + batch_9_10_12_13 + batch_5_12_13_15
   + batch_10_12_13_15 + batch_6_12_13 + batch_5_12_13_19
   + batch_9_12_13_19 + batch_12_13_15_18 + batch_10_12_13_18 = 1
 order_13: batch_5_12_13 + batch_9_10_12_13 + batch_5_12_13_15
   + batch_10_12_13_15 + batch_6_12_13 + batch_5_12_13_19
   + batch_9_12_13_19 + batch_12_13_15_18 + batch_10_12_13_18 = 1
 order_14: batch_0_4_14_15_16 + batch_0_4_8_14_16 = 1
 order_15: batch_15 + batch_0_4_14_15_16 + batch_3_8_15_19
   + batch_5_12_13_15 + batch_10_12_13_15 + batch_3_5_15_19
   + batch_12_13_15_18 + batch_1_15_17 = 1
 order_16: batch_0_4_14_15_16 + batch_0_4_8_14_16 = 1
 order_17: batch_1_10_17 + batch_1_9_17 + batch_1_17_19 + batch_1_15_17
   = 1
 order_18: batch_18 + batch_3_9_18_19 + batch_5_9_18_19 + batch_8_9_18_19
   + batch_6_9_18 + batch_12_13_15_18 + batch_10_12_13_18 = 1
 order_19: batch_19 + batch_3_9_18_19 + batch_3_8_15_19 + batch_5_8_9_19
   + batch_3_5_15_19 + batch_5_12_13_19 + batch_5_9_18_19 + batch_1_17_19
   + batch_8_9_18_19 + batch_9_12_13_19 = 1
Bounds
End
