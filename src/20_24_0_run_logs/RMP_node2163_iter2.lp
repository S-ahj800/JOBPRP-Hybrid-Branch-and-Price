\ Model JOBPRP_RMP_2163
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x1ad6cf1e70cdc9ef
Minimize
  98 batch_1 + 91.2 batch_5 + 72.4 batch_8 + 78.4 batch_10 + 74.8 batch_15
   + 61.2 batch_19 + 105.6 batch_3_12_16 + 115.2 batch_2_7_11
   + 113.2 batch_6_13_14_17 + 132 batch_6_8_13_15 + 129.2 batch_1_5_8
   + 109.2 batch_6_8_13_19 + 107.2 batch_8_9_18_19 + 137.2 batch_0_1_4_15
   + 127.2 batch_1_5_10 + 117.2 batch_0_4_8_15 + 121.2 batch_0_4_5_8
   + 125.2 batch_0_4_14_17_19 + 123.2 batch_5_8_10_19
   + 135.2 batch_5_6_13_15 + 113.2 batch_5_9_18_19 + 132 batch_0_4_9_18
   + 119.2 batch_6_10_13_19 + 132 batch_0_4_9_18_19 + 111.2 batch_1_9_18
   + 105.2 batch_10_14_17
Subject To
 order_0: batch_0_1_4_15 + batch_0_4_8_15 + batch_0_4_5_8
   + batch_0_4_14_17_19 + batch_0_4_9_18 + batch_0_4_9_18_19 = 1
 order_1: batch_1 + batch_1_5_8 + batch_0_1_4_15 + batch_1_5_10
   + batch_1_9_18 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16 = 1
 order_4: batch_0_1_4_15 + batch_0_4_8_15 + batch_0_4_5_8
   + batch_0_4_14_17_19 + batch_0_4_9_18 + batch_0_4_9_18_19 = 1
 order_5: batch_5 + batch_1_5_8 + batch_1_5_10 + batch_0_4_5_8
   + batch_5_8_10_19 + batch_5_6_13_15 + batch_5_9_18_19 = 1
 order_6: batch_6_13_14_17 + batch_6_8_13_15 + batch_6_8_13_19
   + batch_5_6_13_15 + batch_6_10_13_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_6_8_13_15 + batch_1_5_8 + batch_6_8_13_19
   + batch_8_9_18_19 + batch_0_4_8_15 + batch_0_4_5_8 + batch_5_8_10_19
   = 1
 order_9: batch_8_9_18_19 + batch_5_9_18_19 + batch_0_4_9_18
   + batch_0_4_9_18_19 + batch_1_9_18 = 1
 order_10: batch_10 + batch_1_5_10 + batch_5_8_10_19 + batch_6_10_13_19
   + batch_10_14_17 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_12_16 = 1
 order_13: batch_6_13_14_17 + batch_6_8_13_15 + batch_6_8_13_19
   + batch_5_6_13_15 + batch_6_10_13_19 = 1
 order_14: batch_6_13_14_17 + batch_0_4_14_17_19 + batch_10_14_17 = 1
 order_15: batch_15 + batch_6_8_13_15 + batch_0_1_4_15 + batch_0_4_8_15
   + batch_5_6_13_15 = 1
 order_16: batch_3_12_16 = 1
 order_17: batch_6_13_14_17 + batch_0_4_14_17_19 + batch_10_14_17 = 1
 order_18: batch_8_9_18_19 + batch_5_9_18_19 + batch_0_4_9_18
   + batch_0_4_9_18_19 + batch_1_9_18 = 1
 order_19: batch_19 + batch_6_8_13_19 + batch_8_9_18_19
   + batch_0_4_14_17_19 + batch_5_8_10_19 + batch_5_9_18_19
   + batch_6_10_13_19 + batch_0_4_9_18_19 = 1
Bounds
End
