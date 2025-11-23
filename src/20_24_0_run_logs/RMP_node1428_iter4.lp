\ Model JOBPRP_RMP_1428
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x3d4f273dac736a18
Minimize
  91.2 batch_5 + 89.2 batch_6 + 78.4 batch_10 + 70.4 batch_13
   + 61.2 batch_19 + 123.2 batch_1_17_18 + 115.2 batch_2_7_11
   + 115.6 batch_3_12_15 + 105.2 batch_8_9_13_14_19
   + 129.2 batch_0_4_10_13_16 + 135.2 batch_0_4_5_13_16
   + 141.2 batch_0_4_6_16_19 + 133.2 batch_0_4_6_16 + 115.2 batch_0_4_10_16
   + 125.2 batch_5_8_9_14 + 121.2 batch_5_10_13_19 + 109.2 batch_6_10
   + 115.2 batch_6_10_19
Subject To
 order_0: batch_0_4_10_13_16 + batch_0_4_5_13_16 + batch_0_4_6_16_19
   + batch_0_4_6_16 + batch_0_4_10_16 = 1
 order_1: batch_1_17_18 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_15 = 1
 order_4: batch_0_4_10_13_16 + batch_0_4_5_13_16 + batch_0_4_6_16_19
   + batch_0_4_6_16 + batch_0_4_10_16 = 1
 order_5: batch_5 + batch_0_4_5_13_16 + batch_5_8_9_14 + batch_5_10_13_19
   = 1
 order_6: batch_6 + batch_0_4_6_16_19 + batch_0_4_6_16 + batch_6_10
   + batch_6_10_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8_9_13_14_19 + batch_5_8_9_14 = 1
 order_9: batch_8_9_13_14_19 + batch_5_8_9_14 = 1
 order_10: batch_10 + batch_0_4_10_13_16 + batch_0_4_10_16
   + batch_5_10_13_19 + batch_6_10 + batch_6_10_19 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_12_15 = 1
 order_13: batch_13 + batch_8_9_13_14_19 + batch_0_4_10_13_16
   + batch_0_4_5_13_16 + batch_5_10_13_19 = 1
 order_14: batch_8_9_13_14_19 + batch_5_8_9_14 = 1
 order_15: batch_3_12_15 = 1
 order_16: batch_0_4_10_13_16 + batch_0_4_5_13_16 + batch_0_4_6_16_19
   + batch_0_4_6_16 + batch_0_4_10_16 = 1
 order_17: batch_1_17_18 = 1
 order_18: batch_1_17_18 = 1
 order_19: batch_19 + batch_8_9_13_14_19 + batch_0_4_6_16_19
   + batch_5_10_13_19 + batch_6_10_19 = 1
Bounds
End
