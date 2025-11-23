\ Model JOBPRP_RMP_116
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xd26d24b87b6b697d
Minimize
  83.6 batch_3 + 91.2 batch_5 + 77.2 batch_9 + 78.4 batch_10 + 89.6 batch_12
   + 65.2 batch_14 + 61.2 batch_19 + 123.2 batch_1_17_18
   + 115.2 batch_2_7_11 + 133.2 batch_5_10_12_19 + 117.2 batch_0_4_14_15_16
   + 109.2 batch_6_8_13_19 + 115.2 batch_6_8_13_14 + 127.2 batch_5_9_12_19
   + 125.2 batch_3_9_12 + 121.2 batch_3_9_10_19 + 118.4 batch_3_10_12
   + 139.2 batch_0_4_9_15_16 + 125.2 batch_5_9_10 + 109.2 batch_6_8_13
   + 129.2 batch_5_9_10_14 + 107.2 batch_5_9
Subject To
 order_0: batch_0_4_14_15_16 + batch_0_4_9_15_16 = 1
 order_1: batch_1_17_18 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3 + batch_3_9_12 + batch_3_9_10_19 + batch_3_10_12 = 1
 order_4: batch_0_4_14_15_16 + batch_0_4_9_15_16 = 1
 order_5: batch_5 + batch_5_10_12_19 + batch_5_9_12_19 + batch_5_9_10
   + batch_5_9_10_14 + batch_5_9 = 1
 order_6: batch_6_8_13_19 + batch_6_8_13_14 + batch_6_8_13 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_6_8_13_19 + batch_6_8_13_14 + batch_6_8_13 = 1
 order_9: batch_9 + batch_5_9_12_19 + batch_3_9_12 + batch_3_9_10_19
   + batch_0_4_9_15_16 + batch_5_9_10 + batch_5_9_10_14 + batch_5_9 = 1
 order_10: batch_10 + batch_5_10_12_19 + batch_3_9_10_19 + batch_3_10_12
   + batch_5_9_10 + batch_5_9_10_14 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_5_10_12_19 + batch_5_9_12_19 + batch_3_9_12
   + batch_3_10_12 = 1
 order_13: batch_6_8_13_19 + batch_6_8_13_14 + batch_6_8_13 = 1
 order_14: batch_14 + batch_0_4_14_15_16 + batch_6_8_13_14
   + batch_5_9_10_14 = 1
 order_15: batch_0_4_14_15_16 + batch_0_4_9_15_16 = 1
 order_16: batch_0_4_14_15_16 + batch_0_4_9_15_16 = 1
 order_17: batch_1_17_18 = 1
 order_18: batch_1_17_18 = 1
 order_19: batch_19 + batch_5_10_12_19 + batch_6_8_13_19 + batch_5_9_12_19
   + batch_3_9_10_19 = 1
Bounds
End
