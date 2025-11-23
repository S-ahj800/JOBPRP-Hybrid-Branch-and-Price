\ Model JOBPRP_RMP_1832
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xd26d24b87b6b697d
Minimize
  98 batch_1 + 89.6 batch_12 + 65.2 batch_14 + 74.8 batch_15 + 89.2 batch_17
   + 77.2 batch_18 + 123.2 batch_1_17_18 + 115.2 batch_2_7_11
   + 118 batch_3_12_16_19 + 109.2 batch_8_9_14_18 + 121.2 batch_1_8_9
   + 133.2 batch_1_15_17 + 127.2 batch_0_4_5_10 + 131.2 batch_1_14_15
   + 103.2 batch_6_13_18 + 117.2 batch_1_14_17 + 120 batch_1_6_13
   + 113.2 batch_6_13_17 + 133.2 batch_6_13_15_18 + 132 batch_8_9_14_15
   + 137.2 batch_3_16_17_19 + 129.2 batch_14_15_17_18
Subject To
 order_0: batch_0_4_5_10 = 1
 order_1: batch_1 + batch_1_17_18 + batch_1_8_9 + batch_1_15_17
   + batch_1_14_15 + batch_1_14_17 + batch_1_6_13 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16_19 + batch_3_16_17_19 = 1
 order_4: batch_0_4_5_10 = 1
 order_5: batch_0_4_5_10 = 1
 order_6: batch_6_13_18 + batch_1_6_13 + batch_6_13_17 + batch_6_13_15_18
   = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8_9_14_18 + batch_1_8_9 + batch_8_9_14_15 = 1
 order_9: batch_8_9_14_18 + batch_1_8_9 + batch_8_9_14_15 = 1
 order_10: batch_0_4_5_10 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_3_12_16_19 = 1
 order_13: batch_6_13_18 + batch_1_6_13 + batch_6_13_17 + batch_6_13_15_18
   = 1
 order_14: batch_14 + batch_8_9_14_18 + batch_1_14_15 + batch_1_14_17
   + batch_8_9_14_15 + batch_14_15_17_18 = 1
 order_15: batch_15 + batch_1_15_17 + batch_1_14_15 + batch_6_13_15_18
   + batch_8_9_14_15 + batch_14_15_17_18 = 1
 order_16: batch_3_12_16_19 + batch_3_16_17_19 = 1
 order_17: batch_17 + batch_1_17_18 + batch_1_15_17 + batch_1_14_17
   + batch_6_13_17 + batch_3_16_17_19 + batch_14_15_17_18 = 1
 order_18: batch_18 + batch_1_17_18 + batch_8_9_14_18 + batch_6_13_18
   + batch_6_13_15_18 + batch_14_15_17_18 = 1
 order_19: batch_3_12_16_19 + batch_3_16_17_19 = 1
Bounds
End
