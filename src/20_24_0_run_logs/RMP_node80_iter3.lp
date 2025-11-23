\ Model JOBPRP_RMP_80
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x385dd5c779c644bf
Minimize
  77.2 batch_9 + 77.2 batch_18 + 105.6 batch_3_12_16 + 115.2 batch_2_7_11
   + 123.2 batch_0_4_8_17 + 123.2 batch_1_9_10 + 123.2 batch_5_6_13_14
   + 139.2 batch_1_10_15_19 + 115.1999909903008 batch_2_7_11
   + 130 batch_9_15_18_19 + 129.2 batch_1_10_18
Subject To
 order_0: batch_0_4_8_17 = 1
 order_1: batch_1_9_10 + batch_1_10_15_19 + batch_1_10_18 = 1
 order_2: batch_2_7_11 + batch_2_7_11 = 1
 order_3: batch_3_12_16 = 1
 order_4: batch_0_4_8_17 = 1
 order_5: batch_5_6_13_14 = 1
 order_6: batch_5_6_13_14 = 1
 order_7: batch_2_7_11 + batch_2_7_11 = 1
 order_8: batch_0_4_8_17 = 1
 order_9: batch_9 + batch_1_9_10 + batch_9_15_18_19 = 1
 order_10: batch_1_9_10 + batch_1_10_15_19 + batch_1_10_18 = 1
 order_11: batch_2_7_11 + batch_2_7_11 = 1
 order_12: batch_3_12_16 = 1
 order_13: batch_5_6_13_14 = 1
 order_14: batch_5_6_13_14 = 1
 order_15: batch_1_10_15_19 + batch_9_15_18_19 = 1
 order_16: batch_3_12_16 = 1
 order_17: batch_0_4_8_17 = 1
 order_18: batch_18 + batch_9_15_18_19 + batch_1_10_18 = 1
 order_19: batch_1_10_15_19 + batch_9_15_18_19 = 1
Bounds
End
