\ Model JOBPRP_RMP_1547
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x648e1468607d0443
Minimize
  77.2 batch_9 + 70.4 batch_13 + 65.2 batch_14 + 77.2 batch_18
   + 61.2 batch_19 + 115.2 batch_2_7_11 + 115.6 batch_3_12_15
   + 127.2 batch_1_10_17 + 123.2 batch_5_6_18_19 + 127.2 batch_0_4_8_13_16
   + 105.2 batch_9_13_14_18_19 + 105.2 batch_9_13_14_18
   + 120 batch_0_4_8_16_19 + 111.2 batch_0_4_8_16 + 121.2 batch_5_6_14_19
   + 87.2 batch_9_13
Subject To
 order_0: batch_0_4_8_13_16 + batch_0_4_8_16_19 + batch_0_4_8_16 = 1
 order_1: batch_1_10_17 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_15 = 1
 order_4: batch_0_4_8_13_16 + batch_0_4_8_16_19 + batch_0_4_8_16 = 1
 order_5: batch_5_6_18_19 + batch_5_6_14_19 = 1
 order_6: batch_5_6_18_19 + batch_5_6_14_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_0_4_8_13_16 + batch_0_4_8_16_19 + batch_0_4_8_16 = 1
 order_9: batch_9 + batch_9_13_14_18_19 + batch_9_13_14_18 + batch_9_13
   = 1
 order_10: batch_1_10_17 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_12_15 = 1
 order_13: batch_13 + batch_0_4_8_13_16 + batch_9_13_14_18_19
   + batch_9_13_14_18 + batch_9_13 = 1
 order_14: batch_14 + batch_9_13_14_18_19 + batch_9_13_14_18
   + batch_5_6_14_19 = 1
 order_15: batch_3_12_15 = 1
 order_16: batch_0_4_8_13_16 + batch_0_4_8_16_19 + batch_0_4_8_16 = 1
 order_17: batch_1_10_17 = 1
 order_18: batch_18 + batch_5_6_18_19 + batch_9_13_14_18_19
   + batch_9_13_14_18 = 1
 order_19: batch_19 + batch_5_6_18_19 + batch_9_13_14_18_19
   + batch_0_4_8_16_19 + batch_5_6_14_19 = 1
Bounds
End
