\ Model JOBPRP_RMP_52
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x349232db593a39c
Minimize
  77.2 batch_9 + 74.8 batch_15 + 77.2 batch_18 + 115.2 batch_2_7_11
   + 118 batch_3_12_16_19 + 127.2 batch_1_10_17 + 123.2 batch_5_6_13_14
   + 117.2 batch_0_4_8_15 + 121.2 batch_5_9_14_18
   + 115.1999909903008 batch_2_7_11 + 133.2 batch_6_13_15_18
   + 123.2 batch_0_4_8_9 + 130 batch_0_4_8_18 + 103.2 batch_6_13_18
Subject To
 order_0: batch_0_4_8_15 + batch_0_4_8_9 + batch_0_4_8_18 = 1
 order_1: batch_1_10_17 = 1
 order_2: batch_2_7_11 + batch_2_7_11 = 1
 order_3: batch_3_12_16_19 = 1
 order_4: batch_0_4_8_15 + batch_0_4_8_9 + batch_0_4_8_18 = 1
 order_5: batch_5_6_13_14 + batch_5_9_14_18 = 1
 order_6: batch_5_6_13_14 + batch_6_13_15_18 + batch_6_13_18 = 1
 order_7: batch_2_7_11 + batch_2_7_11 = 1
 order_8: batch_0_4_8_15 + batch_0_4_8_9 + batch_0_4_8_18 = 1
 order_9: batch_9 + batch_5_9_14_18 + batch_0_4_8_9 = 1
 order_10: batch_1_10_17 = 1
 order_11: batch_2_7_11 + batch_2_7_11 = 1
 order_12: batch_3_12_16_19 = 1
 order_13: batch_5_6_13_14 + batch_6_13_15_18 + batch_6_13_18 = 1
 order_14: batch_5_6_13_14 + batch_5_9_14_18 = 1
 order_15: batch_15 + batch_0_4_8_15 + batch_6_13_15_18 = 1
 order_16: batch_3_12_16_19 = 1
 order_17: batch_1_10_17 = 1
 order_18: batch_18 + batch_5_9_14_18 + batch_6_13_15_18 + batch_0_4_8_18
   + batch_6_13_18 = 1
 order_19: batch_3_12_16_19 = 1
Bounds
End
