\ Model JOBPRP_RMP_591
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x946c84c9e81e575
Minimize
  72.4 batch_8 + 77.2 batch_9 + 78.4 batch_10 + 89.6 batch_12
   + 77.2 batch_18 + 61.2 batch_19 + 115.2 batch_2_7_11
   + 109.2 batch_6_9_13_18 + 105.2 batch_6_9_13_19 + 109.2 batch_6_8_13_19
   + 123.2 batch_6_9_10_13 + 133.2 batch_1_15_17 + 121.2 batch_5_9_14_18
   + 119.2 batch_0_4_8_10 + 107.2 batch_8_9_18_19 + 123.2 batch_5_10_14_18
   + 124 batch_8_9_12_19 + 129.2 batch_8_10_12_19 + 131.2 batch_0_3_4_16
   + 124 batch_6_12_13_19 + 134 batch_8_12_18 + 130 batch_0_4_8_18
   + 132 batch_0_4_9_18_19 + 129.2 batch_5_12_14_19 + 127.2 batch_0_4_10_18
   + 138 batch_8_12_18_19 + 112.4 batch_3_8_16 + 123.2 batch_5_6_13_14
   + 129.2 batch_5_9_10_14
Subject To
 order_0: batch_0_4_8_10 + batch_0_3_4_16 + batch_0_4_8_18
   + batch_0_4_9_18_19 + batch_0_4_10_18 = 1
 order_1: batch_1_15_17 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_0_3_4_16 + batch_3_8_16 = 1
 order_4: batch_0_4_8_10 + batch_0_3_4_16 + batch_0_4_8_18
   + batch_0_4_9_18_19 + batch_0_4_10_18 = 1
 order_5: batch_5_9_14_18 + batch_5_10_14_18 + batch_5_12_14_19
   + batch_5_6_13_14 + batch_5_9_10_14 = 1
 order_6: batch_6_9_13_18 + batch_6_9_13_19 + batch_6_8_13_19
   + batch_6_9_10_13 + batch_6_12_13_19 + batch_5_6_13_14 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_6_8_13_19 + batch_0_4_8_10 + batch_8_9_18_19
   + batch_8_9_12_19 + batch_8_10_12_19 + batch_8_12_18 + batch_0_4_8_18
   + batch_8_12_18_19 + batch_3_8_16 = 1
 order_9: batch_9 + batch_6_9_13_18 + batch_6_9_13_19 + batch_6_9_10_13
   + batch_5_9_14_18 + batch_8_9_18_19 + batch_8_9_12_19
   + batch_0_4_9_18_19 + batch_5_9_10_14 = 1
 order_10: batch_10 + batch_6_9_10_13 + batch_0_4_8_10 + batch_5_10_14_18
   + batch_8_10_12_19 + batch_0_4_10_18 + batch_5_9_10_14 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_8_9_12_19 + batch_8_10_12_19 + batch_6_12_13_19
   + batch_8_12_18 + batch_5_12_14_19 + batch_8_12_18_19 = 1
 order_13: batch_6_9_13_18 + batch_6_9_13_19 + batch_6_8_13_19
   + batch_6_9_10_13 + batch_6_12_13_19 + batch_5_6_13_14 = 1
 order_14: batch_5_9_14_18 + batch_5_10_14_18 + batch_5_12_14_19
   + batch_5_6_13_14 + batch_5_9_10_14 = 1
 order_15: batch_1_15_17 = 1
 order_16: batch_0_3_4_16 + batch_3_8_16 = 1
 order_17: batch_1_15_17 = 1
 order_18: batch_18 + batch_6_9_13_18 + batch_5_9_14_18 + batch_8_9_18_19
   + batch_5_10_14_18 + batch_8_12_18 + batch_0_4_8_18 + batch_0_4_9_18_19
   + batch_0_4_10_18 + batch_8_12_18_19 = 1
 order_19: batch_19 + batch_6_9_13_19 + batch_6_8_13_19 + batch_8_9_18_19
   + batch_8_9_12_19 + batch_8_10_12_19 + batch_6_12_13_19
   + batch_0_4_9_18_19 + batch_5_12_14_19 + batch_8_12_18_19 = 1
Bounds
End
