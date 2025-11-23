\ Model JOBPRP_RMP_824
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x35b125960c0e3956
Minimize
  83.6 batch_3 + 91.2 batch_5 + 77.2 batch_9 + 78.4 batch_10 + 89.6 batch_12
   + 74.8 batch_15 + 77.2 batch_18 + 61.2 batch_19 + 115.2 batch_2_7_11
   + 133.2 batch_5_10_12_19 + 127.2 batch_1_10_17
   + 117.2 batch_0_4_14_15_16 + 127.2 batch_1_9_17 + 127.2 batch_5_9_12_19
   + 115.2 batch_3_5_18 + 129.2 batch_5_12_18_19 + 127.2 batch_0_4_5_14_16
   + 116 batch_3_9_18_19 + 113.2 batch_5_9_18_19 + 133.2 batch_1_15_17
   + 121.2 batch_1_17_19 + 133.2 batch_3_5_15_19 + 132 batch_6_8_13_15
   + 133.2 batch_5_12_15_19 + 121.2 batch_3_9_10 + 121.2 batch_3_9_10_19
   + 133.2 batch_0_4_14_16_18 + 109.2 batch_6_8_13
Subject To
 order_0: batch_0_4_14_15_16 + batch_0_4_5_14_16 + batch_0_4_14_16_18 = 1
 order_1: batch_1_10_17 + batch_1_9_17 + batch_1_15_17 + batch_1_17_19 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3 + batch_3_5_18 + batch_3_9_18_19 + batch_3_5_15_19
   + batch_3_9_10 + batch_3_9_10_19 = 1
 order_4: batch_0_4_14_15_16 + batch_0_4_5_14_16 + batch_0_4_14_16_18 = 1
 order_5: batch_5 + batch_5_10_12_19 + batch_5_9_12_19 + batch_3_5_18
   + batch_5_12_18_19 + batch_0_4_5_14_16 + batch_5_9_18_19
   + batch_3_5_15_19 + batch_5_12_15_19 = 1
 order_6: batch_6_8_13_15 + batch_6_8_13 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_6_8_13_15 + batch_6_8_13 = 1
 order_9: batch_9 + batch_1_9_17 + batch_5_9_12_19 + batch_3_9_18_19
   + batch_5_9_18_19 + batch_3_9_10 + batch_3_9_10_19 = 1
 order_10: batch_10 + batch_5_10_12_19 + batch_1_10_17 + batch_3_9_10
   + batch_3_9_10_19 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_5_10_12_19 + batch_5_9_12_19 + batch_5_12_18_19
   + batch_5_12_15_19 = 1
 order_13: batch_6_8_13_15 + batch_6_8_13 = 1
 order_14: batch_0_4_14_15_16 + batch_0_4_5_14_16 + batch_0_4_14_16_18 = 1
 order_15: batch_15 + batch_0_4_14_15_16 + batch_1_15_17 + batch_3_5_15_19
   + batch_6_8_13_15 + batch_5_12_15_19 = 1
 order_16: batch_0_4_14_15_16 + batch_0_4_5_14_16 + batch_0_4_14_16_18 = 1
 order_17: batch_1_10_17 + batch_1_9_17 + batch_1_15_17 + batch_1_17_19
   = 1
 order_18: batch_18 + batch_3_5_18 + batch_5_12_18_19 + batch_3_9_18_19
   + batch_5_9_18_19 + batch_0_4_14_16_18 = 1
 order_19: batch_19 + batch_5_10_12_19 + batch_5_9_12_19 + batch_5_12_18_19
   + batch_3_9_18_19 + batch_5_9_18_19 + batch_1_17_19 + batch_3_5_15_19
   + batch_5_12_15_19 + batch_3_9_10_19 = 1
Bounds
End
