\ Model JOBPRP_RMP_1000
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xe955c9f118b424f7
Minimize
  83.6 batch_3 + 91.2 batch_5 + 77.2 batch_9 + 89.6 batch_12 + 70.4 batch_13
   + 65.2 batch_14 + 77.2 batch_18 + 61.2 batch_19 + 115.2 batch_2_7_11
   + 123.2 batch_0_4_10_15_16 + 135.2 batch_0_4_5_13_16
   + 138 batch_9_12_14_18 + 127.2 batch_1_9_17 + 133.2 batch_0_4_13_16_18
   + 125.2 batch_1_13_17 + 127.2 batch_0_4_12_16 + 129.2 batch_5_12_18_19
   + 113.2 batch_6_8_14_19 + 116 batch_3_9_18_19 + 125.2 batch_3_6_8
   + 121.2 batch_1_17_19 + 123.2 batch_5_6_8 + 105.2 batch_9_13_14_18
   + 139.2 batch_10_12_14_15 + 111.2 batch_3_14_18 + 115.2 batch_3_14_18_19
   + 132 batch_9_12_13_14
Subject To
 order_0: batch_0_4_10_15_16 + batch_0_4_5_13_16 + batch_0_4_13_16_18
   + batch_0_4_12_16 = 1
 order_1: batch_1_9_17 + batch_1_13_17 + batch_1_17_19 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3 + batch_3_9_18_19 + batch_3_6_8 + batch_3_14_18
   + batch_3_14_18_19 = 1
 order_4: batch_0_4_10_15_16 + batch_0_4_5_13_16 + batch_0_4_13_16_18
   + batch_0_4_12_16 = 1
 order_5: batch_5 + batch_0_4_5_13_16 + batch_5_12_18_19 + batch_5_6_8 = 1
 order_6: batch_6_8_14_19 + batch_3_6_8 + batch_5_6_8 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_6_8_14_19 + batch_3_6_8 + batch_5_6_8 = 1
 order_9: batch_9 + batch_9_12_14_18 + batch_1_9_17 + batch_3_9_18_19
   + batch_9_13_14_18 + batch_9_12_13_14 = 1
 order_10: batch_0_4_10_15_16 + batch_10_12_14_15 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_9_12_14_18 + batch_0_4_12_16 + batch_5_12_18_19
   + batch_10_12_14_15 + batch_9_12_13_14 = 1
 order_13: batch_13 + batch_0_4_5_13_16 + batch_0_4_13_16_18
   + batch_1_13_17 + batch_9_13_14_18 + batch_9_12_13_14 = 1
 order_14: batch_14 + batch_9_12_14_18 + batch_6_8_14_19 + batch_9_13_14_18
   + batch_10_12_14_15 + batch_3_14_18 + batch_3_14_18_19
   + batch_9_12_13_14 = 1
 order_15: batch_0_4_10_15_16 + batch_10_12_14_15 = 1
 order_16: batch_0_4_10_15_16 + batch_0_4_5_13_16 + batch_0_4_13_16_18
   + batch_0_4_12_16 = 1
 order_17: batch_1_9_17 + batch_1_13_17 + batch_1_17_19 = 1
 order_18: batch_18 + batch_9_12_14_18 + batch_0_4_13_16_18
   + batch_5_12_18_19 + batch_3_9_18_19 + batch_9_13_14_18 + batch_3_14_18
   + batch_3_14_18_19 = 1
 order_19: batch_19 + batch_5_12_18_19 + batch_6_8_14_19 + batch_3_9_18_19
   + batch_1_17_19 + batch_3_14_18_19 = 1
Bounds
End
