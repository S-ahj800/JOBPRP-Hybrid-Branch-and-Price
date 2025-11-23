\ Model JOBPRP_RMP_1432
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x3b872fe2c27bde
Minimize
  72.4 batch_8 + 78.4 batch_10 + 65.2 batch_14 + 77.2 batch_18
   + 105.6 batch_3_12_16 + 115.2 batch_2_7_11 + 123.2 batch_0_4_5_17
   + 111.2 batch_6_9_13_14 + 123.2 batch_6_9_10_13 + 130 batch_1_15_18_19
   + 139.2 batch_1_10_15_19 + 109.2 batch_10_14_18
Subject To
 order_0: batch_0_4_5_17 = 1
 order_1: batch_1_15_18_19 + batch_1_10_15_19 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16 = 1
 order_4: batch_0_4_5_17 = 1
 order_5: batch_0_4_5_17 = 1
 order_6: batch_6_9_13_14 + batch_6_9_10_13 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 = 1
 order_9: batch_6_9_13_14 + batch_6_9_10_13 = 1
 order_10: batch_10 + batch_6_9_10_13 + batch_1_10_15_19 + batch_10_14_18
   = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_12_16 = 1
 order_13: batch_6_9_13_14 + batch_6_9_10_13 = 1
 order_14: batch_14 + batch_6_9_13_14 + batch_10_14_18 = 1
 order_15: batch_1_15_18_19 + batch_1_10_15_19 = 1
 order_16: batch_3_12_16 = 1
 order_17: batch_0_4_5_17 = 1
 order_18: batch_18 + batch_1_15_18_19 + batch_10_14_18 = 1
 order_19: batch_1_15_18_19 + batch_1_10_15_19 = 1
Bounds
End
