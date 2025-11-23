\ Model JOBPRP_RMP_92
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x2fb38077231ff77d
Minimize
  77.2 batch_9 + 89.2 batch_17 + 77.2 batch_18 + 105.6 batch_3_12_16
   + 115.2 batch_2_7_11 + 126 batch_0_4_8_15_19 + 123.2 batch_5_6_13_14
   + 121.2 batch_5_9_14_18 + 115.1999909903008 batch_2_7_11
   + 113.2 batch_6_13_17 + 103.2 batch_6_13_18 + 129.2 batch_1_10_18
   + 111.2 batch_5_14_17
Subject To
 order_0: batch_0_4_8_15_19 = 1
 order_1: batch_1_10_18 = 1
 order_2: batch_2_7_11 + batch_2_7_11 = 1
 order_3: batch_3_12_16 = 1
 order_4: batch_0_4_8_15_19 = 1
 order_5: batch_5_6_13_14 + batch_5_9_14_18 + batch_5_14_17 = 1
 order_6: batch_5_6_13_14 + batch_6_13_17 + batch_6_13_18 = 1
 order_7: batch_2_7_11 + batch_2_7_11 = 1
 order_8: batch_0_4_8_15_19 = 1
 order_9: batch_9 + batch_5_9_14_18 = 1
 order_10: batch_1_10_18 = 1
 order_11: batch_2_7_11 + batch_2_7_11 = 1
 order_12: batch_3_12_16 = 1
 order_13: batch_5_6_13_14 + batch_6_13_17 + batch_6_13_18 = 1
 order_14: batch_5_6_13_14 + batch_5_9_14_18 + batch_5_14_17 = 1
 order_15: batch_0_4_8_15_19 = 1
 order_16: batch_3_12_16 = 1
 order_17: batch_17 + batch_6_13_17 + batch_5_14_17 = 1
 order_18: batch_18 + batch_5_9_14_18 + batch_6_13_18 + batch_1_10_18 = 1
 order_19: batch_0_4_8_15_19 = 1
Bounds
End
