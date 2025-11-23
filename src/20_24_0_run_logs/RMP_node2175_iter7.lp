\ Model JOBPRP_RMP_2175
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x36511feb7e5c7701
Minimize
  98 batch_1 + 91.2 batch_5 + 77.2 batch_9 + 78.4 batch_10 + 65.2 batch_14
   + 74.8 batch_15 + 89.2 batch_17 + 77.2 batch_18 + 61.2 batch_19
   + 123.2 batch_1_17_18 + 105.6 batch_3_12_16 + 115.2 batch_2_7_11
   + 117.2 batch_1_5_18 + 119.2 batch_1_5_9 + 125.2 batch_5_10_17_19
   + 118 batch_0_4_8_14_19 + 117.2 batch_0_4_8_15 + 113.2 batch_1_9_14_19
   + 111.2 batch_1_14_18_19 + 121.2 batch_0_4_5_8 + 131.2 batch_10_14_15_18
   + 119.1999935298778 batch_6_10_13_14 + 135.2 batch_5_6_13_15
   + 127.2 batch_5_9_17 + 123.2 batch_5_15_17 + 139.2 batch_5_10_15_18
   + 109.2 batch_0_4_8_14 + 109.2 batch_6_13_14_18 + 133.2 batch_1_15_17
   + 121.2 batch_9_10_18_19 + 121.2 batch_6_13_17_19
   + 127.2 batch_9_10_17_19 + 125.2 batch_6_10_13_18 + 127.2 batch_1_9_17
   + 127.2 batch_5_9_17_19
Subject To
 order_0: batch_0_4_8_14_19 + batch_0_4_8_15 + batch_0_4_5_8
   + batch_0_4_8_14 = 1
 order_1: batch_1 + batch_1_17_18 + batch_1_5_18 + batch_1_5_9
   + batch_1_9_14_19 + batch_1_14_18_19 + batch_1_15_17 + batch_1_9_17 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16 = 1
 order_4: batch_0_4_8_14_19 + batch_0_4_8_15 + batch_0_4_5_8
   + batch_0_4_8_14 = 1
 order_5: batch_5 + batch_1_5_18 + batch_1_5_9 + batch_5_10_17_19
   + batch_0_4_5_8 + batch_5_6_13_15 + batch_5_9_17 + batch_5_15_17
   + batch_5_10_15_18 + batch_5_9_17_19 = 1
 order_6: batch_6_10_13_14 + batch_5_6_13_15 + batch_6_13_14_18
   + batch_6_13_17_19 + batch_6_10_13_18 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_0_4_8_14_19 + batch_0_4_8_15 + batch_0_4_5_8
   + batch_0_4_8_14 = 1
 order_9: batch_9 + batch_1_5_9 + batch_1_9_14_19 + batch_5_9_17
   + batch_9_10_18_19 + batch_9_10_17_19 + batch_1_9_17 + batch_5_9_17_19
   = 1
 order_10: batch_10 + batch_5_10_17_19 + batch_10_14_15_18
   + batch_6_10_13_14 + batch_5_10_15_18 + batch_9_10_18_19
   + batch_9_10_17_19 + batch_6_10_13_18 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_12_16 = 1
 order_13: batch_6_10_13_14 + batch_5_6_13_15 + batch_6_13_14_18
   + batch_6_13_17_19 + batch_6_10_13_18 = 1
 order_14: batch_14 + batch_0_4_8_14_19 + batch_1_9_14_19
   + batch_1_14_18_19 + batch_10_14_15_18 + batch_6_10_13_14
   + batch_0_4_8_14 + batch_6_13_14_18 = 1
 order_15: batch_15 + batch_0_4_8_15 + batch_10_14_15_18 + batch_5_6_13_15
   + batch_5_15_17 + batch_5_10_15_18 + batch_1_15_17 = 1
 order_16: batch_3_12_16 = 1
 order_17: batch_17 + batch_1_17_18 + batch_5_10_17_19 + batch_5_9_17
   + batch_5_15_17 + batch_1_15_17 + batch_6_13_17_19 + batch_9_10_17_19
   + batch_1_9_17 + batch_5_9_17_19 = 1
 order_18: batch_18 + batch_1_17_18 + batch_1_5_18 + batch_1_14_18_19
   + batch_10_14_15_18 + batch_5_10_15_18 + batch_6_13_14_18
   + batch_9_10_18_19 + batch_6_10_13_18 = 1
 order_19: batch_19 + batch_5_10_17_19 + batch_0_4_8_14_19
   + batch_1_9_14_19 + batch_1_14_18_19 + batch_9_10_18_19
   + batch_6_13_17_19 + batch_9_10_17_19 + batch_5_9_17_19 = 1
Bounds
End
