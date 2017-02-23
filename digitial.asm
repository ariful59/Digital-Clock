.model small
.stack 100h
.data
time db 'Digital Clock$'
hr dw ?
min dw ?
sec dw ?
counter db ?
s dw 0
xAxis dw ?
yAxis dw ?
c_sec dw ?
big_hr db ?
cnt db 0;

printZero macro
mov s,50
y:
;;y axis line

mov cx, xAxis
mov dx, yAxis
int 10h

inc yAxis
dec s
cmp s,0
jne y

mov yAxis,275
mov s,25
x:
;;x axis line

mov cx, xAxis
mov dx, yAxis
int 10h
inc xAxis
dec s
cmp s,0
jne x

mov s,50
z:
;;reverse y axis
mov cx, xAxis
mov dx, yAxis
int 10h
inc yAxis
dec s
cmp s,0
jne z
mov s,25
k:
;;reverse x axis
mov cx, xAxis
mov dx, yAxis
int 10h
dec xAxis
dec s
cmp s,-1
jne k
endm

printOne macro


add xAxis,25
mov s,50
y_one:
;;y axis line
mov cx, xAxis
mov dx, yAxis
int 10h

inc yAxis
dec s
cmp s,0
jne y_one

endm

printTwo macro

mov s,25
x_two:
;;x axis line

mov cx, xAxis
mov dx, yAxis
int 10h
inc xAxis
dec s
cmp s,0
jne x_two

mov s,25
z_two:
;;reverse y axis
mov cx, xAxis
mov dx, yAxis
int 10h
inc yAxis
dec s
cmp s,0
jne z_two
mov s,25
k_two:
;;reverse x axis
mov cx, xAxis
mov dx, yAxis
int 10h
dec xAxis
dec s
cmp s,0
jne k_two

mov s,25

y_two:
;;y axis line
mov cx, xAxis
mov dx, yAxis
int 10h
inc yAxis
dec s
cmp s,0
jne y_two

mov s,25

r_two:
;;x axis line
mov cx, xAxis
mov dx, yAxis
int 10h
inc xAxis
dec s
cmp s,0
jne r_two
endm
;;
;;
printThree macro

mov s,25
x_three:
;;x axis line

mov cx, xAxis
mov dx, yAxis
int 10h
inc xAxis
dec s
cmp s,0
jne x_three

mov s,25
z_three:
;;reverse y axis
mov cx, xAxis
mov dx, yAxis
int 10h
inc yAxis
dec s
cmp s,0
jne z_three
mov s,25
k_three:
;;reverse x axis
mov cx, xAxis
mov dx, yAxis
int 10h
dec xAxis
dec s
cmp s,0
jne k_three

mov s,25
add xAxis,25

y_three:
;;y axis line
mov cx, xAxis
mov dx, yAxis
int 10h
inc yAxis
dec s
cmp s,0
jne y_three

mov s,25

r_three:
;;reverse x axis line
mov cx, xAxis
mov dx, yAxis
int 10h
dec xAxis
dec s
cmp s,0
jne r_three

endm

printFour macro

mov s,25
y_four:
;;y axis line
mov cx, xAxis
mov dx, yAxis
int 10h
inc yAxis
dec s
cmp s,0
jne y_four

mov s,25
x_four:
;;x axis line

mov cx, xAxis
mov dx, yAxis
int 10h
inc xAxis
dec s
cmp s,0
jne x_four

mov s,25
k_four:
;;y axis line
mov cx, xAxis
mov dx, yAxis
int 10h
inc yAxis
dec s
cmp s,0
jne k_four
mov s,25
sub yAxis,25
z_four:
;;reverse y axis
mov cx, xAxis
mov dx, yAxis
int 10h
dec yAxis
dec s
cmp s,0
jne z_four

endm

printFive macro
mov s,25

r_five:
;;x axis line
mov cx, xAxis
mov dx, yAxis
int 10h
inc xAxis
dec s
cmp s,0
jne r_five

mov s,25
sub xAxis,25
y_five:
;;y axis line
mov cx, xAxis
mov dx, yAxis
int 10h
inc yAxis
dec s
cmp s,0
jne y_five

