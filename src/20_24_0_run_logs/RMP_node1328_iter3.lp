\ Model JOBPRP_RMP_1328
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x85b8d1a3a1d5ca8a
Minimize
  91.2 batch_5 + 72.4 batch_8 + 77.2 batch_9 + 65.2 batch_14 + 77.2 batch_18
   + 61.2 batch_19 + 115.2 batch_2_7_11 + 115.6 batch_3_12_15
   + 127.2 batch_1_10_17 + 115.2 batch_0_4_8_14_16 + 117.2 batch_5_6_13_19
   + 119.2 batch_5_8_9_19 + 131.2 batch_0_4_9_16_19 + 99.2 batch_8_9_14_19
   + 109.2 batch_6_13_18_19 + 123.2 batch_5_8_18_19 + 107.2 batch_8_9_18_19
   + 109.2 batch_6_13_14_18 + 127.1999956283002 batch_0_4_5_14_16
   + 113.2 batch_5_9_18_19 + 111.2 batch_0_4_8_16 + 129.2 batch_0_4_9_16
Subject To
 order_0: batch_0_4_8_14_16 + batch_0_4_9_16_19 + batch_0_4_5_14_16
   + batch_0_4_8_16 + batch_0_4_9_16 = 1
 order_1: batch_1_10_17 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_15 = 1
 order_4: batch_0_4_8_14_16 + batch_0_4_9_16_19 + batch_0_4_5_14_16
   + batch_0_4_8_16 + batch_0_4_9_16 = 1
 order_5: batch_5 + batch_5_6_13_19 + batch_5_8_9_19 + batch_5_8_18_19
   + batch_0_4_5_14_16 + batch_5_9_18_19 = 1
 order_6: batch_5_6_13_19 + batch_6_13_18_19 + batch_6_13_14_18 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_0_4_8_14_16 + batch_5_8_9_19 + batch_8_9_14_19
   + batch_5_8_18_19 + batch_8_9_18_19 + batch_0_4_8_16 = 1
 order_9: batch_9 + batch_5_8_9_19 + batch_0_4_9_16_19 + batch_8_9_14_19
   + batch_8_9_18_19 + batch_5_9_18_19 + batch_0_4_9_16 = 1
 order_10: batch_1_10_17 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_12_15 = 1
 order_13: batch_5_6_13_19 + batch_6_13_18_19 + batch_6_13_14_18 = 1
 order_14: batch_14 + batch_0_4_8_14_16 + batch_8_9_14_19
   + batch_6_13_14_18 + batch_0_4_5_14_16 = 1
 order_15: batch_3_12_15 = 1
 order_16: batch_0_4_8_14_16 + batch_0_4_9_16_19 + batch_0_4_5_14_16
   + batch_0_4_8_16 + batch_0_4_9_16 = 1
 order_17: batch_1_10_17 = 1
 order_18: batch_18 + batch_6_13_18_19 + batch_5_8_18_19 + batch_8_9_18_19
   + batch_6_13_14_18 + batch_5_9_18_19 = 1
 order_19: batch_19 + batch_5_6_13_19 + batch_5_8_9_19 + batch_0_4_9_16_19
   + batch_8_9_14_19 + batch_6_13_18_19 + batch_5_8_18_19 + batch_8_9_18_19
   + batch_5_9_18_19 = 1
Bounds
End
