\ Model JOBPRP_RMP_2092
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xc8f569dbad2cf547
Minimize
  83.6 batch_3 + 78.4 batch_10 + 89.6 batch_12 + 70.4 batch_13
   + 65.2 batch_14 + 74.8 batch_15 + 61.2 batch_19 + 123.2 batch_1_17_18
   + 115.2 batch_2_7_11 + 115.2 batch_0_4_8_14_16 + 119.2 batch_5_6_9_19
   + 115.2 batch_3_10_13_14 + 128.4 batch_3_10_13_15
   + 120 batch_0_4_8_16_19 + 134 batch_12_14_15_19 + 104.4 batch_3_10_13
   + 123.1999850906904 batch_1_17_18 + 103.6 batch_12_15
   + 137.2 batch_10_12_15_19 + 113.2 batch_3_10_14 + 102.4 batch_3_10
Subject To
 order_0: batch_0_4_8_14_16 + batch_0_4_8_16_19 = 1
 order_1: batch_1_17_18 + batch_1_17_18 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3 + batch_3_10_13_14 + batch_3_10_13_15 + batch_3_10_13
   + batch_3_10_14 + batch_3_10 = 1
 order_4: batch_0_4_8_14_16 + batch_0_4_8_16_19 = 1
 order_5: batch_5_6_9_19 = 1
 order_6: batch_5_6_9_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_0_4_8_14_16 + batch_0_4_8_16_19 = 1
 order_9: batch_5_6_9_19 = 1
 order_10: batch_10 + batch_3_10_13_14 + batch_3_10_13_15 + batch_3_10_13
   + batch_10_12_15_19 + batch_3_10_14 + batch_3_10 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_12_14_15_19 + batch_12_15 + batch_10_12_15_19
   = 1
 order_13: batch_13 + batch_3_10_13_14 + batch_3_10_13_15 + batch_3_10_13
   = 1
 order_14: batch_14 + batch_0_4_8_14_16 + batch_3_10_13_14
   + batch_12_14_15_19 + batch_3_10_14 = 1
 order_15: batch_15 + batch_3_10_13_15 + batch_12_14_15_19 + batch_12_15
   + batch_10_12_15_19 = 1
 order_16: batch_0_4_8_14_16 + batch_0_4_8_16_19 = 1
 order_17: batch_1_17_18 + batch_1_17_18 = 1
 order_18: batch_1_17_18 + batch_1_17_18 = 1
 order_19: batch_19 + batch_5_6_9_19 + batch_0_4_8_16_19
   + batch_12_14_15_19 + batch_10_12_15_19 = 1
Bounds
End
