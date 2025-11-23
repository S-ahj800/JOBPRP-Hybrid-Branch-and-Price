\ Model JOBPRP_RMP_124
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xcfc41e7cf1610279
Minimize
  72.4 batch_8 + 77.2 batch_9 + 74.8 batch_15 + 61.2 batch_19
   + 105.6 batch_3_12_16 + 115.2 batch_2_7_11 + 118 batch_3_12_16_19
   + 127.2 batch_1_10_17 + 123.2 batch_5_8_14_18 + 131.2 batch_0_4_9_15
   + 132 batch_0_4_9_15_19 + 121.2 batch_5_9_14_18 + 127.2 batch_0_4_6_13
   + 135.2 batch_0_4_6_13_19 + 101.1999988767119 batch_8_15
   + 122 batch_8_9_15_19 + 128 batch_6_13_15_19
Subject To
 order_0: batch_0_4_9_15 + batch_0_4_9_15_19 + batch_0_4_6_13
   + batch_0_4_6_13_19 = 1
 order_1: batch_1_10_17 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16 + batch_3_12_16_19 = 1
 order_4: batch_0_4_9_15 + batch_0_4_9_15_19 + batch_0_4_6_13
   + batch_0_4_6_13_19 = 1
 order_5: batch_5_8_14_18 + batch_5_9_14_18 = 1
 order_6: batch_0_4_6_13 + batch_0_4_6_13_19 + batch_6_13_15_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_5_8_14_18 + batch_8_15 + batch_8_9_15_19 = 1
 order_9: batch_9 + batch_0_4_9_15 + batch_0_4_9_15_19 + batch_5_9_14_18
   + batch_8_9_15_19 = 1
 order_10: batch_1_10_17 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_12_16 + batch_3_12_16_19 = 1
 order_13: batch_0_4_6_13 + batch_0_4_6_13_19 + batch_6_13_15_19 = 1
 order_14: batch_5_8_14_18 + batch_5_9_14_18 = 1
 order_15: batch_15 + batch_0_4_9_15 + batch_0_4_9_15_19 + batch_8_15
   + batch_8_9_15_19 + batch_6_13_15_19 = 1
 order_16: batch_3_12_16 + batch_3_12_16_19 = 1
 order_17: batch_1_10_17 = 1
 order_18: batch_5_8_14_18 + batch_5_9_14_18 = 1
 order_19: batch_19 + batch_3_12_16_19 + batch_0_4_9_15_19
   + batch_0_4_6_13_19 + batch_8_9_15_19 + batch_6_13_15_19 = 1
Bounds
End