mov s,25
x_five:
;;x axis line

mov cx, xAxis
mov dx, yAxis
int 10h
inc xAxis
dec s
cmp s,0
jne x_five

mov s,25
k_five:
;;y axis line
mov cx, xAxis
mov dx, yAxis
int 10h
inc yAxis
dec s
cmp s,0
jne k_five
mov s,25
z_five:
;;reverse x axis
mov cx, xAxis
mov dx, yAxis
int 10h
dec xAxis
dec s
cmp s,1
jne z_five
endm

printSix macro

mov s,25

r_six:
;;x axis line
mov cx, xAxis
mov dx, yAxis
int 10h
inc xAxis
dec s
cmp s,0
jne r_six

mov s,25
sub xAxis,25
y_six:
;;y axis line
mov cx, xAxis
mov dx, yAxis
int 10h
inc yAxis
dec s
cmp s,0
jne y_six

mov s,25
x_six:
;;x axis line

mov cx, xAxis
mov dx, yAxis
int 10h
inc xAxis
dec s
cmp s,0
jne x_six

mov s,25
k_six:
;;y axis line
mov cx, xAxis
mov dx, yAxis
int 10h
inc yAxis
dec s
cmp s,0
jne k_six
mov s,25
z_six:
;;reverse x axis
mov cx, xAxis
mov dx, yAxis
int 10h
dec xAxis
dec s
cmp s,0
jne z_six

mov s,25

j_six:
;;reverse y axis line
mov cx, xAxis
mov dx, yAxis
int 10h
dec yAxis
dec s
cmp s,0
jne j_six
endm

printSeven macro

mov s,25

r_seven:
;;x axis line
mov cx, xAxis
mov dx, yAxis
int 10h
inc xAxis
dec s
cmp s,0
jne r_seven

mov s,50
y_seven:
;;y axis line
mov cx, xAxis
mov dx, yAxis
int 10h
inc yAxis
dec s
cmp s,0
jne y_seven
endm


printEight macro

mov s,25
r_eight:
;;x axis line
mov cx, xAxis
mov dx, yAxis
int 10h
inc xAxis
dec s
cmp s,0
jne r_eight

mov s,50
y_eight:
;;y axis line
mov cx, xAxis
mov dx, yAxis
int 10h
inc yAxis
dec s
cmp s,0
jne y_eight

mov s,25
z_eight:
;;reverse x axis
mov cx, xAxis
mov dx, yAxis
int 10h
dec xAxis
dec s
cmp s,0
jne z_eight

mov s,50

j_eight:
;;reverse y axis line
mov cx, xAxis
mov dx, yAxis
int 10h
dec yAxis
dec s
cmp s,0
jne j_eight

mov s,25
add yAxis,25
x_eight:
;;x axis line
mov cx, xAxis
mov dx, yAxis
int 10h
inc xAxis
dec s
cmp s,0
jne x_eight
endm

printNine macro

mov s,25

r_nine:
;;x axis line
mov cx, xAxis
mov dx, yAxis
int 10h
inc xAxis
dec s
cmp s,0
jne r_nine

mov s,50
y_nine:
;;y axis line
mov cx, xAxis
mov dx, yAxis
int 10h
inc yAxis
dec s
cmp s,0
jne y_nine

mov s,25
z_nine:
;;reverse x axis
mov cx, xAxis
mov dx, yAxis
int 10h
dec xAxis
dec s
cmp s,0
jne z_nine

mov s,25
sub yAxis,50
j_nine:
;;y axis line
mov cx, xAxis
mov dx, yAxis
int 10h
inc yAxis
dec s
cmp s,0
jne j_nine
mov s,25
x_nine:
;;x axis line
mov cx, xAxis
mov dx, yAxis
int 10h
inc xAxis
dec s
cmp s,0
jne x_nine

