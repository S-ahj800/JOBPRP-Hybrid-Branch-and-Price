\ Model JOBPRP_RMP_1496
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x3d4f273dac736a18
Minimize
  91.2 batch_5 + 72.4 batch_8 + 77.2 batch_9 + 78.4 batch_10 + 65.2 batch_14
   + 123.2 batch_1_17_18 + 115.2 batch_2_7_11 + 117.2 batch_0_4_14_15_16
   + 119.2 batch_5_6_9_19 + 125.2 batch_5_6_10_19 + 116.4 batch_3_12_13
   + 117.2 batch_9_10_14 + 119.2 batch_5_8_10_14 + 111.2 batch_6_9_14_19
   + 129.2 batch_5_9_10_14 + 123.2 batch_6_9_10_19
   + 139.2 batch_0_4_9_15_16 + 113.2 batch_0_4_15_16
Subject To
 order_0: batch_0_4_14_15_16 + batch_0_4_9_15_16 + batch_0_4_15_16 = 1
 order_1: batch_1_17_18 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_13 = 1
 order_4: batch_0_4_14_15_16 + batch_0_4_9_15_16 + batch_0_4_15_16 = 1
 order_5: batch_5 + batch_5_6_9_19 + batch_5_6_10_19 + batch_5_8_10_14
   + batch_5_9_10_14 = 1
 order_6: batch_5_6_9_19 + batch_5_6_10_19 + batch_6_9_14_19
   + batch_6_9_10_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_5_8_10_14 = 1
 order_9: batch_9 + batch_5_6_9_19 + batch_9_10_14 + batch_6_9_14_19
   + batch_5_9_10_14 + batch_6_9_10_19 + batch_0_4_9_15_16 = 1
 order_10: batch_10 + batch_5_6_10_19 + batch_9_10_14 + batch_5_8_10_14
   + batch_5_9_10_14 + batch_6_9_10_19 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_12_13 = 1
 order_13: batch_3_12_13 = 1
 order_14: batch_14 + batch_0_4_14_15_16 + batch_9_10_14 + batch_5_8_10_14
   + batch_6_9_14_19 + batch_5_9_10_14 = 1
 order_15: batch_0_4_14_15_16 + batch_0_4_9_15_16 + batch_0_4_15_16 = 1
 order_16: batch_0_4_14_15_16 + batch_0_4_9_15_16 + batch_0_4_15_16 = 1
 order_17: batch_1_17_18 = 1
 order_18: batch_1_17_18 = 1
 order_19: batch_5_6_9_19 + batch_5_6_10_19 + batch_6_9_14_19
   + batch_6_9_10_19 = 1
Bounds
End
