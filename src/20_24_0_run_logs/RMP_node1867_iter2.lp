\ Model JOBPRP_RMP_1867
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xe955c9f118b424f7
Minimize
  91.2 batch_5 + 72.4 batch_8 + 77.2 batch_9 + 89.6 batch_12 + 65.2 batch_14
   + 74.8 batch_15 + 123.2 batch_1_17_18 + 105.6 batch_3_12_16
   + 115.2 batch_2_7_11 + 132 batch_8_12_14_15 + 117.2 batch_3_5_16
   + 117.2 batch_5_6_13_19 + 119.2 batch_0_4_8_10 + 133.2 batch_5_8_12
   + 119.2 batch_5_8_9 + 137.2 batch_3_9_15_16 + 119.2 batch_8_12_15
   + 115.2 batch_0_4_10_15 + 132 batch_0_4_9_10 + 136 batch_3_9_14_16
   + 142 batch_9_12_14_15 + 127.2 batch_5_9_12 + 124 batch_6_12_13_19
   + 126 batch_3_8_14_16 + 99.2 batch_8_9_14 + 124 batch_8_9_12
   + 107.2 batch_6_13_14_19
Subject To
 order_0: batch_0_4_8_10 + batch_0_4_10_15 + batch_0_4_9_10 = 1
 order_1: batch_1_17_18 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16 + batch_3_5_16 + batch_3_9_15_16 + batch_3_9_14_16
   + batch_3_8_14_16 = 1
 order_4: batch_0_4_8_10 + batch_0_4_10_15 + batch_0_4_9_10 = 1
 order_5: batch_5 + batch_3_5_16 + batch_5_6_13_19 + batch_5_8_12
   + batch_5_8_9 + batch_5_9_12 = 1
 order_6: batch_5_6_13_19 + batch_6_12_13_19 + batch_6_13_14_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_8_12_14_15 + batch_0_4_8_10 + batch_5_8_12
   + batch_5_8_9 + batch_8_12_15 + batch_3_8_14_16 + batch_8_9_14
   + batch_8_9_12 = 1
 order_9: batch_9 + batch_5_8_9 + batch_3_9_15_16 + batch_0_4_9_10
   + batch_3_9_14_16 + batch_9_12_14_15 + batch_5_9_12 + batch_8_9_14
   + batch_8_9_12 = 1
 order_10: batch_0_4_8_10 + batch_0_4_10_15 + batch_0_4_9_10 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_3_12_16 + batch_8_12_14_15 + batch_5_8_12
   + batch_8_12_15 + batch_9_12_14_15 + batch_5_9_12 + batch_6_12_13_19
   + batch_8_9_12 = 1
 order_13: batch_5_6_13_19 + batch_6_12_13_19 + batch_6_13_14_19 = 1
 order_14: batch_14 + batch_8_12_14_15 + batch_3_9_14_16 + batch_9_12_14_15
   + batch_3_8_14_16 + batch_8_9_14 + batch_6_13_14_19 = 1
 order_15: batch_15 + batch_8_12_14_15 + batch_3_9_15_16 + batch_8_12_15
   + batch_0_4_10_15 + batch_9_12_14_15 = 1
 order_16: batch_3_12_16 + batch_3_5_16 + batch_3_9_15_16 + batch_3_9_14_16
   + batch_3_8_14_16 = 1
 order_17: batch_1_17_18 = 1
 order_18: batch_1_17_18 = 1
 order_19: batch_5_6_13_19 + batch_6_12_13_19 + batch_6_13_14_19 = 1
Bounds
End
