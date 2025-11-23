\ Model JOBPRP_RMP_608
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xcd7bd34248be4424
Minimize
  77.2 batch_9 + 78.4 batch_10 + 65.2 batch_14 + 77.2 batch_18
   + 61.2 batch_19 + 115.2 batch_2_7_11 + 115.6 batch_3_12_15
   + 135.2 batch_0_4_5_13_16 + 127.2 batch_1_9_17 + 113.2 batch_6_8_14_19
   + 123.2 batch_6_8_10_19 + 121.2 batch_1_17_19 + 103.2 batch_9_14_18_19
   + 109.2 batch_10_14_18 + 87.2 batch_14_18
Subject To
 order_0: batch_0_4_5_13_16 = 1
 order_1: batch_1_9_17 + batch_1_17_19 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_15 = 1
 order_4: batch_0_4_5_13_16 = 1
 order_5: batch_0_4_5_13_16 = 1
 order_6: batch_6_8_14_19 + batch_6_8_10_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_6_8_14_19 + batch_6_8_10_19 = 1
 order_9: batch_9 + batch_1_9_17 + batch_9_14_18_19 = 1
 order_10: batch_10 + batch_6_8_10_19 + batch_10_14_18 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_12_15 = 1
 order_13: batch_0_4_5_13_16 = 1
 order_14: batch_14 + batch_6_8_14_19 + batch_9_14_18_19 + batch_10_14_18
   + batch_14_18 = 1
 order_15: batch_3_12_15 = 1
 order_16: batch_0_4_5_13_16 = 1
 order_17: batch_1_9_17 + batch_1_17_19 = 1
 order_18: batch_18 + batch_9_14_18_19 + batch_10_14_18 + batch_14_18 = 1
 order_19: batch_19 + batch_6_8_14_19 + batch_6_8_10_19 + batch_1_17_19
   + batch_9_14_18_19 = 1
Bounds
End
