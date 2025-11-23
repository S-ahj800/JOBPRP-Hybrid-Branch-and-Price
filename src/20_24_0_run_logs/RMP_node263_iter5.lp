\ Model JOBPRP_RMP_263
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xc1c969ffbbc3f1
Minimize
  91.2 batch_5 + 78.4 batch_10 + 89.6 batch_12 + 70.4 batch_13
   + 65.2 batch_14 + 61.2 batch_19 + 123.2 batch_1_17_18
   + 115.2 batch_2_7_11 + 133.2 batch_5_10_12_19 + 115.6 batch_3_12_15
   + 113.2 batch_6_8_14_19 + 126 batch_6_8_12 + 123.2 batch_5_6_8
   + 133.2 batch_3_10_15_19 + 123.2 batch_6_8_10_19
   + 137.2 batch_3_10_14_15 + 129.2 batch_0_4_9_14_16
   + 125.2 batch_5_10_13_14_19 + 131.2 batch_0_4_9_16_19
   + 126.4 batch_3_10_15 + 116.3999988695652 batch_10_12_13
   + 119.2 batch_5_10_13 + 121.2 batch_5_10_13_19 + 119.2 batch_5_10_13_14
Subject To
 order_0: batch_0_4_9_14_16 + batch_0_4_9_16_19 = 1
 order_1: batch_1_17_18 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_15 + batch_3_10_15_19 + batch_3_10_14_15
   + batch_3_10_15 = 1
 order_4: batch_0_4_9_14_16 + batch_0_4_9_16_19 = 1
 order_5: batch_5 + batch_5_10_12_19 + batch_5_6_8 + batch_5_10_13_14_19
   + batch_5_10_13 + batch_5_10_13_19 + batch_5_10_13_14 = 1
 order_6: batch_6_8_14_19 + batch_6_8_12 + batch_5_6_8 + batch_6_8_10_19
   = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_6_8_14_19 + batch_6_8_12 + batch_5_6_8 + batch_6_8_10_19
   = 1
 order_9: batch_0_4_9_14_16 + batch_0_4_9_16_19 = 1
 order_10: batch_10 + batch_5_10_12_19 + batch_3_10_15_19 + batch_6_8_10_19
   + batch_3_10_14_15 + batch_5_10_13_14_19 + batch_3_10_15
   + batch_10_12_13 + batch_5_10_13 + batch_5_10_13_19 + batch_5_10_13_14
   = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_5_10_12_19 + batch_3_12_15 + batch_6_8_12
   + batch_10_12_13 = 1
 order_13: batch_13 + batch_5_10_13_14_19 + batch_10_12_13 + batch_5_10_13
   + batch_5_10_13_19 + batch_5_10_13_14 = 1
 order_14: batch_14 + batch_6_8_14_19 + batch_3_10_14_15
   + batch_0_4_9_14_16 + batch_5_10_13_14_19 + batch_5_10_13_14 = 1
 order_15: batch_3_12_15 + batch_3_10_15_19 + batch_3_10_14_15
   + batch_3_10_15 = 1
 order_16: batch_0_4_9_14_16 + batch_0_4_9_16_19 = 1
 order_17: batch_1_17_18 = 1
 order_18: batch_1_17_18 = 1
 order_19: batch_19 + batch_5_10_12_19 + batch_6_8_14_19 + batch_3_10_15_19
   + batch_6_8_10_19 + batch_5_10_13_14_19 + batch_0_4_9_16_19
   + batch_5_10_13_19 = 1
Bounds
End