endm
;code_c db ?
date_cov db '00,0000$'
date dw 'Date: $'
save_min dw 100
save_hr dw 100
one_m db 'January $'
two_m db 'February $'
three_m db 'March $'
four_m db 'April $'
five_m db 'May $'
six_m db 'June $'
seven_m db 'July $'
eight_m db 'August $'
nine_m db 'September $'
ten_m db 'October $'
eleven_m db 'November $'
twelve_m db 'December $'
mon_ck db ?
hour_date db ?
arr_date db 0,31,28,31,30,31,30,31,31,30,31,30,31
.code
main:
;mov code_c,15
rumi:
mov ax,@data
mov ds,ax
mov es,ax
mov counter,0
;cmp code_c,16
;je x_change
;jmp rouf
;x_change:
;mov code_c,1

rouf:
mov ah,2ch
int 21h
store_hours:
mov ax,0
mov hour_date,ch
cmp ch,24
jge x_cng
jmp x_notcng
x_cng:
mov ch,0
x_notcng:
mov al,ch
mov hr,ax

store_minutes:
mov ax,0
mov al,cl
mov min,ax
store_seconds:
mov ax,0
mov al,dh
mov sec,ax
mov bx,c_sec
cmp bx,ax
jz  rouf
mov ax,hr
cmp ax,save_hr
jne ref
jmp Calculate_hrs
ref:
mov save_hr,ax
mov ah,0h
mov al,13h
int 10h

mov ah,13h
mov al, 1
mov bh, 0
mov bl, 10d
mov cx, 13
mov dh, 3
mov dl, 6
lea bp,time
int 10h

mov ah,13h
mov al, 1
mov bh, 0
mov bl, 9d
mov cx,6
mov dh, 22
mov dl, 6
lea bp,date
int 10h

mov ax,0
mov bx,0
mov cx,0

mov ah,2ah
int 21h
lea si,date_cov
lea di,arr_date
cmp hour_date,24
je check_kor
jmp check_date
check_kor:
mov ax,0
mov al,dh
add di,ax
cmp dl,[di]
je update
inc dl
jmp check_date
update:
mov dl,1
inc dh
cmp dh,12
jg update_year
jmp check_date
update_year:
inc cx
check_date:
mov al,dl
call convert
mov [si],ax

mov al,dh
call month
call year 
lea dx,date_cov
mov ah,09
int 21h

Calculate_hrs:
mov ax,0
mov bx,0
mov cx,0
mov ax,hr
cmp ax,11
jg pm_1digit

rest_time:
cmp al,0
jg am_2digit
mov dl,al
add dl,12
mov dh,0
mov ax,dx
call two_digits_handle
add counter,1
call printDot
jmp calc_mins

am_2digit:
call two_digits_handle
add counter,1
call printDot

calc_mins:
mov ax,min
cmp ax,save_min
je  bl_cp
mov ax,save_min
call black_min
bl_cp:
mov ax,min
mov save_min,ax
call two_digits_handle
add counter,1
call printDot

calc_secs:
mov ax,c_sec
call black_digit
mov ax,sec
mov c_sec,ax
call two_digits_handle

cmp hr,11
jg  pmdisp

mov ah,0ch
mov bh,1
mov al,15d
call printAm

pmdisp:
mov ah,0ch
mov bh,1
mov al, 15d
call printPm

jmp end_lbl

pm_1digit:
sub ax,12
cmp ax,0
jg  pm_2digit
mov dl,al
add dl,12
mov dh,0
mov ax,dx
call two_digits_handle
add counter,1
call printDot
jmp calc_mins
pm_2digit:
call two_digits_handle
add counter,1
call printDot
jmp calc_mins

convert proc
    mov ah,0
    mov dl,10
    div dl
    or ax,3030h
    ret
