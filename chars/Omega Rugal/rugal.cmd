;-| Defauts|-------------------------------------------------------
[Defaults]
command.time = 15
command.buffer.time = 1

;---------------------------------------------------------

[Command]
name = "�G���h"
command = ~D,F,D,F,c
time = 30

[Command]
name = "�S"
command = ~D,B,D,B,c
time = 30

[Command]
name = "�u���E"
command = ~D,F,D,B,c
time = 30

[Command]
name = "MAX�v���b�V���["
command = ~D,F,D,B, z
time = 30

[Command]
name = "�I���K"
command = ~D,B,D,B, z
time = 30

[Command]
name = "�t�F�j�b�N�X"
command = ~D,F,D,F,z
time = 30

;---------------------------------------------------------

[Command]
name = "�T�C�N����"
command = ~D,B,D,B, y
time = 30
[Command]
name = "�T�C�N����"
command = ~D,B,D,B, x
time = 30

[Command]
name = "2300"
command = ~D,F,D,F, x
time = 30
[Command]
name = "2300"
command = ~D,F,D,F, y
time = 30

[Command]
name = "�փ���"
command = ~D,F,D,F, b
time = 30
[Command]
name = "�փ���"
command = ~D,F,D,F, a
time = 30

[Command]
name = "���v���b�V���["
command = ~D,B,D,B, b
time = 30
[Command]
name = "��v���b�V���["
command = ~D,B,D,B, a
time = 30


;-| �K�E�Z |------------------------------------------------------
[Command]
name = "���[��A"
command = ~D,D,y
time = 30
[Command]
name = "���[��B"
command = ~D,D,x
time = 30
[Command]
name = "���[��C"
command = ~D,D,b
time = 30
[Command]
name = "���[��D"
command = ~D,D,a
time = 30

[Command]
name = "��G�N�X"
command = ~F,D,DB,x
time = 30
[Command]
name = "���G�N�X"
command = ~F,D,DB, y
time = 30

[Command]
name = "��r�[�X"
command = ~D,DB,B, a
time = 30
[Command]
name = "���r�[�X"
command = ~D,DB,B, b
time = 30

[Command]
name = "��o�j�V���O"
command = ~D,DB,B, x
time = 30
[Command]
name = "���o�j�V���O"
command = ~D,DB,B, y
time = 30

[Command]
name = "��O���r�f�B"
command = ~D,DF,F, y
time = 30
[Command]
name = "���O���r�f�B"
command = ~D,DF,F, x
time = 30

[Command]
name = "��J�C�U�["
command = ~B,D,DF,x
time = 30
[Command]
name = "���J�C�U�["
command = ~B,D,DF,y
time = 30

[Command]
name = "��_�[�N"
command = ~F,D DF, a
time = 30
[Command]
name = "���_�[�N"
command = ~F,D DF, b
time = 30

[Command]
name = "���"
command = ~D,DF,F, y
time = 30
[Command]
name = "����"
command = ~D,DF,F, x
time = 30

[Command]
name = "���������a"
command = ~D,DF,F, a
time = 30
[Command]
name = "���������b"
command = ~D,DF,F, b
time = 30


;-| �Q�񉟂��Z |-----------------------------------------------------------


[Command]
name = "�ً}���O"
command = x+a
time = 1

[Command]
name = "�ً}���O"
command = z
time = 1

[Command]
name = "�ً}�����"
command = /$B,x+a
time = 10

[Command]
name = "�ً}�����"
command = /$B,z
time = 10

;-| �Q�񉟂��Z |-----------------------------------------------------------
[Command]
name = "FF"     
command = F, F
time = 10

[Command]
name = "BB"     
command = B, B
time = 10

