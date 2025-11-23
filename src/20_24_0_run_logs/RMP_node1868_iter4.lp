\ Model JOBPRP_RMP_1868
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xa2f52b713b0dedde
Minimize
  91.2 batch_5 + 72.4 batch_8 + 77.2 batch_9 + 89.6 batch_12 + 74.8 batch_15
   + 119.2 batch_0_4_10_14_15 + 123.2 batch_1_17_18 + 105.6 batch_3_12_16
   + 115.2 batch_2_7_11 + 117.2 batch_3_5_16 + 117.2 batch_5_6_13_19
   + 133.2 batch_5_8_12 + 119.2 batch_5_8_9 + 137.2 batch_3_9_15_16
   + 119.2 batch_8_12_15 + 127.2 batch_5_9_12 + 124 batch_6_12_13_19
   + 124 batch_8_9_12 + 112.4 batch_3_8_16 + 122 batch_3_9_16
   + 89.2 batch_8_9
Subject To
 order_0: batch_0_4_10_14_15 = 1
 order_1: batch_1_17_18 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16 + batch_3_5_16 + batch_3_9_15_16 + batch_3_8_16
   + batch_3_9_16 = 1
 order_4: batch_0_4_10_14_15 = 1
 order_5: batch_5 + batch_3_5_16 + batch_5_6_13_19 + batch_5_8_12
   + batch_5_8_9 + batch_5_9_12 = 1
 order_6: batch_5_6_13_19 + batch_6_12_13_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_5_8_12 + batch_5_8_9 + batch_8_12_15
   + batch_8_9_12 + batch_3_8_16 + batch_8_9 = 1
 order_9: batch_9 + batch_5_8_9 + batch_3_9_15_16 + batch_5_9_12
   + batch_8_9_12 + batch_3_9_16 + batch_8_9 = 1
 order_10: batch_0_4_10_14_15 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_3_12_16 + batch_5_8_12 + batch_8_12_15
   + batch_5_9_12 + batch_6_12_13_19 + batch_8_9_12 = 1
 order_13: batch_5_6_13_19 + batch_6_12_13_19 = 1
 order_14: batch_0_4_10_14_15 = 1
 order_15: batch_15 + batch_0_4_10_14_15 + batch_3_9_15_16 + batch_8_12_15
   = 1
 order_16: batch_3_12_16 + batch_3_5_16 + batch_3_9_15_16 + batch_3_8_16
   + batch_3_9_16 = 1
 order_17: batch_1_17_18 = 1
 order_18: batch_1_17_18 = 1
 order_19: batch_5_6_13_19 + batch_6_12_13_19 = 1
Bounds
End
