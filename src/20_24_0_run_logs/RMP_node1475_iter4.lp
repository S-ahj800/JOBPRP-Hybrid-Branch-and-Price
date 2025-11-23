\ Model JOBPRP_RMP_1475
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x464d841d62f5b4f5
Minimize
  91.2 batch_5 + 72.4 batch_8 + 77.2 batch_9 + 70.4 batch_13 + 65.2 batch_14
   + 74.8 batch_15 + 123.2 batch_1_17_18 + 115.2 batch_2_7_11
   + 121.2 batch_3_5_12 + 119.2 batch_3_8_12 + 119.2 batch_5_6_9_19
   + 116.4 batch_3_12_13 + 131.2 batch_5_6_15_19 + 111.2 batch_6_9_14_19
   + 117.2 batch_5_9_13_14 + 121.199996625 batch_5_6_14_19
   + 129.2 batch_0_4_10_13_16 + 129.2 batch_5_8_14_15 + 132 batch_8_9_14_15
   + 119.2 batch_0_4_10_14_16 + 135.2 batch_5_9_13_15
Subject To
 order_0: batch_0_4_10_13_16 + batch_0_4_10_14_16 = 1
 order_1: batch_1_17_18 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_5_12 + batch_3_8_12 + batch_3_12_13 = 1
 order_4: batch_0_4_10_13_16 + batch_0_4_10_14_16 = 1
 order_5: batch_5 + batch_3_5_12 + batch_5_6_9_19 + batch_5_6_15_19
   + batch_5_9_13_14 + batch_5_6_14_19 + batch_5_8_14_15 + batch_5_9_13_15
   = 1
 order_6: batch_5_6_9_19 + batch_5_6_15_19 + batch_6_9_14_19
   + batch_5_6_14_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_3_8_12 + batch_5_8_14_15 + batch_8_9_14_15 = 1
 order_9: batch_9 + batch_5_6_9_19 + batch_6_9_14_19 + batch_5_9_13_14
   + batch_8_9_14_15 + batch_5_9_13_15 = 1
 order_10: batch_0_4_10_13_16 + batch_0_4_10_14_16 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_5_12 + batch_3_8_12 + batch_3_12_13 = 1
 order_13: batch_13 + batch_3_12_13 + batch_5_9_13_14 + batch_0_4_10_13_16
   + batch_5_9_13_15 = 1
 order_14: batch_14 + batch_6_9_14_19 + batch_5_9_13_14 + batch_5_6_14_19
   + batch_5_8_14_15 + batch_8_9_14_15 + batch_0_4_10_14_16 = 1
 order_15: batch_15 + batch_5_6_15_19 + batch_5_8_14_15 + batch_8_9_14_15
   + batch_5_9_13_15 = 1
 order_16: batch_0_4_10_13_16 + batch_0_4_10_14_16 = 1
 order_17: batch_1_17_18 = 1
 order_18: batch_1_17_18 = 1
 order_19: batch_5_6_9_19 + batch_5_6_15_19 + batch_6_9_14_19
   + batch_5_6_14_19 = 1
Bounds
End
