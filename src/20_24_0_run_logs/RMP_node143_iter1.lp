\ Model JOBPRP_RMP_143
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x9171cfaee5c5817d
Minimize
  77.2 batch_9 + 89.2 batch_17 + 77.2 batch_18 + 105.6 batch_3_12_16
   + 115.2 batch_2_7_11 + 109.2 batch_6_9_13_18 + 132 batch_6_8_13_15
   + 123.2 batch_1_9_10 + 113.2 batch_5_14_17_19 + 138 batch_8_9_15_18
   + 131.2 batch_0_4_17_18 + 127.2 batch_8_15_17 + 129.2 batch_1_10_18
Subject To
 order_0: batch_0_4_17_18 = 1
 order_1: batch_1_9_10 + batch_1_10_18 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16 = 1
 order_4: batch_0_4_17_18 = 1
 order_5: batch_5_14_17_19 = 1
 order_6: batch_6_9_13_18 + batch_6_8_13_15 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_6_8_13_15 + batch_8_9_15_18 + batch_8_15_17 = 1
 order_9: batch_9 + batch_6_9_13_18 + batch_1_9_10 + batch_8_9_15_18 = 1
 order_10: batch_1_9_10 + batch_1_10_18 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_12_16 = 1
 order_13: batch_6_9_13_18 + batch_6_8_13_15 = 1
 order_14: batch_5_14_17_19 = 1
 order_15: batch_6_8_13_15 + batch_8_9_15_18 + batch_8_15_17 = 1
 order_16: batch_3_12_16 = 1
 order_17: batch_17 + batch_5_14_17_19 + batch_0_4_17_18 + batch_8_15_17
   = 1
 order_18: batch_18 + batch_6_9_13_18 + batch_8_9_15_18 + batch_0_4_17_18
   + batch_1_10_18 = 1
 order_19: batch_5_14_17_19 = 1
Bounds
End
