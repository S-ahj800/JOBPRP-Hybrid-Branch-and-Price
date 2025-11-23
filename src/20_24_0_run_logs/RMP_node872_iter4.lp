\ Model JOBPRP_RMP_872
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x38387f59c1e61901
Minimize
  91.2 batch_5 + 89.6 batch_12 + 65.2 batch_14 + 74.8 batch_15
   + 77.2 batch_18 + 61.2 batch_19 + 115.2 batch_2_7_11
   + 123.2 batch_0_4_10_15_16 + 127.2 batch_1_9_17 + 129.2 batch_5_12_18_19
   + 113.2 batch_6_8_14_19 + 126 batch_6_8_12 + 113.2 batch_3_13_14_18
   + 123.2 batch_5_6_8 + 133.2 batch_5_12_15_19 + 130 batch_0_4_10_16_19
   + 117.2 batch_5_12 + 98.4 batch_3_13
Subject To
 order_0: batch_0_4_10_15_16 + batch_0_4_10_16_19 = 1
 order_1: batch_1_9_17 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_13_14_18 + batch_3_13 = 1
 order_4: batch_0_4_10_15_16 + batch_0_4_10_16_19 = 1
 order_5: batch_5 + batch_5_12_18_19 + batch_5_6_8 + batch_5_12_15_19
   + batch_5_12 = 1
 order_6: batch_6_8_14_19 + batch_6_8_12 + batch_5_6_8 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_6_8_14_19 + batch_6_8_12 + batch_5_6_8 = 1
 order_9: batch_1_9_17 = 1
 order_10: batch_0_4_10_15_16 + batch_0_4_10_16_19 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_5_12_18_19 + batch_6_8_12 + batch_5_12_15_19
   + batch_5_12 = 1
 order_13: batch_3_13_14_18 + batch_3_13 = 1
 order_14: batch_14 + batch_6_8_14_19 + batch_3_13_14_18 = 1
 order_15: batch_15 + batch_0_4_10_15_16 + batch_5_12_15_19 = 1
 order_16: batch_0_4_10_15_16 + batch_0_4_10_16_19 = 1
 order_17: batch_1_9_17 = 1
 order_18: batch_18 + batch_5_12_18_19 + batch_3_13_14_18 = 1
 order_19: batch_19 + batch_5_12_18_19 + batch_6_8_14_19 + batch_5_12_15_19
   + batch_0_4_10_16_19 = 1
Bounds
End
