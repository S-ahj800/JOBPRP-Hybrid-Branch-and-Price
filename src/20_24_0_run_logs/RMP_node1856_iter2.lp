\ Model JOBPRP_RMP_1856
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xf3f56fa9d29974e6
Minimize
  91.2 batch_5 + 72.4 batch_8 + 65.2 batch_14 + 74.8 batch_15
   + 119.2 batch_0_4_10_14_15 + 123.2 batch_1_17_18 + 105.6 batch_3_12_16
   + 115.2 batch_2_7_11 + 105.2 batch_6_9_13_19 + 119.2 batch_0_4_8_10
   + 115.2 batch_0_4_10_15 + 129.2 batch_5_8_15 + 107.2 batch_5_8
Subject To
 order_0: batch_0_4_10_14_15 + batch_0_4_8_10 + batch_0_4_10_15 = 1
 order_1: batch_1_17_18 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16 = 1
 order_4: batch_0_4_10_14_15 + batch_0_4_8_10 + batch_0_4_10_15 = 1
 order_5: batch_5 + batch_5_8_15 + batch_5_8 = 1
 order_6: batch_6_9_13_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_0_4_8_10 + batch_5_8_15 + batch_5_8 = 1
 order_9: batch_6_9_13_19 = 1
 order_10: batch_0_4_10_14_15 + batch_0_4_8_10 + batch_0_4_10_15 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_12_16 = 1
 order_13: batch_6_9_13_19 = 1
 order_14: batch_14 + batch_0_4_10_14_15 = 1
 order_15: batch_15 + batch_0_4_10_14_15 + batch_0_4_10_15 + batch_5_8_15
   = 1
 order_16: batch_3_12_16 = 1
 order_17: batch_1_17_18 = 1
 order_18: batch_1_17_18 = 1
 order_19: batch_6_9_13_19 = 1
Bounds
End
