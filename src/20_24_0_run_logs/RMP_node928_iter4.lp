\ Model JOBPRP_RMP_928
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xcf4ac07fd9a4d920
Minimize
  83.6 batch_3 + 89.6 batch_12 + 70.4 batch_13 + 74.8 batch_15
   + 77.2 batch_18 + 61.2 batch_19 + 115.2 batch_2_7_11
   + 127.2 batch_1_10_17 + 117.2 batch_0_4_14_15_16 + 135.2 batch_5_9_13_15
   + 127.2 batch_5_9_12_19 + 117.2 batch_5_9_13_18 + 126 batch_6_8_12
   + 113.2 batch_5_9_18_19 + 125.2 batch_3_6_8 + 139.2 batch_12_13_15_18
   + 123.2 batch_0_4_13_14_16 + 135.2 batch_3_15_18_19
   + 130 batch_6_8_15_19
Subject To
 order_0: batch_0_4_14_15_16 + batch_0_4_13_14_16 = 1
 order_1: batch_1_10_17 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3 + batch_3_6_8 + batch_3_15_18_19 = 1
 order_4: batch_0_4_14_15_16 + batch_0_4_13_14_16 = 1
 order_5: batch_5_9_13_15 + batch_5_9_12_19 + batch_5_9_13_18
   + batch_5_9_18_19 = 1
 order_6: batch_6_8_12 + batch_3_6_8 + batch_6_8_15_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_6_8_12 + batch_3_6_8 + batch_6_8_15_19 = 1
 order_9: batch_5_9_13_15 + batch_5_9_12_19 + batch_5_9_13_18
   + batch_5_9_18_19 = 1
 order_10: batch_1_10_17 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_5_9_12_19 + batch_6_8_12 + batch_12_13_15_18
   = 1
 order_13: batch_13 + batch_5_9_13_15 + batch_5_9_13_18 + batch_12_13_15_18
   + batch_0_4_13_14_16 = 1
 order_14: batch_0_4_14_15_16 + batch_0_4_13_14_16 = 1
 order_15: batch_15 + batch_0_4_14_15_16 + batch_5_9_13_15
   + batch_12_13_15_18 + batch_3_15_18_19 + batch_6_8_15_19 = 1
 order_16: batch_0_4_14_15_16 + batch_0_4_13_14_16 = 1
 order_17: batch_1_10_17 = 1
 order_18: batch_18 + batch_5_9_13_18 + batch_5_9_18_19 + batch_12_13_15_18
   + batch_3_15_18_19 = 1
 order_19: batch_19 + batch_5_9_12_19 + batch_5_9_18_19 + batch_3_15_18_19
   + batch_6_8_15_19 = 1
Bounds
End
