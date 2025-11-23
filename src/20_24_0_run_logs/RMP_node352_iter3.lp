\ Model JOBPRP_RMP_352
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xdb90d805e9cde018
Minimize
  91.2 batch_5 + 77.2 batch_9 + 70.4 batch_13 + 65.2 batch_14
   + 61.2 batch_19 + 115.2 batch_6_8_18_19 + 115.2 batch_2_7_11
   + 127.2 batch_1_10_17 + 117.2 batch_0_4_14_15_16
   + 117.2 batch_5_9_13_14_19 + 117.2 batch_5_9_13_14
   + 127.2 batch_0_4_13_15_16 + 139.2 batch_0_4_9_15_16
   + 125.2 batch_3_9_12 + 116.4 batch_3_12_13 + 101.6 batch_3_12
   + 111.2 batch_5_9_13 + 113.2 batch_0_4_15_16
Subject To
 order_0: batch_0_4_14_15_16 + batch_0_4_13_15_16 + batch_0_4_9_15_16
   + batch_0_4_15_16 = 1
 order_1: batch_1_10_17 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_9_12 + batch_3_12_13 + batch_3_12 = 1
 order_4: batch_0_4_14_15_16 + batch_0_4_13_15_16 + batch_0_4_9_15_16
   + batch_0_4_15_16 = 1
 order_5: batch_5 + batch_5_9_13_14_19 + batch_5_9_13_14 + batch_5_9_13
   = 1
 order_6: batch_6_8_18_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_6_8_18_19 = 1
 order_9: batch_9 + batch_5_9_13_14_19 + batch_5_9_13_14
   + batch_0_4_9_15_16 + batch_3_9_12 + batch_5_9_13 = 1
 order_10: batch_1_10_17 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_9_12 + batch_3_12_13 + batch_3_12 = 1
 order_13: batch_13 + batch_5_9_13_14_19 + batch_5_9_13_14
   + batch_0_4_13_15_16 + batch_3_12_13 + batch_5_9_13 = 1
 order_14: batch_14 + batch_0_4_14_15_16 + batch_5_9_13_14_19
   + batch_5_9_13_14 = 1
 order_15: batch_0_4_14_15_16 + batch_0_4_13_15_16 + batch_0_4_9_15_16
   + batch_0_4_15_16 = 1
 order_16: batch_0_4_14_15_16 + batch_0_4_13_15_16 + batch_0_4_9_15_16
   + batch_0_4_15_16 = 1
 order_17: batch_1_10_17 = 1
 order_18: batch_6_8_18_19 = 1
 order_19: batch_19 + batch_6_8_18_19 + batch_5_9_13_14_19 = 1
Bounds
End
