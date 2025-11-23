\ Model JOBPRP_RMP_1483
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x23fa826bdf30408a
Minimize
  91.2 batch_5 + 77.2 batch_9 + 78.4 batch_10 + 70.4 batch_13
   + 65.2 batch_14 + 74.8 batch_15 + 123.2 batch_1_17_18
   + 115.2 batch_2_7_11 + 119.2 batch_3_8_12 + 119.2 batch_5_6_9_19
   + 125.2 batch_5_6_10_19 + 137.2 batch_0_4_9_13_16
   + 125.2 batch_5_9_10_13 + 127.2 batch_0_4_13_15_16
   + 131.2 batch_5_6_15_19 + 117.2 batch_9_10_14 + 111.2 batch_6_9_14_19
   + 117.2 batch_5_9_13_14 + 119.2 batch_5_10_13_14 + 127.2 batch_0_4_5_16
   + 129.2 batch_5_10_14_15 + 129.2 batch_5_9_10_14
Subject To
 order_0: batch_0_4_9_13_16 + batch_0_4_13_15_16 + batch_0_4_5_16 = 1
 order_1: batch_1_17_18 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_8_12 = 1
 order_4: batch_0_4_9_13_16 + batch_0_4_13_15_16 + batch_0_4_5_16 = 1
 order_5: batch_5 + batch_5_6_9_19 + batch_5_6_10_19 + batch_5_9_10_13
   + batch_5_6_15_19 + batch_5_9_13_14 + batch_5_10_13_14 + batch_0_4_5_16
   + batch_5_10_14_15 + batch_5_9_10_14 = 1
 order_6: batch_5_6_9_19 + batch_5_6_10_19 + batch_5_6_15_19
   + batch_6_9_14_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_3_8_12 = 1
 order_9: batch_9 + batch_5_6_9_19 + batch_0_4_9_13_16 + batch_5_9_10_13
   + batch_9_10_14 + batch_6_9_14_19 + batch_5_9_13_14 + batch_5_9_10_14
   = 1
 order_10: batch_10 + batch_5_6_10_19 + batch_5_9_10_13 + batch_9_10_14
   + batch_5_10_13_14 + batch_5_10_14_15 + batch_5_9_10_14 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_8_12 = 1
 order_13: batch_13 + batch_0_4_9_13_16 + batch_5_9_10_13
   + batch_0_4_13_15_16 + batch_5_9_13_14 + batch_5_10_13_14 = 1
 order_14: batch_14 + batch_9_10_14 + batch_6_9_14_19 + batch_5_9_13_14
   + batch_5_10_13_14 + batch_5_10_14_15 + batch_5_9_10_14 = 1
 order_15: batch_15 + batch_0_4_13_15_16 + batch_5_6_15_19
   + batch_5_10_14_15 = 1
 order_16: batch_0_4_9_13_16 + batch_0_4_13_15_16 + batch_0_4_5_16 = 1
 order_17: batch_1_17_18 = 1
 order_18: batch_1_17_18 = 1
 order_19: batch_5_6_9_19 + batch_5_6_10_19 + batch_5_6_15_19
   + batch_6_9_14_19 = 1
Bounds
End
