\ Model JOBPRP_RMP_720
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x19116705bece781
Minimize
  91.2 batch_5 + 77.2 batch_9 + 78.4 batch_10 + 65.2 batch_14
   + 74.8 batch_15 + 115.2 batch_2_7_11 + 127.2 batch_1_10_17
   + 117.2 batch_0_4_14_15_16 + 109.2 batch_6_8_13_19 + 123.2 batch_3_12_18
   + 127.2 batch_0_4_5_14_16 + 133.2 batch_1_15_17
   + 127.1999966503068 batch_1_10_17 + 139.2 batch_0_4_9_15_16
   + 129.2 batch_0_4_9_14_16 + 141.2 batch_5_9_10_15 + 107.2 batch_5_9
   + 115.2 batch_5_9_14
Subject To
 order_0: batch_0_4_14_15_16 + batch_0_4_5_14_16 + batch_0_4_9_15_16
   + batch_0_4_9_14_16 = 1
 order_1: batch_1_10_17 + batch_1_15_17 + batch_1_10_17 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_18 = 1
 order_4: batch_0_4_14_15_16 + batch_0_4_5_14_16 + batch_0_4_9_15_16
   + batch_0_4_9_14_16 = 1
 order_5: batch_5 + batch_0_4_5_14_16 + batch_5_9_10_15 + batch_5_9
   + batch_5_9_14 = 1
 order_6: batch_6_8_13_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_6_8_13_19 = 1
 order_9: batch_9 + batch_0_4_9_15_16 + batch_0_4_9_14_16 + batch_5_9_10_15
   + batch_5_9 + batch_5_9_14 = 1
 order_10: batch_10 + batch_1_10_17 + batch_1_10_17 + batch_5_9_10_15 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_12_18 = 1
 order_13: batch_6_8_13_19 = 1
 order_14: batch_14 + batch_0_4_14_15_16 + batch_0_4_5_14_16
   + batch_0_4_9_14_16 + batch_5_9_14 = 1
 order_15: batch_15 + batch_0_4_14_15_16 + batch_1_15_17
   + batch_0_4_9_15_16 + batch_5_9_10_15 = 1
 order_16: batch_0_4_14_15_16 + batch_0_4_5_14_16 + batch_0_4_9_15_16
   + batch_0_4_9_14_16 = 1
 order_17: batch_1_10_17 + batch_1_15_17 + batch_1_10_17 = 1
 order_18: batch_3_12_18 = 1
 order_19: batch_6_8_13_19 = 1
Bounds
End
