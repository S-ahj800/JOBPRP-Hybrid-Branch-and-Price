\ Model JOBPRP_RMP_1620
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xa67c256c259b3ef5
Minimize
  98 batch_1 + 78.4 batch_10 + 89.6 batch_12 + 65.2 batch_14 + 77.2 batch_18
   + 105.6 batch_3_12_16 + 115.2 batch_2_7_11 + 123.2 batch_0_4_5_17
   + 109.2 batch_8_9_14_18 + 121.2 batch_1_8_9 + 129.2 batch_3_10_14_16
   + 125.2 batch_6_10_13_18 + 120 batch_1_6_13 + 119.2 batch_1_10_14
   + 127.2 batch_8_9_10_14 + 139.2 batch_1_10_15_19 + 126 batch_3_15_16_19
   + 122 batch_8_9_15_19 + 134 batch_12_14_15_19 + 128 batch_6_13_15_19
   + 135.2 batch_1_14_15_19
Subject To
 order_0: batch_0_4_5_17 = 1
 order_1: batch_1 + batch_1_8_9 + batch_1_6_13 + batch_1_10_14
   + batch_1_10_15_19 + batch_1_14_15_19 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16 + batch_3_10_14_16 + batch_3_15_16_19 = 1
 order_4: batch_0_4_5_17 = 1
 order_5: batch_0_4_5_17 = 1
 order_6: batch_6_10_13_18 + batch_1_6_13 + batch_6_13_15_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8_9_14_18 + batch_1_8_9 + batch_8_9_10_14 + batch_8_9_15_19
   = 1
 order_9: batch_8_9_14_18 + batch_1_8_9 + batch_8_9_10_14 + batch_8_9_15_19
   = 1
 order_10: batch_10 + batch_3_10_14_16 + batch_6_10_13_18 + batch_1_10_14
   + batch_8_9_10_14 + batch_1_10_15_19 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_3_12_16 + batch_12_14_15_19 = 1
 order_13: batch_6_10_13_18 + batch_1_6_13 + batch_6_13_15_19 = 1
 order_14: batch_14 + batch_8_9_14_18 + batch_3_10_14_16 + batch_1_10_14
   + batch_8_9_10_14 + batch_12_14_15_19 + batch_1_14_15_19 = 1
 order_15: batch_1_10_15_19 + batch_3_15_16_19 + batch_8_9_15_19
   + batch_12_14_15_19 + batch_6_13_15_19 + batch_1_14_15_19 = 1
 order_16: batch_3_12_16 + batch_3_10_14_16 + batch_3_15_16_19 = 1
 order_17: batch_0_4_5_17 = 1
 order_18: batch_18 + batch_8_9_14_18 + batch_6_10_13_18 = 1
 order_19: batch_1_10_15_19 + batch_3_15_16_19 + batch_8_9_15_19
   + batch_12_14_15_19 + batch_6_13_15_19 + batch_1_14_15_19 = 1
Bounds
End
