\ Model JOBPRP_RMP_1364
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x6829d69e19ffbdf9
Minimize
  77.2 batch_9 + 65.2 batch_14 + 74.8 batch_15 + 77.2 batch_18
   + 61.2 batch_19 + 115.2 batch_2_7_11 + 123.2 batch_0_4_10_15_16
   + 119.2 batch_3_8_12 + 135.2 batch_5_6_13_15 + 117.2 batch_5_6_13_19
   + 121.2 batch_1_17_19 + 133.2 batch_1_15_17 + 127.2 batch_1_9_17
   + 123.2 batch_5_6_13_14 + 119.2 batch_0_4_10_14_16 + 117.2 batch_1_17
   + 138 batch_9_14_15_18_19
Subject To
 order_0: batch_0_4_10_15_16 + batch_0_4_10_14_16 = 1
 order_1: batch_1_17_19 + batch_1_15_17 + batch_1_9_17 + batch_1_17 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_8_12 = 1
 order_4: batch_0_4_10_15_16 + batch_0_4_10_14_16 = 1
 order_5: batch_5_6_13_15 + batch_5_6_13_19 + batch_5_6_13_14 = 1
 order_6: batch_5_6_13_15 + batch_5_6_13_19 + batch_5_6_13_14 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_3_8_12 = 1
 order_9: batch_9 + batch_1_9_17 + batch_9_14_15_18_19 = 1
 order_10: batch_0_4_10_15_16 + batch_0_4_10_14_16 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_8_12 = 1
 order_13: batch_5_6_13_15 + batch_5_6_13_19 + batch_5_6_13_14 = 1
 order_14: batch_14 + batch_5_6_13_14 + batch_0_4_10_14_16
   + batch_9_14_15_18_19 = 1
 order_15: batch_15 + batch_0_4_10_15_16 + batch_5_6_13_15 + batch_1_15_17
   + batch_9_14_15_18_19 = 1
 order_16: batch_0_4_10_15_16 + batch_0_4_10_14_16 = 1
 order_17: batch_1_17_19 + batch_1_15_17 + batch_1_9_17 + batch_1_17 = 1
 order_18: batch_18 + batch_9_14_15_18_19 = 1
 order_19: batch_19 + batch_5_6_13_19 + batch_1_17_19 + batch_9_14_15_18_19
   = 1
Bounds
End
