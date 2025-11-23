\ Model JOBPRP_RMP_275
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x89a0869f6dcac450
Minimize
  83.6 batch_3 + 91.2 batch_5 + 77.2 batch_9 + 89.6 batch_12 + 70.4 batch_13
   + 65.2 batch_14 + 74.8 batch_15 + 61.2 batch_19 + 123.2 batch_1_17_18
   + 115.2 batch_2_7_11 + 143.2 batch_5_12_13_15 + 135.2 batch_5_9_13_15
   + 117.2 batch_5_9_13_14_19 + 127.2 batch_5_9_12_19
   + 119.2 batch_0_4_10_14_16 + 125.2 batch_3_9_12 + 113.2 batch_6_8_14_19
   + 126 batch_6_8_12 + 123.2 batch_5_6_8 + 129.2 batch_0_4_10_13_16
   + 136 batch_6_8_14_15 + 130 batch_6_8_15_19 + 131.2 batch_3_12_14_19
   + 101.6 batch_3_12 + 122 batch_3_9_14_19
Subject To
 order_0: batch_0_4_10_14_16 + batch_0_4_10_13_16 = 1
 order_1: batch_1_17_18 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3 + batch_3_9_12 + batch_3_12_14_19 + batch_3_12
   + batch_3_9_14_19 = 1
 order_4: batch_0_4_10_14_16 + batch_0_4_10_13_16 = 1
 order_5: batch_5 + batch_5_12_13_15 + batch_5_9_13_15 + batch_5_9_13_14_19
   + batch_5_9_12_19 + batch_5_6_8 = 1
 order_6: batch_6_8_14_19 + batch_6_8_12 + batch_5_6_8 + batch_6_8_14_15
   + batch_6_8_15_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_6_8_14_19 + batch_6_8_12 + batch_5_6_8 + batch_6_8_14_15
   + batch_6_8_15_19 = 1
 order_9: batch_9 + batch_5_9_13_15 + batch_5_9_13_14_19 + batch_5_9_12_19
   + batch_3_9_12 + batch_3_9_14_19 = 1
 order_10: batch_0_4_10_14_16 + batch_0_4_10_13_16 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_5_12_13_15 + batch_5_9_12_19 + batch_3_9_12
   + batch_6_8_12 + batch_3_12_14_19 + batch_3_12 = 1
 order_13: batch_13 + batch_5_12_13_15 + batch_5_9_13_15
   + batch_5_9_13_14_19 + batch_0_4_10_13_16 = 1
 order_14: batch_14 + batch_5_9_13_14_19 + batch_0_4_10_14_16
   + batch_6_8_14_19 + batch_6_8_14_15 + batch_3_12_14_19 + batch_3_9_14_19
   = 1
 order_15: batch_15 + batch_5_12_13_15 + batch_5_9_13_15 + batch_6_8_14_15
   + batch_6_8_15_19 = 1
 order_16: batch_0_4_10_14_16 + batch_0_4_10_13_16 = 1
 order_17: batch_1_17_18 = 1
 order_18: batch_1_17_18 = 1
 order_19: batch_19 + batch_5_9_13_14_19 + batch_5_9_12_19
   + batch_6_8_14_19 + batch_6_8_15_19 + batch_3_12_14_19 + batch_3_9_14_19
   = 1
Bounds
End
