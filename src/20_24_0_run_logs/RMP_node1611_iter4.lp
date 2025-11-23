\ Model JOBPRP_RMP_1611
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x80037554e7ac245c
Minimize
  91.2 batch_5 + 89.2 batch_6 + 77.2 batch_9 + 78.4 batch_10 + 70.4 batch_13
   + 65.2 batch_14 + 74.8 batch_15 + 77.2 batch_18 + 61.2 batch_19
   + 115.2 batch_2_7_11 + 115.2 batch_0_4_8_14_16 + 117.2 batch_1_14_17
   + 124 batch_3_12_13_19 + 125.2 batch_1_13_17 + 107.2 batch_6_9_18_19
   + 115.2 batch_6_9_14_18 + 127.2 batch_0_4_8_13_16 + 133.2 batch_1_15_17
   + 118.4 batch_3_10_12 + 135.2 batch_9_10_13_15_19 + 127.2 batch_1_9_17
   + 105.2 batch_9_13_14_18_19 + 139.2 batch_5_10_15_18
   + 115.2 batch_5_10_19 + 129.2 batch_5_10_14_15 + 125.2 batch_5_9_10_19
   + 133.2 batch_5_10_15_19 + 141.2 batch_5_9_10_15 + 116.4 batch_3_12_13
   + 103.2 batch_6_9_19 + 111.2 batch_0_4_8_16
Subject To
 order_0: batch_0_4_8_14_16 + batch_0_4_8_13_16 + batch_0_4_8_16 = 1
 order_1: batch_1_14_17 + batch_1_13_17 + batch_1_15_17 + batch_1_9_17 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_13_19 + batch_3_10_12 + batch_3_12_13 = 1
 order_4: batch_0_4_8_14_16 + batch_0_4_8_13_16 + batch_0_4_8_16 = 1
 order_5: batch_5 + batch_5_10_15_18 + batch_5_10_19 + batch_5_10_14_15
   + batch_5_9_10_19 + batch_5_10_15_19 + batch_5_9_10_15 = 1
 order_6: batch_6 + batch_6_9_18_19 + batch_6_9_14_18 + batch_6_9_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_0_4_8_14_16 + batch_0_4_8_13_16 + batch_0_4_8_16 = 1
 order_9: batch_9 + batch_6_9_18_19 + batch_6_9_14_18 + batch_9_10_13_15_19
   + batch_1_9_17 + batch_9_13_14_18_19 + batch_5_9_10_19 + batch_5_9_10_15
   + batch_6_9_19 = 1
 order_10: batch_10 + batch_3_10_12 + batch_9_10_13_15_19
   + batch_5_10_15_18 + batch_5_10_19 + batch_5_10_14_15 + batch_5_9_10_19
   + batch_5_10_15_19 + batch_5_9_10_15 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_12_13_19 + batch_3_10_12 + batch_3_12_13 = 1
 order_13: batch_13 + batch_3_12_13_19 + batch_1_13_17 + batch_0_4_8_13_16
   + batch_9_10_13_15_19 + batch_9_13_14_18_19 + batch_3_12_13 = 1
 order_14: batch_14 + batch_0_4_8_14_16 + batch_1_14_17 + batch_6_9_14_18
   + batch_9_13_14_18_19 + batch_5_10_14_15 = 1
 order_15: batch_15 + batch_1_15_17 + batch_9_10_13_15_19
   + batch_5_10_15_18 + batch_5_10_14_15 + batch_5_10_15_19
   + batch_5_9_10_15 = 1
 order_16: batch_0_4_8_14_16 + batch_0_4_8_13_16 + batch_0_4_8_16 = 1
 order_17: batch_1_14_17 + batch_1_13_17 + batch_1_15_17 + batch_1_9_17
   = 1
 order_18: batch_18 + batch_6_9_18_19 + batch_6_9_14_18
   + batch_9_13_14_18_19 + batch_5_10_15_18 = 1
 order_19: batch_19 + batch_3_12_13_19 + batch_6_9_18_19
   + batch_9_10_13_15_19 + batch_9_13_14_18_19 + batch_5_10_19
   + batch_5_9_10_19 + batch_5_10_15_19 + batch_6_9_19 = 1
Bounds
End
