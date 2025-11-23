\ Model JOBPRP_RMP_1123
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xdc0a3603018a0971
Minimize
  77.2 batch_9 + 78.4 batch_10 + 74.8 batch_15 + 61.2 batch_19
   + 123.2 batch_1_17_18 + 115.2 batch_2_7_11 + 119.2 batch_3_8_12
   + 131.2 batch_0_4_9_16_19 + 127.2 batch_0_4_5_14_16
   + 123.2 batch_5_6_13_14 + 115.2 batch_5_9_14_19 + 113.2 batch_6_10_13
   + 119.2 batch_6_10_13_19 + 128 batch_6_13_15_19
   + 139.2 batch_0_4_9_15_16 + 129.2 batch_5_9_10_14
Subject To
 order_0: batch_0_4_9_16_19 + batch_0_4_5_14_16 + batch_0_4_9_15_16 = 1
 order_1: batch_1_17_18 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_8_12 = 1
 order_4: batch_0_4_9_16_19 + batch_0_4_5_14_16 + batch_0_4_9_15_16 = 1
 order_5: batch_0_4_5_14_16 + batch_5_6_13_14 + batch_5_9_14_19
   + batch_5_9_10_14 = 1
 order_6: batch_5_6_13_14 + batch_6_10_13 + batch_6_10_13_19
   + batch_6_13_15_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_3_8_12 = 1
 order_9: batch_9 + batch_0_4_9_16_19 + batch_5_9_14_19 + batch_0_4_9_15_16
   + batch_5_9_10_14 = 1
 order_10: batch_10 + batch_6_10_13 + batch_6_10_13_19 + batch_5_9_10_14
   = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_8_12 = 1
 order_13: batch_5_6_13_14 + batch_6_10_13 + batch_6_10_13_19
   + batch_6_13_15_19 = 1
 order_14: batch_0_4_5_14_16 + batch_5_6_13_14 + batch_5_9_14_19
   + batch_5_9_10_14 = 1
 order_15: batch_15 + batch_6_13_15_19 + batch_0_4_9_15_16 = 1
 order_16: batch_0_4_9_16_19 + batch_0_4_5_14_16 + batch_0_4_9_15_16 = 1
 order_17: batch_1_17_18 = 1
 order_18: batch_1_17_18 = 1
 order_19: batch_19 + batch_0_4_9_16_19 + batch_5_9_14_19
   + batch_6_10_13_19 + batch_6_13_15_19 = 1
Bounds
End
