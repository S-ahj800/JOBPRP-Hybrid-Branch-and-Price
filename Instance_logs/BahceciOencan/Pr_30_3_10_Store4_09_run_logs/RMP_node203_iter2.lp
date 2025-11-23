\ Model JOBPRP_RMP_203
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x5920f9ddc385d52
Minimize
  55.6 batch_2 + 31.6 batch_3 + 67.2 batch_5 + 60.4 batch_6 + 61.2 batch_7
   + 60.4 batch_10 + 67.2 batch_11 + 70.4 batch_0_2_4_8_10
   + 56.8 batch_1_3_9 + 77.2 batch_2_7_10_11 + 79.2 batch_2_5_10_11
   + 66.4 batch_0_4_8_10 + 71.2 batch_0_4_5_8 + 75.2 batch_2_5_10
   + 77.2 batch_1_7_9 + 73.2 batch_3_6_7 + 73.2 batch_6_7_11
   + 72.4 batch_1_6_9
Subject To
 order_0: batch_0_2_4_8_10 + batch_0_4_8_10 + batch_0_4_5_8 = 1
 order_1: batch_1_3_9 + batch_1_7_9 + batch_1_6_9 = 1
 order_2: batch_2 + batch_0_2_4_8_10 + batch_2_7_10_11 + batch_2_5_10_11
   + batch_2_5_10 = 1
 order_3: batch_3 + batch_1_3_9 + batch_3_6_7 = 1
 order_4: batch_0_2_4_8_10 + batch_0_4_8_10 + batch_0_4_5_8 = 1
 order_5: batch_5 + batch_2_5_10_11 + batch_0_4_5_8 + batch_2_5_10 = 1
 order_6: batch_6 + batch_3_6_7 + batch_6_7_11 + batch_1_6_9 = 1
 order_7: batch_7 + batch_2_7_10_11 + batch_1_7_9 + batch_3_6_7
   + batch_6_7_11 = 1
 order_8: batch_0_2_4_8_10 + batch_0_4_8_10 + batch_0_4_5_8 = 1
 order_9: batch_1_3_9 + batch_1_7_9 + batch_1_6_9 = 1
 order_10: batch_10 + batch_0_2_4_8_10 + batch_2_7_10_11 + batch_2_5_10_11
   + batch_0_4_8_10 + batch_2_5_10 = 1
 order_11: batch_11 + batch_2_7_10_11 + batch_2_5_10_11 + batch_6_7_11 = 1
Bounds
End
