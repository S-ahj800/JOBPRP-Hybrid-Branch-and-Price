\ Model JOBPRP_RMP_1924
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x3e687f90367dd11c
Minimize
  91.2 batch_5 + 77.2 batch_9 + 89.6 batch_12 + 65.2 batch_14
   + 74.8 batch_15 + 89.2 batch_17 + 77.2 batch_18 + 61.2 batch_19
   + 119.2 batch_0_4_10_14_15 + 105.6 batch_3_12_16 + 115.2 batch_2_7_11
   + 109.2 batch_6_9_13_18 + 113.2 batch_6_13_14_17 + 105.2 batch_6_9_13_19
   + 121.2 batch_1_8_9 + 129.2 batch_1_5_8 + 129.2 batch_5_12_17
   + 121.1999957721094 batch_0_4_10_17 + 127.2 batch_5_9_17_19
   + 125.2 batch_5_17_18_19 + 133.2 batch_3_15_16_18
   + 121.2 batch_6_13_17_19 + 121.2 batch_1_8_18
Subject To
 order_0: batch_0_4_10_14_15 + batch_0_4_10_17 = 1
 order_1: batch_1_8_9 + batch_1_5_8 + batch_1_8_18 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16 + batch_3_15_16_18 = 1
 order_4: batch_0_4_10_14_15 + batch_0_4_10_17 = 1
 order_5: batch_5 + batch_1_5_8 + batch_5_12_17 + batch_5_9_17_19
   + batch_5_17_18_19 = 1
 order_6: batch_6_9_13_18 + batch_6_13_14_17 + batch_6_9_13_19
   + batch_6_13_17_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_1_8_9 + batch_1_5_8 + batch_1_8_18 = 1
 order_9: batch_9 + batch_6_9_13_18 + batch_6_9_13_19 + batch_1_8_9
   + batch_5_9_17_19 = 1
 order_10: batch_0_4_10_14_15 + batch_0_4_10_17 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_3_12_16 + batch_5_12_17 = 1
 order_13: batch_6_9_13_18 + batch_6_13_14_17 + batch_6_9_13_19
   + batch_6_13_17_19 = 1
 order_14: batch_14 + batch_0_4_10_14_15 + batch_6_13_14_17 = 1
 order_15: batch_15 + batch_0_4_10_14_15 + batch_3_15_16_18 = 1
 order_16: batch_3_12_16 + batch_3_15_16_18 = 1
 order_17: batch_17 + batch_6_13_14_17 + batch_5_12_17 + batch_0_4_10_17
   + batch_5_9_17_19 + batch_5_17_18_19 + batch_6_13_17_19 = 1
 order_18: batch_18 + batch_6_9_13_18 + batch_5_17_18_19 + batch_3_15_16_18
   + batch_1_8_18 = 1
 order_19: batch_19 + batch_6_9_13_19 + batch_5_9_17_19 + batch_5_17_18_19
   + batch_6_13_17_19 = 1
Bounds
End
