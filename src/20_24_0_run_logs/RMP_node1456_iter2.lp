\ Model JOBPRP_RMP_1456
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x46c6e21a7ab1de4e
Minimize
  91.2 batch_5 + 89.2 batch_6 + 77.2 batch_9 + 78.4 batch_10 + 61.2 batch_19
   + 123.2 batch_1_17_18 + 115.2 batch_2_7_11 + 121.2 batch_3_5_12
   + 117.2 batch_0_4_14_15_16 + 119.2 batch_5_6_9_19
   + 125.2 batch_5_6_10_19 + 137.2 batch_5_6_14_15
   + 127.2 batch_0_4_8_13_16 + 114 batch_3_12_19 + 133.2 batch_6_10_14_15
   + 141.2 batch_0_4_6_16_19 + 118.4 batch_3_10_12
   + 134 batch_8_13_14_15_19 + 136 batch_6_9_14_15
Subject To
 order_0: batch_0_4_14_15_16 + batch_0_4_8_13_16 + batch_0_4_6_16_19 = 1
 order_1: batch_1_17_18 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_5_12 + batch_3_12_19 + batch_3_10_12 = 1
 order_4: batch_0_4_14_15_16 + batch_0_4_8_13_16 + batch_0_4_6_16_19 = 1
 order_5: batch_5 + batch_3_5_12 + batch_5_6_9_19 + batch_5_6_10_19
   + batch_5_6_14_15 = 1
 order_6: batch_6 + batch_5_6_9_19 + batch_5_6_10_19 + batch_5_6_14_15
   + batch_6_10_14_15 + batch_0_4_6_16_19 + batch_6_9_14_15 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_0_4_8_13_16 + batch_8_13_14_15_19 = 1
 order_9: batch_9 + batch_5_6_9_19 + batch_6_9_14_15 = 1
 order_10: batch_10 + batch_5_6_10_19 + batch_6_10_14_15 + batch_3_10_12
   = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_5_12 + batch_3_12_19 + batch_3_10_12 = 1
 order_13: batch_0_4_8_13_16 + batch_8_13_14_15_19 = 1
 order_14: batch_0_4_14_15_16 + batch_5_6_14_15 + batch_6_10_14_15
   + batch_8_13_14_15_19 + batch_6_9_14_15 = 1
 order_15: batch_0_4_14_15_16 + batch_5_6_14_15 + batch_6_10_14_15
   + batch_8_13_14_15_19 + batch_6_9_14_15 = 1
 order_16: batch_0_4_14_15_16 + batch_0_4_8_13_16 + batch_0_4_6_16_19 = 1
 order_17: batch_1_17_18 = 1
 order_18: batch_1_17_18 = 1
 order_19: batch_19 + batch_5_6_9_19 + batch_5_6_10_19 + batch_3_12_19
   + batch_0_4_6_16_19 + batch_8_13_14_15_19 = 1
Bounds
End
