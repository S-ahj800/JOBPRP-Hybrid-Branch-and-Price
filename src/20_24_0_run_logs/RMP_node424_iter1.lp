\ Model JOBPRP_RMP_424
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x9171cfaee5c5817d
Minimize
  78.4 batch_10 + 89.2 batch_17 + 77.2 batch_18 + 115.2 batch_2_7_11
   + 109.2 batch_6_9_13_18 + 137.2 batch_0_1_4_15 + 123.2 batch_6_9_10_13
   + 119.2 batch_10_17_18 + 137.2 batch_3_16_17_19 + 111.2 batch_5_14_17
   + 123.2 batch_5_10_14_18 + 135.2 batch_8_12_17 + 122.4 batch_8_10_12
Subject To
 order_0: batch_0_1_4_15 = 1
 order_1: batch_0_1_4_15 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_16_17_19 = 1
 order_4: batch_0_1_4_15 = 1
 order_5: batch_5_14_17 + batch_5_10_14_18 = 1
 order_6: batch_6_9_13_18 + batch_6_9_10_13 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8_12_17 + batch_8_10_12 = 1
 order_9: batch_6_9_13_18 + batch_6_9_10_13 = 1
 order_10: batch_10 + batch_6_9_10_13 + batch_10_17_18 + batch_5_10_14_18
   + batch_8_10_12 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_8_12_17 + batch_8_10_12 = 1
 order_13: batch_6_9_13_18 + batch_6_9_10_13 = 1
 order_14: batch_5_14_17 + batch_5_10_14_18 = 1
 order_15: batch_0_1_4_15 = 1
 order_16: batch_3_16_17_19 = 1
 order_17: batch_17 + batch_10_17_18 + batch_3_16_17_19 + batch_5_14_17
   + batch_8_12_17 = 1
 order_18: batch_18 + batch_6_9_13_18 + batch_10_17_18 + batch_5_10_14_18
   = 1
 order_19: batch_3_16_17_19 = 1
Bounds
End
