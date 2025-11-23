\ Model JOBPRP_RMP_1844
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x9f0d76756f18f418
Minimize
  83.6 batch_3 + 78.4 batch_10 + 65.2 batch_14 + 74.8 batch_15
   + 77.2 batch_18 + 115.2 batch_2_7_11 + 123.2 batch_0_4_10_15_16
   + 117.2 batch_0_4_14_15_16 + 124 batch_6_12_13_19 + 127.2 batch_1_9_17
   + 129.2 batch_5_8_14_15 + 119.2 batch_5_8_10_14 + 139.2 batch_3_14_15_18
   + 123.2 batch_5_8_14_18 + 125.2 batch_3_5_8 + 119.2 batch_0_4_10_14_16
   + 131.1999935466667 batch_0_4_16_18 + 117.2 batch_3_10_18
Subject To
 order_0: batch_0_4_10_15_16 + batch_0_4_14_15_16 + batch_0_4_10_14_16
   + batch_0_4_16_18 = 1
 order_1: batch_1_9_17 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3 + batch_3_14_15_18 + batch_3_5_8 + batch_3_10_18 = 1
 order_4: batch_0_4_10_15_16 + batch_0_4_14_15_16 + batch_0_4_10_14_16
   + batch_0_4_16_18 = 1
 order_5: batch_5_8_14_15 + batch_5_8_10_14 + batch_5_8_14_18 + batch_3_5_8
   = 1
 order_6: batch_6_12_13_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_5_8_14_15 + batch_5_8_10_14 + batch_5_8_14_18 + batch_3_5_8
   = 1
 order_9: batch_1_9_17 = 1
 order_10: batch_10 + batch_0_4_10_15_16 + batch_5_8_10_14
   + batch_0_4_10_14_16 + batch_3_10_18 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_6_12_13_19 = 1
 order_13: batch_6_12_13_19 = 1
 order_14: batch_14 + batch_0_4_14_15_16 + batch_5_8_14_15
   + batch_5_8_10_14 + batch_3_14_15_18 + batch_5_8_14_18
   + batch_0_4_10_14_16 = 1
 order_15: batch_15 + batch_0_4_10_15_16 + batch_0_4_14_15_16
   + batch_5_8_14_15 + batch_3_14_15_18 = 1
 order_16: batch_0_4_10_15_16 + batch_0_4_14_15_16 + batch_0_4_10_14_16
   + batch_0_4_16_18 = 1
 order_17: batch_1_9_17 = 1
 order_18: batch_18 + batch_3_14_15_18 + batch_5_8_14_18 + batch_0_4_16_18
   + batch_3_10_18 = 1
 order_19: batch_6_12_13_19 = 1
Bounds
End
