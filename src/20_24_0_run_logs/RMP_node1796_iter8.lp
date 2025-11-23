\ Model JOBPRP_RMP_1796
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x976f74cdceb3c356
Minimize
  91.2 batch_5 + 89.2 batch_6 + 72.4 batch_8 + 77.2 batch_9 + 70.4 batch_13
   + 65.2 batch_14 + 77.2 batch_18 + 61.2 batch_19 + 115.2 batch_2_7_11
   + 127.2 batch_1_10_17 + 117.2 batch_0_4_14_15_16 + 119.2 batch_3_8_12
   + 124 batch_3_12_13_19 + 107.2 batch_6_9_18_19 + 115.2 batch_6_9_14_18
   + 111.2 batch_8_13_14_18_19 + 123.2 batch_5_8_13_18
   + 117.2 batch_5_9_13_18 + 117.2 batch_5_9_13_14_19
   + 115.2 batch_5_8_13_14 + 116.4 batch_3_12_13 + 139.2 batch_0_4_9_15_16
   + 115.2 batch_5_8_13_19 + 111.2 batch_5_9_13_19 + 101.6 batch_3_12
   + 127.2 batch_0_4_13_15_16 + 113.2 batch_0_4_15_16 + 107.2 batch_5_8
Subject To
 order_0: batch_0_4_14_15_16 + batch_0_4_9_15_16 + batch_0_4_13_15_16
   + batch_0_4_15_16 = 1
 order_1: batch_1_10_17 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_8_12 + batch_3_12_13_19 + batch_3_12_13 + batch_3_12 = 1
 order_4: batch_0_4_14_15_16 + batch_0_4_9_15_16 + batch_0_4_13_15_16
   + batch_0_4_15_16 = 1
 order_5: batch_5 + batch_5_8_13_18 + batch_5_9_13_18 + batch_5_9_13_14_19
   + batch_5_8_13_14 + batch_5_8_13_19 + batch_5_9_13_19 + batch_5_8 = 1
 order_6: batch_6 + batch_6_9_18_19 + batch_6_9_14_18 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_3_8_12 + batch_8_13_14_18_19 + batch_5_8_13_18
   + batch_5_8_13_14 + batch_5_8_13_19 + batch_5_8 = 1
 order_9: batch_9 + batch_6_9_18_19 + batch_6_9_14_18 + batch_5_9_13_18
   + batch_5_9_13_14_19 + batch_0_4_9_15_16 + batch_5_9_13_19 = 1
 order_10: batch_1_10_17 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_8_12 + batch_3_12_13_19 + batch_3_12_13 + batch_3_12
   = 1
 order_13: batch_13 + batch_3_12_13_19 + batch_8_13_14_18_19
   + batch_5_8_13_18 + batch_5_9_13_18 + batch_5_9_13_14_19
   + batch_5_8_13_14 + batch_3_12_13 + batch_5_8_13_19 + batch_5_9_13_19
   + batch_0_4_13_15_16 = 1
 order_14: batch_14 + batch_0_4_14_15_16 + batch_6_9_14_18
   + batch_8_13_14_18_19 + batch_5_9_13_14_19 + batch_5_8_13_14 = 1
 order_15: batch_0_4_14_15_16 + batch_0_4_9_15_16 + batch_0_4_13_15_16
   + batch_0_4_15_16 = 1
 order_16: batch_0_4_14_15_16 + batch_0_4_9_15_16 + batch_0_4_13_15_16
   + batch_0_4_15_16 = 1
 order_17: batch_1_10_17 = 1
 order_18: batch_18 + batch_6_9_18_19 + batch_6_9_14_18
   + batch_8_13_14_18_19 + batch_5_8_13_18 + batch_5_9_13_18 = 1
 order_19: batch_19 + batch_3_12_13_19 + batch_6_9_18_19
   + batch_8_13_14_18_19 + batch_5_9_13_14_19 + batch_5_8_13_19
   + batch_5_9_13_19 = 1
Bounds
End
