\ Model JOBPRP_RMP_280
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x716f36635c94bbed
Minimize
  83.6 batch_3 + 91.2 batch_5 + 77.2 batch_9 + 78.4 batch_10 + 89.6 batch_12
   + 70.4 batch_13 + 74.8 batch_15 + 61.2 batch_19
   + 137.2 batch_0_4_13_14_16_19 + 123.2 batch_1_17_18 + 115.2 batch_2_7_11
   + 133.2 batch_5_10_12_19 + 117.2 batch_0_4_14_15_16
   + 143.2 batch_5_12_13_15 + 131.2 batch_9_10_12_13
   + 135.2 batch_5_9_13_15 + 127.2 batch_5_9_12_19
   + 130.4 batch_10_12_13_15 + 125.2 batch_3_9_12 + 126 batch_6_8_12
   + 121.2 batch_3_9_10_19 + 123.2 batch_5_6_8 + 127.2 batch_0_4_5_14_16
   + 118.4 batch_3_10_12 + 130 batch_6_8_15_19 + 123.2 batch_0_4_13_14_16
   + 111.2 batch_5_9_13_19 + 134 batch_9_12_13_15
Subject To
 order_0: batch_0_4_13_14_16_19 + batch_0_4_14_15_16 + batch_0_4_5_14_16
   + batch_0_4_13_14_16 = 1
 order_1: batch_1_17_18 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3 + batch_3_9_12 + batch_3_9_10_19 + batch_3_10_12 = 1
 order_4: batch_0_4_13_14_16_19 + batch_0_4_14_15_16 + batch_0_4_5_14_16
   + batch_0_4_13_14_16 = 1
 order_5: batch_5 + batch_5_10_12_19 + batch_5_12_13_15 + batch_5_9_13_15
   + batch_5_9_12_19 + batch_5_6_8 + batch_0_4_5_14_16 + batch_5_9_13_19
   = 1
 order_6: batch_6_8_12 + batch_5_6_8 + batch_6_8_15_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_6_8_12 + batch_5_6_8 + batch_6_8_15_19 = 1
 order_9: batch_9 + batch_9_10_12_13 + batch_5_9_13_15 + batch_5_9_12_19
   + batch_3_9_12 + batch_3_9_10_19 + batch_5_9_13_19 + batch_9_12_13_15
   = 1
 order_10: batch_10 + batch_5_10_12_19 + batch_9_10_12_13
   + batch_10_12_13_15 + batch_3_9_10_19 + batch_3_10_12 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_5_10_12_19 + batch_5_12_13_15
   + batch_9_10_12_13 + batch_5_9_12_19 + batch_10_12_13_15 + batch_3_9_12
   + batch_6_8_12 + batch_3_10_12 + batch_9_12_13_15 = 1
 order_13: batch_13 + batch_0_4_13_14_16_19 + batch_5_12_13_15
   + batch_9_10_12_13 + batch_5_9_13_15 + batch_10_12_13_15
   + batch_0_4_13_14_16 + batch_5_9_13_19 + batch_9_12_13_15 = 1
 order_14: batch_0_4_13_14_16_19 + batch_0_4_14_15_16 + batch_0_4_5_14_16
   + batch_0_4_13_14_16 = 1
 order_15: batch_15 + batch_0_4_14_15_16 + batch_5_12_13_15
   + batch_5_9_13_15 + batch_10_12_13_15 + batch_6_8_15_19
   + batch_9_12_13_15 = 1
 order_16: batch_0_4_13_14_16_19 + batch_0_4_14_15_16 + batch_0_4_5_14_16
   + batch_0_4_13_14_16 = 1
 order_17: batch_1_17_18 = 1
 order_18: batch_1_17_18 = 1
 order_19: batch_19 + batch_0_4_13_14_16_19 + batch_5_10_12_19
   + batch_5_9_12_19 + batch_3_9_10_19 + batch_6_8_15_19 + batch_5_9_13_19
   = 1
Bounds
End
