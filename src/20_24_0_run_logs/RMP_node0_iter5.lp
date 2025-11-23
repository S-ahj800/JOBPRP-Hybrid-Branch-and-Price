\ Model JOBPRP_RMP_0
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xa7e0612b86b5adc8
Minimize
  81.2 batch_0 + 98 batch_1 + 82.4 batch_2 + 83.6 batch_3 + 64.4 batch_4
   + 91.2 batch_5 + 89.2 batch_6 + 81.2 batch_7 + 72.4 batch_8
   + 77.2 batch_9 + 78.4 batch_10 + 84.4 batch_11 + 89.6 batch_12
   + 70.4 batch_13 + 65.2 batch_14 + 74.8 batch_15 + 57.6 batch_16
   + 89.2 batch_17 + 77.2 batch_18 + 61.2 batch_19
   + 137.2 batch_0_4_13_14_16_19 + 125.2 batch_0_4_5_13_14
   + 127.2 batch_0_4_10_13_15 + 119.2 batch_0_4_10_14_15
Subject To
 order_0: batch_0 + batch_0_4_13_14_16_19 + batch_0_4_5_13_14
   + batch_0_4_10_13_15 + batch_0_4_10_14_15 = 1
 order_1: batch_1 = 1
 order_2: batch_2 = 1
 order_3: batch_3 = 1
 order_4: batch_4 + batch_0_4_13_14_16_19 + batch_0_4_5_13_14
   + batch_0_4_10_13_15 + batch_0_4_10_14_15 = 1
 order_5: batch_5 + batch_0_4_5_13_14 = 1
 order_6: batch_6 = 1
 order_7: batch_7 = 1
 order_8: batch_8 = 1
 order_9: batch_9 = 1
 order_10: batch_10 + batch_0_4_10_13_15 + batch_0_4_10_14_15 = 1
 order_11: batch_11 = 1
 order_12: batch_12 = 1
 order_13: batch_13 + batch_0_4_13_14_16_19 + batch_0_4_5_13_14
   + batch_0_4_10_13_15 = 1
 order_14: batch_14 + batch_0_4_13_14_16_19 + batch_0_4_5_13_14
   + batch_0_4_10_14_15 = 1
 order_15: batch_15 + batch_0_4_10_13_15 + batch_0_4_10_14_15 = 1
 order_16: batch_16 + batch_0_4_13_14_16_19 = 1
 order_17: batch_17 = 1
 order_18: batch_18 = 1
 order_19: batch_19 + batch_0_4_13_14_16_19 = 1
Bounds
End
