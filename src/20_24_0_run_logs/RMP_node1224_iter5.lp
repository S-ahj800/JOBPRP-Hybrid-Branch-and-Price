\ Model JOBPRP_RMP_1224
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xa1ac806dc720a0f5
Minimize
  98 batch_1 + 77.2 batch_9 + 78.4 batch_10 + 65.2 batch_14 + 74.8 batch_15
   + 77.2 batch_18 + 61.2 batch_19 + 115.2 batch_2_7_11
   + 133.2 batch_5_10_12_19 + 130.4 batch_3_10_15_16
   + 105.2 batch_6_9_13_19 + 123.2 batch_0_4_8_17 + 119.2 batch_1_10_14
   + 120 batch_1_6_13 + 113.2 batch_1_9_14_19 + 129.2 batch_3_10_14_16
   + 111.2 batch_1_14_18_19 + 119.2 batch_6_10_13_14
   + 133.2 batch_5_12_15_19 + 123.2 batch_6_9_10_13 + 111.2 batch_6_9_13_14
   + 127.2 batch_5_9_12_19 + 111.2 batch_1_9_18 + 127.2 batch_3_14_16_18
   + 129.2 batch_5_12_18_19 + 129.2 batch_5_12_15 + 131.2 batch_1_3_16
   + 131.2 batch_5_10_12 + 127.2 batch_5_12_18
Subject To
 order_0: batch_0_4_8_17 = 1
 order_1: batch_1 + batch_1_10_14 + batch_1_6_13 + batch_1_9_14_19
   + batch_1_14_18_19 + batch_1_9_18 + batch_1_3_16 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_10_15_16 + batch_3_10_14_16 + batch_3_14_16_18
   + batch_1_3_16 = 1
 order_4: batch_0_4_8_17 = 1
 order_5: batch_5_10_12_19 + batch_5_12_15_19 + batch_5_9_12_19
   + batch_5_12_18_19 + batch_5_12_15 + batch_5_10_12 + batch_5_12_18 = 1
 order_6: batch_6_9_13_19 + batch_1_6_13 + batch_6_10_13_14
   + batch_6_9_10_13 + batch_6_9_13_14 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_0_4_8_17 = 1
 order_9: batch_9 + batch_6_9_13_19 + batch_1_9_14_19 + batch_6_9_10_13
   + batch_6_9_13_14 + batch_5_9_12_19 + batch_1_9_18 = 1
 order_10: batch_10 + batch_5_10_12_19 + batch_3_10_15_16 + batch_1_10_14
   + batch_3_10_14_16 + batch_6_10_13_14 + batch_6_9_10_13 + batch_5_10_12
   = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_5_10_12_19 + batch_5_12_15_19 + batch_5_9_12_19
   + batch_5_12_18_19 + batch_5_12_15 + batch_5_10_12 + batch_5_12_18 = 1
 order_13: batch_6_9_13_19 + batch_1_6_13 + batch_6_10_13_14
   + batch_6_9_10_13 + batch_6_9_13_14 = 1
 order_14: batch_14 + batch_1_10_14 + batch_1_9_14_19 + batch_3_10_14_16
   + batch_1_14_18_19 + batch_6_10_13_14 + batch_6_9_13_14
   + batch_3_14_16_18 = 1
 order_15: batch_15 + batch_3_10_15_16 + batch_5_12_15_19 + batch_5_12_15
   = 1
 order_16: batch_3_10_15_16 + batch_3_10_14_16 + batch_3_14_16_18
   + batch_1_3_16 = 1
 order_17: batch_0_4_8_17 = 1
 order_18: batch_18 + batch_1_14_18_19 + batch_1_9_18 + batch_3_14_16_18
   + batch_5_12_18_19 + batch_5_12_18 = 1
 order_19: batch_19 + batch_5_10_12_19 + batch_6_9_13_19 + batch_1_9_14_19
   + batch_1_14_18_19 + batch_5_12_15_19 + batch_5_9_12_19
   + batch_5_12_18_19 = 1
Bounds
End
