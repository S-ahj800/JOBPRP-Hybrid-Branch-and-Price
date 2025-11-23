\ Model JOBPRP_RMP_1156
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xfbb51dc947312d01
Minimize
  77.2 batch_9 + 78.4 batch_10 + 65.2 batch_14 + 74.8 batch_15
   + 61.2 batch_19 + 123.2 batch_1_17_18 + 115.2 batch_2_7_11
   + 115.2 batch_0_4_8_14_16 + 135.2 batch_5_6_13_15
   + 117.2 batch_5_6_13_19 + 131.2 batch_3_12_14_19 + 118.4 batch_3_10_12
   + 125.2 batch_3_9_12 + 117.2 batch_9_10_14 + 133.2 batch_9_10_15_19
   + 107.2 batch_9_10 + 119.2 batch_9_10_14_19 + 109.2 batch_9_10_19
Subject To
 order_0: batch_0_4_8_14_16 = 1
 order_1: batch_1_17_18 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_14_19 + batch_3_10_12 + batch_3_9_12 = 1
 order_4: batch_0_4_8_14_16 = 1
 order_5: batch_5_6_13_15 + batch_5_6_13_19 = 1
 order_6: batch_5_6_13_15 + batch_5_6_13_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_0_4_8_14_16 = 1
 order_9: batch_9 + batch_3_9_12 + batch_9_10_14 + batch_9_10_15_19
   + batch_9_10 + batch_9_10_14_19 + batch_9_10_19 = 1
 order_10: batch_10 + batch_3_10_12 + batch_9_10_14 + batch_9_10_15_19
   + batch_9_10 + batch_9_10_14_19 + batch_9_10_19 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_12_14_19 + batch_3_10_12 + batch_3_9_12 = 1
 order_13: batch_5_6_13_15 + batch_5_6_13_19 = 1
 order_14: batch_14 + batch_0_4_8_14_16 + batch_3_12_14_19 + batch_9_10_14
   + batch_9_10_14_19 = 1
 order_15: batch_15 + batch_5_6_13_15 + batch_9_10_15_19 = 1
 order_16: batch_0_4_8_14_16 = 1
 order_17: batch_1_17_18 = 1
 order_18: batch_1_17_18 = 1
 order_19: batch_19 + batch_5_6_13_19 + batch_3_12_14_19 + batch_9_10_15_19
   + batch_9_10_14_19 + batch_9_10_19 = 1
Bounds
End
