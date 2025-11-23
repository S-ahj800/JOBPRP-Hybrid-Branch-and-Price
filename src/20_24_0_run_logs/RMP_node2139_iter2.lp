\ Model JOBPRP_RMP_2139
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x7ce1111c45e593ff
Minimize
  98 batch_1 + 91.2 batch_5 + 72.4 batch_8 + 77.2 batch_9 + 78.4 batch_10
   + 74.8 batch_15 + 77.2 batch_18 + 61.2 batch_19 + 105.6 batch_3_12_16
   + 115.2 batch_2_7_11 + 113.2 batch_6_13_14_17 + 117.2 batch_1_5_18
   + 121.2 batch_1_8_9 + 132 batch_6_8_13_15 + 129.2 batch_1_5_8
   + 109.2 batch_6_8_13_19 + 119.2 batch_1_5_9 + 107.2 batch_8_9_18_19
   + 125.2 batch_10_14_15_17 + 137.2 batch_0_1_4_15 + 127.2 batch_1_5_10
   + 117.2 batch_0_4_8_15 + 121.2 batch_0_4_5_8 + 130 batch_0_4_18_19
   + 125.2 batch_0_4_14_17_19 + 123.2 batch_5_8_10_19
   + 119.2 batch_10_14_17_18 + 125.2 batch_6_10_13_18
Subject To
 order_0: batch_0_1_4_15 + batch_0_4_8_15 + batch_0_4_5_8 + batch_0_4_18_19
   + batch_0_4_14_17_19 = 1
 order_1: batch_1 + batch_1_5_18 + batch_1_8_9 + batch_1_5_8 + batch_1_5_9
   + batch_0_1_4_15 + batch_1_5_10 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16 = 1
 order_4: batch_0_1_4_15 + batch_0_4_8_15 + batch_0_4_5_8 + batch_0_4_18_19
   + batch_0_4_14_17_19 = 1
 order_5: batch_5 + batch_1_5_18 + batch_1_5_8 + batch_1_5_9 + batch_1_5_10
   + batch_0_4_5_8 + batch_5_8_10_19 = 1
 order_6: batch_6_13_14_17 + batch_6_8_13_15 + batch_6_8_13_19
   + batch_6_10_13_18 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_1_8_9 + batch_6_8_13_15 + batch_1_5_8
   + batch_6_8_13_19 + batch_8_9_18_19 + batch_0_4_8_15 + batch_0_4_5_8
   + batch_5_8_10_19 = 1
 order_9: batch_9 + batch_1_8_9 + batch_1_5_9 + batch_8_9_18_19 = 1
 order_10: batch_10 + batch_10_14_15_17 + batch_1_5_10 + batch_5_8_10_19
   + batch_10_14_17_18 + batch_6_10_13_18 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_12_16 = 1
 order_13: batch_6_13_14_17 + batch_6_8_13_15 + batch_6_8_13_19
   + batch_6_10_13_18 = 1
 order_14: batch_6_13_14_17 + batch_10_14_15_17 + batch_0_4_14_17_19
   + batch_10_14_17_18 = 1
 order_15: batch_15 + batch_6_8_13_15 + batch_10_14_15_17 + batch_0_1_4_15
   + batch_0_4_8_15 = 1
 order_16: batch_3_12_16 = 1
 order_17: batch_6_13_14_17 + batch_10_14_15_17 + batch_0_4_14_17_19
   + batch_10_14_17_18 = 1
 order_18: batch_18 + batch_1_5_18 + batch_8_9_18_19 + batch_0_4_18_19
   + batch_10_14_17_18 + batch_6_10_13_18 = 1
 order_19: batch_19 + batch_6_8_13_19 + batch_8_9_18_19 + batch_0_4_18_19
   + batch_0_4_14_17_19 + batch_5_8_10_19 = 1
Bounds
End
