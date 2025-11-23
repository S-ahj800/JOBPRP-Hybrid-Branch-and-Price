\ Model JOBPRP_RMP_1328
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x1ad6cf1e70cdc9ef
Minimize
  98 batch_1 + 91.2 batch_5 + 72.4 batch_8 + 78.4 batch_10 + 89.6 batch_12
   + 65.2 batch_14 + 89.2 batch_17 + 105.6 batch_3_12_16
   + 115.2 batch_2_7_11 + 109.2 batch_6_9_13_18 + 123.2 batch_0_4_5_17
   + 127.2 batch_1_10_17 + 132 batch_0_4_8_12 + 126 batch_8_12_15_19
   + 129.2 batch_1_5_8 + 127.2 batch_5_15_17_19 + 126 batch_0_4_8_15_19
   + 129.2 batch_3_10_14_16 + 124 batch_0_4_14_15_19
   + 130 batch_0_4_10_15_19 + 131.2 batch_0_4_5_15_19 + 126 batch_3_8_14_16
   + 117.2 batch_1_14_17 + 119.2 batch_0_4_8_10 + 121.2 batch_0_4_5_8
   + 111.2 batch_0_4_10_14
Subject To
 order_0: batch_0_4_5_17 + batch_0_4_8_12 + batch_0_4_8_15_19
   + batch_0_4_14_15_19 + batch_0_4_10_15_19 + batch_0_4_5_15_19
   + batch_0_4_8_10 + batch_0_4_5_8 + batch_0_4_10_14 = 1
 order_1: batch_1 + batch_1_10_17 + batch_1_5_8 + batch_1_14_17 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16 + batch_3_10_14_16 + batch_3_8_14_16 = 1
 order_4: batch_0_4_5_17 + batch_0_4_8_12 + batch_0_4_8_15_19
   + batch_0_4_14_15_19 + batch_0_4_10_15_19 + batch_0_4_5_15_19
   + batch_0_4_8_10 + batch_0_4_5_8 + batch_0_4_10_14 = 1
 order_5: batch_5 + batch_0_4_5_17 + batch_1_5_8 + batch_5_15_17_19
   + batch_0_4_5_15_19 + batch_0_4_5_8 = 1
 order_6: batch_6_9_13_18 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_0_4_8_12 + batch_8_12_15_19 + batch_1_5_8
   + batch_0_4_8_15_19 + batch_3_8_14_16 + batch_0_4_8_10 + batch_0_4_5_8
   = 1
 order_9: batch_6_9_13_18 = 1
 order_10: batch_10 + batch_1_10_17 + batch_3_10_14_16 + batch_0_4_10_15_19
   + batch_0_4_8_10 + batch_0_4_10_14 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_3_12_16 + batch_0_4_8_12 + batch_8_12_15_19
   = 1
 order_13: batch_6_9_13_18 = 1
 order_14: batch_14 + batch_3_10_14_16 + batch_0_4_14_15_19
   + batch_3_8_14_16 + batch_1_14_17 + batch_0_4_10_14 = 1
 order_15: batch_8_12_15_19 + batch_5_15_17_19 + batch_0_4_8_15_19
   + batch_0_4_14_15_19 + batch_0_4_10_15_19 + batch_0_4_5_15_19 = 1
 order_16: batch_3_12_16 + batch_3_10_14_16 + batch_3_8_14_16 = 1
 order_17: batch_17 + batch_0_4_5_17 + batch_1_10_17 + batch_5_15_17_19
   + batch_1_14_17 = 1
 order_18: batch_6_9_13_18 = 1
 order_19: batch_8_12_15_19 + batch_5_15_17_19 + batch_0_4_8_15_19
   + batch_0_4_14_15_19 + batch_0_4_10_15_19 + batch_0_4_5_15_19 = 1
Bounds
End
