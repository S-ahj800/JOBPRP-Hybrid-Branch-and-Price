\ Model JOBPRP_RMP_176
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xfd6d2a86a0d7e91c
Minimize
  77.2 batch_9 + 89.6 batch_12 + 70.4 batch_13 + 65.2 batch_14
   + 74.8 batch_15 + 123.2 batch_1_17_18 + 115.2 batch_2_7_11
   + 117.2 batch_5_9_13_14_19 + 119.2 batch_0_4_10_14_16
   + 125.2 batch_3_6_8 + 133.2 batch_5_12_15_19 + 129.2 batch_0_4_10_13_16
   + 133.2 batch_12_13_14_15 + 124 batch_9_13_15
Subject To
 order_0: batch_0_4_10_14_16 + batch_0_4_10_13_16 = 1
 order_1: batch_1_17_18 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_6_8 = 1
 order_4: batch_0_4_10_14_16 + batch_0_4_10_13_16 = 1
 order_5: batch_5_9_13_14_19 + batch_5_12_15_19 = 1
 order_6: batch_3_6_8 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_3_6_8 = 1
 order_9: batch_9 + batch_5_9_13_14_19 + batch_9_13_15 = 1
 order_10: batch_0_4_10_14_16 + batch_0_4_10_13_16 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_5_12_15_19 + batch_12_13_14_15 = 1
 order_13: batch_13 + batch_5_9_13_14_19 + batch_0_4_10_13_16
   + batch_12_13_14_15 + batch_9_13_15 = 1
 order_14: batch_14 + batch_5_9_13_14_19 + batch_0_4_10_14_16
   + batch_12_13_14_15 = 1
 order_15: batch_15 + batch_5_12_15_19 + batch_12_13_14_15 + batch_9_13_15
   = 1
 order_16: batch_0_4_10_14_16 + batch_0_4_10_13_16 = 1
 order_17: batch_1_17_18 = 1
 order_18: batch_1_17_18 = 1
 order_19: batch_5_9_13_14_19 + batch_5_12_15_19 = 1
Bounds
End
