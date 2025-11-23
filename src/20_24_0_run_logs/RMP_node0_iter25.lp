\ Model JOBPRP_RMP_0
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xd53db39cabf3fafc
Minimize
  81.2 batch_0 + 98 batch_1 + 82.4 batch_2 + 83.6 batch_3 + 64.4 batch_4
   + 91.2 batch_5 + 89.2 batch_6 + 81.2 batch_7 + 72.4 batch_8
   + 77.2 batch_9 + 78.4 batch_10 + 84.4 batch_11 + 89.6 batch_12
   + 70.4 batch_13 + 65.2 batch_14 + 74.8 batch_15 + 57.6 batch_16
   + 89.2 batch_17 + 77.2 batch_18 + 61.2 batch_19
   + 137.2 batch_0_4_13_14_16_19 + 125.2 batch_0_4_5_13_14
   + 127.2 batch_0_4_10_13_15 + 119.2 batch_0_4_10_14_15
   + 131.2 batch_0_10_13_14_15 + 117.2 batch_9_11_13_16_19
   + 107.2 batch_8_9_13_16_19 + 131.2 batch_5_13_16_18_19
   + 133.2 batch_0_5_11_15 + 124.4 batch_4_11_13_15_16
   + 125.2 batch_5_10_11_14 + 119.2 batch_4_6_14_17 + 127.2 batch_0_4_11_12
   + 125.2 batch_6_9_16_18 + 133.2 batch_4_9_10_15_19
   + 115.2 batch_6_8_18_19 + 123.2 batch_1_17_18 + 123.2 batch_5_8_10_16
   + 123.2 batch_8_12_13_15 + 127.2 batch_6_7_12 + 112 batch_4_7_8_14
   + 121.2 batch_1_3_4 + 121.2 batch_2_3_18 + 111.2 batch_2_7_9
Subject To
 order_0: batch_0 + batch_0_4_13_14_16_19 + batch_0_4_5_13_14
   + batch_0_4_10_13_15 + batch_0_4_10_14_15 + batch_0_10_13_14_15
   + batch_0_5_11_15 + batch_0_4_11_12 = 1
 order_1: batch_1 + batch_1_17_18 + batch_1_3_4 = 1
 order_2: batch_2 + batch_2_3_18 + batch_2_7_9 = 1
 order_3: batch_3 + batch_1_3_4 + batch_2_3_18 = 1
 order_4: batch_4 + batch_0_4_13_14_16_19 + batch_0_4_5_13_14
   + batch_0_4_10_13_15 + batch_0_4_10_14_15 + batch_4_11_13_15_16
   + batch_4_6_14_17 + batch_0_4_11_12 + batch_4_9_10_15_19
   + batch_4_7_8_14 + batch_1_3_4 = 1
 order_5: batch_5 + batch_0_4_5_13_14 + batch_5_13_16_18_19
   + batch_0_5_11_15 + batch_5_10_11_14 + batch_5_8_10_16 = 1
 order_6: batch_6 + batch_4_6_14_17 + batch_6_9_16_18 + batch_6_8_18_19
   + batch_6_7_12 = 1
 order_7: batch_7 + batch_6_7_12 + batch_4_7_8_14 + batch_2_7_9 = 1
 order_8: batch_8 + batch_8_9_13_16_19 + batch_6_8_18_19 + batch_5_8_10_16
   + batch_8_12_13_15 + batch_4_7_8_14 = 1
 order_9: batch_9 + batch_9_11_13_16_19 + batch_8_9_13_16_19
   + batch_6_9_16_18 + batch_4_9_10_15_19 + batch_2_7_9 = 1
 order_10: batch_10 + batch_0_4_10_13_15 + batch_0_4_10_14_15
   + batch_0_10_13_14_15 + batch_5_10_11_14 + batch_4_9_10_15_19
   + batch_5_8_10_16 = 1
 order_11: batch_11 + batch_9_11_13_16_19 + batch_0_5_11_15
   + batch_4_11_13_15_16 + batch_5_10_11_14 + batch_0_4_11_12 = 1
 order_12: batch_12 + batch_0_4_11_12 + batch_8_12_13_15 + batch_6_7_12
   = 1
 order_13: batch_13 + batch_0_4_13_14_16_19 + batch_0_4_5_13_14
   + batch_0_4_10_13_15 + batch_0_10_13_14_15 + batch_9_11_13_16_19
   + batch_8_9_13_16_19 + batch_5_13_16_18_19 + batch_4_11_13_15_16
   + batch_8_12_13_15 = 1
 order_14: batch_14 + batch_0_4_13_14_16_19 + batch_0_4_5_13_14
   + batch_0_4_10_14_15 + batch_0_10_13_14_15 + batch_5_10_11_14
   + batch_4_6_14_17 + batch_4_7_8_14 = 1
 order_15: batch_15 + batch_0_4_10_13_15 + batch_0_4_10_14_15
   + batch_0_10_13_14_15 + batch_0_5_11_15 + batch_4_11_13_15_16
   + batch_4_9_10_15_19 + batch_8_12_13_15 = 1
 order_16: batch_16 + batch_0_4_13_14_16_19 + batch_9_11_13_16_19
   + batch_8_9_13_16_19 + batch_5_13_16_18_19 + batch_4_11_13_15_16
   + batch_6_9_16_18 + batch_5_8_10_16 = 1
 order_17: batch_17 + batch_4_6_14_17 + batch_1_17_18 = 1
 order_18: batch_18 + batch_5_13_16_18_19 + batch_6_9_16_18
   + batch_6_8_18_19 + batch_1_17_18 + batch_2_3_18 = 1
 order_19: batch_19 + batch_0_4_13_14_16_19 + batch_9_11_13_16_19
   + batch_8_9_13_16_19 + batch_5_13_16_18_19 + batch_4_9_10_15_19
   + batch_6_8_18_19 = 1
Bounds
End
