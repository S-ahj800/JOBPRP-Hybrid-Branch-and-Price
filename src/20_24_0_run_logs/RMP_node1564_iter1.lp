\ Model JOBPRP_RMP_1564
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x2c6bc5d0c9793b62
Minimize
  77.2 batch_9 + 78.4 batch_10 + 89.6 batch_12 + 89.2 batch_17
   + 77.2 batch_18 + 105.6 batch_3_12_16 + 115.2 batch_2_7_11
   + 126 batch_8_12_15_19 + 119.2 batch_1_5_9 + 127.2 batch_1_5_10
   + 125.2 batch_8_10_15_19 + 109.2 batch_6_13_14_18 + 122 batch_3_9_16
   + 139.2 batch_9_12_17 + 119.2 batch_6_10_13_14 + 121.2 batch_0_4_10_17
   + 122 batch_8_9_15_19
Subject To
 order_0: batch_0_4_10_17 = 1
 order_1: batch_1_5_9 + batch_1_5_10 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16 + batch_3_9_16 = 1
 order_4: batch_0_4_10_17 = 1
 order_5: batch_1_5_9 + batch_1_5_10 = 1
 order_6: batch_6_13_14_18 + batch_6_10_13_14 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8_12_15_19 + batch_8_10_15_19 + batch_8_9_15_19 = 1
 order_9: batch_9 + batch_1_5_9 + batch_3_9_16 + batch_9_12_17
   + batch_8_9_15_19 = 1
 order_10: batch_10 + batch_1_5_10 + batch_8_10_15_19 + batch_6_10_13_14
   + batch_0_4_10_17 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_3_12_16 + batch_8_12_15_19 + batch_9_12_17 = 1
 order_13: batch_6_13_14_18 + batch_6_10_13_14 = 1
 order_14: batch_6_13_14_18 + batch_6_10_13_14 = 1
 order_15: batch_8_12_15_19 + batch_8_10_15_19 + batch_8_9_15_19 = 1
 order_16: batch_3_12_16 + batch_3_9_16 = 1
 order_17: batch_17 + batch_9_12_17 + batch_0_4_10_17 = 1
 order_18: batch_18 + batch_6_13_14_18 = 1
 order_19: batch_8_12_15_19 + batch_8_10_15_19 + batch_8_9_15_19 = 1
Bounds
End
