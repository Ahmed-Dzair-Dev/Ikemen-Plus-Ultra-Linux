;��؂̋Z�R�}���h


;-| Default Values |-------------------------------------------------------
[Defaults]
command.time = 15

command.buffer.time = 1


;-| Super Motions |--------------------------------------------------------
[Command];�P�S�A�a
name = "14"
command = ~F,D,B,F, y
time = 25

[Command];�g�@��a
name = "guren"
command = ~D, DB,B, y

[Command];�^�n��
name = "majin"
command = ~D, DF, F, y

[Command];�V�e�f���a
name = "danku"
command = ~D, DF, F, y+b

;-| Special Motions |------------------------------------------------------
[Command]
name = "upper_x"
command = ~F, D, DF, x

[Command]
name = "zero"
command = ~F,DF,D,DB,B, b

[Command]
name = "te"
command = ~D, DF, F, b

[Command]
name = "senpu"
command = ~D, DF, F,b

[Command]
name = "ura"
command = ~D, B, b
time = 20

[Command]
name = "zanba"
command = ~D, DF, F, x

[Command]
name = "a3"
command = ~D, DB, B, a

[Command]
name = "souryu"
command = ~D, DB, B, D, DB, a
time = 20

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCF_xy"
command = ~D, DF, F, x+y

[Command]
name = "QCB_x"
command = ~D, DB, B, x

[Command]
name = "QCB_y"
command = ~D, DB, B, y

[Command]
name = "QCB_xy"
command = ~D, DB, B, x+y

[Command]
name = "FF_ab"
command = F, F, a+b

[Command]
name = "FF_a"
command = F, F, a

[Command]
name = "FF_b"
command = F, F, b

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------

[Command]
name = "ryusui"
command = x+a

[Command]
name = "cd"
command = y+b

[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

;-| Dir + Button |---------------------------------------------------------

[Command]
name = "maex"
command = /F,x
time =1

[Command]
name = "maea"
command = /F,a
time = 1

[Command]
name = "a2"
command = /$DF,a
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-| Single Button |---------------------------------------------------------
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

[Command]
name = "holdup2" ;Required (do not remove)
command = /U
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

[Statedef -1]
;===========================================================================
;�V�e�f���a
[State -1,]
type = ChangeState
value = 20000
triggerall = command = "danku"
triggerall = var(10) = 100
triggerall = NumHelper(4500)= 0
triggerall = NumHelper(4600)= 0
triggerall = NumHelper(4601)= 0
triggerall = NumHelper(4605)= 0
Triggerall = anim != 4
trigger1 = palno = 6
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,239])
trigger2 = movecontact
trigger3 = (stateno = [400,430])
trigger3 = movecontact

;---------------------------------------------------------------------------
; �P�S�A�����T���u���X�^�[
[State -1,]
type = ChangeState
value = 7005
triggerall = command = "14"
triggerall = power >= 3000
triggerall = var(10) > 50
triggerall = NumHelper(4500)= 0
triggerall = NumHelper(4600)= 0
triggerall = NumHelper(4601)= 0
triggerall = NumHelper(4605)= 0
Triggerall = anim != 4
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,239])
trigger2 = movecontact
trigger3 = (stateno = [400,430])
trigger3 = movecontact

;---------------------------------------------------------------------------
; �^�E�n��E�E�E�}�W���K�[
[State -1,]
type = ChangeState
value = 3998
triggerall = command = "majin"
triggerall = power >= 1000
triggerall = NumHelper(4500)= 0
triggerall = NumHelper(4600)= 0
triggerall = NumHelper(4601)= 0
triggerall = NumHelper(4605)= 0
Triggerall = anim != 4
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,239])
trigger2 = movecontact
trigger3 = (stateno = [400,430])
trigger3 = movecontact
;---------------------------------------------------------------------------
; �g�@��a�E�E�E�O�����_�C�U�[
[State -1,]
type = ChangeState
value = 3999
triggerall = command = "guren"
triggerall = power >= 1000
triggerall = NumHelper(4500)= 0
triggerall = NumHelper(4600)= 0
triggerall = NumHelper(4601)= 0
triggerall = NumHelper(4605)= 0
Triggerall = anim != 4
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,239])
trigger2 = movecontact
trigger3 = (stateno = [400,430])
trigger3 = movecontact
;===========================================================================

