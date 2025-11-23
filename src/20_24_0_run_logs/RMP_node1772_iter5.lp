\ Model JOBPRP_RMP_1772
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x38e4180196bf8cd2
Minimize
  91.2 batch_5 + 72.4 batch_8 + 70.4 batch_13 + 65.2 batch_14
   + 77.2 batch_18 + 61.2 batch_19 + 137.2 batch_0_4_13_14_16_19
   + 115.2 batch_2_7_11 + 115.6 batch_3_12_15 + 127.2 batch_1_10_17
   + 107.2 batch_6_9_18_19 + 115.2 batch_6_9_14_18
   + 111.2 batch_8_13_14_18_19 + 123.2 batch_5_8_13_18
   + 135.2 batch_0_4_5_13_16 + 115.2 batch_5_8_13_14
   + 127.2 batch_0_4_5_14_16 + 115.2 batch_5_8_13_19
   + 123.2 batch_5_8_14_18 + 123.2 batch_0_4_13_14_16 + 103.2 batch_6_9_19
   + 93.2 batch_8_13_19 + 86.4 batch_8_13
Subject To
 order_0: batch_0_4_13_14_16_19 + batch_0_4_5_13_16 + batch_0_4_5_14_16
   + batch_0_4_13_14_16 = 1
 order_1: batch_1_10_17 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_15 = 1
 order_4: batch_0_4_13_14_16_19 + batch_0_4_5_13_16 + batch_0_4_5_14_16
   + batch_0_4_13_14_16 = 1
 order_5: batch_5 + batch_5_8_13_18 + batch_0_4_5_13_16 + batch_5_8_13_14
   + batch_0_4_5_14_16 + batch_5_8_13_19 + batch_5_8_14_18 = 1
 order_6: batch_6_9_18_19 + batch_6_9_14_18 + batch_6_9_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_8_13_14_18_19 + batch_5_8_13_18 + batch_5_8_13_14
   + batch_5_8_13_19 + batch_5_8_14_18 + batch_8_13_19 + batch_8_13 = 1
 order_9: batch_6_9_18_19 + batch_6_9_14_18 + batch_6_9_19 = 1
 order_10: batch_1_10_17 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_12_15 = 1
 order_13: batch_13 + batch_0_4_13_14_16_19 + batch_8_13_14_18_19
   + batch_5_8_13_18 + batch_0_4_5_13_16 + batch_5_8_13_14
   + batch_5_8_13_19 + batch_0_4_13_14_16 + batch_8_13_19 + batch_8_13 = 1
 order_14: batch_14 + batch_0_4_13_14_16_19 + batch_6_9_14_18
   + batch_8_13_14_18_19 + batch_5_8_13_14 + batch_0_4_5_14_16
   + batch_5_8_14_18 + batch_0_4_13_14_16 = 1
 order_15: batch_3_12_15 = 1
 order_16: batch_0_4_13_14_16_19 + batch_0_4_5_13_16 + batch_0_4_5_14_16
   + batch_0_4_13_14_16 = 1
 order_17: batch_1_10_17 = 1
 order_18: batch_18 + batch_6_9_18_19 + batch_6_9_14_18
   + batch_8_13_14_18_19 + batch_5_8_13_18 + batch_5_8_14_18 = 1
 order_19: batch_19 + batch_0_4_13_14_16_19 + batch_6_9_18_19
   + batch_8_13_14_18_19 + batch_5_8_13_19 + batch_6_9_19 + batch_8_13_19
   = 1
Bounds
End
