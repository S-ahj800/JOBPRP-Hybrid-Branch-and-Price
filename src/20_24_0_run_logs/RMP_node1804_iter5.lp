\ Model JOBPRP_RMP_1804
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x2dd61d4c11990fa4
Minimize
  91.2 batch_5 + 89.2 batch_6 + 72.4 batch_8 + 77.2 batch_9 + 78.4 batch_10
   + 70.4 batch_13 + 77.2 batch_18 + 61.2 batch_19 + 115.2 batch_2_7_11
   + 117.2 batch_0_4_14_15_16 + 119.2 batch_3_8_12 + 124 batch_3_12_13_19
   + 125.2 batch_1_13_17 + 107.2 batch_6_9_18_19 + 123.2 batch_5_8_13_18
   + 127.2 batch_1_9_17 + 117.2 batch_5_9_13_18 + 118.4 batch_3_10_12
   + 127.2 batch_5_8_10_13 + 116.4 batch_3_12_13 + 121.2 batch_1_17_19
   + 117.2 batch_1_17 + 101.6 batch_3_12 + 123.2 batch_5_10_13_18
Subject To
 order_0: batch_0_4_14_15_16 = 1
 order_1: batch_1_13_17 + batch_1_9_17 + batch_1_17_19 + batch_1_17 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_8_12 + batch_3_12_13_19 + batch_3_10_12 + batch_3_12_13
   + batch_3_12 = 1
 order_4: batch_0_4_14_15_16 = 1
 order_5: batch_5 + batch_5_8_13_18 + batch_5_9_13_18 + batch_5_8_10_13
   + batch_5_10_13_18 = 1
 order_6: batch_6 + batch_6_9_18_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_3_8_12 + batch_5_8_13_18 + batch_5_8_10_13 = 1
 order_9: batch_9 + batch_6_9_18_19 + batch_1_9_17 + batch_5_9_13_18 = 1
 order_10: batch_10 + batch_3_10_12 + batch_5_8_10_13 + batch_5_10_13_18
   = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_8_12 + batch_3_12_13_19 + batch_3_10_12 + batch_3_12_13
   + batch_3_12 = 1
 order_13: batch_13 + batch_3_12_13_19 + batch_1_13_17 + batch_5_8_13_18
   + batch_5_9_13_18 + batch_5_8_10_13 + batch_3_12_13 + batch_5_10_13_18
   = 1
 order_14: batch_0_4_14_15_16 = 1
 order_15: batch_0_4_14_15_16 = 1
 order_16: batch_0_4_14_15_16 = 1
 order_17: batch_1_13_17 + batch_1_9_17 + batch_1_17_19 + batch_1_17 = 1
 order_18: batch_18 + batch_6_9_18_19 + batch_5_8_13_18 + batch_5_9_13_18
   + batch_5_10_13_18 = 1
 order_19: batch_19 + batch_3_12_13_19 + batch_6_9_18_19 + batch_1_17_19
   = 1
Bounds
End
