\ Model JOBPRP_RMP_316
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x67b078a1024394a0
Minimize
  72.4 batch_8 + 77.2 batch_9 + 89.6 batch_12 + 74.8 batch_15
   + 89.2 batch_17 + 77.2 batch_18 + 115.2 batch_2_7_11
   + 127.2 batch_1_10_17 + 109.2 batch_6_8_13_19 + 123.2 batch_1_9_10
   + 125.2 batch_3_5_14_16 + 131.2 batch_1_8_10 + 127.2 batch_0_4_12_15
   + 109.2 batch_6_13_18_19 + 124 batch_6_12_13_19 + 141.2 batch_1_10_12
   + 123.2 batch_0_4_8_9 + 121.2 batch_6_13_17_19 + 133.2 batch_12_17_18
Subject To
 order_0: batch_0_4_12_15 + batch_0_4_8_9 = 1
 order_1: batch_1_10_17 + batch_1_9_10 + batch_1_8_10 + batch_1_10_12 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_5_14_16 = 1
 order_4: batch_0_4_12_15 + batch_0_4_8_9 = 1
 order_5: batch_3_5_14_16 = 1
 order_6: batch_6_8_13_19 + batch_6_13_18_19 + batch_6_12_13_19
   + batch_6_13_17_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_6_8_13_19 + batch_1_8_10 + batch_0_4_8_9 = 1
 order_9: batch_9 + batch_1_9_10 + batch_0_4_8_9 = 1
 order_10: batch_1_10_17 + batch_1_9_10 + batch_1_8_10 + batch_1_10_12 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_0_4_12_15 + batch_6_12_13_19 + batch_1_10_12
   + batch_12_17_18 = 1
 order_13: batch_6_8_13_19 + batch_6_13_18_19 + batch_6_12_13_19
   + batch_6_13_17_19 = 1
 order_14: batch_3_5_14_16 = 1
 order_15: batch_15 + batch_0_4_12_15 = 1
 order_16: batch_3_5_14_16 = 1
 order_17: batch_17 + batch_1_10_17 + batch_6_13_17_19 + batch_12_17_18
   = 1
 order_18: batch_18 + batch_6_13_18_19 + batch_12_17_18 = 1
 order_19: batch_6_8_13_19 + batch_6_13_18_19 + batch_6_12_13_19
   + batch_6_13_17_19 = 1
Bounds
End
