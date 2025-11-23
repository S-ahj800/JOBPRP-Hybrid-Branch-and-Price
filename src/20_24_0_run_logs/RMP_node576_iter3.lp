\ Model JOBPRP_RMP_576
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x774b2f0a7150766d
Minimize
  91.2 batch_5 + 77.2 batch_9 + 78.4 batch_10 + 70.4 batch_13
   + 65.2 batch_14 + 77.2 batch_18 + 61.2 batch_19
   + 137.2 batch_0_4_13_14_16_19 + 115.2 batch_2_7_11 + 115.6 batch_3_12_15
   + 127.2 batch_1_10_17 + 117.2 batch_1_14_17 + 109.2 batch_6_8_13_19
   + 135.2 batch_0_4_5_13_16 + 105.2 batch_9_13_14_18_19
   + 115.2 batch_6_8_13_14 + 127.2 batch_1_9_17 + 117.2 batch_5_9_13_14_19
   + 133.2 batch_0_4_13_16_18 + 125.2 batch_1_13_17 + 117.2 batch_5_9_13_18
   + 113.2 batch_6_8_14_19 + 127.2 batch_0_4_5_14_16
   + 113.2 batch_5_9_18_19 + 123.2 batch_5_6_8 + 123.2 batch_6_8_10_19
   + 133.2 batch_0_4_14_16_18 + 119.2 batch_0_4_10_14_16
Subject To
 order_0: batch_0_4_13_14_16_19 + batch_0_4_5_13_16 + batch_0_4_13_16_18
   + batch_0_4_5_14_16 + batch_0_4_14_16_18 + batch_0_4_10_14_16 = 1
 order_1: batch_1_10_17 + batch_1_14_17 + batch_1_9_17 + batch_1_13_17 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_15 = 1
 order_4: batch_0_4_13_14_16_19 + batch_0_4_5_13_16 + batch_0_4_13_16_18
   + batch_0_4_5_14_16 + batch_0_4_14_16_18 + batch_0_4_10_14_16 = 1
 order_5: batch_5 + batch_0_4_5_13_16 + batch_5_9_13_14_19
   + batch_5_9_13_18 + batch_0_4_5_14_16 + batch_5_9_18_19 + batch_5_6_8
   = 1
 order_6: batch_6_8_13_19 + batch_6_8_13_14 + batch_6_8_14_19 + batch_5_6_8
   + batch_6_8_10_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_6_8_13_19 + batch_6_8_13_14 + batch_6_8_14_19 + batch_5_6_8
   + batch_6_8_10_19 = 1
 order_9: batch_9 + batch_9_13_14_18_19 + batch_1_9_17 + batch_5_9_13_14_19
   + batch_5_9_13_18 + batch_5_9_18_19 = 1
 order_10: batch_10 + batch_1_10_17 + batch_6_8_10_19 + batch_0_4_10_14_16
   = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_12_15 = 1
 order_13: batch_13 + batch_0_4_13_14_16_19 + batch_6_8_13_19
   + batch_0_4_5_13_16 + batch_9_13_14_18_19 + batch_6_8_13_14
   + batch_5_9_13_14_19 + batch_0_4_13_16_18 + batch_1_13_17
   + batch_5_9_13_18 = 1
 order_14: batch_14 + batch_0_4_13_14_16_19 + batch_1_14_17
   + batch_9_13_14_18_19 + batch_6_8_13_14 + batch_5_9_13_14_19
   + batch_6_8_14_19 + batch_0_4_5_14_16 + batch_0_4_14_16_18
   + batch_0_4_10_14_16 = 1
 order_15: batch_3_12_15 = 1
 order_16: batch_0_4_13_14_16_19 + batch_0_4_5_13_16 + batch_0_4_13_16_18
   + batch_0_4_5_14_16 + batch_0_4_14_16_18 + batch_0_4_10_14_16 = 1
 order_17: batch_1_10_17 + batch_1_14_17 + batch_1_9_17 + batch_1_13_17
   = 1
 order_18: batch_18 + batch_9_13_14_18_19 + batch_0_4_13_16_18
   + batch_5_9_13_18 + batch_5_9_18_19 + batch_0_4_14_16_18 = 1
 order_19: batch_19 + batch_0_4_13_14_16_19 + batch_6_8_13_19
   + batch_9_13_14_18_19 + batch_5_9_13_14_19 + batch_6_8_14_19
   + batch_5_9_18_19 + batch_6_8_10_19 = 1
Bounds
End
