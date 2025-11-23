\ Model JOBPRP_RMP_568
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x5e38bdc43405206a
Minimize
  77.2 batch_9 + 78.4 batch_10 + 89.6 batch_12 + 89.2 batch_17
   + 77.2 batch_18 + 61.2 batch_19 + 115.2 batch_2_7_11
   + 109.2 batch_6_8_13_19 + 137.2 batch_0_1_4_15 + 121.2 batch_5_9_14_18
   + 125.2 batch_3_5_14_16 + 119.2 batch_10_17_18 + 123.2 batch_5_10_14_18
   + 133.2 batch_10_12_17 + 131.2 batch_3_16_17 + 117.2 batch_3_16_18
   + 122 batch_3_9_16 + 133.2 batch_12_17_18
Subject To
 order_0: batch_0_1_4_15 = 1
 order_1: batch_0_1_4_15 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_5_14_16 + batch_3_16_17 + batch_3_16_18 + batch_3_9_16
   = 1
 order_4: batch_0_1_4_15 = 1
 order_5: batch_5_9_14_18 + batch_3_5_14_16 + batch_5_10_14_18 = 1
 order_6: batch_6_8_13_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_6_8_13_19 = 1
 order_9: batch_9 + batch_5_9_14_18 + batch_3_9_16 = 1
 order_10: batch_10 + batch_10_17_18 + batch_5_10_14_18 + batch_10_12_17
   = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_10_12_17 + batch_12_17_18 = 1
 order_13: batch_6_8_13_19 = 1
 order_14: batch_5_9_14_18 + batch_3_5_14_16 + batch_5_10_14_18 = 1
 order_15: batch_0_1_4_15 = 1
 order_16: batch_3_5_14_16 + batch_3_16_17 + batch_3_16_18 + batch_3_9_16
   = 1
 order_17: batch_17 + batch_10_17_18 + batch_10_12_17 + batch_3_16_17
   + batch_12_17_18 = 1
 order_18: batch_18 + batch_5_9_14_18 + batch_10_17_18 + batch_5_10_14_18
   + batch_3_16_18 + batch_12_17_18 = 1
 order_19: batch_19 + batch_6_8_13_19 = 1
Bounds
End
