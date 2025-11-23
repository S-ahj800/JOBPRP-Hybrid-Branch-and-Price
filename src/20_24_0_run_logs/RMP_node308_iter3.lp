\ Model JOBPRP_RMP_308
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x96d46a58e2c512a4
Minimize
  83.6 batch_3 + 70.4 batch_13 + 65.2 batch_14 + 74.8 batch_15
   + 61.2 batch_19 + 115.2 batch_6_8_18_19 + 115.2 batch_2_7_11
   + 121.2 batch_3_5_12 + 123.2 batch_0_4_10_15_16 + 143.2 batch_5_12_13_15
   + 127.2 batch_1_9_17 + 129.2 batch_5_12_13_14 + 119.2 batch_0_4_10_14_16
   + 109.2 batch_3_13_14 + 129.2 batch_0_4_10_13_16
Subject To
 order_0: batch_0_4_10_15_16 + batch_0_4_10_14_16 + batch_0_4_10_13_16 = 1
 order_1: batch_1_9_17 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3 + batch_3_5_12 + batch_3_13_14 = 1
 order_4: batch_0_4_10_15_16 + batch_0_4_10_14_16 + batch_0_4_10_13_16 = 1
 order_5: batch_3_5_12 + batch_5_12_13_15 + batch_5_12_13_14 = 1
 order_6: batch_6_8_18_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_6_8_18_19 = 1
 order_9: batch_1_9_17 = 1
 order_10: batch_0_4_10_15_16 + batch_0_4_10_14_16 + batch_0_4_10_13_16
   = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_5_12 + batch_5_12_13_15 + batch_5_12_13_14 = 1
 order_13: batch_13 + batch_5_12_13_15 + batch_5_12_13_14 + batch_3_13_14
   + batch_0_4_10_13_16 = 1
 order_14: batch_14 + batch_5_12_13_14 + batch_0_4_10_14_16 + batch_3_13_14
   = 1
 order_15: batch_15 + batch_0_4_10_15_16 + batch_5_12_13_15 = 1
 order_16: batch_0_4_10_15_16 + batch_0_4_10_14_16 + batch_0_4_10_13_16
   = 1
 order_17: batch_1_9_17 = 1
 order_18: batch_6_8_18_19 = 1
 order_19: batch_19 + batch_6_8_18_19 = 1
Bounds
End
