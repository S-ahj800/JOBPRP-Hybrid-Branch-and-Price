\ Model JOBPRP_RMP_2184
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x1b9c1fe19afc3358
Minimize
  72.4 batch_8 + 77.2 batch_9 + 78.4 batch_10 + 65.2 batch_14
   + 74.8 batch_15 + 89.2 batch_17 + 77.2 batch_18 + 61.2 batch_19
   + 105.6 batch_3_12_16 + 115.2 batch_2_7_11 + 109.2 batch_6_9_13_18
   + 117.2 batch_1_5_18 + 119.2 batch_0_4_15_17 + 109.2 batch_8_9_14_18
   + 105.2 batch_6_9_13_19 + 132 batch_6_8_13_15 + 129.2 batch_1_5_8
   + 109.2 batch_6_8_13_19 + 119.2 batch_1_5_9 + 107.2 batch_8_9_18_19
   + 127.2 batch_1_5_10 + 131.2 batch_10_14_15_18
   + 119.1999935298778 batch_6_10_13_14 + 127.2 batch_8_10_14_15
   + 115.2 batch_6_8_13_14 + 117.2 batch_8_9_10_19
Subject To
 order_0: batch_0_4_15_17 = 1
 order_1: batch_1_5_18 + batch_1_5_8 + batch_1_5_9 + batch_1_5_10 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16 = 1
 order_4: batch_0_4_15_17 = 1
 order_5: batch_1_5_18 + batch_1_5_8 + batch_1_5_9 + batch_1_5_10 = 1
 order_6: batch_6_9_13_18 + batch_6_9_13_19 + batch_6_8_13_15
   + batch_6_8_13_19 + batch_6_10_13_14 + batch_6_8_13_14 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_8_9_14_18 + batch_6_8_13_15 + batch_1_5_8
   + batch_6_8_13_19 + batch_8_9_18_19 + batch_8_10_14_15 + batch_6_8_13_14
   + batch_8_9_10_19 = 1
 order_9: batch_9 + batch_6_9_13_18 + batch_8_9_14_18 + batch_6_9_13_19
   + batch_1_5_9 + batch_8_9_18_19 + batch_8_9_10_19 = 1
 order_10: batch_10 + batch_1_5_10 + batch_10_14_15_18 + batch_6_10_13_14
   + batch_8_10_14_15 + batch_8_9_10_19 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_12_16 = 1
 order_13: batch_6_9_13_18 + batch_6_9_13_19 + batch_6_8_13_15
   + batch_6_8_13_19 + batch_6_10_13_14 + batch_6_8_13_14 = 1
 order_14: batch_14 + batch_8_9_14_18 + batch_10_14_15_18
   + batch_6_10_13_14 + batch_8_10_14_15 + batch_6_8_13_14 = 1
 order_15: batch_15 + batch_0_4_15_17 + batch_6_8_13_15 + batch_10_14_15_18
   + batch_8_10_14_15 = 1
 order_16: batch_3_12_16 = 1
 order_17: batch_17 + batch_0_4_15_17 = 1
 order_18: batch_18 + batch_6_9_13_18 + batch_1_5_18 + batch_8_9_14_18
   + batch_8_9_18_19 + batch_10_14_15_18 = 1
 order_19: batch_19 + batch_6_9_13_19 + batch_6_8_13_19 + batch_8_9_18_19
   + batch_8_9_10_19 = 1
Bounds
End
