      � H H         ^뗃         ��         :   	synthesis  � ��          ��  �Q � @Q W� w �A �� �� � � q A  "� q �) �i ҩ �� C� [a  r     ��  �9 	� D9 [� z� �) �i ة �� � Y ) � &� t� � �Q ֑ �� G� _I        I� Q� m �A �� �	 �� � @	 K� z� ��  �       �  �     ��        	  Y  #)  *�  2�  :�  R	  Y�  qI  y       	  A  '  .�  6�  >�  U�  ]�  u1  }          ��     v  ��          A     :   clock  A  �     p  �  Y      q          �     :   async_reset  '  �     p  �  #)      q          �     :   reset  .�  �     p  �  *�      q          �     :   clear  6�  �     p  �  2�      q          �     :   start  >�  �     p  �  :�      q          �     @     FQ     ' Q4     Bi  J9      N!     @      FQ     v  �[     FQ      U�     :   a  U�  �     p  �  R	      N!          �     :   b  ]�  �     p  �  Y�      N!          �     @   ?  e�     ' Q4     a�  iy      ma     @      e�     v  �[     e�      u1     :   result  u1  �     p  �  qI     ma          �     :   fin  }  �     p  �  y     q          �     :   fhm_multiplier_w32_smul  ��  �       �  ��  �  �          �A  �  ��         �)  ��  �i          �9     @     ��     ' Q4     ��  �q      �Y     @      ��     v  �[     ��      �)     :   data_in  �)  ��     p  �  �A      �Y          ��     :   conv  ��  ��     p  �  �      q          ��     @     ��     ' Q4     ��  ��      ��     @      ��     v  �[     ��      �i     :   data_out  �i  ��     p  �  ��     ��          ��     :   fhm_multiplier_w32_tconv32  �9  �       �  �Q  ��  �          ީ  �y  ��         �  �a �         	�     @   ?  ��     ' Q4     �	  ��      ��     @      ��     v  �[     ��      �     :   data_in  �  �!     p  �  ީ      ��          �!     :   conv  �a  �!     p  �  �y      q          �!     @   ?  �1     ' Q4     �I  �      �     @      �1     v  �[     �1     �     :   data_out �  �!     p  �  ��     �          �!     :   fhm_multiplier_w32_tconv64 	�  �       � �  �!  �         q A ! (� 0� 8�        Y ) $� ,� 4� <i         D9     :   clock Y �     p  � q      q         �     :   async_reset ) �     p  � A      q         �     :   reset $� �     p  � !      q         �     :   enb ,� �     p  � (�      q         �     :   data_in 4� �     p  � 0�      q         �     :   data_out <i �     p  � 8�     q         �     :   fhm_multiplier_w32_reg1 D9  �       � @Q �  �     @    L	     ' Q4    H! O�     S�     @     L	     v  �[    L	     [�     :   conved_a [�  �     p  � W�    S� cy      �     
    L	  � cy      S�    _� [�     @    kI     ' Q4    ga o1     s     @     kI     v  �[    kI     z�     :   conved_b z�  �     p  � w    s ��      �     
    kI  � ��      s    ~� z�     @   ? ��     ' Q4    �� �q     �Y     @     ��     v  �[    ��     �)     :   conved_result �)  �     p  � �A    �Y ��      �     
    ��  � ��      �Y    � �)     @    ��     ' Q4    �� ��     ��     @     ��     v  �[    ��     �i     :   tmp_a �i  �     p  � ��    �� �9      �     
    ��  � �9      ��    �Q �i     @    �	     ' Q4    �! ��     ��     @     �	     v  �[    �	     ة     :   tmp_b ة  �     p  � ��    �� �y      �     
    �	  � �y      ��    ܑ ة     @   ? �I     ' Q4    �a �1     �     @     �I     v  �[    �I     ��     :   
tmp_result ��  �     p  � �    � ��      �     
    �I  � ��      �    �� ��     :   in_result_tconv_conv �  �     p  � �     q  �      �     :   out_result_tconv_conv Y  �     p  � q     q  �      �     :   mode_tmp )  �     p  � A     q  �      �     :   smul_fin �  �     p  �      q  �      �     :   result_tconv_conv &�  �     p  � "�     q  �      �     @    .�     >     J: *� :Q     @    6i     >     R
 2� :Q     S [�    B! F	 >9     � :Q         I�     Y    L .�         Y    S� 6i           �     >9 "�              �     � "�         Q�       �     M� �              �     \    q  #* m     \    A  *� m     \    !  2� m     \    (�  a� m     \    0� � m     \    8� q m       � q @Q    U� Y� ]y aa eI i1      �     :   	tconv_reg t�  �     E  � q m  �     \    q  #* �A     \    A  *� �A     \    !  2� �A     \    (�  a� �A     \    0�  Y� �A     \    8� A �A       � �) @Q    x� |� �� �� �q �Y      �     :   mode_reg �  �     E  � �) �A  �     @    ��     >     J: �� ��       � �i  �Q    �� �� ��      �     \     �A  J:         \     � ��         \     �� W�         :   conv_a �Q  �     E  � �i ��  �     @    �!     >     R
 �9 �	       � ҩ  �Q    �� �� ��      �     \     �A  R
         \     � �!         \     �� w         :   conv_b ֑  �     E  � ҩ �	  �     �  J:         �I     S ��    A  [ �I     �    �a �y �1     J    �I � ��     � W�         �     �     �< � �1     v  ��         ��     U     ��     FS  FS  �� ��  �     T   = ��  �       �     �1 ��              �     �  R
         	Y     S ��    A  [ 	Y     �    q � A     J    	Y  �     � w              �     �< ) A       �     A ��              �     \     Y  #* @	     \     #)  *� @	     \     *�  2� @	     \     2�  iz @	     \     :�  a� @	     \     R	 �� @	     \     Y� �� @	     \     qI � @	     \     y  @	       � C�  ��   	 �  � $� (� ,� 0i 4Q 89 <!      �     :   mulu G�  �     E  � C� @	  �       � [a �    O� S� Wy      �     \     ީ �         \     �y q         \     �� �A         :   conv_result _I  �     E  � [a K�  �     � �         k     S ��    A  [ k     �    g c1 n�     J    k v� z�     � �A         v�     �     �< r� n�       �     n�  ��              �     S �[    �A �q     S  ޫ    �) � �Y     � �q         ��     Y    ��  a�         Y     �          Y     �� ~�           �     �Y  ��              �     %     �  �  ��     � ��     �   X/home/sajjad/SS20/ASIPMeisterProjects/8/brownieArea/ISE_Framework/fhm_multiplier_w32.vhd ��  �                fhm_multiplier_w32   	synthesis   work      fhm_multiplier_w32   	synthesis   work      fhm_multiplier_w32       work      std_logic_1164       IEEE      standard       std