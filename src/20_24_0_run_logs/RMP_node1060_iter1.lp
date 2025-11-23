\ Model JOBPRP_RMP_1060
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x70d42bee70a60b3b
Minimize
  91.2 batch_5 + 65.2 batch_14 + 74.8 batch_15 + 61.2 batch_19
   + 119.2 batch_0_4_10_14_15 + 115.2 batch_2_7_11 + 109.2 batch_6_9_13_18
   + 117.2 batch_5_8_17 + 127.2 batch_8_14_15_17 + 141.2 batch_1_12_15
   + 137.2 batch_1_12_14 + 133.2 batch_8_15_17_19 + 115.2 batch_8_14_17_19
   + 132 batch_1_12_19 + 130 batch_0_4_10_15_19
Subject To
 order_0: batch_0_4_10_14_15 + batch_0_4_10_15_19 = 1
 order_1: batch_1_12_15 + batch_1_12_14 + batch_1_12_19 = 1
 order_2: batch_2_7_11 = 1
 order_3: = 1
 order_4: batch_0_4_10_14_15 + batch_0_4_10_15_19 = 1
 order_5: batch_5 + batch_5_8_17 = 1
 order_6: batch_6_9_13_18 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_5_8_17 + batch_8_14_15_17 + batch_8_15_17_19
   + batch_8_14_17_19 = 1
 order_9: batch_6_9_13_18 = 1
 order_10: batch_0_4_10_14_15 + batch_0_4_10_15_19 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_1_12_15 + batch_1_12_14 + batch_1_12_19 = 1
 order_13: batch_6_9_13_18 = 1
 order_14: batch_14 + batch_0_4_10_14_15 + batch_8_14_15_17 + batch_1_12_14
   + batch_8_14_17_19 = 1
 order_15: batch_15 + batch_0_4_10_14_15 + batch_8_14_15_17 + batch_1_12_15
   + batch_8_15_17_19 + batch_0_4_10_15_19 = 1
 order_16: = 1
 order_17: batch_5_8_17 + batch_8_14_15_17 + batch_8_15_17_19
   + batch_8_14_17_19 = 1
 order_18: batch_6_9_13_18 = 1
 order_19: batch_19 + batch_8_15_17_19 + batch_8_14_17_19 + batch_1_12_19
   + batch_0_4_10_15_19 = 1
Bounds
End
