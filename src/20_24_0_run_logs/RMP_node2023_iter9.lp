\ Model JOBPRP_RMP_2023
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xd35421f379cc5a3f
Minimize
  91.2 batch_5 + 72.4 batch_8 + 77.2 batch_9 + 78.4 batch_10 + 89.6 batch_12
   + 70.4 batch_13 + 65.2 batch_14 + 74.8 batch_15 + 61.2 batch_19
   + 123.2 batch_1_17_18 + 115.2 batch_2_7_11 + 133.2 batch_5_10_12_19
   + 105.2 batch_8_9_13_14_19 + 123.2 batch_3_6_13_19 + 123.2 batch_3_5_6
   + 127.2 batch_5_9_12_19 + 119.2 batch_8_12_15 + 127.2 batch_0_4_12_16
   + 124 batch_8_9_12_19 + 138.8 batch_0_4_12_16_19 + 121.2 batch_8_9_10_13
   + 122.4 batch_8_10_12 + 124 batch_3_6_9 + 135.2 batch_5_9_13_15
   + 119.2 batch_5_8_9_13 + 119.2 batch_5_10_13_14 + 128.4 batch_10_12_15
   + 125.2 batch_3_6_10 + 127.2 batch_0_4_13_15_16 + 119.2 batch_5_8_10_14
   + 139.2 batch_5_9_14_15 + 139.2 batch_0_4_9_15_16
   + 127.2 batch_3_6_14_19 + 126 batch_8_12_15_19 + 129.2 batch_5_10_14_15
   + 128 batch_9_12_15_19 + 133.2 batch_5_12_15_19
Subject To
 order_0: batch_0_4_12_16 + batch_0_4_12_16_19 + batch_0_4_13_15_16
   + batch_0_4_9_15_16 = 1
 order_1: batch_1_17_18 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_6_13_19 + batch_3_5_6 + batch_3_6_9 + batch_3_6_10
   + batch_3_6_14_19 = 1
 order_4: batch_0_4_12_16 + batch_0_4_12_16_19 + batch_0_4_13_15_16
   + batch_0_4_9_15_16 = 1
 order_5: batch_5 + batch_5_10_12_19 + batch_3_5_6 + batch_5_9_12_19
   + batch_5_9_13_15 + batch_5_8_9_13 + batch_5_10_13_14 + batch_5_8_10_14
   + batch_5_9_14_15 + batch_5_10_14_15 + batch_5_12_15_19 = 1
 order_6: batch_3_6_13_19 + batch_3_5_6 + batch_3_6_9 + batch_3_6_10
   + batch_3_6_14_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_8_9_13_14_19 + batch_8_12_15 + batch_8_9_12_19
   + batch_8_9_10_13 + batch_8_10_12 + batch_5_8_9_13 + batch_5_8_10_14
   + batch_8_12_15_19 = 1
 order_9: batch_9 + batch_8_9_13_14_19 + batch_5_9_12_19 + batch_8_9_12_19
   + batch_8_9_10_13 + batch_3_6_9 + batch_5_9_13_15 + batch_5_8_9_13
   + batch_5_9_14_15 + batch_0_4_9_15_16 + batch_9_12_15_19 = 1
 order_10: batch_10 + batch_5_10_12_19 + batch_8_9_10_13 + batch_8_10_12
   + batch_5_10_13_14 + batch_10_12_15 + batch_3_6_10 + batch_5_8_10_14
   + batch_5_10_14_15 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_5_10_12_19 + batch_5_9_12_19 + batch_8_12_15
   + batch_0_4_12_16 + batch_8_9_12_19 + batch_0_4_12_16_19 + batch_8_10_12
   + batch_10_12_15 + batch_8_12_15_19 + batch_9_12_15_19
   + batch_5_12_15_19 = 1
 order_13: batch_13 + batch_8_9_13_14_19 + batch_3_6_13_19
   + batch_8_9_10_13 + batch_5_9_13_15 + batch_5_8_9_13 + batch_5_10_13_14
   + batch_0_4_13_15_16 = 1
 order_14: batch_14 + batch_8_9_13_14_19 + batch_5_10_13_14
   + batch_5_8_10_14 + batch_5_9_14_15 + batch_3_6_14_19 + batch_5_10_14_15
   = 1
 order_15: batch_15 + batch_8_12_15 + batch_5_9_13_15 + batch_10_12_15
   + batch_0_4_13_15_16 + batch_5_9_14_15 + batch_0_4_9_15_16
   + batch_8_12_15_19 + batch_5_10_14_15 + batch_9_12_15_19
   + batch_5_12_15_19 = 1
 order_16: batch_0_4_12_16 + batch_0_4_12_16_19 + batch_0_4_13_15_16
   + batch_0_4_9_15_16 = 1
 order_17: batch_1_17_18 = 1
 order_18: batch_1_17_18 = 1
 order_19: batch_19 + batch_5_10_12_19 + batch_8_9_13_14_19
   + batch_3_6_13_19 + batch_5_9_12_19 + batch_8_9_12_19
   + batch_0_4_12_16_19 + batch_3_6_14_19 + batch_8_12_15_19
   + batch_9_12_15_19 + batch_5_12_15_19 = 1
Bounds
End