convert endp
year proc
mov ax,cx
mov dx,0
mov cx,1000
div cx
or al,30h
mov [si+3],al
mov ax,dx
mov dx,0
mov cx,100
div cx
or al,30h
mov [si+4],al
mov ax,dx
mov dx,0
mov cx,10
div cx
or al,30h
mov [si+5],al
mov ax,dx
or al,30h
mov [si+6],al      
ret
year endp
month proc
mov ah,09h    
cmp al,1
je o_m
cmp al,2
je  t_m
cmp al,3
je th_m
cmp al,4
je f_m
cmp al,5
je fr_m
cmp al,6
je s_m
cmp al,7
je se_m
cmp al,8
je e_m
cmp al,9
je n_m
cmp al,10
je te_m
cmp al,11
je el_m
cmp al,12
je tw_m
o_m:
lea dx,one_m
int 21h
jmp shes
t_m:
lea dx,two_m
int 21h
jmp shes
th_m:
lea dx,three_m
int 21h
jmp shes
f_m:
lea dx,four_m
int 21h
jmp shes
fr_m:
lea dx,five_m
int 21h
jmp shes
s_m:
lea dx,six_m
int 21h
jmp shes
se_m:
lea dx,seven_m
int 21h
jmp shes
e_m:
lea dx,eight_m
int 21h
jmp shes
n_m:
lea dx,nine_m
int 21h
jmp shes
te_m:
lea dx,ten_m
int 21h
jmp shes
el_m:
lea dx,eleven_m
int 21h
jmp shes
tw_m:
lea dx,twelve_m
int 21h
shes:    
    
ret
month endp
two_digits_handle proc

mov xAxis,0;
mov dl,10
div dl
mov bl,ah
mov dl,al
mov big_hr,dl
add counter,1

mov ax,5
mov dl,counter
mul dl
add xAxis,ax
mov ax,25
mov dl,counter
dec dl
mul dl
add xAxis,ax
mov yAxis,275

mov ah,0ch
mov bh,1
mov al, 15d
call bigDigit

mov dl,bl
add counter,1
mov big_hr,bl
mov xAxis,0;
mov ax,5
mov dl,counter
mul dl
add xAxis,ax
mov ax,25
mov dl,counter
dec dl
mul dl
add xAxis,ax
mov yAxis,275
mov ah,0ch
mov bh,1
mov al,15
call bigDigit
ret
two_digits_handle endp

black_digit proc
push cx
mov xAxis,0
mov dl,10
div dl
mov bl,ah
mov dl,al
mov big_hr,dl
mov cl,7

mov ax,5
mov dl,cl
mul dl
add xAxis,ax
mov ax,25
mov dl,cl
dec dl
mul dl
add xAxis,ax
mov yAxis,275
mov ah,0ch
mov al, 0d
mov bh,1

call bigDigit

mov dl,bl
mov cl,8
mov big_hr,bl
mov xAxis,0
mov ax,5
mov dl,cl
mul dl
add xAxis,ax
mov ax,25
mov dl,cl
dec dl
mul dl
add xAxis,ax
mov yAxis,275
mov ah,0ch
mov al, 0d
mov bh,1

call bigDigit

pop cx
ret
black_digit endp

black_min proc
push cx
mov xAxis,0
mov dl,10
div dl
mov bl,ah
mov dl,al
mov big_hr,dl
mov cl,4

mov ax,5
mov dl,cl
mul dl
add xAxis,ax
mov ax,25
mov dl,cl
dec dl
mul dl
add xAxis,ax
mov yAxis,275
mov ah,0ch
mov al, 0d
mov bh,1

call bigDigit

mov dl,bl
mov cl,5
mov big_hr,bl
mov xAxis,0
mov ax,5
mov dl,cl
mul dl
add xAxis,ax
mov ax,25
mov dl,cl
dec dl
mul dl
add xAxis,ax
mov yAxis,275
mov ah,0ch
mov al, 0d
mov bh,1

call bigDigit

pop cx
ret
black_min endp

bigDigit proc

cmp big_hr,0
je zero
cmp big_hr,1
je one
cmp big_hr,2
je two
cmp big_hr,3
je three
cmp big_hr,4
je four
cmp big_hr,5
je five
cmp big_hr,6
je six
cmp big_hr,7
je seven
cmp big_hr,8
je eight
cmp big_hr,9
je nine
nine:
printNine
jmp exit
eight:
printeight
jmp exit
seven:
printSeven
jmp exit
six:
printSix
jmp exit
five:
printFive
jmp exit
four:
printFour
jmp exit
three:
printThree
jmp exit
two:
printTwo
jmp exit
one:
printOne
jmp exit
zero:
printZero
jmp exit

exit:

ret
bigDigit endp

