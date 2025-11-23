\ Model JOBPRP_RMP_1035
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x12e3d99724a08569
Minimize
  72.4 batch_8 + 77.2 batch_9 + 78.4 batch_10 + 65.2 batch_14
   + 74.8 batch_15 + 61.2 batch_19 + 123.2 batch_1_17_18
   + 115.2 batch_2_7_11 + 121.2 batch_3_5_12 + 115.2 batch_0_4_8_14_16
   + 141.2 batch_9_10_14_15_19 + 131.2 batch_0_4_9_16_19
   + 99.2 batch_8_9_14_19 + 123.2 batch_6_9_10_13 + 105.2 batch_6_9_13_19
   + 134 batch_6_13_14_15_19 + 122 batch_8_9_15 + 125.2 batch_8_10_15_19
   + 130 batch_6_9_13_15 + 127.2 batch_8_10_14_15 + 133.2 batch_6_10_13_15
   + 137.2 batch_8_9_10_15 + 120 batch_0_4_8_16_19
Subject To
 order_0: batch_0_4_8_14_16 + batch_0_4_9_16_19 + batch_0_4_8_16_19 = 1
 order_1: batch_1_17_18 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_5_12 = 1
 order_4: batch_0_4_8_14_16 + batch_0_4_9_16_19 + batch_0_4_8_16_19 = 1
 order_5: batch_3_5_12 = 1
 order_6: batch_6_9_10_13 + batch_6_9_13_19 + batch_6_13_14_15_19
   + batch_6_9_13_15 + batch_6_10_13_15 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_0_4_8_14_16 + batch_8_9_14_19 + batch_8_9_15
   + batch_8_10_15_19 + batch_8_10_14_15 + batch_8_9_10_15
   + batch_0_4_8_16_19 = 1
 order_9: batch_9 + batch_9_10_14_15_19 + batch_0_4_9_16_19
   + batch_8_9_14_19 + batch_6_9_10_13 + batch_6_9_13_19 + batch_8_9_15
   + batch_6_9_13_15 + batch_8_9_10_15 = 1
 order_10: batch_10 + batch_9_10_14_15_19 + batch_6_9_10_13
   + batch_8_10_15_19 + batch_8_10_14_15 + batch_6_10_13_15
   + batch_8_9_10_15 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_5_12 = 1
 order_13: batch_6_9_10_13 + batch_6_9_13_19 + batch_6_13_14_15_19
   + batch_6_9_13_15 + batch_6_10_13_15 = 1
 order_14: batch_14 + batch_0_4_8_14_16 + batch_9_10_14_15_19
   + batch_8_9_14_19 + batch_6_13_14_15_19 + batch_8_10_14_15 = 1
 order_15: batch_15 + batch_9_10_14_15_19 + batch_6_13_14_15_19
   + batch_8_9_15 + batch_8_10_15_19 + batch_6_9_13_15 + batch_8_10_14_15
   + batch_6_10_13_15 + batch_8_9_10_15 = 1
 order_16: batch_0_4_8_14_16 + batch_0_4_9_16_19 + batch_0_4_8_16_19 = 1
 order_17: batch_1_17_18 = 1
 order_18: batch_1_17_18 = 1
 order_19: batch_19 + batch_9_10_14_15_19 + batch_0_4_9_16_19
   + batch_8_9_14_19 + batch_6_9_13_19 + batch_6_13_14_15_19
   + batch_8_10_15_19 + batch_0_4_8_16_19 = 1
Bounds
End
