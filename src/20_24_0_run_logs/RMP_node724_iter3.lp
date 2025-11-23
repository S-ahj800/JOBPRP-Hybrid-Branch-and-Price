\ Model JOBPRP_RMP_724
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x575a30aeeb82b5ef
Minimize
  91.2 batch_5 + 77.2 batch_9 + 78.4 batch_10 + 70.4 batch_13
   + 74.8 batch_15 + 77.2 batch_18 + 61.2 batch_19
   + 137.2 batch_0_4_13_14_16_19 + 115.2 batch_2_7_11 + 127.2 batch_1_10_17
   + 117.2 batch_0_4_14_15_16 + 135.2 batch_5_9_13_15 + 125.2 batch_1_13_17
   + 123.2 batch_3_12_18 + 117.2 batch_5_9_13_18 + 127.2 batch_0_4_5_14_16
   + 113.2 batch_5_9_18_19 + 123.2 batch_5_6_8 + 118.4 batch_3_10_12
   + 133.2 batch_1_15_17 + 127.1999966503068 batch_1_10_17
   + 124 batch_3_12_13_19 + 129.2 batch_0_4_9_14_16 + 121.2 batch_1_17_19
   + 132 batch_6_8_13_15 + 109.2 batch_6_8_13
Subject To
 order_0: batch_0_4_13_14_16_19 + batch_0_4_14_15_16 + batch_0_4_5_14_16
   + batch_0_4_9_14_16 = 1
 order_1: batch_1_10_17 + batch_1_13_17 + batch_1_15_17 + batch_1_10_17
   + batch_1_17_19 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_18 + batch_3_10_12 + batch_3_12_13_19 = 1
 order_4: batch_0_4_13_14_16_19 + batch_0_4_14_15_16 + batch_0_4_5_14_16
   + batch_0_4_9_14_16 = 1
 order_5: batch_5 + batch_5_9_13_15 + batch_5_9_13_18 + batch_0_4_5_14_16
   + batch_5_9_18_19 + batch_5_6_8 = 1
 order_6: batch_5_6_8 + batch_6_8_13_15 + batch_6_8_13 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_5_6_8 + batch_6_8_13_15 + batch_6_8_13 = 1
 order_9: batch_9 + batch_5_9_13_15 + batch_5_9_13_18 + batch_5_9_18_19
   + batch_0_4_9_14_16 = 1
 order_10: batch_10 + batch_1_10_17 + batch_3_10_12 + batch_1_10_17 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_12_18 + batch_3_10_12 + batch_3_12_13_19 = 1
 order_13: batch_13 + batch_0_4_13_14_16_19 + batch_5_9_13_15
   + batch_1_13_17 + batch_5_9_13_18 + batch_3_12_13_19 + batch_6_8_13_15
   + batch_6_8_13 = 1
 order_14: batch_0_4_13_14_16_19 + batch_0_4_14_15_16 + batch_0_4_5_14_16
   + batch_0_4_9_14_16 = 1
 order_15: batch_15 + batch_0_4_14_15_16 + batch_5_9_13_15 + batch_1_15_17
   + batch_6_8_13_15 = 1
 order_16: batch_0_4_13_14_16_19 + batch_0_4_14_15_16 + batch_0_4_5_14_16
   + batch_0_4_9_14_16 = 1
 order_17: batch_1_10_17 + batch_1_13_17 + batch_1_15_17 + batch_1_10_17
   + batch_1_17_19 = 1
 order_18: batch_18 + batch_3_12_18 + batch_5_9_13_18 + batch_5_9_18_19
   = 1
 order_19: batch_19 + batch_0_4_13_14_16_19 + batch_5_9_18_19
   + batch_3_12_13_19 + batch_1_17_19 = 1
Bounds
End
