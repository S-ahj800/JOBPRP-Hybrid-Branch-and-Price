\ Model JOBPRP_RMP_372
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x3e8dd5fdee5dfcda
Minimize
  72.4 batch_8 + 78.4 batch_10 + 89.6 batch_12 + 61.2 batch_19
   + 115.2 batch_2_7_11 + 105.2 batch_6_9_13_19 + 119.2 batch_3_8_16_19
   + 123.2 batch_0_4_8_17 + 123.2 batch_6_9_10_13 + 121.2 batch_0_4_10_17
   + 130 batch_1_15_18_19 + 125.2 batch_3_5_14_16 + 122.4 batch_8_10_12
   + 129.2 batch_8_10_12_19 + 125.2 batch_5_12_14
   + 129.1999918165854 batch_1_15_18
Subject To
 order_0: batch_0_4_8_17 + batch_0_4_10_17 = 1
 order_1: batch_1_15_18_19 + batch_1_15_18 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_8_16_19 + batch_3_5_14_16 = 1
 order_4: batch_0_4_8_17 + batch_0_4_10_17 = 1
 order_5: batch_3_5_14_16 + batch_5_12_14 = 1
 order_6: batch_6_9_13_19 + batch_6_9_10_13 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_3_8_16_19 + batch_0_4_8_17 + batch_8_10_12
   + batch_8_10_12_19 = 1
 order_9: batch_6_9_13_19 + batch_6_9_10_13 = 1
 order_10: batch_10 + batch_6_9_10_13 + batch_0_4_10_17 + batch_8_10_12
   + batch_8_10_12_19 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_8_10_12 + batch_8_10_12_19 + batch_5_12_14 = 1
 order_13: batch_6_9_13_19 + batch_6_9_10_13 = 1
 order_14: batch_3_5_14_16 + batch_5_12_14 = 1
 order_15: batch_1_15_18_19 + batch_1_15_18 = 1
 order_16: batch_3_8_16_19 + batch_3_5_14_16 = 1
 order_17: batch_0_4_8_17 + batch_0_4_10_17 = 1
 order_18: batch_1_15_18_19 + batch_1_15_18 = 1
 order_19: batch_19 + batch_6_9_13_19 + batch_3_8_16_19 + batch_1_15_18_19
   + batch_8_10_12_19 = 1
Bounds
End
