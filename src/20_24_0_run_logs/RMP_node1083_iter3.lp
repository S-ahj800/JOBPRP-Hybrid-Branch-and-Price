\ Model JOBPRP_RMP_1083
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x96c491e4de76b55b
Minimize
  91.2 batch_5 + 77.2 batch_9 + 78.4 batch_10 + 61.2 batch_19
   + 123.2 batch_1_17_18 + 115.2 batch_2_7_11 + 117.2 batch_0_4_14_15_16
   + 119.2 batch_3_8_12 + 141.2 batch_9_10_14_15_19
   + 131.2 batch_0_4_9_16_19 + 123.2 batch_6_9_10_13
   + 105.2 batch_6_9_13_19 + 127.2 batch_0_4_5_16 + 131.2 batch_0_4_5_16_19
   + 129.2 batch_5_10_14_15 + 125.2 batch_5_9_10_19
   + 119.2 batch_6_10_13_19 + 129.2 batch_6_13_14_15
   + 134 batch_6_13_14_15_19
Subject To
 order_0: batch_0_4_14_15_16 + batch_0_4_9_16_19 + batch_0_4_5_16
   + batch_0_4_5_16_19 = 1
 order_1: batch_1_17_18 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_8_12 = 1
 order_4: batch_0_4_14_15_16 + batch_0_4_9_16_19 + batch_0_4_5_16
   + batch_0_4_5_16_19 = 1
 order_5: batch_5 + batch_0_4_5_16 + batch_0_4_5_16_19 + batch_5_10_14_15
   + batch_5_9_10_19 = 1
 order_6: batch_6_9_10_13 + batch_6_9_13_19 + batch_6_10_13_19
   + batch_6_13_14_15 + batch_6_13_14_15_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_3_8_12 = 1
 order_9: batch_9 + batch_9_10_14_15_19 + batch_0_4_9_16_19
   + batch_6_9_10_13 + batch_6_9_13_19 + batch_5_9_10_19 = 1
 order_10: batch_10 + batch_9_10_14_15_19 + batch_6_9_10_13
   + batch_5_10_14_15 + batch_5_9_10_19 + batch_6_10_13_19 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_8_12 = 1
 order_13: batch_6_9_10_13 + batch_6_9_13_19 + batch_6_10_13_19
   + batch_6_13_14_15 + batch_6_13_14_15_19 = 1
 order_14: batch_0_4_14_15_16 + batch_9_10_14_15_19 + batch_5_10_14_15
   + batch_6_13_14_15 + batch_6_13_14_15_19 = 1
 order_15: batch_0_4_14_15_16 + batch_9_10_14_15_19 + batch_5_10_14_15
   + batch_6_13_14_15 + batch_6_13_14_15_19 = 1
 order_16: batch_0_4_14_15_16 + batch_0_4_9_16_19 + batch_0_4_5_16
   + batch_0_4_5_16_19 = 1
 order_17: batch_1_17_18 = 1
 order_18: batch_1_17_18 = 1
 order_19: batch_19 + batch_9_10_14_15_19 + batch_0_4_9_16_19
   + batch_6_9_13_19 + batch_0_4_5_16_19 + batch_5_9_10_19
   + batch_6_10_13_19 + batch_6_13_14_15_19 = 1
Bounds
End
