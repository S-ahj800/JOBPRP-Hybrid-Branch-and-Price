\ Model JOBPRP_RMP_959
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x86d229f62be0318e
Minimize
  78.4 batch_10 + 89.6 batch_12 + 70.4 batch_13 + 74.8 batch_15
   + 77.2 batch_18 + 61.2 batch_19 + 115.2 batch_2_7_11
   + 133.2 batch_0_4_13_16_18 + 125.2 batch_1_13_17 + 127.2 batch_0_4_12_16
   + 137.2 batch_0_4_15_16_18 + 127.2 batch_0_4_5_14_16 + 126 batch_6_8_12
   + 116 batch_3_9_18_19 + 133.2 batch_1_15_17 + 121.2 batch_1_17_19
   + 123.2 batch_6_8_10_19 + 117.2 batch_5_13_14_18
   + 119.2 batch_5_10_13_14 + 130 batch_6_8_15_19
   + 127.2 batch_0_4_13_15_16 + 139.2 batch_12_13_15_18
   + 121.2 batch_3_9_10 + 123.2 batch_6_8_10 + 116 batch_3_9_18
   + 121.2 batch_3_9_10_19 + 123.2 batch_5_10_14_18
Subject To
 order_0: batch_0_4_13_16_18 + batch_0_4_12_16 + batch_0_4_15_16_18
   + batch_0_4_5_14_16 + batch_0_4_13_15_16 = 1
 order_1: batch_1_13_17 + batch_1_15_17 + batch_1_17_19 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_9_18_19 + batch_3_9_10 + batch_3_9_18 + batch_3_9_10_19
   = 1
 order_4: batch_0_4_13_16_18 + batch_0_4_12_16 + batch_0_4_15_16_18
   + batch_0_4_5_14_16 + batch_0_4_13_15_16 = 1
 order_5: batch_0_4_5_14_16 + batch_5_13_14_18 + batch_5_10_13_14
   + batch_5_10_14_18 = 1
 order_6: batch_6_8_12 + batch_6_8_10_19 + batch_6_8_15_19 + batch_6_8_10
   = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_6_8_12 + batch_6_8_10_19 + batch_6_8_15_19 + batch_6_8_10
   = 1
 order_9: batch_3_9_18_19 + batch_3_9_10 + batch_3_9_18 + batch_3_9_10_19
   = 1
 order_10: batch_10 + batch_6_8_10_19 + batch_5_10_13_14 + batch_3_9_10
   + batch_6_8_10 + batch_3_9_10_19 + batch_5_10_14_18 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_0_4_12_16 + batch_6_8_12 + batch_12_13_15_18
   = 1
 order_13: batch_13 + batch_0_4_13_16_18 + batch_1_13_17 + batch_5_13_14_18
   + batch_5_10_13_14 + batch_0_4_13_15_16 + batch_12_13_15_18 = 1
 order_14: batch_0_4_5_14_16 + batch_5_13_14_18 + batch_5_10_13_14
   + batch_5_10_14_18 = 1
 order_15: batch_15 + batch_0_4_15_16_18 + batch_1_15_17 + batch_6_8_15_19
   + batch_0_4_13_15_16 + batch_12_13_15_18 = 1
 order_16: batch_0_4_13_16_18 + batch_0_4_12_16 + batch_0_4_15_16_18
   + batch_0_4_5_14_16 + batch_0_4_13_15_16 = 1
 order_17: batch_1_13_17 + batch_1_15_17 + batch_1_17_19 = 1
 order_18: batch_18 + batch_0_4_13_16_18 + batch_0_4_15_16_18
   + batch_3_9_18_19 + batch_5_13_14_18 + batch_12_13_15_18 + batch_3_9_18
   + batch_5_10_14_18 = 1
 order_19: batch_19 + batch_3_9_18_19 + batch_1_17_19 + batch_6_8_10_19
   + batch_6_8_15_19 + batch_3_9_10_19 = 1
Bounds
End
