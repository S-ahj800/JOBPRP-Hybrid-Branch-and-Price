\ Model JOBPRP_RMP_1483
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x1630c22ae25020
Minimize
  98 batch_1 + 91.2 batch_5 + 77.2 batch_9 + 78.4 batch_10 + 89.6 batch_12
   + 77.2 batch_18 + 105.6 batch_3_12_16 + 115.2 batch_2_7_11
   + 113.2 batch_6_13_14_17 + 126 batch_0_4_8_15_19 + 127.2 batch_1_5_10
   + 117.2 batch_3_5_16 + 116.4 batch_3_10_16 + 131.2 batch_9_10_12
   + 123.2 batch_5_10_18 + 123.2 batch_1_9_10 + 131.2 batch_5_10_12
   + 127.2 batch_5_12_18 + 117.2 batch_3_16_18
Subject To
 order_0: batch_0_4_8_15_19 = 1
 order_1: batch_1 + batch_1_5_10 + batch_1_9_10 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16 + batch_3_5_16 + batch_3_10_16 + batch_3_16_18 = 1
 order_4: batch_0_4_8_15_19 = 1
 order_5: batch_5 + batch_1_5_10 + batch_3_5_16 + batch_5_10_18
   + batch_5_10_12 + batch_5_12_18 = 1
 order_6: batch_6_13_14_17 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_0_4_8_15_19 = 1
 order_9: batch_9 + batch_9_10_12 + batch_1_9_10 = 1
 order_10: batch_10 + batch_1_5_10 + batch_3_10_16 + batch_9_10_12
   + batch_5_10_18 + batch_1_9_10 + batch_5_10_12 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_3_12_16 + batch_9_10_12 + batch_5_10_12
   + batch_5_12_18 = 1
 order_13: batch_6_13_14_17 = 1
 order_14: batch_6_13_14_17 = 1
 order_15: batch_0_4_8_15_19 = 1
 order_16: batch_3_12_16 + batch_3_5_16 + batch_3_10_16 + batch_3_16_18
   = 1
 order_17: batch_6_13_14_17 = 1
 order_18: batch_18 + batch_5_10_18 + batch_5_12_18 + batch_3_16_18 = 1
 order_19: batch_0_4_8_15_19 = 1
Bounds
End
