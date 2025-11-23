\ Model JOBPRP_RMP_1784
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xaa0ae2f80b54ae27
Minimize
  91.2 batch_5 + 89.2 batch_6 + 77.2 batch_9 + 78.4 batch_10 + 70.4 batch_13
   + 77.2 batch_18 + 61.2 batch_19 + 115.2 batch_2_7_11
   + 115.6 batch_3_12_15 + 137.2 batch_0_4_9_13_16 + 107.2 batch_6_9_18_19
   + 111.2 batch_8_13_14_18_19 + 135.2 batch_0_4_5_13_16
   + 127.2 batch_1_9_17 + 117.2 batch_5_9_13_18 + 119.2 batch_5_8_10_14
   + 115.2 batch_5_8_13_14 + 133.2 batch_0_4_6_16 + 121.2 batch_1_17_19
   + 141.2 batch_0_4_6_16_19 + 123.2 batch_5_10_13_18
   + 131.2 batch_0_4_16_18 + 129.2 batch_0_4_10_13_16
   + 133.2 batch_0_4_13_16_18 + 105.2 batch_8_13_14_18
Subject To
 order_0: batch_0_4_9_13_16 + batch_0_4_5_13_16 + batch_0_4_6_16
   + batch_0_4_6_16_19 + batch_0_4_16_18 + batch_0_4_10_13_16
   + batch_0_4_13_16_18 = 1
 order_1: batch_1_9_17 + batch_1_17_19 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_15 = 1
 order_4: batch_0_4_9_13_16 + batch_0_4_5_13_16 + batch_0_4_6_16
   + batch_0_4_6_16_19 + batch_0_4_16_18 + batch_0_4_10_13_16
   + batch_0_4_13_16_18 = 1
 order_5: batch_5 + batch_0_4_5_13_16 + batch_5_9_13_18 + batch_5_8_10_14
   + batch_5_8_13_14 + batch_5_10_13_18 = 1
 order_6: batch_6 + batch_6_9_18_19 + batch_0_4_6_16 + batch_0_4_6_16_19
   = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8_13_14_18_19 + batch_5_8_10_14 + batch_5_8_13_14
   + batch_8_13_14_18 = 1
 order_9: batch_9 + batch_0_4_9_13_16 + batch_6_9_18_19 + batch_1_9_17
   + batch_5_9_13_18 = 1
 order_10: batch_10 + batch_5_8_10_14 + batch_5_10_13_18
   + batch_0_4_10_13_16 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_12_15 = 1
 order_13: batch_13 + batch_0_4_9_13_16 + batch_8_13_14_18_19
   + batch_0_4_5_13_16 + batch_5_9_13_18 + batch_5_8_13_14
   + batch_5_10_13_18 + batch_0_4_10_13_16 + batch_0_4_13_16_18
   + batch_8_13_14_18 = 1
 order_14: batch_8_13_14_18_19 + batch_5_8_10_14 + batch_5_8_13_14
   + batch_8_13_14_18 = 1
 order_15: batch_3_12_15 = 1
 order_16: batch_0_4_9_13_16 + batch_0_4_5_13_16 + batch_0_4_6_16
   + batch_0_4_6_16_19 + batch_0_4_16_18 + batch_0_4_10_13_16
   + batch_0_4_13_16_18 = 1
 order_17: batch_1_9_17 + batch_1_17_19 = 1
 order_18: batch_18 + batch_6_9_18_19 + batch_8_13_14_18_19
   + batch_5_9_13_18 + batch_5_10_13_18 + batch_0_4_16_18
   + batch_0_4_13_16_18 + batch_8_13_14_18 = 1
 order_19: batch_19 + batch_6_9_18_19 + batch_8_13_14_18_19 + batch_1_17_19
   + batch_0_4_6_16_19 = 1
Bounds
End
