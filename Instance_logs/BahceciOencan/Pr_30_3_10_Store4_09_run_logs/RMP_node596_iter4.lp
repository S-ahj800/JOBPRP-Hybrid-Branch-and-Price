\ Model JOBPRP_RMP_596
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x6be3ac793fac54e9
Minimize
  54.4 batch_0 + 31.6 batch_1 + 31.6 batch_3 + 67.2 batch_5 + 61.2 batch_7
   + 34.8 batch_9 + 60.4 batch_10 + 67.2 batch_11 + 70.4 batch_2_4_6_8_10
   + 73.2 batch_5_7_11 + 71.2 batch_5_7_9 + 75.2 batch_5_9_11
   + 56.8 batch_1_3_9 + 73.2 batch_7_9_11 + 77.2 batch_1_5_7
   + 71.2 batch_4_5_7_8 + 77.2 batch_1_2_6_7 + 33.6 batch_1_3
   + 75.2 batch_2_6_7_11 + 70.4 batch_0_1_2_6 + 79.2 batch_0_3_7_10
   + 79.2 batch_0_7_10_11 + 70.4 batch_0_2_6_9 + 79.2 batch_3_4_8_11
   + 72.4 batch_0_3_9_10 + 77.2 batch_0_5_9_10
Subject To
 order_0: batch_0 + batch_0_1_2_6 + batch_0_3_7_10 + batch_0_7_10_11
   + batch_0_2_6_9 + batch_0_3_9_10 + batch_0_5_9_10 = 1
 order_1: batch_1 + batch_1_3_9 + batch_1_5_7 + batch_1_2_6_7 + batch_1_3
   + batch_0_1_2_6 = 1
 order_2: batch_2_4_6_8_10 + batch_1_2_6_7 + batch_2_6_7_11 + batch_0_1_2_6
   + batch_0_2_6_9 = 1
 order_3: batch_3 + batch_1_3_9 + batch_1_3 + batch_0_3_7_10
   + batch_3_4_8_11 + batch_0_3_9_10 = 1
 order_4: batch_2_4_6_8_10 + batch_4_5_7_8 + batch_3_4_8_11 = 1
 order_5: batch_5 + batch_5_7_11 + batch_5_7_9 + batch_5_9_11 + batch_1_5_7
   + batch_4_5_7_8 + batch_0_5_9_10 = 1
 order_6: batch_2_4_6_8_10 + batch_1_2_6_7 + batch_2_6_7_11 + batch_0_1_2_6
   + batch_0_2_6_9 = 1
 order_7: batch_7 + batch_5_7_11 + batch_5_7_9 + batch_7_9_11 + batch_1_5_7
   + batch_4_5_7_8 + batch_1_2_6_7 + batch_2_6_7_11 + batch_0_3_7_10
   + batch_0_7_10_11 = 1
 order_8: batch_2_4_6_8_10 + batch_4_5_7_8 + batch_3_4_8_11 = 1
 order_9: batch_9 + batch_5_7_9 + batch_5_9_11 + batch_1_3_9 + batch_7_9_11
   + batch_0_2_6_9 + batch_0_3_9_10 + batch_0_5_9_10 = 1
 order_10: batch_10 + batch_2_4_6_8_10 + batch_0_3_7_10 + batch_0_7_10_11
   + batch_0_3_9_10 + batch_0_5_9_10 = 1
 order_11: batch_11 + batch_5_7_11 + batch_5_9_11 + batch_7_9_11
   + batch_2_6_7_11 + batch_0_7_10_11 + batch_3_4_8_11 = 1
Bounds
End
