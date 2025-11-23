\ Model JOBPRP_RMP_188
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xc89189d849029a63
Minimize
  78.4 batch_10 + 89.6 batch_12 + 70.4 batch_13 + 65.2 batch_14
   + 74.8 batch_15 + 61.2 batch_19 + 137.2 batch_0_4_13_14_16_19
   + 123.2 batch_1_17_18 + 115.2 batch_2_7_11 + 123.2 batch_0_4_10_15_16
   + 117.2 batch_0_4_14_15_16 + 130.4 batch_10_12_13_15
   + 119.2 batch_0_4_10_14_16 + 113.2 batch_6_8_14_19 + 126 batch_6_8_12
   + 119.2 batch_3_5_9 + 123.2 batch_6_8_10_19 + 127.2 batch_0_4_13_15_16
   + 138.8 batch_0_4_12_16_19 + 129.2 batch_0_4_10_13_16
Subject To
 order_0: batch_0_4_13_14_16_19 + batch_0_4_10_15_16 + batch_0_4_14_15_16
   + batch_0_4_10_14_16 + batch_0_4_13_15_16 + batch_0_4_12_16_19
   + batch_0_4_10_13_16 = 1
 order_1: batch_1_17_18 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_5_9 = 1
 order_4: batch_0_4_13_14_16_19 + batch_0_4_10_15_16 + batch_0_4_14_15_16
   + batch_0_4_10_14_16 + batch_0_4_13_15_16 + batch_0_4_12_16_19
   + batch_0_4_10_13_16 = 1
 order_5: batch_3_5_9 = 1
 order_6: batch_6_8_14_19 + batch_6_8_12 + batch_6_8_10_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_6_8_14_19 + batch_6_8_12 + batch_6_8_10_19 = 1
 order_9: batch_3_5_9 = 1
 order_10: batch_10 + batch_0_4_10_15_16 + batch_10_12_13_15
   + batch_0_4_10_14_16 + batch_6_8_10_19 + batch_0_4_10_13_16 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_10_12_13_15 + batch_6_8_12 + batch_0_4_12_16_19
   = 1
 order_13: batch_13 + batch_0_4_13_14_16_19 + batch_10_12_13_15
   + batch_0_4_13_15_16 + batch_0_4_10_13_16 = 1
 order_14: batch_14 + batch_0_4_13_14_16_19 + batch_0_4_14_15_16
   + batch_0_4_10_14_16 + batch_6_8_14_19 = 1
 order_15: batch_15 + batch_0_4_10_15_16 + batch_0_4_14_15_16
   + batch_10_12_13_15 + batch_0_4_13_15_16 = 1
 order_16: batch_0_4_13_14_16_19 + batch_0_4_10_15_16 + batch_0_4_14_15_16
   + batch_0_4_10_14_16 + batch_0_4_13_15_16 + batch_0_4_12_16_19
   + batch_0_4_10_13_16 = 1
 order_17: batch_1_17_18 = 1
 order_18: batch_1_17_18 = 1
 order_19: batch_19 + batch_0_4_13_14_16_19 + batch_6_8_14_19
   + batch_6_8_10_19 + batch_0_4_12_16_19 = 1
Bounds
End
