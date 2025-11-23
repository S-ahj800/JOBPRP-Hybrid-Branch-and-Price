\ Model JOBPRP_RMP_124
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xa67c256c259b3ef5
Minimize
  83.6 batch_3 + 91.2 batch_5 + 78.4 batch_10 + 65.2 batch_14
   + 74.8 batch_15 + 61.2 batch_19 + 123.2 batch_1_17_18
   + 115.2 batch_2_7_11 + 109.2 batch_6_8_13_19 + 115.2 batch_6_8_13_14
   + 127.2 batch_5_9_12_19 + 125.2 batch_3_9_12 + 127.2 batch_0_4_5_14_16
   + 128 batch_9_12_15_19 + 132 batch_6_8_13_15 + 109.2 batch_3_10_19
   + 131.2 batch_9_10_12_19 + 131.2 batch_0_3_4_16
   + 131.2 batch_0_4_5_16_19 + 119.2 batch_3_10_14_19
   + 129.2 batch_5_10_14_15
Subject To
 order_0: batch_0_4_5_14_16 + batch_0_3_4_16 + batch_0_4_5_16_19 = 1
 order_1: batch_1_17_18 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3 + batch_3_9_12 + batch_3_10_19 + batch_0_3_4_16
   + batch_3_10_14_19 = 1
 order_4: batch_0_4_5_14_16 + batch_0_3_4_16 + batch_0_4_5_16_19 = 1
 order_5: batch_5 + batch_5_9_12_19 + batch_0_4_5_14_16 + batch_0_4_5_16_19
   + batch_5_10_14_15 = 1
 order_6: batch_6_8_13_19 + batch_6_8_13_14 + batch_6_8_13_15 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_6_8_13_19 + batch_6_8_13_14 + batch_6_8_13_15 = 1
 order_9: batch_5_9_12_19 + batch_3_9_12 + batch_9_12_15_19
   + batch_9_10_12_19 = 1
 order_10: batch_10 + batch_3_10_19 + batch_9_10_12_19 + batch_3_10_14_19
   + batch_5_10_14_15 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_5_9_12_19 + batch_3_9_12 + batch_9_12_15_19
   + batch_9_10_12_19 = 1
 order_13: batch_6_8_13_19 + batch_6_8_13_14 + batch_6_8_13_15 = 1
 order_14: batch_14 + batch_6_8_13_14 + batch_0_4_5_14_16
   + batch_3_10_14_19 + batch_5_10_14_15 = 1
 order_15: batch_15 + batch_9_12_15_19 + batch_6_8_13_15 + batch_5_10_14_15
   = 1
 order_16: batch_0_4_5_14_16 + batch_0_3_4_16 + batch_0_4_5_16_19 = 1
 order_17: batch_1_17_18 = 1
 order_18: batch_1_17_18 = 1
 order_19: batch_19 + batch_6_8_13_19 + batch_5_9_12_19 + batch_9_12_15_19
   + batch_3_10_19 + batch_9_10_12_19 + batch_0_4_5_16_19
   + batch_3_10_14_19 = 1
Bounds
End
