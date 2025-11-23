\ Model JOBPRP_RMP_1640
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x6c4dc287d514bc5e
Minimize
  98 batch_1 + 91.2 batch_5 + 78.4 batch_10 + 89.6 batch_12 + 89.2 batch_17
   + 77.2 batch_18 + 123.2 batch_1_17_18 + 105.6 batch_3_12_16
   + 115.2 batch_2_7_11 + 132 batch_0_4_8_12 + 126 batch_0_4_8_15_19
   + 125.2 batch_6_10_13_18 + 113.2 batch_6_13_17 + 125.2 batch_9_10_14_17
   + 120 batch_1_6_13 + 126 batch_3_15_16_19 + 117.2 batch_3_5_16
   + 121.2 batch_0_4_5_8 + 138 batch_9_14_15_18_19 + 133.2 batch_5_12_15_19
   + 125.2 batch_9_14_17_18
Subject To
 order_0: batch_0_4_8_12 + batch_0_4_8_15_19 + batch_0_4_5_8 = 1
 order_1: batch_1 + batch_1_17_18 + batch_1_6_13 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16 + batch_3_15_16_19 + batch_3_5_16 = 1
 order_4: batch_0_4_8_12 + batch_0_4_8_15_19 + batch_0_4_5_8 = 1
 order_5: batch_5 + batch_3_5_16 + batch_0_4_5_8 + batch_5_12_15_19 = 1
 order_6: batch_6_10_13_18 + batch_6_13_17 + batch_1_6_13 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_0_4_8_12 + batch_0_4_8_15_19 + batch_0_4_5_8 = 1
 order_9: batch_9_10_14_17 + batch_9_14_15_18_19 + batch_9_14_17_18 = 1
 order_10: batch_10 + batch_6_10_13_18 + batch_9_10_14_17 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_3_12_16 + batch_0_4_8_12 + batch_5_12_15_19
   = 1
 order_13: batch_6_10_13_18 + batch_6_13_17 + batch_1_6_13 = 1
 order_14: batch_9_10_14_17 + batch_9_14_15_18_19 + batch_9_14_17_18 = 1
 order_15: batch_0_4_8_15_19 + batch_3_15_16_19 + batch_9_14_15_18_19
   + batch_5_12_15_19 = 1
 order_16: batch_3_12_16 + batch_3_15_16_19 + batch_3_5_16 = 1
 order_17: batch_17 + batch_1_17_18 + batch_6_13_17 + batch_9_10_14_17
   + batch_9_14_17_18 = 1
 order_18: batch_18 + batch_1_17_18 + batch_6_10_13_18
   + batch_9_14_15_18_19 + batch_9_14_17_18 = 1
 order_19: batch_0_4_8_15_19 + batch_3_15_16_19 + batch_9_14_15_18_19
   + batch_5_12_15_19 = 1
Bounds
End
