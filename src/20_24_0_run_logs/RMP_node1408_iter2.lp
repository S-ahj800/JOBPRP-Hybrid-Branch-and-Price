\ Model JOBPRP_RMP_1408
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x3a80ca946a88d756
Minimize
  98 batch_1 + 72.4 batch_8 + 78.4 batch_10 + 65.2 batch_14 + 89.2 batch_17
   + 105.6 batch_3_12_16 + 115.2 batch_2_7_11 + 117.2 batch_1_5_18
   + 127.2 batch_1_10_17 + 126 batch_0_4_8_15_19 + 124 batch_0_4_14_15_19
   + 130 batch_0_4_10_15_19 + 111.2 batch_6_9_13_14 + 117.2 batch_1_14_17
   + 119.2 batch_0_4_8_10 + 123.2 batch_6_9_10_13
   + 125.1999963520001 batch_5_17_18 + 121.2 batch_0_4_10_17
   + 133.2 batch_10_15_17_19 + 125.2 batch_8_10_15_19
Subject To
 order_0: batch_0_4_8_15_19 + batch_0_4_14_15_19 + batch_0_4_10_15_19
   + batch_0_4_8_10 + batch_0_4_10_17 = 1
 order_1: batch_1 + batch_1_5_18 + batch_1_10_17 + batch_1_14_17 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16 = 1
 order_4: batch_0_4_8_15_19 + batch_0_4_14_15_19 + batch_0_4_10_15_19
   + batch_0_4_8_10 + batch_0_4_10_17 = 1
 order_5: batch_1_5_18 + batch_5_17_18 = 1
 order_6: batch_6_9_13_14 + batch_6_9_10_13 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_0_4_8_15_19 + batch_0_4_8_10 + batch_8_10_15_19
   = 1
 order_9: batch_6_9_13_14 + batch_6_9_10_13 = 1
 order_10: batch_10 + batch_1_10_17 + batch_0_4_10_15_19 + batch_0_4_8_10
   + batch_6_9_10_13 + batch_0_4_10_17 + batch_10_15_17_19
   + batch_8_10_15_19 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_12_16 = 1
 order_13: batch_6_9_13_14 + batch_6_9_10_13 = 1
 order_14: batch_14 + batch_0_4_14_15_19 + batch_6_9_13_14 + batch_1_14_17
   = 1
 order_15: batch_0_4_8_15_19 + batch_0_4_14_15_19 + batch_0_4_10_15_19
   + batch_10_15_17_19 + batch_8_10_15_19 = 1
 order_16: batch_3_12_16 = 1
 order_17: batch_17 + batch_1_10_17 + batch_1_14_17 + batch_5_17_18
   + batch_0_4_10_17 + batch_10_15_17_19 = 1
 order_18: batch_1_5_18 + batch_5_17_18 = 1
 order_19: batch_0_4_8_15_19 + batch_0_4_14_15_19 + batch_0_4_10_15_19
   + batch_10_15_17_19 + batch_8_10_15_19 = 1
Bounds
End
