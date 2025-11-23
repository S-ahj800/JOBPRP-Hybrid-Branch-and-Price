\ Model JOBPRP_RMP_684
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x6180786a8dabdc85
Minimize
  98 batch_1 + 72.4 batch_8 + 78.4 batch_10 + 77.2 batch_18
   + 105.6 batch_3_12_16 + 115.2 batch_2_7_11 + 123.2 batch_5_14_15_17
   + 105.2 batch_6_9_13_19 + 121.2 batch_1_8_18 + 119.2 batch_0_4_8_10
   + 127.2 batch_0_4_10_18 + 125.2 batch_0_1_4 + 105.2 batch_1_18
   + 107.2 batch_0_4_10
Subject To
 order_0: batch_0_4_8_10 + batch_0_4_10_18 + batch_0_1_4 + batch_0_4_10
   = 1
 order_1: batch_1 + batch_1_8_18 + batch_0_1_4 + batch_1_18 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16 = 1
 order_4: batch_0_4_8_10 + batch_0_4_10_18 + batch_0_1_4 + batch_0_4_10
   = 1
 order_5: batch_5_14_15_17 = 1
 order_6: batch_6_9_13_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_1_8_18 + batch_0_4_8_10 = 1
 order_9: batch_6_9_13_19 = 1
 order_10: batch_10 + batch_0_4_8_10 + batch_0_4_10_18 + batch_0_4_10 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_12_16 = 1
 order_13: batch_6_9_13_19 = 1
 order_14: batch_5_14_15_17 = 1
 order_15: batch_5_14_15_17 = 1
 order_16: batch_3_12_16 = 1
 order_17: batch_5_14_15_17 = 1
 order_18: batch_18 + batch_1_8_18 + batch_0_4_10_18 + batch_1_18 = 1
 order_19: batch_6_9_13_19 = 1
Bounds
End
