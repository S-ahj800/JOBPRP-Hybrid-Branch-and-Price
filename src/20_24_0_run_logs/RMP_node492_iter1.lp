\ Model JOBPRP_RMP_492
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x49cd760c1a918a74
Minimize
  89.2 batch_17 + 77.2 batch_18 + 105.6 batch_3_12_16 + 115.2 batch_2_7_11
   + 137.2 batch_0_1_4_15 + 107.2 batch_8_9_18_19 + 125.2 batch_8_9_17_19
   + 123.2 batch_5_10_14_18 + 113.2 batch_6_13_17
Subject To
 order_0: batch_0_1_4_15 = 1
 order_1: batch_0_1_4_15 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16 = 1
 order_4: batch_0_1_4_15 = 1
 order_5: batch_5_10_14_18 = 1
 order_6: batch_6_13_17 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8_9_18_19 + batch_8_9_17_19 = 1
 order_9: batch_8_9_18_19 + batch_8_9_17_19 = 1
 order_10: batch_5_10_14_18 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_12_16 = 1
 order_13: batch_6_13_17 = 1
 order_14: batch_5_10_14_18 = 1
 order_15: batch_0_1_4_15 = 1
 order_16: batch_3_12_16 = 1
 order_17: batch_17 + batch_8_9_17_19 + batch_6_13_17 = 1
 order_18: batch_18 + batch_8_9_18_19 + batch_5_10_14_18 = 1
 order_19: batch_8_9_18_19 + batch_8_9_17_19 = 1
Bounds
End
