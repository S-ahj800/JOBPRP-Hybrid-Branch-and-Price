\ Model JOBPRP_RMP_1708
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x3247be77de34f5e2
Minimize
  77.2 batch_9 + 70.4 batch_13 + 74.8 batch_15 + 77.2 batch_18
   + 61.2 batch_19 + 115.2 batch_2_7_11 + 123.2 batch_0_4_10_15_16
   + 119.2 batch_3_8_12 + 117.2 batch_1_14_17 + 119.2 batch_5_6_9_19
   + 123.2 batch_5_6_18_19 + 130 batch_9_15_18_19 + 101.2 batch_9_13_18_19
   + 101.2 batch_9_13_18 + 129.2 batch_0_4_10_13_16 + 131.2 batch_5_6_15
   + 136 batch_9_13_15_18
Subject To
 order_0: batch_0_4_10_15_16 + batch_0_4_10_13_16 = 1
 order_1: batch_1_14_17 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_8_12 = 1
 order_4: batch_0_4_10_15_16 + batch_0_4_10_13_16 = 1
 order_5: batch_5_6_9_19 + batch_5_6_18_19 + batch_5_6_15 = 1
 order_6: batch_5_6_9_19 + batch_5_6_18_19 + batch_5_6_15 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_3_8_12 = 1
 order_9: batch_9 + batch_5_6_9_19 + batch_9_15_18_19 + batch_9_13_18_19
   + batch_9_13_18 + batch_9_13_15_18 = 1
 order_10: batch_0_4_10_15_16 + batch_0_4_10_13_16 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_8_12 = 1
 order_13: batch_13 + batch_9_13_18_19 + batch_9_13_18 + batch_0_4_10_13_16
   + batch_9_13_15_18 = 1
 order_14: batch_1_14_17 = 1
 order_15: batch_15 + batch_0_4_10_15_16 + batch_9_15_18_19 + batch_5_6_15
   + batch_9_13_15_18 = 1
 order_16: batch_0_4_10_15_16 + batch_0_4_10_13_16 = 1
 order_17: batch_1_14_17 = 1
 order_18: batch_18 + batch_5_6_18_19 + batch_9_15_18_19 + batch_9_13_18_19
   + batch_9_13_18 + batch_9_13_15_18 = 1
 order_19: batch_19 + batch_5_6_9_19 + batch_5_6_18_19 + batch_9_15_18_19
   + batch_9_13_18_19 = 1
Bounds
End
