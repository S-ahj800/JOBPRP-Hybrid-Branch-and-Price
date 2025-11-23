\ Model JOBPRP_RMP_1535
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xd3f2d65e4968af56
Minimize
  98 batch_1 + 91.2 batch_5 + 77.2 batch_9 + 78.4 batch_10 + 89.6 batch_12
   + 89.2 batch_17 + 77.2 batch_18 + 105.6 batch_3_12_16
   + 115.2 batch_2_7_11 + 127.2 batch_1_10_17 + 132 batch_0_4_8_12
   + 127.2 batch_5_15_17_19 + 126 batch_0_4_8_15_19 + 113.2 batch_5_9_18
   + 119.2 batch_0_4_8_10 + 119.2 batch_5_10_17 + 109.2 batch_6_13_14_18
   + 122 batch_3_9_16 + 139.2 batch_9_12_17 + 119.2 batch_6_10_13_14
   + 127.2 batch_1_9_17 + 125.2 batch_9_10_17 + 116.4 batch_3_10_16
   + 117.2 batch_3_5_16 + 121.2 batch_0_4_5_8 + 127.2 batch_6_12_13_14
   + 135.2 batch_1_9_15_19 + 128 batch_9_12_15_19
Subject To
 order_0: batch_0_4_8_12 + batch_0_4_8_15_19 + batch_0_4_8_10
   + batch_0_4_5_8 = 1
 order_1: batch_1 + batch_1_10_17 + batch_1_9_17 + batch_1_9_15_19 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16 + batch_3_9_16 + batch_3_10_16 + batch_3_5_16 = 1
 order_4: batch_0_4_8_12 + batch_0_4_8_15_19 + batch_0_4_8_10
   + batch_0_4_5_8 = 1
 order_5: batch_5 + batch_5_15_17_19 + batch_5_9_18 + batch_5_10_17
   + batch_3_5_16 + batch_0_4_5_8 = 1
 order_6: batch_6_13_14_18 + batch_6_10_13_14 + batch_6_12_13_14 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_0_4_8_12 + batch_0_4_8_15_19 + batch_0_4_8_10
   + batch_0_4_5_8 = 1
 order_9: batch_9 + batch_5_9_18 + batch_3_9_16 + batch_9_12_17
   + batch_1_9_17 + batch_9_10_17 + batch_1_9_15_19 + batch_9_12_15_19 = 1
 order_10: batch_10 + batch_1_10_17 + batch_0_4_8_10 + batch_5_10_17
   + batch_6_10_13_14 + batch_9_10_17 + batch_3_10_16 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_3_12_16 + batch_0_4_8_12 + batch_9_12_17
   + batch_6_12_13_14 + batch_9_12_15_19 = 1
 order_13: batch_6_13_14_18 + batch_6_10_13_14 + batch_6_12_13_14 = 1
 order_14: batch_6_13_14_18 + batch_6_10_13_14 + batch_6_12_13_14 = 1
 order_15: batch_5_15_17_19 + batch_0_4_8_15_19 + batch_1_9_15_19
   + batch_9_12_15_19 = 1
 order_16: batch_3_12_16 + batch_3_9_16 + batch_3_10_16 + batch_3_5_16 = 1
 order_17: batch_17 + batch_1_10_17 + batch_5_15_17_19 + batch_5_10_17
   + batch_9_12_17 + batch_1_9_17 + batch_9_10_17 = 1
 order_18: batch_18 + batch_5_9_18 + batch_6_13_14_18 = 1
 order_19: batch_5_15_17_19 + batch_0_4_8_15_19 + batch_1_9_15_19
   + batch_9_12_15_19 = 1
Bounds
End
