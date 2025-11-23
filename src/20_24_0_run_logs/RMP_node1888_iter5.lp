\ Model JOBPRP_RMP_1888
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x33081f5a8203d252
Minimize
  83.6 batch_3 + 91.2 batch_5 + 77.2 batch_9 + 78.4 batch_10 + 65.2 batch_14
   + 74.8 batch_15 + 123.2 batch_1_17_18 + 115.2 batch_2_7_11
   + 115.2 batch_0_4_8_14_16 + 119.2 batch_5_6_9_19 + 125.2 batch_5_6_10_19
   + 129.2 batch_5_12_13 + 131.2 batch_9_10_12_13 + 143.2 batch_5_12_13_15
   + 130.4 batch_10_12_13_15 + 119.2 batch_3_5_9 + 127.2 batch_3_6_14_19
   + 134 batch_9_12_13_15 + 119.2 batch_3_6_19 + 126.4 batch_3_10_15
   + 131.2 batch_3_5_15 + 111.2 batch_0_4_8_16 + 123.2 batch_3_5_10
Subject To
 order_0: batch_0_4_8_14_16 + batch_0_4_8_16 = 1
 order_1: batch_1_17_18 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3 + batch_3_5_9 + batch_3_6_14_19 + batch_3_6_19
   + batch_3_10_15 + batch_3_5_15 + batch_3_5_10 = 1
 order_4: batch_0_4_8_14_16 + batch_0_4_8_16 = 1
 order_5: batch_5 + batch_5_6_9_19 + batch_5_6_10_19 + batch_5_12_13
   + batch_5_12_13_15 + batch_3_5_9 + batch_3_5_15 + batch_3_5_10 = 1
 order_6: batch_5_6_9_19 + batch_5_6_10_19 + batch_3_6_14_19 + batch_3_6_19
   = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_0_4_8_14_16 + batch_0_4_8_16 = 1
 order_9: batch_9 + batch_5_6_9_19 + batch_9_10_12_13 + batch_3_5_9
   + batch_9_12_13_15 = 1
 order_10: batch_10 + batch_5_6_10_19 + batch_9_10_12_13
   + batch_10_12_13_15 + batch_3_10_15 + batch_3_5_10 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_5_12_13 + batch_9_10_12_13 + batch_5_12_13_15
   + batch_10_12_13_15 + batch_9_12_13_15 = 1
 order_13: batch_5_12_13 + batch_9_10_12_13 + batch_5_12_13_15
   + batch_10_12_13_15 + batch_9_12_13_15 = 1
 order_14: batch_14 + batch_0_4_8_14_16 + batch_3_6_14_19 = 1
 order_15: batch_15 + batch_5_12_13_15 + batch_10_12_13_15
   + batch_9_12_13_15 + batch_3_10_15 + batch_3_5_15 = 1
 order_16: batch_0_4_8_14_16 + batch_0_4_8_16 = 1
 order_17: batch_1_17_18 = 1
 order_18: batch_1_17_18 = 1
 order_19: batch_5_6_9_19 + batch_5_6_10_19 + batch_3_6_14_19
   + batch_3_6_19 = 1
Bounds
End
