\ Model JOBPRP_RMP_1555
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xfbb51dc947312d01
Minimize
  89.2 batch_6 + 77.2 batch_9 + 70.4 batch_13 + 65.2 batch_14
   + 74.8 batch_15 + 77.2 batch_18 + 61.2 batch_19 + 115.2 batch_2_7_11
   + 121.2 batch_3_5_12 + 127.2 batch_1_10_17 + 115.2 batch_0_4_8_14_16
   + 127.2 batch_0_4_8_13_16 + 136 batch_9_13_15_18_19
   + 105.2 batch_9_13_14_18_19 + 128 batch_6_9_15 + 128 batch_6_9_15_19
   + 89.2 batch_13_14_18 + 111.2 batch_0_4_8_16
Subject To
 order_0: batch_0_4_8_14_16 + batch_0_4_8_13_16 + batch_0_4_8_16 = 1
 order_1: batch_1_10_17 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_5_12 = 1
 order_4: batch_0_4_8_14_16 + batch_0_4_8_13_16 + batch_0_4_8_16 = 1
 order_5: batch_3_5_12 = 1
 order_6: batch_6 + batch_6_9_15 + batch_6_9_15_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_0_4_8_14_16 + batch_0_4_8_13_16 + batch_0_4_8_16 = 1
 order_9: batch_9 + batch_9_13_15_18_19 + batch_9_13_14_18_19
   + batch_6_9_15 + batch_6_9_15_19 = 1
 order_10: batch_1_10_17 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_5_12 = 1
 order_13: batch_13 + batch_0_4_8_13_16 + batch_9_13_15_18_19
   + batch_9_13_14_18_19 + batch_13_14_18 = 1
 order_14: batch_14 + batch_0_4_8_14_16 + batch_9_13_14_18_19
   + batch_13_14_18 = 1
 order_15: batch_15 + batch_9_13_15_18_19 + batch_6_9_15 + batch_6_9_15_19
   = 1
 order_16: batch_0_4_8_14_16 + batch_0_4_8_13_16 + batch_0_4_8_16 = 1
 order_17: batch_1_10_17 = 1
 order_18: batch_18 + batch_9_13_15_18_19 + batch_9_13_14_18_19
   + batch_13_14_18 = 1
 order_19: batch_19 + batch_9_13_15_18_19 + batch_9_13_14_18_19
   + batch_6_9_15_19 = 1
Bounds
End
