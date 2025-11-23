\ Model JOBPRP_RMP_747
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x35b125960c0e3956
Minimize
  83.6 batch_3 + 91.2 batch_5 + 77.2 batch_9 + 78.4 batch_10 + 89.6 batch_12
   + 74.8 batch_15 + 77.2 batch_18 + 115.2 batch_2_7_11
   + 123.2 batch_0_4_10_15_16 + 117.2 batch_1_14_17 + 127.2 batch_0_4_12_16
   + 137.2 batch_0_4_15_16_18 + 126 batch_6_8_12 + 111.2 batch_3_10_13_19
   + 119.2 batch_3_5_13_19 + 127.2 batch_5_9_12 + 114 batch_3_9_13_19
   + 121.2 batch_9_10_18 + 101.2 batch_9_13_18_19 + 115.2 batch_0_4_10_16
   + 121.2 batch_3_9_10 + 119.2 batch_3_5_9 + 123.2 batch_5_6_8
   + 111.2 batch_5_9_13_19 + 139.2 batch_5_10_15_18 + 127.2 batch_5_12_18
   + 125.2 batch_3_6_8 + 135.2 batch_5_9_15_18
Subject To
 order_0: batch_0_4_10_15_16 + batch_0_4_12_16 + batch_0_4_15_16_18
   + batch_0_4_10_16 = 1
 order_1: batch_1_14_17 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3 + batch_3_10_13_19 + batch_3_5_13_19 + batch_3_9_13_19
   + batch_3_9_10 + batch_3_5_9 + batch_3_6_8 = 1
 order_4: batch_0_4_10_15_16 + batch_0_4_12_16 + batch_0_4_15_16_18
   + batch_0_4_10_16 = 1
 order_5: batch_5 + batch_3_5_13_19 + batch_5_9_12 + batch_3_5_9
   + batch_5_6_8 + batch_5_9_13_19 + batch_5_10_15_18 + batch_5_12_18
   + batch_5_9_15_18 = 1
 order_6: batch_6_8_12 + batch_5_6_8 + batch_3_6_8 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_6_8_12 + batch_5_6_8 + batch_3_6_8 = 1
 order_9: batch_9 + batch_5_9_12 + batch_3_9_13_19 + batch_9_10_18
   + batch_9_13_18_19 + batch_3_9_10 + batch_3_5_9 + batch_5_9_13_19
   + batch_5_9_15_18 = 1
 order_10: batch_10 + batch_0_4_10_15_16 + batch_3_10_13_19 + batch_9_10_18
   + batch_0_4_10_16 + batch_3_9_10 + batch_5_10_15_18 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_0_4_12_16 + batch_6_8_12 + batch_5_9_12
   + batch_5_12_18 = 1
 order_13: batch_3_10_13_19 + batch_3_5_13_19 + batch_3_9_13_19
   + batch_9_13_18_19 + batch_5_9_13_19 = 1
 order_14: batch_1_14_17 = 1
 order_15: batch_15 + batch_0_4_10_15_16 + batch_0_4_15_16_18
   + batch_5_10_15_18 + batch_5_9_15_18 = 1
 order_16: batch_0_4_10_15_16 + batch_0_4_12_16 + batch_0_4_15_16_18
   + batch_0_4_10_16 = 1
 order_17: batch_1_14_17 = 1
 order_18: batch_18 + batch_0_4_15_16_18 + batch_9_10_18 + batch_9_13_18_19
   + batch_5_10_15_18 + batch_5_12_18 + batch_5_9_15_18 = 1
 order_19: batch_3_10_13_19 + batch_3_5_13_19 + batch_3_9_13_19
   + batch_9_13_18_19 + batch_5_9_13_19 = 1
Bounds
End
