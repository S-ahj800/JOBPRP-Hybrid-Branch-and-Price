\ Model JOBPRP_RMP_491
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xe60b2750ebd30449
Minimize
  77.2 batch_9 + 89.2 batch_17 + 77.2 batch_18 + 105.6 batch_3_12_16
   + 115.2 batch_2_7_11 + 109.2 batch_6_8_13_19 + 137.2 batch_0_1_4_15
   + 131.2 batch_8_17_18_19 + 123.2 batch_5_10_14_18
   + 129.2 batch_5_9_10_14 + 113.2 batch_6_13_17
Subject To
 order_0: batch_0_1_4_15 = 1
 order_1: batch_0_1_4_15 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16 = 1
 order_4: batch_0_1_4_15 = 1
 order_5: batch_5_10_14_18 + batch_5_9_10_14 = 1
 order_6: batch_6_8_13_19 + batch_6_13_17 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_6_8_13_19 + batch_8_17_18_19 = 1
 order_9: batch_9 + batch_5_9_10_14 = 1
 order_10: batch_5_10_14_18 + batch_5_9_10_14 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_12_16 = 1
 order_13: batch_6_8_13_19 + batch_6_13_17 = 1
 order_14: batch_5_10_14_18 + batch_5_9_10_14 = 1
 order_15: batch_0_1_4_15 = 1
 order_16: batch_3_12_16 = 1
 order_17: batch_17 + batch_8_17_18_19 + batch_6_13_17 = 1
 order_18: batch_18 + batch_8_17_18_19 + batch_5_10_14_18 = 1
 order_19: batch_6_8_13_19 + batch_8_17_18_19 = 1
Bounds
End
