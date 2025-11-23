\ Model JOBPRP_RMP_2236
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xd9636202661da12a
Minimize
  98 batch_1 + 91.2 batch_5 + 72.4 batch_8 + 77.2 batch_9 + 78.4 batch_10
   + 89.6 batch_12 + 74.8 batch_15 + 89.2 batch_17 + 77.2 batch_18
   + 61.2 batch_19 + 123.2 batch_1_17_18 + 115.2 batch_2_7_11
   + 133.2 batch_5_10_12_19 + 113.2 batch_6_13_14_17
   + 130.4 batch_3_10_15_16 + 117.2 batch_1_5_18 + 123.2 batch_0_4_5_17
   + 127.2 batch_1_10_17 + 119.2 batch_0_4_15_17 + 132 batch_0_4_8_12
   + 121.2 batch_1_8_9 + 129.2 batch_1_5_8 + 119.2 batch_1_5_9
   + 125.2 batch_5_10_17_19 + 107.2 batch_8_9_18_19 + 137.2 batch_0_1_4_15
   + 127.2 batch_1_5_10 + 117.2 batch_0_4_8_15 + 129.2 batch_8_10_12_19
   + 121.2 batch_0_4_5_8 + 127.2 batch_0_4_12_15 + 117.2 batch_3_5_16
   + 127.2 batch_5_9_12_19 + 124 batch_8_9_12_19 + 131.2 batch_1_3_16
Subject To
 order_0: batch_0_4_5_17 + batch_0_4_15_17 + batch_0_4_8_12
   + batch_0_1_4_15 + batch_0_4_8_15 + batch_0_4_5_8 + batch_0_4_12_15 = 1
 order_1: batch_1 + batch_1_17_18 + batch_1_5_18 + batch_1_10_17
   + batch_1_8_9 + batch_1_5_8 + batch_1_5_9 + batch_0_1_4_15
   + batch_1_5_10 + batch_1_3_16 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_10_15_16 + batch_3_5_16 + batch_1_3_16 = 1
 order_4: batch_0_4_5_17 + batch_0_4_15_17 + batch_0_4_8_12
   + batch_0_1_4_15 + batch_0_4_8_15 + batch_0_4_5_8 + batch_0_4_12_15 = 1
 order_5: batch_5 + batch_5_10_12_19 + batch_1_5_18 + batch_0_4_5_17
   + batch_1_5_8 + batch_1_5_9 + batch_5_10_17_19 + batch_1_5_10
   + batch_0_4_5_8 + batch_3_5_16 + batch_5_9_12_19 = 1
 order_6: batch_6_13_14_17 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_0_4_8_12 + batch_1_8_9 + batch_1_5_8
   + batch_8_9_18_19 + batch_0_4_8_15 + batch_8_10_12_19 + batch_0_4_5_8
   + batch_8_9_12_19 = 1
 order_9: batch_9 + batch_1_8_9 + batch_1_5_9 + batch_8_9_18_19
   + batch_5_9_12_19 + batch_8_9_12_19 = 1
 order_10: batch_10 + batch_5_10_12_19 + batch_3_10_15_16 + batch_1_10_17
   + batch_5_10_17_19 + batch_1_5_10 + batch_8_10_12_19 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_5_10_12_19 + batch_0_4_8_12 + batch_8_10_12_19
   + batch_0_4_12_15 + batch_5_9_12_19 + batch_8_9_12_19 = 1
 order_13: batch_6_13_14_17 = 1
 order_14: batch_6_13_14_17 = 1
 order_15: batch_15 + batch_3_10_15_16 + batch_0_4_15_17 + batch_0_1_4_15
   + batch_0_4_8_15 + batch_0_4_12_15 = 1
 order_16: batch_3_10_15_16 + batch_3_5_16 + batch_1_3_16 = 1
 order_17: batch_17 + batch_1_17_18 + batch_6_13_14_17 + batch_0_4_5_17
   + batch_1_10_17 + batch_0_4_15_17 + batch_5_10_17_19 = 1
 order_18: batch_18 + batch_1_17_18 + batch_1_5_18 + batch_8_9_18_19 = 1
 order_19: batch_19 + batch_5_10_12_19 + batch_5_10_17_19 + batch_8_9_18_19
   + batch_8_10_12_19 + batch_5_9_12_19 + batch_8_9_12_19 = 1
Bounds
End