;-| �Q�E�R�̓��������Z |-----------------------------------------------
[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "�ӂ���΂�"
command = y+b
time = 1

[Command]
name = "�ӂ���΂�"
command = c
time = 1

;-| �����ƃ{�^���ŏo���Z |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-| �{�^���ݒ�i������Ȃ��j|---------------------------------------------------------
[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "start"
command = s
time = 1

;-| �������ςȂ��ݒ�i������Ȃ��j-------------------------------------------------------
[Command]
name = "��������x"
command = /$x
time = 1

[Command]
name = "��������y"
command = /$y
time = 1

[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup" 
command = /$U
time = 1

[Command]
name = "holddown"
command = /$D
time = 1


; ���̋L�q���͐�΂ɏ����Ȃ��ł��������B
[Statedef -1]

;===========================================================================


;-------------------------------------------------------------------------------
;-------------------------Comandos de AI By Zelgadis----------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------

[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 2340
triggerall = command = "2300"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact


;---------------------------------------------------------------------------
;�S�b�h�G���h
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 2800
triggerall = command = "�G���h"
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;�u���E
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 2600
triggerall = command = "�u���E"
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
;---------------------------------------------------------------------------
;�S
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 2700
triggerall = command = "�S"
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;�J�C�U�[�t�F�j�b�N�X
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 2500
triggerall = command = "�t�F�j�b�N�X"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
;---------------------------------------------------------------------------
;�f�B�X�g���N�V�����E�I���K
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 2400
triggerall = command = "�I���K"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
;---------------------------------------------------------------------------
;�M�K���e�b�N�T�C�N����
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 2200
triggerall = command = "�T�C�N����"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
;---------------------------------------------------------------------------
;�W�F�m�T�C�h�w����
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 2100
triggerall = command = "�փ���"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;MAX�M�K���e�b�N�v���b�V���[
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 2300
triggerall = command = "MAX�v���b�V���["
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
;---------------------------------------------------------------------------
;���M�K���e�b�N�v���b�V���[
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 2001
triggerall = command = "���v���b�V���["
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
;---------------------------------------------------------------------------
;��M�K���e�b�N�v���b�V���[
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 2000
triggerall = command = "��v���b�V���["
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;===========================================================================
;---------------------------------------------------------------------------


;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;�S�b�h���[��A
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1300
triggerall = command = "���[��A"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
;---------------------------------------------------------------------------
;�S�b�h���[��B
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1310
triggerall = command = "���[��B"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
;---------------------------------------------------------------------------
;�S�b�h���[��C
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1320
triggerall = command = "���[��C"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
;---------------------------------------------------------------------------
;�S�b�h���[��D
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1330
triggerall = command = "���[��D"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
;---------------------------------------------------------------------------
;�����K�[���G�N�X�L���[�W����
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1610
triggerall = command = "���G�N�X"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
;---------------------------------------------------------------------------
;�ニ�K�[���G�N�X�L���[�W����
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1600
triggerall = command = "��G�N�X"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
;---------------------------------------------------------------------------
;���r�[�X�f�B�X�g���N�V����
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1420
triggerall = command = "���r�[�X"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
;---------------------------------------------------------------------------
;��r�[�X�f�B�X�g���N�V����
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1400
triggerall = command = "��r�[�X"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;���o�j�V���O���b�V��
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1510
triggerall = command = "���o�j�V���O"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
;---------------------------------------------------------------------------
;��o�j�V���O���b�V��
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1500
triggerall = command = "��o�j�V���O"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
;---------------------------------------------------------------------------
;���O���r�f�B�X�}�b�V��
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1210
triggerall = command = "���O���r�f�B"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact
;---------------------------------------------------------------------------
;��O���r�f�B�X�}�b�V��
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1200
triggerall = command = "��O���r�f�B"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact
;---------------------------------------------------------------------------
;���J�C�U�[�E�F�[�u
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1101
triggerall = command = "���J�C�U�["
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
;---------------------------------------------------------------------------
;��J�C�U�[�E�F�[�u
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1100
triggerall = command = "��J�C�U�["
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
;---------------------------------------------------------------------------
;���_�[�N�W�F�m�T�C�h
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1010
triggerall = command = "���_�[�N"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
;---------------------------------------------------------------------------
;��_�[�N�W�F�m�T�C�h
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1000
triggerall = command = "��_�[�N"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
;---------------------------------------------------------------------------
;��󕗌�
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1700
triggerall = command = "���"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
;---------------------------------------------------------------------------
;���󕗌�
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1701
triggerall = command = "����"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
;---------------------------------------------------------------------------
;���󕗌�
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 11000
triggerall = command = "���������a"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;���󕗌�
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 10050
triggerall = command = "���������b"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
;---------------------------------------------------------------------------


;===========================================================================
;---------------------------------------------------------------------------

;�ӂ���΂��U��
[State -1, Stand Light Punch]
type = ChangeState
value = 590
triggerall = (command = "y" && command = "b") || command = "c"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;�󒆂ӂ���΂��U��
[State -1, Stand Light Punch]
type = ChangeState
value = 690
triggerall = (command = "y" && command = "b") || command = "c"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact

;---------------------------------------------------------------------------
;�ً}�����
[State -1, Taunt]
type = ChangeState
value = 701
triggerall = command = "holdback"
triggerall = (command = "x" && command = "a") || command = "z"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;�ً}���O
[State -1, Taunt]
type = ChangeState
value = 700
triggerall = (command = "x" && command = "a") || command = "z"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;�_�b�V��
[State -1, Run Fwd]
type = ChangeState
triggerall = var(50) = 0
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;��ރ_�b�V��
[State -1, Run Back]
type = ChangeState
triggerall = var(50) = 0
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;p����
[State -1, Kung Fu Throw]
type = ChangeState
triggerall = var(50) = 0
value = 800
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;---------------------------------------------------------------------------
;k����
[State -1, Kung Fu Throw]
type = ChangeState
value = 850
triggerall = command = "b"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H
triggerall = var(50) = 0
;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch Close
[State -1, Stand Light Punch Close]
type = ChangeState
value = 205
triggerall = p2bodydist X <= 10
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100

;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100

;Stand Medium Punch Close
[State -1, Stand Medium Punch Close]
type = ChangeState
value = 215
triggerall = p2bodydist X <= 10
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [400,409])&& movecontact
trigger5 = (stateno = [430,439])&& movecontact
trigger6 = stateno = 100

;Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [400,409])&& movecontact
trigger5 = (stateno = [430,439])&& movecontact
trigger6 = stateno = 100

;---------------------------------------------------------------------------

;Stand Light Kick Close
[State -1, Stand Light Kick Close]
type = ChangeState
value = 235
triggerall = p2bodydist X <= 10
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [400,409])&& movecontact
trigger4 = stateno = 100

;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [400,409])&& movecontact
trigger4 = stateno = 100

;Stand Medium Kick Close
[State -1, Stand Medium Kick Close]
type = ChangeState
value = 245
triggerall = p2bodydist X <= 10
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,219])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [400,419])&& movecontact
trigger5 = (stateno = [430,439])&& movecontact
trigger6 = stateno = 100

;Stand Medium Kick
[State -1, Stand Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,219])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [400,419])&& movecontact
trigger5 = (stateno = [430,439])&& movecontact
trigger6 = stateno = 100

;---------------------------------------------------------------------------
;����
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
triggerall = var(50) = 0
;---------------------------------------------------------------------------

;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl  

;Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [400,409])&& movecontact
trigger5 = (stateno = [430,439])&& movecontact   

;---------------------------------------------------------------------------

;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [400,409])&& movecontact  

;Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,219])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [400,419])&& movecontact
trigger5 = (stateno = [430,439])&& movecontact
trigger6 = stateno = 100  

;---------------------------------------------------------------------------
;�󒆎�p���`
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = stateno != 106
trigger1 = ctrl
triggerall = var(50) = 0

;---------------------------------------------------------------------------
;�󒆋��p���`
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = stateno != 106
trigger1 = ctrl
triggerall = var(50) = 0

;---------------------------------------------------------------------------
;�󒆎�L�b�N
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = stateno != 106
trigger1 = ctrl
triggerall = var(50) = 0
;---------------------------------------------------------------------------
;�󒆎΂ߋ��L�b�N
[State -1, Jump Strong Kick]
type = ChangeState
value = 645
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = stateno != 106
trigger1 = ctrl
triggerall = var(50) = 0



;--------------------------------------------


