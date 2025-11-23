\ Model JOBPRP_RMP_236
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x3b461b5794b740bf
Minimize
  91.2 batch_5 + 77.2 batch_9 + 78.4 batch_10 + 89.6 batch_12
   + 61.2 batch_19 + 123.2 batch_1_17_18 + 115.2 batch_2_7_11
   + 133.2 batch_5_10_12_19 + 117.2 batch_0_4_14_15_16
   + 127.2 batch_5_9_12_19 + 124 batch_3_12_13_19 + 126 batch_6_8_12
   + 114 batch_3_9_13_19 + 123.2 batch_5_6_8 + 123.2 batch_6_8_10_19
   + 111.2 batch_3_10_13_19 + 104.4 batch_3_10_13 + 125.2 batch_5_9_10
   + 123.2 batch_6_8_10 + 127.2 batch_5_9_12
Subject To
 order_0: batch_0_4_14_15_16 = 1
 order_1: batch_1_17_18 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_13_19 + batch_3_9_13_19 + batch_3_10_13_19
   + batch_3_10_13 = 1
 order_4: batch_0_4_14_15_16 = 1
 order_5: batch_5 + batch_5_10_12_19 + batch_5_9_12_19 + batch_5_6_8
   + batch_5_9_10 + batch_5_9_12 = 1
 order_6: batch_6_8_12 + batch_5_6_8 + batch_6_8_10_19 + batch_6_8_10 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_6_8_12 + batch_5_6_8 + batch_6_8_10_19 + batch_6_8_10 = 1
 order_9: batch_9 + batch_5_9_12_19 + batch_3_9_13_19 + batch_5_9_10
   + batch_5_9_12 = 1
 order_10: batch_10 + batch_5_10_12_19 + batch_6_8_10_19 + batch_3_10_13_19
   + batch_3_10_13 + batch_5_9_10 + batch_6_8_10 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_5_10_12_19 + batch_5_9_12_19 + batch_3_12_13_19
   + batch_6_8_12 + batch_5_9_12 = 1
 order_13: batch_3_12_13_19 + batch_3_9_13_19 + batch_3_10_13_19
   + batch_3_10_13 = 1
 order_14: batch_0_4_14_15_16 = 1
 order_15: batch_0_4_14_15_16 = 1
 order_16: batch_0_4_14_15_16 = 1
 order_17: batch_1_17_18 = 1
 order_18: batch_1_17_18 = 1
 order_19: batch_19 + batch_5_10_12_19 + batch_5_9_12_19 + batch_3_12_13_19
   + batch_3_9_13_19 + batch_6_8_10_19 + batch_3_10_13_19 = 1
Bounds
End
