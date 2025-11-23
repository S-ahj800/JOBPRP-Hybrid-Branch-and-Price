\ Model JOBPRP_RMP_1251
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xf9cdbe5b03a78b01
Minimize
  98 batch_1 + 91.2 batch_5 + 77.2 batch_9 + 78.4 batch_10 + 89.6 batch_12
   + 65.2 batch_14 + 74.8 batch_15 + 77.2 batch_18 + 61.2 batch_19
   + 105.6 batch_3_12_16 + 115.2 batch_2_7_11 + 109.2 batch_6_9_13_18
   + 133.2 batch_5_10_12_19 + 130.4 batch_3_10_15_16 + 117.2 batch_1_5_18
   + 105.2 batch_6_9_13_19 + 119.2 batch_1_5_9 + 117.2 batch_5_8_17
   + 119.2 batch_1_10_14 + 120 batch_1_6_13 + 129.2 batch_8_10_17_19
   + 127.2 batch_6_12_13_14 + 141.2 batch_1_10_12 + 127.2 batch_1_5_10
   + 131.2 batch_0_4_5_15_19 + 129.2 batch_3_10_14_16
   + 119.2 batch_6_10_13_14 + 127.2 batch_0_4_12_15 + 131.2 batch_0_3_4_16
   + 129.2 batch_0_1_4_14 + 137.2 batch_0_1_4_15 + 138 batch_9_14_15_18_19
   + 133.2 batch_0_4_9_14_15 + 131.2 batch_0_4_14_15_18
   + 134 batch_6_13_14_15_19
Subject To
 order_0: batch_0_4_5_15_19 + batch_0_4_12_15 + batch_0_3_4_16
   + batch_0_1_4_14 + batch_0_1_4_15 + batch_0_4_9_14_15
   + batch_0_4_14_15_18 = 1
 order_1: batch_1 + batch_1_5_18 + batch_1_5_9 + batch_1_10_14
   + batch_1_6_13 + batch_1_10_12 + batch_1_5_10 + batch_0_1_4_14
   + batch_0_1_4_15 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16 + batch_3_10_15_16 + batch_3_10_14_16
   + batch_0_3_4_16 = 1
 order_4: batch_0_4_5_15_19 + batch_0_4_12_15 + batch_0_3_4_16
   + batch_0_1_4_14 + batch_0_1_4_15 + batch_0_4_9_14_15
   + batch_0_4_14_15_18 = 1
 order_5: batch_5 + batch_5_10_12_19 + batch_1_5_18 + batch_1_5_9
   + batch_5_8_17 + batch_1_5_10 + batch_0_4_5_15_19 = 1
 order_6: batch_6_9_13_18 + batch_6_9_13_19 + batch_1_6_13
   + batch_6_12_13_14 + batch_6_10_13_14 + batch_6_13_14_15_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_5_8_17 + batch_8_10_17_19 = 1
 order_9: batch_9 + batch_6_9_13_18 + batch_6_9_13_19 + batch_1_5_9
   + batch_9_14_15_18_19 + batch_0_4_9_14_15 = 1
 order_10: batch_10 + batch_5_10_12_19 + batch_3_10_15_16 + batch_1_10_14
   + batch_8_10_17_19 + batch_1_10_12 + batch_1_5_10 + batch_3_10_14_16
   + batch_6_10_13_14 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_3_12_16 + batch_5_10_12_19 + batch_6_12_13_14
   + batch_1_10_12 + batch_0_4_12_15 = 1
 order_13: batch_6_9_13_18 + batch_6_9_13_19 + batch_1_6_13
   + batch_6_12_13_14 + batch_6_10_13_14 + batch_6_13_14_15_19 = 1
 order_14: batch_14 + batch_1_10_14 + batch_6_12_13_14 + batch_3_10_14_16
   + batch_6_10_13_14 + batch_0_1_4_14 + batch_9_14_15_18_19
   + batch_0_4_9_14_15 + batch_0_4_14_15_18 + batch_6_13_14_15_19 = 1
 order_15: batch_15 + batch_3_10_15_16 + batch_0_4_5_15_19
   + batch_0_4_12_15 + batch_0_1_4_15 + batch_9_14_15_18_19
   + batch_0_4_9_14_15 + batch_0_4_14_15_18 + batch_6_13_14_15_19 = 1
 order_16: batch_3_12_16 + batch_3_10_15_16 + batch_3_10_14_16
   + batch_0_3_4_16 = 1
 order_17: batch_5_8_17 + batch_8_10_17_19 = 1
 order_18: batch_18 + batch_6_9_13_18 + batch_1_5_18 + batch_9_14_15_18_19
   + batch_0_4_14_15_18 = 1
 order_19: batch_19 + batch_5_10_12_19 + batch_6_9_13_19 + batch_8_10_17_19
   + batch_0_4_5_15_19 + batch_9_14_15_18_19 + batch_6_13_14_15_19 = 1
Bounds
End
