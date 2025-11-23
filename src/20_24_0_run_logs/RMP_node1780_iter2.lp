\ Model JOBPRP_RMP_1780
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x972871e842a1103f
Minimize
  91.2 batch_5 + 89.2 batch_6 + 72.4 batch_8 + 77.2 batch_9 + 78.4 batch_10
   + 70.4 batch_13 + 77.2 batch_18 + 61.2 batch_19 + 115.2 batch_2_7_11
   + 115.6 batch_3_12_15 + 117.2 batch_1_14_17 + 137.2 batch_0_4_9_13_16
   + 107.2 batch_6_9_18_19 + 123.2 batch_5_8_13_18
   + 135.2 batch_0_4_5_13_16 + 117.2 batch_5_9_13_18 + 133.2 batch_0_4_6_16
   + 127.2 batch_5_8_10_13 + 141.2 batch_0_4_6_16_19
   + 115.2 batch_0_4_10_16
Subject To
 order_0: batch_0_4_9_13_16 + batch_0_4_5_13_16 + batch_0_4_6_16
   + batch_0_4_6_16_19 + batch_0_4_10_16 = 1
 order_1: batch_1_14_17 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_15 = 1
 order_4: batch_0_4_9_13_16 + batch_0_4_5_13_16 + batch_0_4_6_16
   + batch_0_4_6_16_19 + batch_0_4_10_16 = 1
 order_5: batch_5 + batch_5_8_13_18 + batch_0_4_5_13_16 + batch_5_9_13_18
   + batch_5_8_10_13 = 1
 order_6: batch_6 + batch_6_9_18_19 + batch_0_4_6_16 + batch_0_4_6_16_19
   = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_5_8_13_18 + batch_5_8_10_13 = 1
 order_9: batch_9 + batch_0_4_9_13_16 + batch_6_9_18_19 + batch_5_9_13_18
   = 1
 order_10: batch_10 + batch_5_8_10_13 + batch_0_4_10_16 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_12_15 = 1
 order_13: batch_13 + batch_0_4_9_13_16 + batch_5_8_13_18
   + batch_0_4_5_13_16 + batch_5_9_13_18 + batch_5_8_10_13 = 1
 order_14: batch_1_14_17 = 1
 order_15: batch_3_12_15 = 1
 order_16: batch_0_4_9_13_16 + batch_0_4_5_13_16 + batch_0_4_6_16
   + batch_0_4_6_16_19 + batch_0_4_10_16 = 1
 order_17: batch_1_14_17 = 1
 order_18: batch_18 + batch_6_9_18_19 + batch_5_8_13_18 + batch_5_9_13_18
   = 1
 order_19: batch_19 + batch_6_9_18_19 + batch_0_4_6_16_19 = 1
Bounds
End
