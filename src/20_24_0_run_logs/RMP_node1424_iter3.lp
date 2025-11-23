\ Model JOBPRP_RMP_1424
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x96d46a58e2c512a4
Minimize
  98 batch_1 + 78.4 batch_10 + 89.6 batch_12 + 77.2 batch_18
   + 105.6 batch_3_12_16 + 115.2 batch_2_7_11 + 123.2 batch_0_4_5_17
   + 126 batch_3_8_14_16 + 123.2 batch_6_9_10_13 + 130 batch_1_15_18_19
   + 133.2 batch_1_12_18 + 123.2 batch_8_10_14_18 + 139.2 batch_1_10_15_19
   + 122 batch_8_14_15_19 + 119.2 batch_1_8_14
Subject To
 order_0: batch_0_4_5_17 = 1
 order_1: batch_1 + batch_1_15_18_19 + batch_1_12_18 + batch_1_10_15_19
   + batch_1_8_14 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16 + batch_3_8_14_16 = 1
 order_4: batch_0_4_5_17 = 1
 order_5: batch_0_4_5_17 = 1
 order_6: batch_6_9_10_13 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_3_8_14_16 + batch_8_10_14_18 + batch_8_14_15_19
   + batch_1_8_14 = 1
 order_9: batch_6_9_10_13 = 1
 order_10: batch_10 + batch_6_9_10_13 + batch_8_10_14_18 + batch_1_10_15_19
   = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_3_12_16 + batch_1_12_18 = 1
 order_13: batch_6_9_10_13 = 1
 order_14: batch_3_8_14_16 + batch_8_10_14_18 + batch_8_14_15_19
   + batch_1_8_14 = 1
 order_15: batch_1_15_18_19 + batch_1_10_15_19 + batch_8_14_15_19 = 1
 order_16: batch_3_12_16 + batch_3_8_14_16 = 1
 order_17: batch_0_4_5_17 = 1
 order_18: batch_18 + batch_1_15_18_19 + batch_1_12_18 + batch_8_10_14_18
   = 1
 order_19: batch_1_15_18_19 + batch_1_10_15_19 + batch_8_14_15_19 = 1
Bounds
End
