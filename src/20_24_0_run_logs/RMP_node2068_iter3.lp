\ Model JOBPRP_RMP_2068
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x99f6ce91848ba301
Minimize
  72.4 batch_8 + 77.2 batch_9 + 78.4 batch_10 + 89.6 batch_12
   + 65.2 batch_14 + 74.8 batch_15 + 123.2 batch_1_17_18
   + 115.2 batch_2_7_11 + 115.2 batch_0_4_8_14_16 + 135.2 batch_5_6_13_15
   + 119.2 batch_8_12_15 + 127.2 batch_0_4_12_16 + 121.2 batch_3_9_10_19
   + 123.2 batch_5_6_13_14 + 139.2 batch_3_14_15_19 + 128 batch_9_12_15
   + 109.2 batch_3_10_19 + 128.4 batch_10_12_15
Subject To
 order_0: batch_0_4_8_14_16 + batch_0_4_12_16 = 1
 order_1: batch_1_17_18 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_9_10_19 + batch_3_14_15_19 + batch_3_10_19 = 1
 order_4: batch_0_4_8_14_16 + batch_0_4_12_16 = 1
 order_5: batch_5_6_13_15 + batch_5_6_13_14 = 1
 order_6: batch_5_6_13_15 + batch_5_6_13_14 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_0_4_8_14_16 + batch_8_12_15 = 1
 order_9: batch_9 + batch_3_9_10_19 + batch_9_12_15 = 1
 order_10: batch_10 + batch_3_9_10_19 + batch_3_10_19 + batch_10_12_15 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_8_12_15 + batch_0_4_12_16 + batch_9_12_15
   + batch_10_12_15 = 1
 order_13: batch_5_6_13_15 + batch_5_6_13_14 = 1
 order_14: batch_14 + batch_0_4_8_14_16 + batch_5_6_13_14
   + batch_3_14_15_19 = 1
 order_15: batch_15 + batch_5_6_13_15 + batch_8_12_15 + batch_3_14_15_19
   + batch_9_12_15 + batch_10_12_15 = 1
 order_16: batch_0_4_8_14_16 + batch_0_4_12_16 = 1
 order_17: batch_1_17_18 = 1
 order_18: batch_1_17_18 = 1
 order_19: batch_3_9_10_19 + batch_3_14_15_19 + batch_3_10_19 = 1
Bounds
End
