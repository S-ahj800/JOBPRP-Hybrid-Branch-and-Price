\ Model JOBPRP_RMP_2159
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x36acfa589c62af5
Minimize
  91.2 batch_5 + 89.2 batch_6 + 72.4 batch_8 + 78.4 batch_10 + 89.6 batch_12
   + 65.2 batch_14 + 74.8 batch_15 + 123.2 batch_1_17_18
   + 115.2 batch_2_7_11 + 127.2 batch_5_9_12_19 + 119.2 batch_3_5_13_14
   + 119.2 batch_8_12_15 + 127.2 batch_0_4_12_16 + 124 batch_8_9_12_19
   + 115.2 batch_3_10_13_14 + 120 batch_3_8_13_14
   + 119.1999953408354 batch_5_8_10_14 + 127.2 batch_6_10_12
   + 128.4 batch_3_10_13_15 + 127.2 batch_0_4_5_16 + 119.2 batch_5_8_9_19
   + 123.2 batch_6_9_10_19 + 133.2 batch_0_4_6_16 + 131.2 batch_6_12_15
   + 106.4 batch_3_8_13 + 111.2 batch_0_4_8_16 + 128 batch_9_14_15_19
   + 113.2 batch_0_4_15_16 + 132 batch_8_12_14_15
Subject To
 order_0: batch_0_4_12_16 + batch_0_4_5_16 + batch_0_4_6_16
   + batch_0_4_8_16 + batch_0_4_15_16 = 1
 order_1: batch_1_17_18 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_5_13_14 + batch_3_10_13_14 + batch_3_8_13_14
   + batch_3_10_13_15 + batch_3_8_13 = 1
 order_4: batch_0_4_12_16 + batch_0_4_5_16 + batch_0_4_6_16
   + batch_0_4_8_16 + batch_0_4_15_16 = 1
 order_5: batch_5 + batch_5_9_12_19 + batch_3_5_13_14 + batch_5_8_10_14
   + batch_0_4_5_16 + batch_5_8_9_19 = 1
 order_6: batch_6 + batch_6_10_12 + batch_6_9_10_19 + batch_0_4_6_16
   + batch_6_12_15 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_8_12_15 + batch_8_9_12_19 + batch_3_8_13_14
   + batch_5_8_10_14 + batch_5_8_9_19 + batch_3_8_13 + batch_0_4_8_16
   + batch_8_12_14_15 = 1
 order_9: batch_5_9_12_19 + batch_8_9_12_19 + batch_5_8_9_19
   + batch_6_9_10_19 + batch_9_14_15_19 = 1
 order_10: batch_10 + batch_3_10_13_14 + batch_5_8_10_14 + batch_6_10_12
   + batch_3_10_13_15 + batch_6_9_10_19 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_5_9_12_19 + batch_8_12_15 + batch_0_4_12_16
   + batch_8_9_12_19 + batch_6_10_12 + batch_6_12_15 + batch_8_12_14_15
   = 1
 order_13: batch_3_5_13_14 + batch_3_10_13_14 + batch_3_8_13_14
   + batch_3_10_13_15 + batch_3_8_13 = 1
 order_14: batch_14 + batch_3_5_13_14 + batch_3_10_13_14 + batch_3_8_13_14
   + batch_5_8_10_14 + batch_9_14_15_19 + batch_8_12_14_15 = 1
 order_15: batch_15 + batch_8_12_15 + batch_3_10_13_15 + batch_6_12_15
   + batch_9_14_15_19 + batch_0_4_15_16 + batch_8_12_14_15 = 1
 order_16: batch_0_4_12_16 + batch_0_4_5_16 + batch_0_4_6_16
   + batch_0_4_8_16 + batch_0_4_15_16 = 1
 order_17: batch_1_17_18 = 1
 order_18: batch_1_17_18 = 1
 order_19: batch_5_9_12_19 + batch_8_9_12_19 + batch_5_8_9_19
   + batch_6_9_10_19 + batch_9_14_15_19 = 1
Bounds
End
