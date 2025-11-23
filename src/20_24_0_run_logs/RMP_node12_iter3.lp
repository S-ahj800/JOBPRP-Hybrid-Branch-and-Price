\ Model JOBPRP_RMP_12
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x8aeb63ddd0560ff6
Minimize
  98 batch_1 + 91.2 batch_5 + 89.2 batch_6 + 81.2 batch_7 + 72.4 batch_8
   + 77.2 batch_9 + 78.4 batch_10 + 89.6 batch_12 + 70.4 batch_13
   + 65.2 batch_14 + 74.8 batch_15 + 89.2 batch_17 + 77.2 batch_18
   + 61.2 batch_19 + 125.2 batch_0_4_5_13_14 + 127.2 batch_0_4_10_13_15
   + 119.2 batch_0_4_10_14_15 + 115.2 batch_6_8_18_19 + 123.2 batch_1_17_18
   + 123.2 batch_8_12_13_15 + 127.2 batch_6_7_12 + 125.2 batch_1_6_10
   + 105.6 batch_3_12_16 + 115.2 batch_2_7_11 + 109.2 batch_6_9_13_18
   + 123.2 batch_5_14_15_17 + 133.2 batch_5_10_12_19 + 101.2 batch_7_8_9_19
   + 108.4 batch_2_8_11 + 115.2 batch_1_13_14_18 + 113.2 batch_6_13_14_17
   + 121.2 batch_1_6_18 + 115.2 batch_1_7_9 + 117.2 batch_1_7_18
   + 118 batch_1_6_9 + 117.2 batch_5_7_10_19 + 118 batch_3_12_16_19
   + 130.4 batch_3_10_15_16 + 117.2 batch_1_5_18 + 123.2 batch_0_4_5_17
   + 127.2 batch_1_10_17
Subject To
 order_0: batch_0_4_5_13_14 + batch_0_4_10_13_15 + batch_0_4_10_14_15
   + batch_0_4_5_17 = 1
 order_1: batch_1 + batch_1_17_18 + batch_1_6_10 + batch_1_13_14_18
   + batch_1_6_18 + batch_1_7_9 + batch_1_7_18 + batch_1_6_9 + batch_1_5_18
   + batch_1_10_17 = 1
 order_2: batch_2_7_11 + batch_2_8_11 = 1
 order_3: batch_3_12_16 + batch_3_12_16_19 + batch_3_10_15_16 = 1
 order_4: batch_0_4_5_13_14 + batch_0_4_10_13_15 + batch_0_4_10_14_15
   + batch_0_4_5_17 = 1
 order_5: batch_5 + batch_0_4_5_13_14 + batch_5_14_15_17 + batch_5_10_12_19
   + batch_5_7_10_19 + batch_1_5_18 + batch_0_4_5_17 = 1
 order_6: batch_6 + batch_6_8_18_19 + batch_6_7_12 + batch_1_6_10
   + batch_6_9_13_18 + batch_6_13_14_17 + batch_1_6_18 + batch_1_6_9 = 1
 order_7: batch_7 + batch_6_7_12 + batch_2_7_11 + batch_7_8_9_19
   + batch_1_7_9 + batch_1_7_18 + batch_5_7_10_19 = 1
 order_8: batch_8 + batch_6_8_18_19 + batch_8_12_13_15 + batch_7_8_9_19
   + batch_2_8_11 = 1
 order_9: batch_9 + batch_6_9_13_18 + batch_7_8_9_19 + batch_1_7_9
   + batch_1_6_9 = 1
 order_10: batch_10 + batch_0_4_10_13_15 + batch_0_4_10_14_15
   + batch_1_6_10 + batch_5_10_12_19 + batch_5_7_10_19 + batch_3_10_15_16
   + batch_1_10_17 = 1
 order_11: batch_2_7_11 + batch_2_8_11 = 1
 order_12: batch_12 + batch_8_12_13_15 + batch_6_7_12 + batch_3_12_16
   + batch_5_10_12_19 + batch_3_12_16_19 = 1
 order_13: batch_13 + batch_0_4_5_13_14 + batch_0_4_10_13_15
   + batch_8_12_13_15 + batch_6_9_13_18 + batch_1_13_14_18
   + batch_6_13_14_17 = 1
 order_14: batch_14 + batch_0_4_5_13_14 + batch_0_4_10_14_15
   + batch_5_14_15_17 + batch_1_13_14_18 + batch_6_13_14_17 = 1
 order_15: batch_15 + batch_0_4_10_13_15 + batch_0_4_10_14_15
   + batch_8_12_13_15 + batch_5_14_15_17 + batch_3_10_15_16 = 1
 order_16: batch_3_12_16 + batch_3_12_16_19 + batch_3_10_15_16 = 1
 order_17: batch_17 + batch_1_17_18 + batch_5_14_15_17 + batch_6_13_14_17
   + batch_0_4_5_17 + batch_1_10_17 = 1
 order_18: batch_18 + batch_6_8_18_19 + batch_1_17_18 + batch_6_9_13_18
   + batch_1_13_14_18 + batch_1_6_18 + batch_1_7_18 + batch_1_5_18 = 1
 order_19: batch_19 + batch_6_8_18_19 + batch_5_10_12_19 + batch_7_8_9_19
   + batch_5_7_10_19 + batch_3_12_16_19 = 1
Bounds
End
