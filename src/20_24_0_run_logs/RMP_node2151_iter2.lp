\ Model JOBPRP_RMP_2151
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x96d46a58e2c512a4
Minimize
  72.4 batch_8 + 78.4 batch_10 + 74.8 batch_15 + 61.2 batch_19
   + 105.6 batch_3_12_16 + 115.2 batch_2_7_11 + 109.2 batch_6_9_13_18
   + 125.2 batch_10_14_15_17 + 127.2 batch_1_5_10 + 117.2 batch_0_4_8_15
   + 125.2 batch_0_4_14_17_19 + 115.2 batch_1_5_19 + 105.2 batch_8_10_19
   + 117.2 batch_10_14_17_19 + 109.2 batch_0_4_14_17
Subject To
 order_0: batch_0_4_8_15 + batch_0_4_14_17_19 + batch_0_4_14_17 = 1
 order_1: batch_1_5_10 + batch_1_5_19 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16 = 1
 order_4: batch_0_4_8_15 + batch_0_4_14_17_19 + batch_0_4_14_17 = 1
 order_5: batch_1_5_10 + batch_1_5_19 = 1
 order_6: batch_6_9_13_18 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_0_4_8_15 + batch_8_10_19 = 1
 order_9: batch_6_9_13_18 = 1
 order_10: batch_10 + batch_10_14_15_17 + batch_1_5_10 + batch_8_10_19
   + batch_10_14_17_19 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_12_16 = 1
 order_13: batch_6_9_13_18 = 1
 order_14: batch_10_14_15_17 + batch_0_4_14_17_19 + batch_10_14_17_19
   + batch_0_4_14_17 = 1
 order_15: batch_15 + batch_10_14_15_17 + batch_0_4_8_15 = 1
 order_16: batch_3_12_16 = 1
 order_17: batch_10_14_15_17 + batch_0_4_14_17_19 + batch_10_14_17_19
   + batch_0_4_14_17 = 1
 order_18: batch_6_9_13_18 = 1
 order_19: batch_19 + batch_0_4_14_17_19 + batch_1_5_19 + batch_8_10_19
   + batch_10_14_17_19 = 1
Bounds
End
