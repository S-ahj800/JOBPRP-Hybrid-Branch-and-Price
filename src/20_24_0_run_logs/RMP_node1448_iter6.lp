\ Model JOBPRP_RMP_1448
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x6c4dc287d514bc5e
Minimize
  91.2 batch_5 + 89.2 batch_6 + 78.4 batch_10 + 74.8 batch_15
   + 61.2 batch_19 + 123.2 batch_1_17_18 + 115.2 batch_2_7_11
   + 121.2 batch_3_5_12 + 117.2 batch_0_4_14_15_16 + 125.2 batch_5_6_10_19
   + 119.2 batch_5_8_9_13 + 114 batch_3_12_19 + 118.4 batch_3_10_12
   + 128 batch_8_9_13_15 + 131.2 batch_5_6_15_19 + 95.2 batch_8_9_13_19
   + 127.2 batch_0_4_5_14_16 + 125.2 batch_5_6_10 + 95.2 batch_8_9_13
   + 107.2 batch_0_4_14_16 + 101.6 batch_3_12
Subject To
 order_0: batch_0_4_14_15_16 + batch_0_4_5_14_16 + batch_0_4_14_16 = 1
 order_1: batch_1_17_18 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_5_12 + batch_3_12_19 + batch_3_10_12 + batch_3_12 = 1
 order_4: batch_0_4_14_15_16 + batch_0_4_5_14_16 + batch_0_4_14_16 = 1
 order_5: batch_5 + batch_3_5_12 + batch_5_6_10_19 + batch_5_8_9_13
   + batch_5_6_15_19 + batch_0_4_5_14_16 + batch_5_6_10 = 1
 order_6: batch_6 + batch_5_6_10_19 + batch_5_6_15_19 + batch_5_6_10 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_5_8_9_13 + batch_8_9_13_15 + batch_8_9_13_19 + batch_8_9_13
   = 1
 order_9: batch_5_8_9_13 + batch_8_9_13_15 + batch_8_9_13_19 + batch_8_9_13
   = 1
 order_10: batch_10 + batch_5_6_10_19 + batch_3_10_12 + batch_5_6_10 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_5_12 + batch_3_12_19 + batch_3_10_12 + batch_3_12 = 1
 order_13: batch_5_8_9_13 + batch_8_9_13_15 + batch_8_9_13_19
   + batch_8_9_13 = 1
 order_14: batch_0_4_14_15_16 + batch_0_4_5_14_16 + batch_0_4_14_16 = 1
 order_15: batch_15 + batch_0_4_14_15_16 + batch_8_9_13_15
   + batch_5_6_15_19 = 1
 order_16: batch_0_4_14_15_16 + batch_0_4_5_14_16 + batch_0_4_14_16 = 1
 order_17: batch_1_17_18 = 1
 order_18: batch_1_17_18 = 1
 order_19: batch_19 + batch_5_6_10_19 + batch_3_12_19 + batch_5_6_15_19
   + batch_8_9_13_19 = 1
Bounds
End
