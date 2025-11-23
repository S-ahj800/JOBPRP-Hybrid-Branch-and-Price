\ Model JOBPRP_RMP_771
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x6af833475bea50bb
Minimize
  77.2 batch_9 + 89.6 batch_12 + 65.2 batch_14 + 77.2 batch_18
   + 115.2 batch_2_7_11 + 123.2 batch_0_4_10_15_16 + 109.2 batch_6_8_13_19
   + 138 batch_9_12_14_18 + 127.2 batch_1_9_17 + 115.2 batch_3_5_18
   + 126 batch_6_8_12 + 119.2 batch_3_5_13_19 + 117.2 batch_1_17
   + 117.2 batch_3_5_14 + 101.2 batch_13_14_18_19
Subject To
 order_0: batch_0_4_10_15_16 = 1
 order_1: batch_1_9_17 + batch_1_17 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_5_18 + batch_3_5_13_19 + batch_3_5_14 = 1
 order_4: batch_0_4_10_15_16 = 1
 order_5: batch_3_5_18 + batch_3_5_13_19 + batch_3_5_14 = 1
 order_6: batch_6_8_13_19 + batch_6_8_12 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_6_8_13_19 + batch_6_8_12 = 1
 order_9: batch_9 + batch_9_12_14_18 + batch_1_9_17 = 1
 order_10: batch_0_4_10_15_16 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_9_12_14_18 + batch_6_8_12 = 1
 order_13: batch_6_8_13_19 + batch_3_5_13_19 + batch_13_14_18_19 = 1
 order_14: batch_14 + batch_9_12_14_18 + batch_3_5_14 + batch_13_14_18_19
   = 1
 order_15: batch_0_4_10_15_16 = 1
 order_16: batch_0_4_10_15_16 = 1
 order_17: batch_1_9_17 + batch_1_17 = 1
 order_18: batch_18 + batch_9_12_14_18 + batch_3_5_18 + batch_13_14_18_19
   = 1
 order_19: batch_6_8_13_19 + batch_3_5_13_19 + batch_13_14_18_19 = 1
Bounds
End
