\ Model JOBPRP_RMP_1668
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xd8491d5f902723fd
Minimize
  72.4 batch_8 + 77.2 batch_9 + 78.4 batch_10 + 65.2 batch_14
   + 89.2 batch_17 + 77.2 batch_18 + 105.6 batch_3_12_16
   + 115.2 batch_2_7_11 + 117.2 batch_1_5_18 + 119.2 batch_1_5_9
   + 124 batch_0_4_14_15_19 + 130 batch_0_4_10_15_19 + 127.2 batch_1_5_10
   + 119.2 batch_10_14_17_18 + 125.2 batch_6_10_13_18 + 113.2 batch_6_13_17
   + 109.2 batch_0_4_14_17 + 103.2 batch_6_13_18 + 122 batch_8_9_15_19
   + 121.2 batch_0_4_10_17 + 109.2 batch_6_8_13 + 123.2 batch_8_10_14_18
Subject To
 order_0: batch_0_4_14_15_19 + batch_0_4_10_15_19 + batch_0_4_14_17
   + batch_0_4_10_17 = 1
 order_1: batch_1_5_18 + batch_1_5_9 + batch_1_5_10 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16 = 1
 order_4: batch_0_4_14_15_19 + batch_0_4_10_15_19 + batch_0_4_14_17
   + batch_0_4_10_17 = 1
 order_5: batch_1_5_18 + batch_1_5_9 + batch_1_5_10 = 1
 order_6: batch_6_10_13_18 + batch_6_13_17 + batch_6_13_18 + batch_6_8_13
   = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_8_9_15_19 + batch_6_8_13 + batch_8_10_14_18 = 1
 order_9: batch_9 + batch_1_5_9 + batch_8_9_15_19 = 1
 order_10: batch_10 + batch_0_4_10_15_19 + batch_1_5_10 + batch_10_14_17_18
   + batch_6_10_13_18 + batch_0_4_10_17 + batch_8_10_14_18 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_12_16 = 1
 order_13: batch_6_10_13_18 + batch_6_13_17 + batch_6_13_18 + batch_6_8_13
   = 1
 order_14: batch_14 + batch_0_4_14_15_19 + batch_10_14_17_18
   + batch_0_4_14_17 + batch_8_10_14_18 = 1
 order_15: batch_0_4_14_15_19 + batch_0_4_10_15_19 + batch_8_9_15_19 = 1
 order_16: batch_3_12_16 = 1
 order_17: batch_17 + batch_10_14_17_18 + batch_6_13_17 + batch_0_4_14_17
   + batch_0_4_10_17 = 1
 order_18: batch_18 + batch_1_5_18 + batch_10_14_17_18 + batch_6_10_13_18
   + batch_6_13_18 + batch_8_10_14_18 = 1
 order_19: batch_0_4_14_15_19 + batch_0_4_10_15_19 + batch_8_9_15_19 = 1
Bounds
End
