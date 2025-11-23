\ Model JOBPRP_RMP_932
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x7dd3cd16755de6b1
Minimize
  98 batch_1 + 77.2 batch_9 + 78.4 batch_10 + 74.8 batch_15 + 89.2 batch_17
   + 77.2 batch_18 + 61.2 batch_19 + 105.6 batch_3_12_16
   + 115.2 batch_2_7_11 + 118 batch_3_12_16_19 + 119.2 batch_5_8_10_14
   + 111.2 batch_1_9_18 + 120 batch_1_6_13 + 125.2 batch_10_17_18_19
   + 125.2 batch_6_10_13_18 + 132 batch_0_4_9_15_19 + 113.2 batch_6_13_17
   + 121.2 batch_6_13_17_19 + 129.2 batch_5_8_14_15 + 115.2 batch_0_4_10_15
   + 125.2 batch_0_1_4 + 123.2 batch_5_8_14_18 + 125.2 batch_9_17_18_19
   + 125.2 batch_5_8_9_14
Subject To
 order_0: batch_0_4_9_15_19 + batch_0_4_10_15 + batch_0_1_4 = 1
 order_1: batch_1 + batch_1_9_18 + batch_1_6_13 + batch_0_1_4 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16 + batch_3_12_16_19 = 1
 order_4: batch_0_4_9_15_19 + batch_0_4_10_15 + batch_0_1_4 = 1
 order_5: batch_5_8_10_14 + batch_5_8_14_15 + batch_5_8_14_18
   + batch_5_8_9_14 = 1
 order_6: batch_1_6_13 + batch_6_10_13_18 + batch_6_13_17
   + batch_6_13_17_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_5_8_10_14 + batch_5_8_14_15 + batch_5_8_14_18
   + batch_5_8_9_14 = 1
 order_9: batch_9 + batch_1_9_18 + batch_0_4_9_15_19 + batch_9_17_18_19
   + batch_5_8_9_14 = 1
 order_10: batch_10 + batch_5_8_10_14 + batch_10_17_18_19
   + batch_6_10_13_18 + batch_0_4_10_15 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_12_16 + batch_3_12_16_19 = 1
 order_13: batch_1_6_13 + batch_6_10_13_18 + batch_6_13_17
   + batch_6_13_17_19 = 1
 order_14: batch_5_8_10_14 + batch_5_8_14_15 + batch_5_8_14_18
   + batch_5_8_9_14 = 1
 order_15: batch_15 + batch_0_4_9_15_19 + batch_5_8_14_15 + batch_0_4_10_15
   = 1
 order_16: batch_3_12_16 + batch_3_12_16_19 = 1
 order_17: batch_17 + batch_10_17_18_19 + batch_6_13_17 + batch_6_13_17_19
   + batch_9_17_18_19 = 1
 order_18: batch_18 + batch_1_9_18 + batch_10_17_18_19 + batch_6_10_13_18
   + batch_5_8_14_18 + batch_9_17_18_19 = 1
 order_19: batch_19 + batch_3_12_16_19 + batch_10_17_18_19
   + batch_0_4_9_15_19 + batch_6_13_17_19 + batch_9_17_18_19 = 1
Bounds
End