;---------------------------------------------------------------------------
;�[���X�g���b�V��
[State -1, ]
type = ChangeState
value = 2000
triggerall = command = "zero"
Triggerall = anim != 4
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,239])
trigger2 = movecontact
trigger3 = (stateno = [400,430])
trigger3 = movecontact

;---------------------------------------------------------------------------
;���J���E������
[State -1, ]
type = ChangeState
value = 2500
triggerall = command = "senpu"
Triggerall = anim != 4
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,239])
trigger2 = movecontact
trigger3 = (stateno = [400,430])
trigger3 = movecontact


;---------------------------------------------------------------------------
;���J���E�a�g
[State -1, ]
type = ChangeState
value = 1000
triggerall = command = "zanba"
Triggerall = anim != 4
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,239])
trigger2 = movecontact
trigger3 = (stateno = [400,430])
trigger3 = movecontact

;---------------------------------------------------------------------------
;���J���E����
[State -1, ]
type = ChangeState
value = 1300
triggerall = command = "ryusui"
Triggerall = anim != 4
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;�o����]�r
[State -1, Stand Light Kick]
type = ChangeState
value = 1605
triggerall = command = "souryu"
Triggerall = anim != 4
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,239])
trigger2 = movecontact
trigger3 = (stateno = [400,430])
trigger3 = movecontact

;trigger2 = stateno = 235
;trigger2= movecontact= 1

;---------------------------------------------------------------------------
;��]�r
[State -1, Stand Light Kick]
type = ChangeState
value = 1305;231
triggerall = command = "a3"
Triggerall = anim != 4
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,239])
trigger2 = movecontact
trigger3 = (stateno = [400,430])
trigger3 = movecontact

;trigger2 = stateno = 235
;trigger2= movecontact= 1

