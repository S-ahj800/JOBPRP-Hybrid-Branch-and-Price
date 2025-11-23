\ Model JOBPRP_RMP_1863
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x9b357d51c67635c3
Minimize
  83.6 batch_3 + 91.2 batch_5 + 72.4 batch_8 + 77.2 batch_9 + 65.2 batch_14
   + 74.8 batch_15 + 123.2 batch_1_17_18 + 115.2 batch_2_7_11
   + 123.2 batch_0_4_10_15_16 + 124 batch_6_12_13_19
   + 129.2 batch_5_8_14_15 + 118 batch_3_8_9 + 125.2 batch_5_8_9_14
   + 119.2 batch_0_4_10_14_16 + 107.2 batch_5_8 + 107.2 batch_5_8_14
Subject To
 order_0: batch_0_4_10_15_16 + batch_0_4_10_14_16 = 1
 order_1: batch_1_17_18 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3 + batch_3_8_9 = 1
 order_4: batch_0_4_10_15_16 + batch_0_4_10_14_16 = 1
 order_5: batch_5 + batch_5_8_14_15 + batch_5_8_9_14 + batch_5_8
   + batch_5_8_14 = 1
 order_6: batch_6_12_13_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_5_8_14_15 + batch_3_8_9 + batch_5_8_9_14
   + batch_5_8 + batch_5_8_14 = 1
 order_9: batch_9 + batch_3_8_9 + batch_5_8_9_14 = 1
 order_10: batch_0_4_10_15_16 + batch_0_4_10_14_16 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_6_12_13_19 = 1
 order_13: batch_6_12_13_19 = 1
 order_14: batch_14 + batch_5_8_14_15 + batch_5_8_9_14 + batch_0_4_10_14_16
   + batch_5_8_14 = 1
 order_15: batch_15 + batch_0_4_10_15_16 + batch_5_8_14_15 = 1
 order_16: batch_0_4_10_15_16 + batch_0_4_10_14_16 = 1
 order_17: batch_1_17_18 = 1
 order_18: batch_1_17_18 = 1
 order_19: batch_6_12_13_19 = 1
Bounds
End
