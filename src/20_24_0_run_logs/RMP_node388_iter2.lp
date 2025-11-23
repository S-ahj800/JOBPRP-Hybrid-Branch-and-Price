\ Model JOBPRP_RMP_388
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x3b461b5794b740bf
Minimize
  91.2 batch_5 + 77.2 batch_9 + 78.4 batch_10 + 70.4 batch_13
   + 65.2 batch_14 + 61.2 batch_19 + 115.2 batch_6_8_18_19
   + 115.2 batch_2_7_11 + 117.2 batch_0_4_14_15_16 + 117.2 batch_1_14_17
   + 127.2 batch_1_9_17 + 117.2 batch_5_9_13_14_19 + 125.2 batch_1_13_17
   + 117.2 batch_5_9_13_14 + 125.2 batch_5_9_10_13
   + 127.2 batch_0_4_13_15_16 + 118.4 batch_3_10_12
   + 125.2 batch_5_10_13_14_19 + 116.4 batch_3_12_13 + 101.6 batch_3_12
Subject To
 order_0: batch_0_4_14_15_16 + batch_0_4_13_15_16 = 1
 order_1: batch_1_14_17 + batch_1_9_17 + batch_1_13_17 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_10_12 + batch_3_12_13 + batch_3_12 = 1
 order_4: batch_0_4_14_15_16 + batch_0_4_13_15_16 = 1
 order_5: batch_5 + batch_5_9_13_14_19 + batch_5_9_13_14 + batch_5_9_10_13
   + batch_5_10_13_14_19 = 1
 order_6: batch_6_8_18_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_6_8_18_19 = 1
 order_9: batch_9 + batch_1_9_17 + batch_5_9_13_14_19 + batch_5_9_13_14
   + batch_5_9_10_13 = 1
 order_10: batch_10 + batch_5_9_10_13 + batch_3_10_12 + batch_5_10_13_14_19
   = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_10_12 + batch_3_12_13 + batch_3_12 = 1
 order_13: batch_13 + batch_5_9_13_14_19 + batch_1_13_17 + batch_5_9_13_14
   + batch_5_9_10_13 + batch_0_4_13_15_16 + batch_5_10_13_14_19
   + batch_3_12_13 = 1
 order_14: batch_14 + batch_0_4_14_15_16 + batch_1_14_17
   + batch_5_9_13_14_19 + batch_5_9_13_14 + batch_5_10_13_14_19 = 1
 order_15: batch_0_4_14_15_16 + batch_0_4_13_15_16 = 1
 order_16: batch_0_4_14_15_16 + batch_0_4_13_15_16 = 1
 order_17: batch_1_14_17 + batch_1_9_17 + batch_1_13_17 = 1
 order_18: batch_6_8_18_19 = 1
 order_19: batch_19 + batch_6_8_18_19 + batch_5_9_13_14_19
   + batch_5_10_13_14_19 = 1
Bounds
End
