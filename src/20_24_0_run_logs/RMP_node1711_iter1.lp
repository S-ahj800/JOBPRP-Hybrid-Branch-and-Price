\ Model JOBPRP_RMP_1711
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x2aa6ec2e5f74e85
Minimize
  98 batch_1 + 91.2 batch_5 + 72.4 batch_8 + 89.6 batch_12 + 74.8 batch_15
   + 89.2 batch_17 + 77.2 batch_18 + 119.2 batch_0_4_10_14_15
   + 115.2 batch_2_7_11 + 117.2 batch_1_5_18 + 119.2 batch_3_8_16_19
   + 129.2 batch_1_5_8 + 129.2 batch_5_12_17 + 123.2 batch_5_15_17
   + 119.2 batch_8_12_15 + 121.2 batch_3_5_16_19 + 134 batch_8_12_18
   + 121.2 batch_1_8_18 + 137.2 batch_3_16_17_19 + 133.2 batch_1_12_18
   + 111.2 batch_0_4_10_14 + 105.2 batch_6_9_13
   + 115.1999966842105 batch_2_7_11
Subject To
 order_0: batch_0_4_10_14_15 + batch_0_4_10_14 = 1
 order_1: batch_1 + batch_1_5_18 + batch_1_5_8 + batch_1_8_18
   + batch_1_12_18 = 1
 order_2: batch_2_7_11 + batch_2_7_11 = 1
 order_3: batch_3_8_16_19 + batch_3_5_16_19 + batch_3_16_17_19 = 1
 order_4: batch_0_4_10_14_15 + batch_0_4_10_14 = 1
 order_5: batch_5 + batch_1_5_18 + batch_1_5_8 + batch_5_12_17
   + batch_5_15_17 + batch_3_5_16_19 = 1
 order_6: batch_6_9_13 = 1
 order_7: batch_2_7_11 + batch_2_7_11 = 1
 order_8: batch_8 + batch_3_8_16_19 + batch_1_5_8 + batch_8_12_15
   + batch_8_12_18 + batch_1_8_18 = 1
 order_9: batch_6_9_13 = 1
 order_10: batch_0_4_10_14_15 + batch_0_4_10_14 = 1
 order_11: batch_2_7_11 + batch_2_7_11 = 1
 order_12: batch_12 + batch_5_12_17 + batch_8_12_15 + batch_8_12_18
   + batch_1_12_18 = 1
 order_13: batch_6_9_13 = 1
 order_14: batch_0_4_10_14_15 + batch_0_4_10_14 = 1
 order_15: batch_15 + batch_0_4_10_14_15 + batch_5_15_17 + batch_8_12_15
   = 1
 order_16: batch_3_8_16_19 + batch_3_5_16_19 + batch_3_16_17_19 = 1
 order_17: batch_17 + batch_5_12_17 + batch_5_15_17 + batch_3_16_17_19 = 1
 order_18: batch_18 + batch_1_5_18 + batch_8_12_18 + batch_1_8_18
   + batch_1_12_18 = 1
 order_19: batch_3_8_16_19 + batch_3_5_16_19 + batch_3_16_17_19 = 1
Bounds
End
