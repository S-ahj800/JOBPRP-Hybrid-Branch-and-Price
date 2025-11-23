\ Model JOBPRP_RMP_1491
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x976f74cdceb3c356
Minimize
  91.2 batch_5 + 72.4 batch_8 + 77.2 batch_9 + 78.4 batch_10 + 70.4 batch_13
   + 65.2 batch_14 + 74.8 batch_15 + 123.2 batch_1_17_18
   + 115.2 batch_2_7_11 + 121.2 batch_3_5_12 + 117.2 batch_0_4_14_15_16
   + 115.2 batch_0_4_8_14_16 + 119.2 batch_5_6_9_19 + 125.2 batch_5_6_10_19
   + 137.2 batch_0_4_9_13_16 + 125.2 batch_5_9_10_13
   + 127.2 batch_0_4_13_15_16 + 131.2 batch_5_6_15_19
   + 127.2 batch_8_10_14_15 + 117.2 batch_9_10_14 + 118.4 batch_3_10_12
   + 119.2 batch_5_8_10_14 + 111.2 batch_6_9_14_19 + 117.2 batch_5_9_13_14
   + 122 batch_8_9_15 + 137.2 batch_8_9_10_15 + 81.2 batch_13_14
   + 83.2 batch_8_14
Subject To
 order_0: batch_0_4_14_15_16 + batch_0_4_8_14_16 + batch_0_4_9_13_16
   + batch_0_4_13_15_16 = 1
 order_1: batch_1_17_18 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_5_12 + batch_3_10_12 = 1
 order_4: batch_0_4_14_15_16 + batch_0_4_8_14_16 + batch_0_4_9_13_16
   + batch_0_4_13_15_16 = 1
 order_5: batch_5 + batch_3_5_12 + batch_5_6_9_19 + batch_5_6_10_19
   + batch_5_9_10_13 + batch_5_6_15_19 + batch_5_8_10_14 + batch_5_9_13_14
   = 1
 order_6: batch_5_6_9_19 + batch_5_6_10_19 + batch_5_6_15_19
   + batch_6_9_14_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_0_4_8_14_16 + batch_8_10_14_15 + batch_5_8_10_14
   + batch_8_9_15 + batch_8_9_10_15 + batch_8_14 = 1
 order_9: batch_9 + batch_5_6_9_19 + batch_0_4_9_13_16 + batch_5_9_10_13
   + batch_9_10_14 + batch_6_9_14_19 + batch_5_9_13_14 + batch_8_9_15
   + batch_8_9_10_15 = 1
 order_10: batch_10 + batch_5_6_10_19 + batch_5_9_10_13 + batch_8_10_14_15
   + batch_9_10_14 + batch_3_10_12 + batch_5_8_10_14 + batch_8_9_10_15 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_5_12 + batch_3_10_12 = 1
 order_13: batch_13 + batch_0_4_9_13_16 + batch_5_9_10_13
   + batch_0_4_13_15_16 + batch_5_9_13_14 + batch_13_14 = 1
 order_14: batch_14 + batch_0_4_14_15_16 + batch_0_4_8_14_16
   + batch_8_10_14_15 + batch_9_10_14 + batch_5_8_10_14 + batch_6_9_14_19
   + batch_5_9_13_14 + batch_13_14 + batch_8_14 = 1
 order_15: batch_15 + batch_0_4_14_15_16 + batch_0_4_13_15_16
   + batch_5_6_15_19 + batch_8_10_14_15 + batch_8_9_15 + batch_8_9_10_15
   = 1
 order_16: batch_0_4_14_15_16 + batch_0_4_8_14_16 + batch_0_4_9_13_16
   + batch_0_4_13_15_16 = 1
 order_17: batch_1_17_18 = 1
 order_18: batch_1_17_18 = 1
 order_19: batch_5_6_9_19 + batch_5_6_10_19 + batch_5_6_15_19
   + batch_6_9_14_19 = 1
Bounds
End
