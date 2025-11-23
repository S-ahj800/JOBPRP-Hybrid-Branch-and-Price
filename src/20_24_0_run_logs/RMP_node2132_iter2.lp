\ Model JOBPRP_RMP_2132
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xf9ac11e32f7503a8
Minimize
  83.6 batch_3 + 91.2 batch_5 + 89.2 batch_6 + 72.4 batch_8 + 77.2 batch_9
   + 89.6 batch_12 + 65.2 batch_14 + 123.2 batch_1_17_18
   + 115.2 batch_2_7_11 + 123.2 batch_0_4_10_15_16 + 126 batch_6_9_12
   + 113.2 batch_3_8_13_19 + 119.2 batch_3_5_9 + 105.2 batch_6_9_13_19
   + 133.2 batch_5_8_12 + 125.2 batch_3_5_8 + 119.2 batch_3_5_13_19
   + 125.2 batch_6_12_14 + 117.2 batch_3_5_14 + 117.2 batch_5_9_13_14_19
Subject To
 order_0: batch_0_4_10_15_16 = 1
 order_1: batch_1_17_18 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3 + batch_3_8_13_19 + batch_3_5_9 + batch_3_5_8
   + batch_3_5_13_19 + batch_3_5_14 = 1
 order_4: batch_0_4_10_15_16 = 1
 order_5: batch_5 + batch_3_5_9 + batch_5_8_12 + batch_3_5_8
   + batch_3_5_13_19 + batch_3_5_14 + batch_5_9_13_14_19 = 1
 order_6: batch_6 + batch_6_9_12 + batch_6_9_13_19 + batch_6_12_14 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_3_8_13_19 + batch_5_8_12 + batch_3_5_8 = 1
 order_9: batch_9 + batch_6_9_12 + batch_3_5_9 + batch_6_9_13_19
   + batch_5_9_13_14_19 = 1
 order_10: batch_0_4_10_15_16 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_6_9_12 + batch_5_8_12 + batch_6_12_14 = 1
 order_13: batch_3_8_13_19 + batch_6_9_13_19 + batch_3_5_13_19
   + batch_5_9_13_14_19 = 1
 order_14: batch_14 + batch_6_12_14 + batch_3_5_14 + batch_5_9_13_14_19
   = 1
 order_15: batch_0_4_10_15_16 = 1
 order_16: batch_0_4_10_15_16 = 1
 order_17: batch_1_17_18 = 1
 order_18: batch_1_17_18 = 1
 order_19: batch_3_8_13_19 + batch_6_9_13_19 + batch_3_5_13_19
   + batch_5_9_13_14_19 = 1
Bounds
End
