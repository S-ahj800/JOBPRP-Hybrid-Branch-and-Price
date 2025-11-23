\ Model JOBPRP_RMP_1808
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xd26d24b87b6b697d
Minimize
  91.2 batch_5 + 89.2 batch_6 + 77.2 batch_9 + 78.4 batch_10 + 70.4 batch_13
   + 74.8 batch_15 + 77.2 batch_18 + 61.2 batch_19
   + 137.2 batch_0_4_13_14_16_19 + 115.2 batch_2_7_11 + 119.2 batch_3_8_12
   + 125.2 batch_1_13_17 + 107.2 batch_6_9_18_19 + 127.2 batch_1_9_17
   + 117.2 batch_5_9_13_18 + 127.2 batch_0_4_5_14_16
   + 133.1999988064546 batch_1_15_17 + 131.2 batch_6_10_15
   + 123.2 batch_6_9_10_19 + 127.2 batch_6_10_18_19
   + 141.2 batch_9_10_15_18 + 131.2 batch_10_13_15_18
Subject To
 order_0: batch_0_4_13_14_16_19 + batch_0_4_5_14_16 = 1
 order_1: batch_1_13_17 + batch_1_9_17 + batch_1_15_17 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_8_12 = 1
 order_4: batch_0_4_13_14_16_19 + batch_0_4_5_14_16 = 1
 order_5: batch_5 + batch_5_9_13_18 + batch_0_4_5_14_16 = 1
 order_6: batch_6 + batch_6_9_18_19 + batch_6_10_15 + batch_6_9_10_19
   + batch_6_10_18_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_3_8_12 = 1
 order_9: batch_9 + batch_6_9_18_19 + batch_1_9_17 + batch_5_9_13_18
   + batch_6_9_10_19 + batch_9_10_15_18 = 1
 order_10: batch_10 + batch_6_10_15 + batch_6_9_10_19 + batch_6_10_18_19
   + batch_9_10_15_18 + batch_10_13_15_18 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_8_12 = 1
 order_13: batch_13 + batch_0_4_13_14_16_19 + batch_1_13_17
   + batch_5_9_13_18 + batch_10_13_15_18 = 1
 order_14: batch_0_4_13_14_16_19 + batch_0_4_5_14_16 = 1
 order_15: batch_15 + batch_1_15_17 + batch_6_10_15 + batch_9_10_15_18
   + batch_10_13_15_18 = 1
 order_16: batch_0_4_13_14_16_19 + batch_0_4_5_14_16 = 1
 order_17: batch_1_13_17 + batch_1_9_17 + batch_1_15_17 = 1
 order_18: batch_18 + batch_6_9_18_19 + batch_5_9_13_18 + batch_6_10_18_19
   + batch_9_10_15_18 + batch_10_13_15_18 = 1
 order_19: batch_19 + batch_0_4_13_14_16_19 + batch_6_9_18_19
   + batch_6_9_10_19 + batch_6_10_18_19 = 1
Bounds
End