;---------------------------------------------------------------------------
;�ߐڃ_�b�V��
[State -1, Run Fwd]
type = ChangeState
value = 107
Triggerall = anim != 4
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = p2bodydist X <= 20
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Fwd
;�_�b�V��
[State -1, Run Fwd]
type = ChangeState
value = 100
Triggerall = anim != 4
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = p2bodydist X > 20
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;��ރ_�b�V��
[State -1, Run Back]
type = ChangeState
value = 105
Triggerall = anim != 4
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;�K�[�h�L�����Z��
[State 1505, 9]
type=ChangeState
value= 350
triggerall = power >= 1000
triggerall = command = "y"
Triggerall = anim != 4
trigger1 = stateno = 150
trigger2 = stateno = 152

;---------------------------------------------------------------------------
;���� �i�ʏ�j
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = command = "b"
triggerall = statetype = S
triggerall = ctrl
triggerall = p2stateno != 40
triggerall = stateno != 100
Triggerall = anim != 4
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;---------------------------------------------------------------------------
;�����i���j
[State -1, Kung Fu Throw]
type = ChangeState
value = 801
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = p2stateno != 40
triggerall = stateno != 100
Triggerall = anim != 4
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;---------------------------------------------------------------------------
; ���Ă�
[State -1, Taunt]
type = ChangeState
value = 2300
triggerall = command = "c"||command = "cd"
triggerall = NumExplod(8030)= 1
Triggerall = anim != 4
trigger1 = numhelper(2310) = 0
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; ������
[State -1, Taunt]
type = ChangeState
value = 2410
triggerall = command = "c"||command = "cd"
triggerall = numhelper(2310) = 1
triggerall = numhelper(2351) = 1
Triggerall = anim != 4
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,239])
trigger2 = movecontact
trigger3 = (stateno = [400,430])
trigger3 = movecontact
;---------------------------------------------------------------------------
;Taunt
;����
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
Triggerall = anim != 4
trigger1 = statetype != A
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
;������p���`�i�ߋ����j
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = p2bodydist X <= 20
Triggerall = anim != 4
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 10
trigger3 = stateno = 200
trigger3 = movecontact= 1
;--------------------------------------------------------------------------
;������p���`�i�������j
[State -1, Stand Light Punch]
type = ChangeState
value = 205
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = p2bodydist X > 20
Triggerall = anim != 4
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 205) && time > 10
trigger3 = stateno = 200
trigger3 = movecontact= 1
;---------------------------------------------------------------------------
;Stand Strong Punch
;�����ӂ��Ƃ΂�
[State -1, Stand Strong Punch]
type = ChangeState
value = 240
triggerall = command = "y"
;triggerall = command != "holddown"
triggerall = StateNo != 100
Triggerall = anim != 4
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Stand Strong Punch
;�����a��i�ߋ����j
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = p2bodydist X <= 20
Triggerall = anim != 4
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Stand Strong Punch
;�����a��i�������j
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = p2bodydist X > 20
Triggerall = anim != 4
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;���o�[�O�L�b�N
[State -1,Stand Light Kick2]
type = ChangeState
value = 238
triggerall = command = "maea"
triggerall = command != "holddown"
Triggerall = anim != 4
trigger1 = statetype = S
trigger1 = ctrl= 1
trigger2 = stateno = 230
trigger2 = movecontact= 1
;---------------------------------------------------------------------------
;������L�b�N�i�������j
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = p2bodydist X > 20
Triggerall = anim != 4
trigger1 = statetype = S
trigger1 = ctrl
;trigger2 = (stateno = 230) && time > 25

;---------------------------------------------------------------------------
;������L�b�N�i�ߋ����j
[State -1, Stand Light Kick]
type = ChangeState
value = 235
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = p2bodydist X <= 20
Triggerall = anim != 4
trigger1 = statetype = S
trigger1 = ctrl
;trigger2 = (stateno = 235) && time > 12
;---------------------------------------------------------------------------
;Crouching Light Punch
;���Ⴊ�ݎ�p���`
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
Triggerall = anim != 4
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) && time > 8
;---------------------------------------------------------------------------
;���Ⴊ�ݎa��
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "b"
triggerall = command = "holddown"
Triggerall = anim != 4
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;���Ⴊ�݃L�b�N
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
Triggerall = anim != 4
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = movecontact= 1
trigger3 = stateno = 230
trigger3 = movecontact= 1
;---------------------------------------------------------------------------
;�󒆃p���`�i�΂߁j
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
triggerall = Vel X != 0
Triggerall = anim != 4
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;�󒆃p���`�i�����j
[State -1, Jump Light Punch]
type = ChangeState
value = 605
triggerall = command = "x"
triggerall = Vel X = 0
Triggerall = anim != 4
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;�󒆎a��i�΂߁j
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "b"
triggerall = Vel X != 0
Triggerall = anim != 4
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600; || stateno = 635 ;jump_x or jump_a
trigger2 = movecontact

;---------------------------------------------------------------------------
;�󒆎a��i�����j
[State -1, Jump Strong Punch]
type = ChangeState
value = 615
triggerall = command = "b"
triggerall = Vel X = 0
Triggerall = anim != 4
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;�󒆂ӂ��Ƃ΂�
[State -1, Jump Strong Punch]
type = ChangeState
value = 640
triggerall = command = "y"
Triggerall = anim != 4
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

;---------------------------------------------------------------------------
;�󒆃L�b�N�i�΂߁j
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
triggerall = Vel X != 0
Triggerall = anim != 4
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;�󒆃L�b�N�i�����j
[State -1, Jump Light Kick]
type = ChangeState
value = 635
triggerall = command = "a"
triggerall = Vel X = 0
Triggerall = anim != 4
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------


