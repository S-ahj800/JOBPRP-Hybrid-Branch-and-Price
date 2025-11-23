\ Model JOBPRP_RMP_2164
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x716f36635c94bbed
Minimize
  91.2 batch_5 + 89.2 batch_6 + 72.4 batch_8 + 77.2 batch_9 + 89.6 batch_12
   + 65.2 batch_14 + 74.8 batch_15 + 61.2 batch_19 + 123.2 batch_1_17_18
   + 115.2 batch_2_7_11 + 117.2 batch_0_4_14_15_16
   + 115.2 batch_0_4_8_14_16 + 134 batch_6_12_15_19
   + 111.2 batch_3_10_13_19 + 119.2 batch_8_12_15 + 127.2 batch_0_4_12_16
   + 115.2 batch_3_10_13_14 + 138.8 batch_0_4_12_16_19 + 126 batch_6_9_12
   + 128.4 batch_3_10_13_15 + 127.2 batch_0_4_5_16
   + 127.2 batch_0_4_5_14_16 + 120 batch_0_4_8_16_19 + 125.2 batch_5_8_9_14
   + 133.2 batch_5_8_12 + 133.2 batch_0_4_6_16 + 119.2 batch_5_8_9
   + 111.2 batch_0_4_8_16
Subject To
 order_0: batch_0_4_14_15_16 + batch_0_4_8_14_16 + batch_0_4_12_16
   + batch_0_4_12_16_19 + batch_0_4_5_16 + batch_0_4_5_14_16
   + batch_0_4_8_16_19 + batch_0_4_6_16 + batch_0_4_8_16 = 1
 order_1: batch_1_17_18 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_10_13_19 + batch_3_10_13_14 + batch_3_10_13_15 = 1
 order_4: batch_0_4_14_15_16 + batch_0_4_8_14_16 + batch_0_4_12_16
   + batch_0_4_12_16_19 + batch_0_4_5_16 + batch_0_4_5_14_16
   + batch_0_4_8_16_19 + batch_0_4_6_16 + batch_0_4_8_16 = 1
 order_5: batch_5 + batch_0_4_5_16 + batch_0_4_5_14_16 + batch_5_8_9_14
   + batch_5_8_12 + batch_5_8_9 = 1
 order_6: batch_6 + batch_6_12_15_19 + batch_6_9_12 + batch_0_4_6_16 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_0_4_8_14_16 + batch_8_12_15 + batch_0_4_8_16_19
   + batch_5_8_9_14 + batch_5_8_12 + batch_5_8_9 + batch_0_4_8_16 = 1
 order_9: batch_9 + batch_6_9_12 + batch_5_8_9_14 + batch_5_8_9 = 1
 order_10: batch_3_10_13_19 + batch_3_10_13_14 + batch_3_10_13_15 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_6_12_15_19 + batch_8_12_15 + batch_0_4_12_16
   + batch_0_4_12_16_19 + batch_6_9_12 + batch_5_8_12 = 1
 order_13: batch_3_10_13_19 + batch_3_10_13_14 + batch_3_10_13_15 = 1
 order_14: batch_14 + batch_0_4_14_15_16 + batch_0_4_8_14_16
   + batch_3_10_13_14 + batch_0_4_5_14_16 + batch_5_8_9_14 = 1
 order_15: batch_15 + batch_0_4_14_15_16 + batch_6_12_15_19 + batch_8_12_15
   + batch_3_10_13_15 = 1
 order_16: batch_0_4_14_15_16 + batch_0_4_8_14_16 + batch_0_4_12_16
   + batch_0_4_12_16_19 + batch_0_4_5_16 + batch_0_4_5_14_16
   + batch_0_4_8_16_19 + batch_0_4_6_16 + batch_0_4_8_16 = 1
 order_17: batch_1_17_18 = 1
 order_18: batch_1_17_18 = 1
 order_19: batch_19 + batch_6_12_15_19 + batch_3_10_13_19
   + batch_0_4_12_16_19 + batch_0_4_8_16_19 = 1
Bounds
End
