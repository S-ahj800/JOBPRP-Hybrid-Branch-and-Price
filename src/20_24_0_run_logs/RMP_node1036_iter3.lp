\ Model JOBPRP_RMP_1036
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xc33ec7a250516685
Minimize
  72.4 batch_8 + 77.2 batch_9 + 78.4 batch_10 + 65.2 batch_14
   + 61.2 batch_19 + 123.2 batch_1_17_18 + 115.2 batch_2_7_11
   + 121.2 batch_3_5_12 + 117.2 batch_0_4_14_15_16 + 99.2 batch_8_9_14_19
   + 123.2 batch_6_9_10_13 + 105.2 batch_6_9_13_19 + 105.2 batch_8_10_19
   + 119.2 batch_6_10_13_14
Subject To
 order_0: batch_0_4_14_15_16 = 1
 order_1: batch_1_17_18 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_5_12 = 1
 order_4: batch_0_4_14_15_16 = 1
 order_5: batch_3_5_12 = 1
 order_6: batch_6_9_10_13 + batch_6_9_13_19 + batch_6_10_13_14 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_8_9_14_19 + batch_8_10_19 = 1
 order_9: batch_9 + batch_8_9_14_19 + batch_6_9_10_13 + batch_6_9_13_19
   = 1
 order_10: batch_10 + batch_6_9_10_13 + batch_8_10_19 + batch_6_10_13_14
   = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_5_12 = 1
 order_13: batch_6_9_10_13 + batch_6_9_13_19 + batch_6_10_13_14 = 1
 order_14: batch_14 + batch_0_4_14_15_16 + batch_8_9_14_19
   + batch_6_10_13_14 = 1
 order_15: batch_0_4_14_15_16 = 1
 order_16: batch_0_4_14_15_16 = 1
 order_17: batch_1_17_18 = 1
 order_18: batch_1_17_18 = 1
 order_19: batch_19 + batch_8_9_14_19 + batch_6_9_13_19 + batch_8_10_19
   = 1
Bounds
End
