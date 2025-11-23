\ Model JOBPRP_RMP_416
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xb42a08583053b203
Minimize
  31.6 batch_1 + 31.6 batch_3 + 60.4 batch_10 + 67.2 batch_11
   + 75.2 batch_5_9_11 + 33.6 batch_1_3 + 75.2 batch_4_6_7_11
   + 66.4 batch_0_2_3_8 + 70.4 batch_0_1_2_8 + 75.2 batch_0_2_8_11
   + 68.4 batch_0_2_8_10
Subject To
 order_0: batch_0_2_3_8 + batch_0_1_2_8 + batch_0_2_8_11 + batch_0_2_8_10
   = 1
 order_1: batch_1 + batch_1_3 + batch_0_1_2_8 = 1
 order_2: batch_0_2_3_8 + batch_0_1_2_8 + batch_0_2_8_11 + batch_0_2_8_10
   = 1
 order_3: batch_3 + batch_1_3 + batch_0_2_3_8 = 1
 order_4: batch_4_6_7_11 = 1
 order_5: batch_5_9_11 = 1
 order_6: batch_4_6_7_11 = 1
 order_7: batch_4_6_7_11 = 1
 order_8: batch_0_2_3_8 + batch_0_1_2_8 + batch_0_2_8_11 + batch_0_2_8_10
   = 1
 order_9: batch_5_9_11 = 1
 order_10: batch_10 + batch_0_2_8_10 = 1
 order_11: batch_11 + batch_5_9_11 + batch_4_6_7_11 + batch_0_2_8_11 = 1
Bounds
End
