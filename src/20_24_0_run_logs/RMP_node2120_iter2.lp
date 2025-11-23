\ Model JOBPRP_RMP_2120
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x44bec284aee1cb1e
Minimize
  83.6 batch_3 + 91.2 batch_5 + 89.2 batch_6 + 72.4 batch_8 + 77.2 batch_9
   + 89.6 batch_12 + 70.4 batch_13 + 65.2 batch_14 + 74.8 batch_15
   + 61.2 batch_19 + 123.2 batch_1_17_18 + 115.2 batch_2_7_11
   + 123.2 batch_0_4_10_15_16 + 105.2 batch_8_9_13_14_19
   + 134 batch_6_12_15_19 + 127.2 batch_5_9_12_19 + 119.2 batch_3_5_13_14
   + 117.2 batch_3_5_14_19 + 119.2 batch_8_12_15 + 124 batch_8_9_12_19
   + 130 batch_6_9_13_15 + 126 batch_6_9_12 + 120 batch_3_8_13_14
   + 113.2 batch_3_8_13_19 + 118 batch_3_8_9 + 119.2 batch_3_5_9
   + 105.2 batch_6_9_13_19 + 119.2 batch_5_8_9_13 + 128 batch_6_12_14_19
Subject To
 order_0: batch_0_4_10_15_16 = 1
 order_1: batch_1_17_18 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3 + batch_3_5_13_14 + batch_3_5_14_19 + batch_3_8_13_14
   + batch_3_8_13_19 + batch_3_8_9 + batch_3_5_9 = 1
 order_4: batch_0_4_10_15_16 = 1
 order_5: batch_5 + batch_5_9_12_19 + batch_3_5_13_14 + batch_3_5_14_19
   + batch_3_5_9 + batch_5_8_9_13 = 1
 order_6: batch_6 + batch_6_12_15_19 + batch_6_9_13_15 + batch_6_9_12
   + batch_6_9_13_19 + batch_6_12_14_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_8_9_13_14_19 + batch_8_12_15 + batch_8_9_12_19
   + batch_3_8_13_14 + batch_3_8_13_19 + batch_3_8_9 + batch_5_8_9_13 = 1
 order_9: batch_9 + batch_8_9_13_14_19 + batch_5_9_12_19 + batch_8_9_12_19
   + batch_6_9_13_15 + batch_6_9_12 + batch_3_8_9 + batch_3_5_9
   + batch_6_9_13_19 + batch_5_8_9_13 = 1
 order_10: batch_0_4_10_15_16 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_6_12_15_19 + batch_5_9_12_19 + batch_8_12_15
   + batch_8_9_12_19 + batch_6_9_12 + batch_6_12_14_19 = 1
 order_13: batch_13 + batch_8_9_13_14_19 + batch_3_5_13_14
   + batch_6_9_13_15 + batch_3_8_13_14 + batch_3_8_13_19 + batch_6_9_13_19
   + batch_5_8_9_13 = 1
 order_14: batch_14 + batch_8_9_13_14_19 + batch_3_5_13_14
   + batch_3_5_14_19 + batch_3_8_13_14 + batch_6_12_14_19 = 1
 order_15: batch_15 + batch_0_4_10_15_16 + batch_6_12_15_19 + batch_8_12_15
   + batch_6_9_13_15 = 1
 order_16: batch_0_4_10_15_16 = 1
 order_17: batch_1_17_18 = 1
 order_18: batch_1_17_18 = 1
 order_19: batch_19 + batch_8_9_13_14_19 + batch_6_12_15_19
   + batch_5_9_12_19 + batch_3_5_14_19 + batch_8_9_12_19 + batch_3_8_13_19
   + batch_6_9_13_19 + batch_6_12_14_19 = 1
Bounds
End
