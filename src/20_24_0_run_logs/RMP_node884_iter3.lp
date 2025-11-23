\ Model JOBPRP_RMP_884
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x2bf267d3b1bd1209
Minimize
  98 batch_1 + 72.4 batch_8 + 78.4 batch_10 + 74.8 batch_15 + 89.2 batch_17
   + 77.2 batch_18 + 61.2 batch_19 + 105.6 batch_3_12_16
   + 115.2 batch_2_7_11 + 105.2 batch_6_9_13_19 + 121.2 batch_0_4_5_14_19
   + 123.2 batch_6_9_10_13 + 125.2 batch_10_17_18_19 + 121.2 batch_1_8_18
   + 129.2 batch_8_10_17_19 + 130 batch_6_9_13_15 + 105.2 batch_1_18_19
   + 119.2 batch_10_17_18 + 121.2 batch_8_10_17
Subject To
 order_0: batch_0_4_5_14_19 = 1
 order_1: batch_1 + batch_1_8_18 + batch_1_18_19 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16 = 1
 order_4: batch_0_4_5_14_19 = 1
 order_5: batch_0_4_5_14_19 = 1
 order_6: batch_6_9_13_19 + batch_6_9_10_13 + batch_6_9_13_15 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_1_8_18 + batch_8_10_17_19 + batch_8_10_17 = 1
 order_9: batch_6_9_13_19 + batch_6_9_10_13 + batch_6_9_13_15 = 1
 order_10: batch_10 + batch_6_9_10_13 + batch_10_17_18_19
   + batch_8_10_17_19 + batch_10_17_18 + batch_8_10_17 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_12_16 = 1
 order_13: batch_6_9_13_19 + batch_6_9_10_13 + batch_6_9_13_15 = 1
 order_14: batch_0_4_5_14_19 = 1
 order_15: batch_15 + batch_6_9_13_15 = 1
 order_16: batch_3_12_16 = 1
 order_17: batch_17 + batch_10_17_18_19 + batch_8_10_17_19 + batch_10_17_18
   + batch_8_10_17 = 1
 order_18: batch_18 + batch_10_17_18_19 + batch_1_8_18 + batch_1_18_19
   + batch_10_17_18 = 1
 order_19: batch_19 + batch_6_9_13_19 + batch_0_4_5_14_19
   + batch_10_17_18_19 + batch_8_10_17_19 + batch_1_18_19 = 1
Bounds
End
