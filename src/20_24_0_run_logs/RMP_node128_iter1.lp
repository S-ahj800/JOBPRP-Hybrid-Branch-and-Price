\ Model JOBPRP_RMP_128
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x9171cfaee5c5817d
Minimize
  72.4 batch_8 + 77.2 batch_9 + 77.2 batch_18 + 61.2 batch_19
   + 105.6 batch_3_12_16 + 115.2 batch_2_7_11 + 118 batch_3_12_16_19
   + 127.2 batch_1_10_17 + 125.2 batch_5_8_9_14 + 107.2 batch_8_9_18_19
   + 132 batch_0_4_9_18_19 + 133.2 batch_6_13_15_18 + 115.2 batch_5_8_14_19
Subject To
 order_0: batch_0_4_9_18_19 = 1
 order_1: batch_1_10_17 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16 + batch_3_12_16_19 = 1
 order_4: batch_0_4_9_18_19 = 1
 order_5: batch_5_8_9_14 + batch_5_8_14_19 = 1
 order_6: batch_6_13_15_18 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_5_8_9_14 + batch_8_9_18_19 + batch_5_8_14_19 = 1
 order_9: batch_9 + batch_5_8_9_14 + batch_8_9_18_19 + batch_0_4_9_18_19
   = 1
 order_10: batch_1_10_17 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_12_16 + batch_3_12_16_19 = 1
 order_13: batch_6_13_15_18 = 1
 order_14: batch_5_8_9_14 + batch_5_8_14_19 = 1
 order_15: batch_6_13_15_18 = 1
 order_16: batch_3_12_16 + batch_3_12_16_19 = 1
 order_17: batch_1_10_17 = 1
 order_18: batch_18 + batch_8_9_18_19 + batch_0_4_9_18_19
   + batch_6_13_15_18 = 1
 order_19: batch_19 + batch_3_12_16_19 + batch_8_9_18_19
   + batch_0_4_9_18_19 + batch_5_8_14_19 = 1
Bounds
End
