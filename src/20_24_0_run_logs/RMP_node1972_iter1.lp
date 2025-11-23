\ Model JOBPRP_RMP_1972
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x90f871b1ce095824
Minimize
  91.2 batch_5 + 89.6 batch_12 + 65.2 batch_14 + 74.8 batch_15
   + 77.2 batch_18 + 105.6 batch_3_12_16 + 115.2 batch_2_7_11
   + 121.2 batch_1_8_9 + 121.1999957721094 batch_0_4_10_17
   + 133.2 batch_3_15_16_18 + 117.2 batch_5_6_13_19
   + 109.2 batch_6_13_18_19 + 127.2 batch_3_14_16_18 + 124 batch_6_12_13_19
   + 127.2 batch_5_12_18
Subject To
 order_0: batch_0_4_10_17 = 1
 order_1: batch_1_8_9 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16 + batch_3_15_16_18 + batch_3_14_16_18 = 1
 order_4: batch_0_4_10_17 = 1
 order_5: batch_5 + batch_5_6_13_19 + batch_5_12_18 = 1
 order_6: batch_5_6_13_19 + batch_6_13_18_19 + batch_6_12_13_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_1_8_9 = 1
 order_9: batch_1_8_9 = 1
 order_10: batch_0_4_10_17 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_3_12_16 + batch_6_12_13_19 + batch_5_12_18 = 1
 order_13: batch_5_6_13_19 + batch_6_13_18_19 + batch_6_12_13_19 = 1
 order_14: batch_14 + batch_3_14_16_18 = 1
 order_15: batch_15 + batch_3_15_16_18 = 1
 order_16: batch_3_12_16 + batch_3_15_16_18 + batch_3_14_16_18 = 1
 order_17: batch_0_4_10_17 = 1
 order_18: batch_18 + batch_3_15_16_18 + batch_6_13_18_19
   + batch_3_14_16_18 + batch_5_12_18 = 1
 order_19: batch_5_6_13_19 + batch_6_13_18_19 + batch_6_12_13_19 = 1
Bounds
End
