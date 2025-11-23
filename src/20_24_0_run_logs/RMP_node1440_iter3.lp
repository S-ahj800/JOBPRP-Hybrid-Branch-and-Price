\ Model JOBPRP_RMP_1440
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x648e1468607d0443
Minimize
  72.4 batch_8 + 89.6 batch_12 + 65.2 batch_14 + 77.2 batch_18
   + 105.6 batch_3_12_16 + 115.2 batch_2_7_11 + 127.2 batch_1_10_17
   + 126 batch_8_12_15_19 + 131.2 batch_0_4_5_15_19 + 126 batch_3_8_14_16
   + 111.2 batch_6_9_13_14 + 121.2 batch_0_4_5_8 + 105.2 batch_6_9_13
   + 112.4 batch_3_8_16 + 117.2 batch_3_16_18 + 138 batch_12_15_18_19
Subject To
 order_0: batch_0_4_5_15_19 + batch_0_4_5_8 = 1
 order_1: batch_1_10_17 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16 + batch_3_8_14_16 + batch_3_8_16 + batch_3_16_18
   = 1
 order_4: batch_0_4_5_15_19 + batch_0_4_5_8 = 1
 order_5: batch_0_4_5_15_19 + batch_0_4_5_8 = 1
 order_6: batch_6_9_13_14 + batch_6_9_13 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_8_12_15_19 + batch_3_8_14_16 + batch_0_4_5_8
   + batch_3_8_16 = 1
 order_9: batch_6_9_13_14 + batch_6_9_13 = 1
 order_10: batch_1_10_17 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_3_12_16 + batch_8_12_15_19 + batch_12_15_18_19
   = 1
 order_13: batch_6_9_13_14 + batch_6_9_13 = 1
 order_14: batch_14 + batch_3_8_14_16 + batch_6_9_13_14 = 1
 order_15: batch_8_12_15_19 + batch_0_4_5_15_19 + batch_12_15_18_19 = 1
 order_16: batch_3_12_16 + batch_3_8_14_16 + batch_3_8_16 + batch_3_16_18
   = 1
 order_17: batch_1_10_17 = 1
 order_18: batch_18 + batch_3_16_18 + batch_12_15_18_19 = 1
 order_19: batch_8_12_15_19 + batch_0_4_5_15_19 + batch_12_15_18_19 = 1
Bounds
End
