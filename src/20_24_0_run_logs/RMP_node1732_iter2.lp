\ Model JOBPRP_RMP_1732
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x5f2b79be637d731c
Minimize
  78.4 batch_10 + 70.4 batch_13 + 74.8 batch_15 + 77.2 batch_18
   + 115.2 batch_2_7_11 + 127.2 batch_1_10_17 + 117.2 batch_0_4_14_15_16
   + 119.2 batch_3_8_12 + 119.2 batch_5_6_9_19 + 125.2 batch_1_13_17
   + 123.2 batch_5_6_18 + 135.2 batch_9_10_13_15_19 + 125.2 batch_5_6_10
   + 123.2 batch_0_4_13_14_16
Subject To
 order_0: batch_0_4_14_15_16 + batch_0_4_13_14_16 = 1
 order_1: batch_1_10_17 + batch_1_13_17 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_8_12 = 1
 order_4: batch_0_4_14_15_16 + batch_0_4_13_14_16 = 1
 order_5: batch_5_6_9_19 + batch_5_6_18 + batch_5_6_10 = 1
 order_6: batch_5_6_9_19 + batch_5_6_18 + batch_5_6_10 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_3_8_12 = 1
 order_9: batch_5_6_9_19 + batch_9_10_13_15_19 = 1
 order_10: batch_10 + batch_1_10_17 + batch_9_10_13_15_19 + batch_5_6_10
   = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_8_12 = 1
 order_13: batch_13 + batch_1_13_17 + batch_9_10_13_15_19
   + batch_0_4_13_14_16 = 1
 order_14: batch_0_4_14_15_16 + batch_0_4_13_14_16 = 1
 order_15: batch_15 + batch_0_4_14_15_16 + batch_9_10_13_15_19 = 1
 order_16: batch_0_4_14_15_16 + batch_0_4_13_14_16 = 1
 order_17: batch_1_10_17 + batch_1_13_17 = 1
 order_18: batch_18 + batch_5_6_18 = 1
 order_19: batch_5_6_9_19 + batch_9_10_13_15_19 = 1
Bounds
End
