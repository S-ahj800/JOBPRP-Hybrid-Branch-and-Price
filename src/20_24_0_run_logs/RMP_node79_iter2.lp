\ Model JOBPRP_RMP_79
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x9f037a323d1639f1
Minimize
  83.6 batch_3 + 91.2 batch_5 + 78.4 batch_10 + 89.6 batch_12
   + 70.4 batch_13 + 65.2 batch_14 + 74.8 batch_15 + 61.2 batch_19
   + 123.2 batch_1_17_18 + 115.2 batch_2_7_11 + 113.2 batch_6_8_9_19
   + 143.2 batch_5_12_13_15 + 135.2 batch_0_4_5_13_16
   + 129.2 batch_5_12_13_14 + 119.2 batch_3_5_13_14 + 127.2 batch_0_4_12_16
   + 137.2 batch_5_12_14_15 + 131.2 batch_3_5_15 + 133.2 batch_3_5_15_19
   + 131.2 batch_0_3_4_16 + 119.2 batch_5_10_13_14 + 129.2 batch_5_10_14_15
   + 127.2 batch_0_4_13_15_16 + 133.2 batch_12_13_14_15
Subject To
 order_0: batch_0_4_5_13_16 + batch_0_4_12_16 + batch_0_3_4_16
   + batch_0_4_13_15_16 = 1
 order_1: batch_1_17_18 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3 + batch_3_5_13_14 + batch_3_5_15 + batch_3_5_15_19
   + batch_0_3_4_16 = 1
 order_4: batch_0_4_5_13_16 + batch_0_4_12_16 + batch_0_3_4_16
   + batch_0_4_13_15_16 = 1
 order_5: batch_5 + batch_5_12_13_15 + batch_0_4_5_13_16 + batch_5_12_13_14
   + batch_3_5_13_14 + batch_5_12_14_15 + batch_3_5_15 + batch_3_5_15_19
   + batch_5_10_13_14 + batch_5_10_14_15 = 1
 order_6: batch_6_8_9_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_6_8_9_19 = 1
 order_9: batch_6_8_9_19 = 1
 order_10: batch_10 + batch_5_10_13_14 + batch_5_10_14_15 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_5_12_13_15 + batch_5_12_13_14 + batch_0_4_12_16
   + batch_5_12_14_15 + batch_12_13_14_15 = 1
 order_13: batch_13 + batch_5_12_13_15 + batch_0_4_5_13_16
   + batch_5_12_13_14 + batch_3_5_13_14 + batch_5_10_13_14
   + batch_0_4_13_15_16 + batch_12_13_14_15 = 1
 order_14: batch_14 + batch_5_12_13_14 + batch_3_5_13_14 + batch_5_12_14_15
   + batch_5_10_13_14 + batch_5_10_14_15 + batch_12_13_14_15 = 1
 order_15: batch_15 + batch_5_12_13_15 + batch_5_12_14_15 + batch_3_5_15
   + batch_3_5_15_19 + batch_5_10_14_15 + batch_0_4_13_15_16
   + batch_12_13_14_15 = 1
 order_16: batch_0_4_5_13_16 + batch_0_4_12_16 + batch_0_3_4_16
   + batch_0_4_13_15_16 = 1
 order_17: batch_1_17_18 = 1
 order_18: batch_1_17_18 = 1
 order_19: batch_19 + batch_6_8_9_19 + batch_3_5_15_19 = 1
Bounds
End
