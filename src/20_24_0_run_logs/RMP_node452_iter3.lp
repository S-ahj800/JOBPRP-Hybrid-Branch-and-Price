\ Model JOBPRP_RMP_452
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x70d42bee70a60b3b
Minimize
  91.2 batch_5 + 89.6 batch_12 + 70.4 batch_13 + 77.2 batch_18
   + 61.2 batch_19 + 137.2 batch_0_4_13_14_16_19 + 115.2 batch_2_7_11
   + 115.6 batch_3_12_15 + 127.2 batch_1_10_17 + 113.2 batch_6_8_9_19
   + 129.2 batch_5_12_18_19 + 127.2 batch_0_4_5_14_16
   + 139.2 batch_3_13_15_18 + 123.2 batch_0_4_13_14_16
   + 127.2 batch_5_12_18
Subject To
 order_0: batch_0_4_13_14_16_19 + batch_0_4_5_14_16 + batch_0_4_13_14_16
   = 1
 order_1: batch_1_10_17 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_15 + batch_3_13_15_18 = 1
 order_4: batch_0_4_13_14_16_19 + batch_0_4_5_14_16 + batch_0_4_13_14_16
   = 1
 order_5: batch_5 + batch_5_12_18_19 + batch_0_4_5_14_16 + batch_5_12_18
   = 1
 order_6: batch_6_8_9_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_6_8_9_19 = 1
 order_9: batch_6_8_9_19 = 1
 order_10: batch_1_10_17 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_3_12_15 + batch_5_12_18_19 + batch_5_12_18 = 1
 order_13: batch_13 + batch_0_4_13_14_16_19 + batch_3_13_15_18
   + batch_0_4_13_14_16 = 1
 order_14: batch_0_4_13_14_16_19 + batch_0_4_5_14_16 + batch_0_4_13_14_16
   = 1
 order_15: batch_3_12_15 + batch_3_13_15_18 = 1
 order_16: batch_0_4_13_14_16_19 + batch_0_4_5_14_16 + batch_0_4_13_14_16
   = 1
 order_17: batch_1_10_17 = 1
 order_18: batch_18 + batch_5_12_18_19 + batch_3_13_15_18 + batch_5_12_18
   = 1
 order_19: batch_19 + batch_0_4_13_14_16_19 + batch_6_8_9_19
   + batch_5_12_18_19 = 1
Bounds
End
