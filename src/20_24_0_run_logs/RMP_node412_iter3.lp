\ Model JOBPRP_RMP_412
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xd3d129e6753627fd
Minimize
  77.2 batch_9 + 78.4 batch_10 + 77.2 batch_18 + 115.2 batch_2_7_11
   + 118 batch_3_12_16_19 + 119.2 batch_5_8_10_14 + 137.2 batch_0_1_4_15
   + 125.2 batch_5_8_9_14 + 113.2 batch_6_13_17 + 123.2 batch_5_8_14_18
   + 132 batch_0_4_9_18 + 121.2 batch_9_10_18 + 129.2 batch_1_15_18
Subject To
 order_0: batch_0_1_4_15 + batch_0_4_9_18 = 1
 order_1: batch_0_1_4_15 + batch_1_15_18 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16_19 = 1
 order_4: batch_0_1_4_15 + batch_0_4_9_18 = 1
 order_5: batch_5_8_10_14 + batch_5_8_9_14 + batch_5_8_14_18 = 1
 order_6: batch_6_13_17 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_5_8_10_14 + batch_5_8_9_14 + batch_5_8_14_18 = 1
 order_9: batch_9 + batch_5_8_9_14 + batch_0_4_9_18 + batch_9_10_18 = 1
 order_10: batch_10 + batch_5_8_10_14 + batch_9_10_18 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_12_16_19 = 1
 order_13: batch_6_13_17 = 1
 order_14: batch_5_8_10_14 + batch_5_8_9_14 + batch_5_8_14_18 = 1
 order_15: batch_0_1_4_15 + batch_1_15_18 = 1
 order_16: batch_3_12_16_19 = 1
 order_17: batch_6_13_17 = 1
 order_18: batch_18 + batch_5_8_14_18 + batch_0_4_9_18 + batch_9_10_18
   + batch_1_15_18 = 1
 order_19: batch_3_12_16_19 = 1
Bounds
End
