\ Model JOBPRP_RMP_164
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x2c6bc5d0c9793b62
Minimize
  91.2 batch_5 + 77.2 batch_9 + 78.4 batch_10 + 89.6 batch_12
   + 70.4 batch_13 + 65.2 batch_14 + 61.2 batch_19 + 123.2 batch_1_17_18
   + 115.2 batch_2_7_11 + 133.2 batch_5_10_12_19 + 123.2 batch_0_4_10_15_16
   + 117.2 batch_0_4_14_15_16 + 117.2 batch_5_9_13_14_19
   + 125.2 batch_3_6_8 + 129.2 batch_5_12_13_14 + 139.2 batch_0_4_9_15_16
   + 116 batch_12_13_19
Subject To
 order_0: batch_0_4_10_15_16 + batch_0_4_14_15_16 + batch_0_4_9_15_16 = 1
 order_1: batch_1_17_18 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_6_8 = 1
 order_4: batch_0_4_10_15_16 + batch_0_4_14_15_16 + batch_0_4_9_15_16 = 1
 order_5: batch_5 + batch_5_10_12_19 + batch_5_9_13_14_19
   + batch_5_12_13_14 = 1
 order_6: batch_3_6_8 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_3_6_8 = 1
 order_9: batch_9 + batch_5_9_13_14_19 + batch_0_4_9_15_16 = 1
 order_10: batch_10 + batch_5_10_12_19 + batch_0_4_10_15_16 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_5_10_12_19 + batch_5_12_13_14 + batch_12_13_19
   = 1
 order_13: batch_13 + batch_5_9_13_14_19 + batch_5_12_13_14
   + batch_12_13_19 = 1
 order_14: batch_14 + batch_0_4_14_15_16 + batch_5_9_13_14_19
   + batch_5_12_13_14 = 1
 order_15: batch_0_4_10_15_16 + batch_0_4_14_15_16 + batch_0_4_9_15_16 = 1
 order_16: batch_0_4_10_15_16 + batch_0_4_14_15_16 + batch_0_4_9_15_16 = 1
 order_17: batch_1_17_18 = 1
 order_18: batch_1_17_18 = 1
 order_19: batch_19 + batch_5_10_12_19 + batch_5_9_13_14_19
   + batch_12_13_19 = 1
Bounds
End
