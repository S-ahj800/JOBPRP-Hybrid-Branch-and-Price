\ Model JOBPRP_RMP_2240
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x5e5a6a3c0837a7c3
Minimize
  98 batch_1 + 91.2 batch_5 + 77.2 batch_9 + 78.4 batch_10 + 65.2 batch_14
   + 74.8 batch_15 + 89.2 batch_17 + 77.2 batch_18 + 61.2 batch_19
   + 123.2 batch_1_17_18 + 115.2 batch_2_7_11 + 109.2 batch_6_9_13_18
   + 130.4 batch_3_10_15_16 + 117.2 batch_1_5_18 + 123.2 batch_0_4_5_17
   + 127.2 batch_1_10_17 + 119.2 batch_0_4_15_17 + 105.2 batch_6_9_13_19
   + 132 batch_0_4_8_12 + 119.2 batch_1_5_9 + 125.2 batch_5_10_17_19
   + 132 batch_8_12_14_15 + 125.2 batch_10_14_15_17 + 129.2 batch_0_1_4_14
   + 137.2 batch_0_1_4_15 + 127.2 batch_1_5_10 + 113.2 batch_1_9_14_19
   + 111.2 batch_1_14_18_19 + 129.2 batch_8_10_12_19 + 117.2 batch_3_5_16
   + 124 batch_8_9_12_19 + 131.2 batch_1_3_16 + 121.2 batch_6_13_17_19
Subject To
 order_0: batch_0_4_5_17 + batch_0_4_15_17 + batch_0_4_8_12
   + batch_0_1_4_14 + batch_0_1_4_15 = 1
 order_1: batch_1 + batch_1_17_18 + batch_1_5_18 + batch_1_10_17
   + batch_1_5_9 + batch_0_1_4_14 + batch_0_1_4_15 + batch_1_5_10
   + batch_1_9_14_19 + batch_1_14_18_19 + batch_1_3_16 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_10_15_16 + batch_3_5_16 + batch_1_3_16 = 1
 order_4: batch_0_4_5_17 + batch_0_4_15_17 + batch_0_4_8_12
   + batch_0_1_4_14 + batch_0_1_4_15 = 1
 order_5: batch_5 + batch_1_5_18 + batch_0_4_5_17 + batch_1_5_9
   + batch_5_10_17_19 + batch_1_5_10 + batch_3_5_16 = 1
 order_6: batch_6_9_13_18 + batch_6_9_13_19 + batch_6_13_17_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_0_4_8_12 + batch_8_12_14_15 + batch_8_10_12_19
   + batch_8_9_12_19 = 1
 order_9: batch_9 + batch_6_9_13_18 + batch_6_9_13_19 + batch_1_5_9
   + batch_1_9_14_19 + batch_8_9_12_19 = 1
 order_10: batch_10 + batch_3_10_15_16 + batch_1_10_17 + batch_5_10_17_19
   + batch_10_14_15_17 + batch_1_5_10 + batch_8_10_12_19 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_0_4_8_12 + batch_8_12_14_15 + batch_8_10_12_19
   + batch_8_9_12_19 = 1
 order_13: batch_6_9_13_18 + batch_6_9_13_19 + batch_6_13_17_19 = 1
 order_14: batch_14 + batch_8_12_14_15 + batch_10_14_15_17 + batch_0_1_4_14
   + batch_1_9_14_19 + batch_1_14_18_19 = 1
 order_15: batch_15 + batch_3_10_15_16 + batch_0_4_15_17 + batch_8_12_14_15
   + batch_10_14_15_17 + batch_0_1_4_15 = 1
 order_16: batch_3_10_15_16 + batch_3_5_16 + batch_1_3_16 = 1
 order_17: batch_17 + batch_1_17_18 + batch_0_4_5_17 + batch_1_10_17
   + batch_0_4_15_17 + batch_5_10_17_19 + batch_10_14_15_17
   + batch_6_13_17_19 = 1
 order_18: batch_18 + batch_1_17_18 + batch_6_9_13_18 + batch_1_5_18
   + batch_1_14_18_19 = 1
 order_19: batch_19 + batch_6_9_13_19 + batch_5_10_17_19 + batch_1_9_14_19
   + batch_1_14_18_19 + batch_8_10_12_19 + batch_8_9_12_19
   + batch_6_13_17_19 = 1
Bounds
End
