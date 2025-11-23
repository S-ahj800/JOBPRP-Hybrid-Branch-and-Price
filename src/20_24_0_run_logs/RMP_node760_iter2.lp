\ Model JOBPRP_RMP_760
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x3b461b5794b740bf
Minimize
  83.6 batch_3 + 91.2 batch_5 + 77.2 batch_9 + 89.6 batch_12 + 65.2 batch_14
   + 74.8 batch_15 + 77.2 batch_18 + 115.2 batch_2_7_11
   + 123.2 batch_0_4_10_15_16 + 109.2 batch_6_8_13_19
   + 138 batch_9_12_14_18 + 105.2 batch_9_13_14_18_19 + 127.2 batch_1_9_17
   + 117.2 batch_5_9_13_14_19 + 115.2 batch_3_5_18 + 126 batch_6_8_12
   + 133.2 batch_1_15_17 + 119.2 batch_3_5_13_19 + 115.2 batch_3_13_18_19
   + 119.2 batch_0_4_10_14_16
Subject To
 order_0: batch_0_4_10_15_16 + batch_0_4_10_14_16 = 1
 order_1: batch_1_9_17 + batch_1_15_17 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3 + batch_3_5_18 + batch_3_5_13_19 + batch_3_13_18_19 = 1
 order_4: batch_0_4_10_15_16 + batch_0_4_10_14_16 = 1
 order_5: batch_5 + batch_5_9_13_14_19 + batch_3_5_18 + batch_3_5_13_19
   = 1
 order_6: batch_6_8_13_19 + batch_6_8_12 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_6_8_13_19 + batch_6_8_12 = 1
 order_9: batch_9 + batch_9_12_14_18 + batch_9_13_14_18_19 + batch_1_9_17
   + batch_5_9_13_14_19 = 1
 order_10: batch_0_4_10_15_16 + batch_0_4_10_14_16 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_9_12_14_18 + batch_6_8_12 = 1
 order_13: batch_6_8_13_19 + batch_9_13_14_18_19 + batch_5_9_13_14_19
   + batch_3_5_13_19 + batch_3_13_18_19 = 1
 order_14: batch_14 + batch_9_12_14_18 + batch_9_13_14_18_19
   + batch_5_9_13_14_19 + batch_0_4_10_14_16 = 1
 order_15: batch_15 + batch_0_4_10_15_16 + batch_1_15_17 = 1
 order_16: batch_0_4_10_15_16 + batch_0_4_10_14_16 = 1
 order_17: batch_1_9_17 + batch_1_15_17 = 1
 order_18: batch_18 + batch_9_12_14_18 + batch_9_13_14_18_19 + batch_3_5_18
   + batch_3_13_18_19 = 1
 order_19: batch_6_8_13_19 + batch_9_13_14_18_19 + batch_5_9_13_14_19
   + batch_3_5_13_19 + batch_3_13_18_19 = 1
Bounds
End
