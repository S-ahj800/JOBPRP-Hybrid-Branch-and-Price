\ Model JOBPRP_RMP_800
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xa36e896e52ca1737
Minimize
  83.6 batch_3 + 91.2 batch_5 + 77.2 batch_9 + 89.6 batch_12 + 77.2 batch_18
   + 115.2 batch_2_7_11 + 127.2 batch_1_10_17 + 117.2 batch_0_4_14_15_16
   + 109.2 batch_6_8_13_19 + 126 batch_6_8_12 + 115.2 batch_3_13_18_19
   + 122 batch_9_12_13_19 + 101.2 batch_9_13_18_19 + 114 batch_3_9_13_19
   + 116 batch_3_9_18 + 127.2 batch_5_12_18 + 123.2 batch_5_6_8
   + 125.2 batch_3_6_8 + 127.2 batch_5_9_12
Subject To
 order_0: batch_0_4_14_15_16 = 1
 order_1: batch_1_10_17 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3 + batch_3_13_18_19 + batch_3_9_13_19 + batch_3_9_18
   + batch_3_6_8 = 1
 order_4: batch_0_4_14_15_16 = 1
 order_5: batch_5 + batch_5_12_18 + batch_5_6_8 + batch_5_9_12 = 1
 order_6: batch_6_8_13_19 + batch_6_8_12 + batch_5_6_8 + batch_3_6_8 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_6_8_13_19 + batch_6_8_12 + batch_5_6_8 + batch_3_6_8 = 1
 order_9: batch_9 + batch_9_12_13_19 + batch_9_13_18_19 + batch_3_9_13_19
   + batch_3_9_18 + batch_5_9_12 = 1
 order_10: batch_1_10_17 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_6_8_12 + batch_9_12_13_19 + batch_5_12_18
   + batch_5_9_12 = 1
 order_13: batch_6_8_13_19 + batch_3_13_18_19 + batch_9_12_13_19
   + batch_9_13_18_19 + batch_3_9_13_19 = 1
 order_14: batch_0_4_14_15_16 = 1
 order_15: batch_0_4_14_15_16 = 1
 order_16: batch_0_4_14_15_16 = 1
 order_17: batch_1_10_17 = 1
 order_18: batch_18 + batch_3_13_18_19 + batch_9_13_18_19 + batch_3_9_18
   + batch_5_12_18 = 1
 order_19: batch_6_8_13_19 + batch_3_13_18_19 + batch_9_12_13_19
   + batch_9_13_18_19 + batch_3_9_13_19 = 1
Bounds
End
