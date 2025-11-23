\ Model JOBPRP_RMP_512
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xf3f56fa9d29974e6
Minimize
  72.4 batch_8 + 78.4 batch_10 + 77.2 batch_18 + 61.2 batch_19
   + 105.6 batch_3_12_16 + 115.2 batch_2_7_11 + 109.2 batch_6_9_13_18
   + 105.2 batch_6_9_13_19 + 137.2 batch_0_1_4_15 + 123.2 batch_6_9_10_13
   + 113.2 batch_5_14_17_19 + 121.2 batch_8_10_18 + 96.3999984 batch_8_10
Subject To
 order_0: batch_0_1_4_15 = 1
 order_1: batch_0_1_4_15 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16 = 1
 order_4: batch_0_1_4_15 = 1
 order_5: batch_5_14_17_19 = 1
 order_6: batch_6_9_13_18 + batch_6_9_13_19 + batch_6_9_10_13 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_8_10_18 + batch_8_10 = 1
 order_9: batch_6_9_13_18 + batch_6_9_13_19 + batch_6_9_10_13 = 1
 order_10: batch_10 + batch_6_9_10_13 + batch_8_10_18 + batch_8_10 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_12_16 = 1
 order_13: batch_6_9_13_18 + batch_6_9_13_19 + batch_6_9_10_13 = 1
 order_14: batch_5_14_17_19 = 1
 order_15: batch_0_1_4_15 = 1
 order_16: batch_3_12_16 = 1
 order_17: batch_5_14_17_19 = 1
 order_18: batch_18 + batch_6_9_13_18 + batch_8_10_18 = 1
 order_19: batch_19 + batch_6_9_13_19 + batch_5_14_17_19 = 1
Bounds
End
