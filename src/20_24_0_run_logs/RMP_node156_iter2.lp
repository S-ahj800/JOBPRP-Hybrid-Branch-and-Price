\ Model JOBPRP_RMP_156
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x3b872fe2c27bde
Minimize
  91.2 batch_5 + 78.4 batch_10 + 70.4 batch_13 + 61.2 batch_19
   + 123.2 batch_1_17_18 + 115.2 batch_2_7_11 + 117.2 batch_0_4_14_15_16
   + 127.2 batch_5_9_12_19 + 125.2 batch_3_6_8 + 122 batch_9_12_13_19
   + 121.2 batch_5_10_13_19 + 119.2 batch_5_10_13
Subject To
 order_0: batch_0_4_14_15_16 = 1
 order_1: batch_1_17_18 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_6_8 = 1
 order_4: batch_0_4_14_15_16 = 1
 order_5: batch_5 + batch_5_9_12_19 + batch_5_10_13_19 + batch_5_10_13 = 1
 order_6: batch_3_6_8 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_3_6_8 = 1
 order_9: batch_5_9_12_19 + batch_9_12_13_19 = 1
 order_10: batch_10 + batch_5_10_13_19 + batch_5_10_13 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_5_9_12_19 + batch_9_12_13_19 = 1
 order_13: batch_13 + batch_9_12_13_19 + batch_5_10_13_19 + batch_5_10_13
   = 1
 order_14: batch_0_4_14_15_16 = 1
 order_15: batch_0_4_14_15_16 = 1
 order_16: batch_0_4_14_15_16 = 1
 order_17: batch_1_17_18 = 1
 order_18: batch_1_17_18 = 1
 order_19: batch_19 + batch_5_9_12_19 + batch_9_12_13_19 + batch_5_10_13_19
   = 1
Bounds
End