printDot proc
mov xAxis,0;
mov ax,5
mov dl,counter
mul dl
add xAxis,ax
mov ax,25
mov dl,counter
dec dl
mul dl
add xAxis,ax
add xAxis,10
mov yAxis,285 
mov ah,0ch
mov al,15d
mov bh,1
dot_c:
inc cnt
mov s,5
x_dot:
mov cx,xAxis
mov dx,yAxis
int 10h
inc xAxis
dec s
cmp s,0
jne x_dot
mov s,5
y_dot:
mov cx,xAxis
mov dx,yAxis
int 10h
inc yAxis
dec s
cmp s,0
jne y_dot

mov s,5
revx_dot:
mov cx,xAxis
mov dx,yAxis
int 10h
dec xAxis
dec s
cmp s,0
jne revx_dot

mov s,5
revy_dot:
mov cx,xAxis
mov dx,yAxis
int 10h
dec yAxis
dec s
cmp s,0
jne revy_dot
mov yAxis,300
cmp cnt,2
jne dot_c
ret
printDot endp

printAm proc

mov xAxis,180

mov s,20
mov yAxis,335
r_am:
;;x axis line
mov cx, xAxis
mov dx, yAxis
int 10h
inc xAxis
dec s
cmp s,0
jne r_am

mov s,40
y_am:
;;y axis line
mov cx, xAxis
mov dx, yAxis
int 10h
inc yAxis
dec s
cmp s,0
jne y_am

mov s,20
sub yAxis,20
j_am:
;;reverse x axis line
mov cx, xAxis
mov dx, yAxis
int 10h
dec xAxis
dec s
cmp s,0
jne j_am

mov s,40
sub yAxis,20
x_am:
mov cx, xAxis
mov dx, yAxis
int 10h
inc yAxis
dec s
cmp s,0
jne x_am

mov xAxis,210
mov yAxis,335
mov s,40
y_aset:
;;y axis line
mov cx, xAxis
mov dx, yAxis
int 10h
inc yAxis
dec s
cmp s,0
jne y_aset

mov s,16
sub yAxis,40
x_aset:
mov cx, xAxis
mov dx, yAxis
int 10h
inc xAxis
inc yAxis
dec s
cmp s,0
jne x_aset
mov s,16
m_aset:
mov cx, xAxis
mov dx, yAxis
int 10h
inc xAxis
dec yAxis
dec s
cmp s,0
jne m_aset

mov s,40
k_aset:
;;y axis line
mov cx, xAxis
mov dx, yAxis
int 10h
inc yAxis
dec s
cmp s,0
jne k_aset
ret
printAm endp

printPm proc
mov xAxis,180

mov s,20
mov yAxis,335
r_pm:
;;x axis line
mov cx, xAxis
mov dx, yAxis
int 10h
inc xAxis
dec s
cmp s,0
jne r_pm

mov s,40
sub xAxis,20
y_pm:
;;y axis line
mov cx, xAxis
mov dx, yAxis
int 10h
inc yAxis
dec s
cmp s,0
jne y_pm

mov s,20
sub yAxis,20
j_pm:
;;x axis line
mov cx, xAxis
mov dx, yAxis
int 10h
inc xAxis
dec s
cmp s,0
jne j_pm

mov s,20

k_pm:
;;reverse y axis line
mov cx, xAxis
mov dx, yAxis
int 10h
dec yAxis
dec s
cmp s,-1
jne k_pm

mov xAxis,210
mov yAxis,335
mov s,40
y_set:
;;y axis line
mov cx, xAxis
mov dx, yAxis
int 10h
inc yAxis
dec s
cmp s,0
jne y_set

mov s,16
sub yAxis,40
x_set:
mov cx, xAxis
mov dx, yAxis
int 10h
inc xAxis
inc yAxis
dec s
cmp s,0
jne x_set
mov s,16
m_set:
mov cx, xAxis
mov dx, yAxis
int 10h
inc xAxis
dec yAxis
dec s
cmp s,0
jne m_set

mov s,40
k_set:
;;y axis line
mov cx, xAxis
mov dx, yAxis
int 10h
inc yAxis
dec s
cmp s,0
jne k_set
ret
printPm endp

end_lbl:

;inc code_c
jmp rumi

mov ah,4ch
int 21h

end main
