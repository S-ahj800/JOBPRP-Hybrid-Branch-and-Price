\ Model JOBPRP_RMP_403
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x52cd8a6156fa137
Minimize
  77.2 batch_9 + 78.4 batch_10 + 89.6 batch_12 + 89.2 batch_17
   + 77.2 batch_18 + 115.2 batch_2_7_11 + 109.2 batch_6_9_13_18
   + 119.2 batch_5_8_10_14 + 137.2 batch_0_1_4_15 + 135.2 batch_0_4_10_12
   + 123.2 batch_6_9_10_13 + 133.2 batch_1_15_17 + 119.2 batch_10_17_18
   + 137.2 batch_3_16_17_19 + 127.2 batch_0_4_6_13 + 125.2 batch_5_8_9_14
   + 133.2 batch_12_17_18 + 113.2 batch_6_13_17 + 141.2 batch_1_12_15
Subject To
 order_0: batch_0_1_4_15 + batch_0_4_10_12 + batch_0_4_6_13 = 1
 order_1: batch_0_1_4_15 + batch_1_15_17 + batch_1_12_15 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_16_17_19 = 1
 order_4: batch_0_1_4_15 + batch_0_4_10_12 + batch_0_4_6_13 = 1
 order_5: batch_5_8_10_14 + batch_5_8_9_14 = 1
 order_6: batch_6_9_13_18 + batch_6_9_10_13 + batch_0_4_6_13
   + batch_6_13_17 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_5_8_10_14 + batch_5_8_9_14 = 1
 order_9: batch_9 + batch_6_9_13_18 + batch_6_9_10_13 + batch_5_8_9_14 = 1
 order_10: batch_10 + batch_5_8_10_14 + batch_0_4_10_12 + batch_6_9_10_13
   + batch_10_17_18 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_0_4_10_12 + batch_12_17_18 + batch_1_12_15 = 1
 order_13: batch_6_9_13_18 + batch_6_9_10_13 + batch_0_4_6_13
   + batch_6_13_17 = 1
 order_14: batch_5_8_10_14 + batch_5_8_9_14 = 1
 order_15: batch_0_1_4_15 + batch_1_15_17 + batch_1_12_15 = 1
 order_16: batch_3_16_17_19 = 1
 order_17: batch_17 + batch_1_15_17 + batch_10_17_18 + batch_3_16_17_19
   + batch_12_17_18 + batch_6_13_17 = 1
 order_18: batch_18 + batch_6_9_13_18 + batch_10_17_18 + batch_12_17_18
   = 1
 order_19: batch_3_16_17_19 = 1
Bounds
End
