\ Model JOBPRP_RMP_2204
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x96af13eb2ae4e6e6
Minimize
  83.6 batch_3 + 91.2 batch_5 + 78.4 batch_10 + 89.6 batch_12
   + 65.2 batch_14 + 74.8 batch_15 + 61.2 batch_19 + 115.2 batch_2_7_11
   + 109.2 batch_6_9_13_18 + 133.2 batch_5_10_12_19 + 127.2 batch_1_10_17
   + 115.2 batch_0_4_8_14_16 + 117.2 batch_1_14_17 + 117.2 batch_3_5_14_19
   + 133.2 batch_1_15_17 + 133.2 batch_5_12_15_19 + 137.2 batch_5_12_14_15
   + 133.2 batch_3_5_15_19 + 111.2 batch_0_4_8_16 + 109.2 batch_3_5
   + 103.6 batch_12_15 + 109.2 batch_3_5_19
Subject To
 order_0: batch_0_4_8_14_16 + batch_0_4_8_16 = 1
 order_1: batch_1_10_17 + batch_1_14_17 + batch_1_15_17 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3 + batch_3_5_14_19 + batch_3_5_15_19 + batch_3_5
   + batch_3_5_19 = 1
 order_4: batch_0_4_8_14_16 + batch_0_4_8_16 = 1
 order_5: batch_5 + batch_5_10_12_19 + batch_3_5_14_19 + batch_5_12_15_19
   + batch_5_12_14_15 + batch_3_5_15_19 + batch_3_5 + batch_3_5_19 = 1
 order_6: batch_6_9_13_18 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_0_4_8_14_16 + batch_0_4_8_16 = 1
 order_9: batch_6_9_13_18 = 1
 order_10: batch_10 + batch_5_10_12_19 + batch_1_10_17 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_5_10_12_19 + batch_5_12_15_19
   + batch_5_12_14_15 + batch_12_15 = 1
 order_13: batch_6_9_13_18 = 1
 order_14: batch_14 + batch_0_4_8_14_16 + batch_1_14_17 + batch_3_5_14_19
   + batch_5_12_14_15 = 1
 order_15: batch_15 + batch_1_15_17 + batch_5_12_15_19 + batch_5_12_14_15
   + batch_3_5_15_19 + batch_12_15 = 1
 order_16: batch_0_4_8_14_16 + batch_0_4_8_16 = 1
 order_17: batch_1_10_17 + batch_1_14_17 + batch_1_15_17 = 1
 order_18: batch_6_9_13_18 = 1
 order_19: batch_19 + batch_5_10_12_19 + batch_3_5_14_19 + batch_5_12_15_19
   + batch_3_5_15_19 + batch_3_5_19 = 1
Bounds
End
