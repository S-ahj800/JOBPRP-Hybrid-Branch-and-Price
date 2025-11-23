\ Model JOBPRP_RMP_792
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x3b872fe2c27bde
Minimize
  77.2 batch_9 + 89.6 batch_12 + 74.8 batch_15 + 77.2 batch_18
   + 115.2 batch_2_7_11 + 127.2 batch_1_10_17 + 117.2 batch_0_4_14_15_16
   + 109.2 batch_6_8_13_19 + 115.2 batch_3_5_18 + 119.2 batch_3_5_9
   + 132 batch_9_12_18 + 129.2 batch_0_4_9_14_16
Subject To
 order_0: batch_0_4_14_15_16 + batch_0_4_9_14_16 = 1
 order_1: batch_1_10_17 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_5_18 + batch_3_5_9 = 1
 order_4: batch_0_4_14_15_16 + batch_0_4_9_14_16 = 1
 order_5: batch_3_5_18 + batch_3_5_9 = 1
 order_6: batch_6_8_13_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_6_8_13_19 = 1
 order_9: batch_9 + batch_3_5_9 + batch_9_12_18 + batch_0_4_9_14_16 = 1
 order_10: batch_1_10_17 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_9_12_18 = 1
 order_13: batch_6_8_13_19 = 1
 order_14: batch_0_4_14_15_16 + batch_0_4_9_14_16 = 1
 order_15: batch_15 + batch_0_4_14_15_16 = 1
 order_16: batch_0_4_14_15_16 + batch_0_4_9_14_16 = 1
 order_17: batch_1_10_17 = 1
 order_18: batch_18 + batch_3_5_18 + batch_9_12_18 = 1
 order_19: batch_6_8_13_19 = 1
Bounds
End
