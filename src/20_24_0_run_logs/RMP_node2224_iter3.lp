\ Model JOBPRP_RMP_2224
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x4b37aa8fdb377de
Minimize
  72.4 batch_8 + 78.4 batch_10 + 89.6 batch_12 + 65.2 batch_14
   + 74.8 batch_15 + 61.2 batch_19 + 115.2 batch_2_7_11
   + 109.2 batch_6_9_13_18 + 127.2 batch_1_10_17 + 117.2 batch_1_14_17
   + 117.2 batch_3_5_14_19 + 119.2 batch_8_12_15 + 126 batch_8_12_15_19
   + 133.2 batch_1_15_17 + 125.2 batch_3_5_8 + 133.2 batch_3_5_15_19
   + 113.2 batch_0_4_15_16 + 132 batch_8_12_14_15 + 120 batch_0_4_16_19
   + 122.4 batch_8_10_12 + 109.2 batch_3_5_19
Subject To
 order_0: batch_0_4_15_16 + batch_0_4_16_19 = 1
 order_1: batch_1_10_17 + batch_1_14_17 + batch_1_15_17 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_5_14_19 + batch_3_5_8 + batch_3_5_15_19 + batch_3_5_19
   = 1
 order_4: batch_0_4_15_16 + batch_0_4_16_19 = 1
 order_5: batch_3_5_14_19 + batch_3_5_8 + batch_3_5_15_19 + batch_3_5_19
   = 1
 order_6: batch_6_9_13_18 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_8_12_15 + batch_8_12_15_19 + batch_3_5_8
   + batch_8_12_14_15 + batch_8_10_12 = 1
 order_9: batch_6_9_13_18 = 1
 order_10: batch_10 + batch_1_10_17 + batch_8_10_12 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_8_12_15 + batch_8_12_15_19 + batch_8_12_14_15
   + batch_8_10_12 = 1
 order_13: batch_6_9_13_18 = 1
 order_14: batch_14 + batch_1_14_17 + batch_3_5_14_19 + batch_8_12_14_15
   = 1
 order_15: batch_15 + batch_8_12_15 + batch_8_12_15_19 + batch_1_15_17
   + batch_3_5_15_19 + batch_0_4_15_16 + batch_8_12_14_15 = 1
 order_16: batch_0_4_15_16 + batch_0_4_16_19 = 1
 order_17: batch_1_10_17 + batch_1_14_17 + batch_1_15_17 = 1
 order_18: batch_6_9_13_18 = 1
 order_19: batch_19 + batch_3_5_14_19 + batch_8_12_15_19 + batch_3_5_15_19
   + batch_0_4_16_19 + batch_3_5_19 = 1
Bounds
End
