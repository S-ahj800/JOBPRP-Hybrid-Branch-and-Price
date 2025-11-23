\ Model JOBPRP_RMP_127
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x7d5a6f195da1bd58
Minimize
  83.6 batch_3 + 91.2 batch_5 + 77.2 batch_9 + 78.4 batch_10 + 89.6 batch_12
   + 65.2 batch_14 + 74.8 batch_15 + 61.2 batch_19 + 123.2 batch_1_17_18
   + 115.2 batch_2_7_11 + 133.2 batch_5_10_12_19 + 115.2 batch_6_8_13_14
   + 121.2 batch_3_9_10_19 + 127.2 batch_0_4_5_14_16
   + 141.2 batch_5_9_10_15 + 118.4 batch_3_10_12 + 129.2 batch_0_4_9_16
   + 141.199997 batch_9_10_14_15_19 + 129.2 batch_0_4_9_14_16
   + 132 batch_6_8_13_15 + 133.2 batch_5_12_15_19 + 107.2 batch_5_9
   + 101.6 batch_3_12 + 137.2 batch_5_12_14_15 + 138.8 batch_0_4_12_16_19
   + 109.2 batch_6_8_13
Subject To
 order_0: batch_0_4_5_14_16 + batch_0_4_9_16 + batch_0_4_9_14_16
   + batch_0_4_12_16_19 = 1
 order_1: batch_1_17_18 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3 + batch_3_9_10_19 + batch_3_10_12 + batch_3_12 = 1
 order_4: batch_0_4_5_14_16 + batch_0_4_9_16 + batch_0_4_9_14_16
   + batch_0_4_12_16_19 = 1
 order_5: batch_5 + batch_5_10_12_19 + batch_0_4_5_14_16 + batch_5_9_10_15
   + batch_5_12_15_19 + batch_5_9 + batch_5_12_14_15 = 1
 order_6: batch_6_8_13_14 + batch_6_8_13_15 + batch_6_8_13 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_6_8_13_14 + batch_6_8_13_15 + batch_6_8_13 = 1
 order_9: batch_9 + batch_3_9_10_19 + batch_5_9_10_15 + batch_0_4_9_16
   + batch_9_10_14_15_19 + batch_0_4_9_14_16 + batch_5_9 = 1
 order_10: batch_10 + batch_5_10_12_19 + batch_3_9_10_19 + batch_5_9_10_15
   + batch_3_10_12 + batch_9_10_14_15_19 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_5_10_12_19 + batch_3_10_12 + batch_5_12_15_19
   + batch_3_12 + batch_5_12_14_15 + batch_0_4_12_16_19 = 1
 order_13: batch_6_8_13_14 + batch_6_8_13_15 + batch_6_8_13 = 1
 order_14: batch_14 + batch_6_8_13_14 + batch_0_4_5_14_16
   + batch_9_10_14_15_19 + batch_0_4_9_14_16 + batch_5_12_14_15 = 1
 order_15: batch_15 + batch_5_9_10_15 + batch_9_10_14_15_19
   + batch_6_8_13_15 + batch_5_12_15_19 + batch_5_12_14_15 = 1
 order_16: batch_0_4_5_14_16 + batch_0_4_9_16 + batch_0_4_9_14_16
   + batch_0_4_12_16_19 = 1
 order_17: batch_1_17_18 = 1
 order_18: batch_1_17_18 = 1
 order_19: batch_19 + batch_5_10_12_19 + batch_3_9_10_19
   + batch_9_10_14_15_19 + batch_5_12_15_19 + batch_0_4_12_16_19 = 1
Bounds
End
