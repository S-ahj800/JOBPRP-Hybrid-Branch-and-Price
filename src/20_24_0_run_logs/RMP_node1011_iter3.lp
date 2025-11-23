\ Model JOBPRP_RMP_1011
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x1ebe841a3cc2c3b5
Minimize
  83.6 batch_3 + 91.2 batch_5 + 77.2 batch_9 + 78.4 batch_10 + 89.6 batch_12
   + 70.4 batch_13 + 65.2 batch_14 + 77.2 batch_18 + 61.2 batch_19
   + 115.2 batch_2_7_11 + 127.2 batch_1_10_17 + 117.2 batch_0_4_14_15_16
   + 138 batch_9_12_14_18 + 127.2 batch_1_9_17 + 125.2 batch_1_13_17
   + 129.2 batch_5_12_18_19 + 137.2 batch_0_4_15_16_18
   + 113.2 batch_6_8_14_19 + 116 batch_3_9_18_19 + 125.2 batch_3_6_8
   + 121.2 batch_1_17_19 + 123.2 batch_5_6_8 + 105.2 batch_9_13_14_18
   + 123.2 batch_6_8_10_19 + 136 batch_9_12_13_18 + 127.2 batch_5_12_18
   + 127.2 batch_0_4_13_15_16 + 132 batch_9_12_13_14
   + 121.2 batch_3_9_10_19
Subject To
 order_0: batch_0_4_14_15_16 + batch_0_4_15_16_18 + batch_0_4_13_15_16 = 1
 order_1: batch_1_10_17 + batch_1_9_17 + batch_1_13_17 + batch_1_17_19 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3 + batch_3_9_18_19 + batch_3_6_8 + batch_3_9_10_19 = 1
 order_4: batch_0_4_14_15_16 + batch_0_4_15_16_18 + batch_0_4_13_15_16 = 1
 order_5: batch_5 + batch_5_12_18_19 + batch_5_6_8 + batch_5_12_18 = 1
 order_6: batch_6_8_14_19 + batch_3_6_8 + batch_5_6_8 + batch_6_8_10_19
   = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_6_8_14_19 + batch_3_6_8 + batch_5_6_8 + batch_6_8_10_19
   = 1
 order_9: batch_9 + batch_9_12_14_18 + batch_1_9_17 + batch_3_9_18_19
   + batch_9_13_14_18 + batch_9_12_13_18 + batch_9_12_13_14
   + batch_3_9_10_19 = 1
 order_10: batch_10 + batch_1_10_17 + batch_6_8_10_19 + batch_3_9_10_19
   = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_9_12_14_18 + batch_5_12_18_19
   + batch_9_12_13_18 + batch_5_12_18 + batch_9_12_13_14 = 1
 order_13: batch_13 + batch_1_13_17 + batch_9_13_14_18 + batch_9_12_13_18
   + batch_0_4_13_15_16 + batch_9_12_13_14 = 1
 order_14: batch_14 + batch_0_4_14_15_16 + batch_9_12_14_18
   + batch_6_8_14_19 + batch_9_13_14_18 + batch_9_12_13_14 = 1
 order_15: batch_0_4_14_15_16 + batch_0_4_15_16_18 + batch_0_4_13_15_16
   = 1
 order_16: batch_0_4_14_15_16 + batch_0_4_15_16_18 + batch_0_4_13_15_16
   = 1
 order_17: batch_1_10_17 + batch_1_9_17 + batch_1_13_17 + batch_1_17_19
   = 1
 order_18: batch_18 + batch_9_12_14_18 + batch_5_12_18_19
   + batch_0_4_15_16_18 + batch_3_9_18_19 + batch_9_13_14_18
   + batch_9_12_13_18 + batch_5_12_18 = 1
 order_19: batch_19 + batch_5_12_18_19 + batch_6_8_14_19 + batch_3_9_18_19
   + batch_1_17_19 + batch_6_8_10_19 + batch_3_9_10_19 = 1
Bounds
End
