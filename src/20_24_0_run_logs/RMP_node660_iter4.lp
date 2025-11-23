\ Model JOBPRP_RMP_660
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xcfc41e7cf1610279
Minimize
  91.2 batch_5 + 70.4 batch_13 + 65.2 batch_14 + 74.8 batch_15
   + 61.2 batch_19 + 115.2 batch_2_7_11 + 123.2 batch_0_4_10_15_16
   + 127.2 batch_1_9_17 + 123.2 batch_3_12_18 + 113.2 batch_6_8_14_19
   + 123.2 batch_5_6_8 + 119.2 batch_0_4_10_14_16
   + 129.2 batch_0_4_10_13_16 + 130 batch_0_4_10_16_19
   + 137.2 batch_5_13_14_15_19 + 136 batch_6_8_14_15
   + 115.199995392 batch_2_7_11
Subject To
 order_0: batch_0_4_10_15_16 + batch_0_4_10_14_16 + batch_0_4_10_13_16
   + batch_0_4_10_16_19 = 1
 order_1: batch_1_9_17 = 1
 order_2: batch_2_7_11 + batch_2_7_11 = 1
 order_3: batch_3_12_18 = 1
 order_4: batch_0_4_10_15_16 + batch_0_4_10_14_16 + batch_0_4_10_13_16
   + batch_0_4_10_16_19 = 1
 order_5: batch_5 + batch_5_6_8 + batch_5_13_14_15_19 = 1
 order_6: batch_6_8_14_19 + batch_5_6_8 + batch_6_8_14_15 = 1
 order_7: batch_2_7_11 + batch_2_7_11 = 1
 order_8: batch_6_8_14_19 + batch_5_6_8 + batch_6_8_14_15 = 1
 order_9: batch_1_9_17 = 1
 order_10: batch_0_4_10_15_16 + batch_0_4_10_14_16 + batch_0_4_10_13_16
   + batch_0_4_10_16_19 = 1
 order_11: batch_2_7_11 + batch_2_7_11 = 1
 order_12: batch_3_12_18 = 1
 order_13: batch_13 + batch_0_4_10_13_16 + batch_5_13_14_15_19 = 1
 order_14: batch_14 + batch_6_8_14_19 + batch_0_4_10_14_16
   + batch_5_13_14_15_19 + batch_6_8_14_15 = 1
 order_15: batch_15 + batch_0_4_10_15_16 + batch_5_13_14_15_19
   + batch_6_8_14_15 = 1
 order_16: batch_0_4_10_15_16 + batch_0_4_10_14_16 + batch_0_4_10_13_16
   + batch_0_4_10_16_19 = 1
 order_17: batch_1_9_17 = 1
 order_18: batch_3_12_18 = 1
 order_19: batch_19 + batch_6_8_14_19 + batch_0_4_10_16_19
   + batch_5_13_14_15_19 = 1
Bounds
End
