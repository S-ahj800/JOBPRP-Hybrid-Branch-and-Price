\ Model JOBPRP_RMP_231
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x946c84c9e81e575
Minimize
  91.2 batch_5 + 77.2 batch_9 + 78.4 batch_10 + 89.6 batch_12
   + 65.2 batch_14 + 74.8 batch_15 + 61.2 batch_19 + 123.2 batch_1_17_18
   + 115.2 batch_2_7_11 + 133.2 batch_5_10_12_19 + 115.2 batch_3_10_13_14
   + 127.2 batch_5_9_12_19 + 124 batch_3_12_13_19 + 113.2 batch_6_8_14_19
   + 126 batch_6_8_12 + 114 batch_3_9_13_19 + 123.2 batch_5_6_8
   + 127.2 batch_0_4_5_14_16 + 139.2 batch_9_10_14_15
   + 129.2 batch_5_9_10_14 + 136 batch_6_8_14_15 + 124 batch_3_9_13_14
   + 128.4 batch_3_10_13_15 + 123.2 batch_6_8_10_19
   + 138.8 batch_0_4_12_16_19 + 129.2 batch_0_4_9_16
   + 129.2 batch_0_4_9_14_16 + 130 batch_6_8_15_19
   + 131.2 batch_0_4_9_16_19
Subject To
 order_0: batch_0_4_5_14_16 + batch_0_4_12_16_19 + batch_0_4_9_16
   + batch_0_4_9_14_16 + batch_0_4_9_16_19 = 1
 order_1: batch_1_17_18 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_10_13_14 + batch_3_12_13_19 + batch_3_9_13_19
   + batch_3_9_13_14 + batch_3_10_13_15 = 1
 order_4: batch_0_4_5_14_16 + batch_0_4_12_16_19 + batch_0_4_9_16
   + batch_0_4_9_14_16 + batch_0_4_9_16_19 = 1
 order_5: batch_5 + batch_5_10_12_19 + batch_5_9_12_19 + batch_5_6_8
   + batch_0_4_5_14_16 + batch_5_9_10_14 = 1
 order_6: batch_6_8_14_19 + batch_6_8_12 + batch_5_6_8 + batch_6_8_14_15
   + batch_6_8_10_19 + batch_6_8_15_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_6_8_14_19 + batch_6_8_12 + batch_5_6_8 + batch_6_8_14_15
   + batch_6_8_10_19 + batch_6_8_15_19 = 1
 order_9: batch_9 + batch_5_9_12_19 + batch_3_9_13_19 + batch_9_10_14_15
   + batch_5_9_10_14 + batch_3_9_13_14 + batch_0_4_9_16 + batch_0_4_9_14_16
   + batch_0_4_9_16_19 = 1
 order_10: batch_10 + batch_5_10_12_19 + batch_3_10_13_14
   + batch_9_10_14_15 + batch_5_9_10_14 + batch_3_10_13_15
   + batch_6_8_10_19 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_5_10_12_19 + batch_5_9_12_19 + batch_3_12_13_19
   + batch_6_8_12 + batch_0_4_12_16_19 = 1
 order_13: batch_3_10_13_14 + batch_3_12_13_19 + batch_3_9_13_19
   + batch_3_9_13_14 + batch_3_10_13_15 = 1
 order_14: batch_14 + batch_3_10_13_14 + batch_6_8_14_19
   + batch_0_4_5_14_16 + batch_9_10_14_15 + batch_5_9_10_14
   + batch_6_8_14_15 + batch_3_9_13_14 + batch_0_4_9_14_16 = 1
 order_15: batch_15 + batch_9_10_14_15 + batch_6_8_14_15 + batch_3_10_13_15
   + batch_6_8_15_19 = 1
 order_16: batch_0_4_5_14_16 + batch_0_4_12_16_19 + batch_0_4_9_16
   + batch_0_4_9_14_16 + batch_0_4_9_16_19 = 1
 order_17: batch_1_17_18 = 1
 order_18: batch_1_17_18 = 1
 order_19: batch_19 + batch_5_10_12_19 + batch_5_9_12_19 + batch_3_12_13_19
   + batch_6_8_14_19 + batch_3_9_13_19 + batch_6_8_10_19
   + batch_0_4_12_16_19 + batch_6_8_15_19 + batch_0_4_9_16_19 = 1
Bounds
End
