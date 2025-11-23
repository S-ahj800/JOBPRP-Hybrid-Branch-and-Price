\ Model JOBPRP_RMP_1727
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xd8c27b5ca7e34d56
Minimize
  70.4 batch_13 + 65.2 batch_14 + 74.8 batch_15 + 77.2 batch_18
   + 115.2 batch_2_7_11 + 119.2 batch_3_8_12 + 125.2 batch_1_13_17
   + 137.2 batch_5_6_14_15 + 105.2 batch_9_13_14_18_19
   + 119.2 batch_0_4_10_14_16 + 123.2 batch_5_6_18
   + 105.1999982631751 batch_9_13_14_18_19 + 133.2 batch_1_15_17
   + 97.2 batch_9_18_19 + 117.2 batch_1_17 + 129.2 batch_0_4_10_13_16
   + 135.9999982075472 batch_9_13_15_18_19 + 77.2 batch_9_19
   + 87.2 batch_9_13_19 + 131.2 batch_5_6_15
Subject To
 order_0: batch_0_4_10_14_16 + batch_0_4_10_13_16 = 1
 order_1: batch_1_13_17 + batch_1_15_17 + batch_1_17 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_8_12 = 1
 order_4: batch_0_4_10_14_16 + batch_0_4_10_13_16 = 1
 order_5: batch_5_6_14_15 + batch_5_6_18 + batch_5_6_15 = 1
 order_6: batch_5_6_14_15 + batch_5_6_18 + batch_5_6_15 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_3_8_12 = 1
 order_9: batch_9_13_14_18_19 + batch_9_13_14_18_19 + batch_9_18_19
   + batch_9_13_15_18_19 + batch_9_19 + batch_9_13_19 = 1
 order_10: batch_0_4_10_14_16 + batch_0_4_10_13_16 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_8_12 = 1
 order_13: batch_13 + batch_1_13_17 + batch_9_13_14_18_19
   + batch_9_13_14_18_19 + batch_0_4_10_13_16 + batch_9_13_15_18_19
   + batch_9_13_19 = 1
 order_14: batch_14 + batch_5_6_14_15 + batch_9_13_14_18_19
   + batch_0_4_10_14_16 + batch_9_13_14_18_19 = 1
 order_15: batch_15 + batch_5_6_14_15 + batch_1_15_17 + batch_9_13_15_18_19
   + batch_5_6_15 = 1
 order_16: batch_0_4_10_14_16 + batch_0_4_10_13_16 = 1
 order_17: batch_1_13_17 + batch_1_15_17 + batch_1_17 = 1
 order_18: batch_18 + batch_9_13_14_18_19 + batch_5_6_18
   + batch_9_13_14_18_19 + batch_9_18_19 + batch_9_13_15_18_19 = 1
 order_19: batch_9_13_14_18_19 + batch_9_13_14_18_19 + batch_9_18_19
   + batch_9_13_15_18_19 + batch_9_19 + batch_9_13_19 = 1
Bounds
End
