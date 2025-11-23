\ Model JOBPRP_RMP_552
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x777d8a21fcf9ecaf
Minimize
  77.2 batch_9 + 78.4 batch_10 + 77.2 batch_18 + 61.2 batch_19
   + 115.2 batch_2_7_11 + 109.2 batch_6_9_13_18 + 105.2 batch_6_9_13_19
   + 132 batch_0_4_8_12 + 123.2 batch_6_9_10_13 + 133.2 batch_1_15_17
   + 121.2 batch_5_9_14_18 + 125.2 batch_3_5_14_16 + 123.2 batch_5_10_14_18
   + 116.4 batch_3_10_16 + 109.2 batch_6_13_18_19 + 121.2 batch_9_10_18_19
   + 119.2 batch_6_10_13_19 + 125.2 batch_6_10_13_18
Subject To
 order_0: batch_0_4_8_12 = 1
 order_1: batch_1_15_17 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_5_14_16 + batch_3_10_16 = 1
 order_4: batch_0_4_8_12 = 1
 order_5: batch_5_9_14_18 + batch_3_5_14_16 + batch_5_10_14_18 = 1
 order_6: batch_6_9_13_18 + batch_6_9_13_19 + batch_6_9_10_13
   + batch_6_13_18_19 + batch_6_10_13_19 + batch_6_10_13_18 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_0_4_8_12 = 1
 order_9: batch_9 + batch_6_9_13_18 + batch_6_9_13_19 + batch_6_9_10_13
   + batch_5_9_14_18 + batch_9_10_18_19 = 1
 order_10: batch_10 + batch_6_9_10_13 + batch_5_10_14_18 + batch_3_10_16
   + batch_9_10_18_19 + batch_6_10_13_19 + batch_6_10_13_18 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_0_4_8_12 = 1
 order_13: batch_6_9_13_18 + batch_6_9_13_19 + batch_6_9_10_13
   + batch_6_13_18_19 + batch_6_10_13_19 + batch_6_10_13_18 = 1
 order_14: batch_5_9_14_18 + batch_3_5_14_16 + batch_5_10_14_18 = 1
 order_15: batch_1_15_17 = 1
 order_16: batch_3_5_14_16 + batch_3_10_16 = 1
 order_17: batch_1_15_17 = 1
 order_18: batch_18 + batch_6_9_13_18 + batch_5_9_14_18 + batch_5_10_14_18
   + batch_6_13_18_19 + batch_9_10_18_19 + batch_6_10_13_18 = 1
 order_19: batch_19 + batch_6_9_13_19 + batch_6_13_18_19 + batch_9_10_18_19
   + batch_6_10_13_19 = 1
Bounds
End
