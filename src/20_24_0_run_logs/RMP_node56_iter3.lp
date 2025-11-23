\ Model JOBPRP_RMP_56
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x1648715b565ee951
Minimize
  78.4 batch_10 + 70.4 batch_13 + 65.2 batch_14 + 61.2 batch_19
   + 123.2 batch_1_17_18 + 115.2 batch_2_7_11 + 115.6 batch_3_12_15
   + 113.2 batch_6_8_9_19 + 135.2 batch_0_4_5_13_16
   + 127.2 batch_0_4_5_14_16 + 105.2 batch_10_13_14 + 94.4 batch_10_13
Subject To
 order_0: batch_0_4_5_13_16 + batch_0_4_5_14_16 = 1
 order_1: batch_1_17_18 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_15 = 1
 order_4: batch_0_4_5_13_16 + batch_0_4_5_14_16 = 1
 order_5: batch_0_4_5_13_16 + batch_0_4_5_14_16 = 1
 order_6: batch_6_8_9_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_6_8_9_19 = 1
 order_9: batch_6_8_9_19 = 1
 order_10: batch_10 + batch_10_13_14 + batch_10_13 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_12_15 = 1
 order_13: batch_13 + batch_0_4_5_13_16 + batch_10_13_14 + batch_10_13 = 1
 order_14: batch_14 + batch_0_4_5_14_16 + batch_10_13_14 = 1
 order_15: batch_3_12_15 = 1
 order_16: batch_0_4_5_13_16 + batch_0_4_5_14_16 = 1
 order_17: batch_1_17_18 = 1
 order_18: batch_1_17_18 = 1
 order_19: batch_19 + batch_6_8_9_19 = 1
Bounds
End
