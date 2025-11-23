\ Model JOBPRP_RMP_496
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xc1c969ffbbc3f1
Minimize
  91.2 batch_5 + 78.4 batch_10 + 89.6 batch_12 + 70.4 batch_13
   + 65.2 batch_14 + 77.2 batch_18 + 61.2 batch_19
   + 137.2 batch_0_4_13_14_16_19 + 115.2 batch_2_7_11
   + 133.2 batch_5_10_12_19 + 115.6 batch_3_12_15 + 113.2 batch_6_8_9_19
   + 117.2 batch_1_14_17 + 135.2 batch_0_4_5_13_16
   + 133.2 batch_0_4_13_16_18 + 125.2 batch_1_13_17 + 127.2 batch_0_4_12_16
   + 129.2 batch_5_12_18_19 + 123.2 batch_5_10_13_18
   + 131.2 batch_10_12_13_18 + 127.2 batch_0_4_5_14_16 + 117.2 batch_1_17
   + 128.4 batch_3_10_13_15 + 126.4 batch_3_10_15
Subject To
 order_0: batch_0_4_13_14_16_19 + batch_0_4_5_13_16 + batch_0_4_13_16_18
   + batch_0_4_12_16 + batch_0_4_5_14_16 = 1
 order_1: batch_1_14_17 + batch_1_13_17 + batch_1_17 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_15 + batch_3_10_13_15 + batch_3_10_15 = 1
 order_4: batch_0_4_13_14_16_19 + batch_0_4_5_13_16 + batch_0_4_13_16_18
   + batch_0_4_12_16 + batch_0_4_5_14_16 = 1
 order_5: batch_5 + batch_5_10_12_19 + batch_0_4_5_13_16 + batch_5_12_18_19
   + batch_5_10_13_18 + batch_0_4_5_14_16 = 1
 order_6: batch_6_8_9_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_6_8_9_19 = 1
 order_9: batch_6_8_9_19 = 1
 order_10: batch_10 + batch_5_10_12_19 + batch_5_10_13_18
   + batch_10_12_13_18 + batch_3_10_13_15 + batch_3_10_15 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_5_10_12_19 + batch_3_12_15 + batch_0_4_12_16
   + batch_5_12_18_19 + batch_10_12_13_18 = 1
 order_13: batch_13 + batch_0_4_13_14_16_19 + batch_0_4_5_13_16
   + batch_0_4_13_16_18 + batch_1_13_17 + batch_5_10_13_18
   + batch_10_12_13_18 + batch_3_10_13_15 = 1
 order_14: batch_14 + batch_0_4_13_14_16_19 + batch_1_14_17
   + batch_0_4_5_14_16 = 1
 order_15: batch_3_12_15 + batch_3_10_13_15 + batch_3_10_15 = 1
 order_16: batch_0_4_13_14_16_19 + batch_0_4_5_13_16 + batch_0_4_13_16_18
   + batch_0_4_12_16 + batch_0_4_5_14_16 = 1
 order_17: batch_1_14_17 + batch_1_13_17 + batch_1_17 = 1
 order_18: batch_18 + batch_0_4_13_16_18 + batch_5_12_18_19
   + batch_5_10_13_18 + batch_10_12_13_18 = 1
 order_19: batch_19 + batch_0_4_13_14_16_19 + batch_5_10_12_19
   + batch_6_8_9_19 + batch_5_12_18_19 = 1
Bounds
End
