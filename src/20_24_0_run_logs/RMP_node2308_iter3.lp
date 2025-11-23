\ Model JOBPRP_RMP_2308
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x40718b764e39fa75
Minimize
  77.2 batch_9 + 78.4 batch_10 + 89.6 batch_12 + 70.4 batch_13
   + 65.2 batch_14 + 74.8 batch_15 + 61.2 batch_19 + 115.2 batch_6_8_18_19
   + 105.6 batch_3_12_16 + 115.2 batch_2_7_11 + 123.2 batch_5_14_15_17
   + 118 batch_3_12_16_19 + 130.4 batch_3_10_15_16 + 125.2 batch_5_10_17_19
   + 130 batch_12_13_15_19 + 118.4 batch_3_10_13_16 + 129.2 batch_0_1_4_13
   + 137.2 batch_0_1_4_15 + 127.2 batch_5_9_17_19 + 119.2 batch_5_10_17
   + 139.2 batch_9_10_12_14
Subject To
 order_0: batch_0_1_4_13 + batch_0_1_4_15 = 1
 order_1: batch_0_1_4_13 + batch_0_1_4_15 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16 + batch_3_12_16_19 + batch_3_10_15_16
   + batch_3_10_13_16 = 1
 order_4: batch_0_1_4_13 + batch_0_1_4_15 = 1
 order_5: batch_5_14_15_17 + batch_5_10_17_19 + batch_5_9_17_19
   + batch_5_10_17 = 1
 order_6: batch_6_8_18_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_6_8_18_19 = 1
 order_9: batch_9 + batch_5_9_17_19 + batch_9_10_12_14 = 1
 order_10: batch_10 + batch_3_10_15_16 + batch_5_10_17_19
   + batch_3_10_13_16 + batch_5_10_17 + batch_9_10_12_14 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_3_12_16 + batch_3_12_16_19 + batch_12_13_15_19
   + batch_9_10_12_14 = 1
 order_13: batch_13 + batch_12_13_15_19 + batch_3_10_13_16 + batch_0_1_4_13
   = 1
 order_14: batch_14 + batch_5_14_15_17 + batch_9_10_12_14 = 1
 order_15: batch_15 + batch_5_14_15_17 + batch_3_10_15_16
   + batch_12_13_15_19 + batch_0_1_4_15 = 1
 order_16: batch_3_12_16 + batch_3_12_16_19 + batch_3_10_15_16
   + batch_3_10_13_16 = 1
 order_17: batch_5_14_15_17 + batch_5_10_17_19 + batch_5_9_17_19
   + batch_5_10_17 = 1
 order_18: batch_6_8_18_19 = 1
 order_19: batch_19 + batch_6_8_18_19 + batch_3_12_16_19 + batch_5_10_17_19
   + batch_12_13_15_19 + batch_5_9_17_19 = 1
Bounds
End
