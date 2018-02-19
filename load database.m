%CREATE TEMPLATES
%%%%%%%%%%% this file is creating templates by reading all images from
%%%%%%%%%%% folder (small letters, capital letters,  letter_numbers) in
%%%%%%%%%%% directory. 
clc;
close all;

       %%%%%%%%%%%%%%%%%%% READING UPPER CASE LETTERS %%%%%%%%%%%%%%%%
A_0=imread('capital LETTERS\A_0.bmp');
A_1=imread('capital LETTERS\A_1.bmp');
A_2=imread('capital LETTERS\A_2.bmp');
A_3=imread('capital LETTERS\A_3.bmp');
A_4=imread('capital LETTERS\A_4.bmp');

B_0=imread('capital LETTERS\B_0.bmp');
B_1=imread('capital LETTERS\B_1.bmp');
B_2=imread('capital LETTERS\B_2.bmp');
B_3=imread('capital LETTERS\B_3.bmp');

C_0=imread('capital LETTERS\C_0.bmp');

D_0=imread('capital LETTERS\D_0.bmp');
D_1=imread('capital LETTERS\D_1.bmp');
D_2=imread('capital LETTERS\D_2.bmp');
D_3=imread('capital LETTERS\D_3.bmp');

E_0=imread('capital LETTERS\E_0.bmp');
E_1=imread('capital LETTERS\E_1.bmp');
E_2=imread('capital LETTERS\E_2.bmp');
E_3=imread('capital LETTERS\E_3.bmp');

F_0=imread('capital LETTERS\F_0.bmp');

G_0=imread('capital LETTERS\G_0.bmp');
G_1=imread('capital LETTERS\G_1.bmp');
G_2=imread('capital LETTERS\G_2.bmp');
G_3=imread('capital LETTERS\G_3.bmp');
G_4=imread('capital LETTERS\G_4.bmp');
G_5=imread('capital LETTERS\G_5.bmp');

H_0=imread('capital LETTERS\H_0.bmp');
H_1=imread('capital LETTERS\H_1.bmp');
H_2=imread('capital LETTERS\H_2.bmp');
H_3=imread('capital LETTERS\H_3.bmp');
H_4=imread('capital LETTERS\H_4.bmp');

I_0=imread('capital LETTERS\I_0.bmp');
I_1=imread('capital LETTERS\I_1.bmp');

J_0=imread('capital LETTERS\J_0.bmp');
J_1=imread('capital LETTERS\J_1.bmp');
J_2=imread('capital LETTERS\J_2.bmp');
J_3=imread('capital LETTERS\J_3.bmp');

K_0=imread('capital LETTERS\K_0.bmp');
K_1=imread('capital LETTERS\K_1.bmp');
K_2=imread('capital LETTERS\K_2.bmp');
K_3=imread('capital LETTERS\K_3.bmp');
K_4=imread('capital LETTERS\K_4.bmp');

L_0=imread('capital LETTERS\L_0.bmp');

M_0=imread('capital LETTERS\M_0.bmp');
M_1=imread('capital LETTERS\M_1.bmp');
M_2=imread('capital LETTERS\M_2.bmp');
M_3=imread('capital LETTERS\M_3.bmp');

N_0=imread('capital LETTERS\N_0.bmp');
N_1=imread('capital LETTERS\N_1.bmp');

O_0=imread('capital LETTERS\O_0.bmp');
O_1=imread('capital LETTERS\O_1.bmp');
O_2=imread('capital LETTERS\O_2.bmp');

P_0=imread('capital LETTERS\P_0.bmp');
P_1=imread('capital LETTERS\P_1.bmp');

Q_0=imread('capital LETTERS\Q_0.bmp');
Q_1=imread('capital LETTERS\Q_1.bmp');
Q_2=imread('capital LETTERS\Q_2.bmp');
Q_3=imread('capital LETTERS\Q_3.bmp');
Q_4=imread('capital LETTERS\Q_4.bmp');
Q_5=imread('capital LETTERS\Q_5.bmp');

R_0=imread('capital LETTERS\R_0.bmp');
R_1=imread('capital LETTERS\R_1.bmp');
R_2=imread('capital LETTERS\R_2.bmp');
R_3=imread('capital LETTERS\R_3.bmp');
R_4=imread('capital LETTERS\R_4.bmp');

S_0=imread('capital LETTERS\S_0.bmp');
S_1=imread('capital LETTERS\S_1.bmp');
S_2=imread('capital LETTERS\S_2.bmp');

T_0=imread('capital LETTERS\T_0.bmp');
T_1=imread('capital LETTERS\T_1.bmp');

U_0=imread('capital LETTERS\U_0.bmp');
U_1=imread('capital LETTERS\U_1.bmp');
U_2=imread('capital LETTERS\U_2.bmp');
U_3=imread('capital LETTERS\U_3.bmp');

V_0=imread('capital LETTERS\V_0.bmp');
V_1=imread('capital LETTERS\V_1.bmp');

W_0=imread('capital LETTERS\W_0.bmp');
W_1=imread('capital LETTERS\W_1.bmp');
W_2=imread('capital LETTERS\W_2.bmp');
W_3=imread('capital LETTERS\W_3.bmp');
W_4=imread('capital LETTERS\W_4.bmp');
W_5=imread('capital LETTERS\W_5.bmp');

X_0=imread('capital LETTERS\X_0.bmp');

Z_0=imread('capital LETTERS\Z_0.bmp');

           
A=imread('capital LETTERS\A.bmp');
B=imread('capital LETTERS\B.bmp');
C=imread('capital LETTERS\C.bmp');
D=imread('capital LETTERS\D.bmp');
E=imread('capital LETTERS\E.bmp');
F=imread('capital LETTERS\F.bmp');
G=imread('capital LETTERS\G.bmp');
H=imread('capital LETTERS\H.bmp');
I=imread('capital LETTERS\I.bmp');
J=imread('capital LETTERS\J.bmp');
K=imread('capital LETTERS\K.bmp');
L=imread('capital LETTERS\L.bmp');
M=imread('capital LETTERS\M.bmp');
N=imread('capital LETTERS\N.bmp');
O=imread('capital LETTERS\O.bmp');
P=imread('capital LETTERS\P.bmp');
Q=imread('capital LETTERS\Q.bmp');
R=imread('capital LETTERS\R.bmp');
S=imread('capital LETTERS\S.bmp');
T=imread('capital LETTERS\T.bmp');
U=imread('capital LETTERS\U.bmp');
V=imread('capital LETTERS\V.bmp');
W=imread('capital LETTERS\W.bmp');
X=imread('capital LETTERS\X.bmp');
Y=imread('capital LETTERS\Y.bmp');
Z=imread('capital LETTERS\Z.bmp');

             %%%%%%%%% READING LOWER CASE LETTERS %%%%%%%%%%%%%%%%%%%%%%%%

a_0=imread('small LETTERS\a_0.bmp');
a_1=imread('small LETTERS\a_1.bmp');
a_2=imread('small LETTERS\a_2.bmp');
a_3=imread('small LETTERS\a_3.bmp');
a_4=imread('small LETTERS\a_4.bmp');
a_5=imread('small LETTERS\a_5.bmp');
a_6=imread('small LETTERS\a_6.bmp');
a_7=imread('small LETTERS\a_7.bmp');
a_8=imread('small LETTERS\a_8.bmp');
a_9=imread('small LETTERS\a_9.bmp');
a_910=imread('small LETTERS\a_910.bmp');
a_911=imread('small LETTERS\a_911.bmp');

b_0=imread('small LETTERS\b_0.bmp');
b_1=imread('small LETTERS\b_1.bmp');
b_2=imread('small LETTERS\b_2.bmp');

c_0=imread('small LETTERS\c_0.bmp');
c_1=imread('small LETTERS\c_1.bmp');

d_0=imread('small LETTERS\d_0.bmp');
d_1=imread('small LETTERS\d_1.bmp');
d_2=imread('small LETTERS\d_2.bmp');
d_3=imread('small LETTERS\d_3.bmp');

e_0=imread('small LETTERS\e_0.bmp');
e_1=imread('small LETTERS\e_1.bmp');
e_2=imread('small LETTERS\e_2.bmp');
e_3=imread('small LETTERS\e_3.bmp');
e_4=imread('small LETTERS\e_4.bmp');

f_0=imread('small LETTERS\f_0.bmp');
f_1=imread('small LETTERS\f_1.bmp');

g_0=imread('small LETTERS\g_0.bmp');
g_1=imread('small LETTERS\g_1.bmp');
g_2=imread('small LETTERS\g_2.bmp');
g_3=imread('small LETTERS\g_3.bmp');
g_4=imread('small LETTERS\g_4.bmp');

h_0=imread('small LETTERS\h_0.bmp');
h_1=imread('small LETTERS\h_1.bmp');
h_2=imread('small LETTERS\h_2.bmp');
h_3=imread('small LETTERS\h_3.bmp');
h_4=imread('small LETTERS\h_4.bmp');

j_0=imread('small LETTERS\j_0.bmp');
j_1=imread('small LETTERS\j_1.bmp');

k_0=imread('small LETTERS\k_0.bmp');
k_1=imread('small LETTERS\k_1.bmp');

l_0=imread('small LETTERS\l_0.bmp');
l_1=imread('small LETTERS\l_1.bmp');
l_2=imread('small LETTERS\l_2.bmp');

m_0=imread('small LETTERS\m_0.bmp');
m_1=imread('small LETTERS\m_1.bmp');
m_2=imread('small LETTERS\m_2.bmp');

n_0=imread('small LETTERS\n_0.bmp');
n_1=imread('small LETTERS\n_1.bmp');
n_2=imread('small LETTERS\n_2.bmp');
n_3=imread('small LETTERS\n_3.bmp');

o_0=imread('small LETTERS\o_0.bmp');

p_0=imread('small LETTERS\p_0.bmp');
p_1=imread('small LETTERS\p_1.bmp');
p_2=imread('small LETTERS\p_2.bmp');
p_3=imread('small LETTERS\p_3.bmp');
p_4=imread('small LETTERS\p_4.bmp');

q_0=imread('small LETTERS\q_0.bmp');
q_1=imread('small LETTERS\q_1.bmp');

r_0=imread('small LETTERS\r_0.bmp');
r_1=imread('small LETTERS\r_1.bmp');
r_2=imread('small LETTERS\r_2.bmp');
r_3=imread('small LETTERS\r_3.bmp');
r_4=imread('small LETTERS\r_4.bmp');

s_0=imread('small LETTERS\s_0.bmp');
s_1=imread('small LETTERS\s_1.bmp');
s_2=imread('small LETTERS\s_2.bmp');

t_0=imread('small LETTERS\t_0.bmp');
t_1=imread('small LETTERS\t_1.bmp');
t_2=imread('small LETTERS\t_2.bmp');

u_0=imread('small LETTERS\u_0.bmp');
u_1=imread('small LETTERS\u_1.bmp');
u_2=imread('small LETTERS\u_2.bmp');
u_3=imread('small LETTERS\u_3.bmp');
u_4=imread('small LETTERS\u_4.bmp');

v_0=imread('small LETTERS\v_0.bmp');
v_1=imread('small LETTERS\v_1.bmp');
v_2=imread('small LETTERS\v_2.bmp');
v_3=imread('small LETTERS\v_3.bmp');
v_4=imread('small LETTERS\v_4.bmp');

w_0=imread('small LETTERS\w_0.bmp');
w_1=imread('small LETTERS\w_1.bmp');
w_2=imread('small LETTERS\w_2.bmp');

x_0=imread('small LETTERS\x_0.bmp');

y_0=imread('small LETTERS\y_0.bmp');
y_1=imread('small LETTERS\y_1.bmp');
y_2=imread('small LETTERS\y_2.bmp');

z_0=imread('small LETTERS\z_0.bmp');
i_0=imread('small LETTERS\zi.bmp');


a=imread('small LETTERS\a.png');b=imread('small LETTERS\b.png');
c=imread('small LETTERS\c.png');d=imread('small LETTERS\d.png');
e=imread('small LETTERS\e.png');f=imread('small LETTERS\f.png');
g=imread('small LETTERS\g.png');h=imread('small LETTERS\h.png');
i=imread('small LETTERS\i.png');j=imread('small LETTERS\j.png');
k=imread('small LETTERS\k.png');l=imread('small LETTERS\l.png');
m=imread('small LETTERS\m.png');n=imread('small LETTERS\n.png');
o=imread('small LETTERS\o.png');p=imread('small LETTERS\p.png');
q=imread('small LETTERS\q.png');r=imread('small LETTERS\r.png');
s=imread('small LETTERS\s.png');t=imread('small LETTERS\t.png');
u=imread('small LETTERS\u.png');v=imread('small LETTERS\v.png');
w=imread('small LETTERS\w.png');x=imread('small LETTERS\x.png');
y=imread('small LETTERS\y.png');z=imread('small LETTERS\z.png');


            %%%%%%%%%%%%%%%%% READING NUMBERS %%%%%%%%%%%%%%%%%%%%%%%%
zero_0=imread('NUMBERS\0_0.bmp');
zero_1=imread('NUMBERS\0_1.bmp');
zero_2=imread('NUMBERS\0_2.bmp');
zero_3=imread('NUMBERS\0_3.bmp');
zero_4=imread('NUMBERS\0_4.bmp');
zero_5=imread('NUMBERS\0_5.bmp');

one_0=imread('NUMBERS\1_0.bmp');
one_1=imread('NUMBERS\1_1.bmp');
one_2=imread('NUMBERS\1_2.bmp');
one_3=imread('NUMBERS\1_3.bmp');

  two_0=imread('NUMBERS\2_0.bmp');
  two_1=imread('NUMBERS\2_1.bmp');
  two_2=imread('NUMBERS\2_2.bmp');
  two_3=imread('NUMBERS\2_3.bmp');
  two_4=imread('NUMBERS\2_4.bmp');
  two_5=imread('NUMBERS\2_5.bmp');
  two_6=imread('NUMBERS\2_6.bmp');
 
 three_0=imread('NUMBERS\3_0.bmp');
 three_1=imread('NUMBERS\3_1.bmp');
 three_2=imread('NUMBERS\3_2.bmp');
 three_3=imread('NUMBERS\3_3.bmp');
 three_4=imread('NUMBERS\3_4.bmp');
 three_5=imread('NUMBERS\3_5.bmp');
 three_6=imread('NUMBERS\3_6.bmp');
 
  four_0=imread('NUMBERS\4_0.bmp');
  four_1=imread('NUMBERS\4_1.bmp');
  four_2=imread('NUMBERS\4_2.bmp');
  
  five_0=imread('NUMBERS\5_0.bmp');
  five_1=imread('NUMBERS\5_1.bmp');
  five_2=imread('NUMBERS\5_2.bmp');
  five_3=imread('NUMBERS\5_3.bmp');
  five_4=imread('NUMBERS\5_4.bmp');
  
  six_0=imread('NUMBERS\6_0.bmp');
  six_1=imread('NUMBERS\6_1.bmp');
  six_2=imread('NUMBERS\6_2.bmp');
  six_3=imread('NUMBERS\6_3.bmp');
  
  seven_0=imread('NUMBERS\7_0.bmp');
  seven_1=imread('NUMBERS\7_1.bmp');
  seven_2=imread('NUMBERS\7_2.bmp');
  seven_3=imread('NUMBERS\7_3.bmp');
  
  eight_0=imread('NUMBERS\8_0.bmp');
  eight_1=imread('NUMBERS\8_1.bmp');
  eight_2=imread('NUMBERS\8_2.bmp');
  
 nine_0=imread('NUMBERS\9_0.bmp');
 nine_1=imread('NUMBERS\9_1.bmp');
 nine_2=imread('NUMBERS\9_2.bmp');
 nine_3=imread('NUMBERS\9_3.bmp');
 nine_4=imread('NUMBERS\9_4.bmp');
 nine_5=imread('NUMBERS\9_5.bmp');
  
one=imread('NUMBERS\1.bmp');
two=imread('NUMBERS\2.bmp');
three=imread('NUMBERS\3.bmp');
four=imread('NUMBERS\4.bmp');
five=imread('NUMBERS\5.bmp');
six=imread('NUMBERS\6.bmp');
seven=imread('NUMBERS\7.bmp');
eight=imread('NUMBERS\8.bmp');
nine=imread('NUMBERS\9.bmp');
zero=imread('NUMBERS\0.bmp');
%*-*-*-*-*-*-*-*-*-*-*-
              %%%%%%%%%% creating letter matrix %%%%%%%%%%%
capital=[A A_0 A_1 A_2 A_3 A_4...
        B B_0 B_1 B_2 B_3...
        C C_0...
        D D_0 D_1 D_2 D_3...
        E E_0 E_1 E_2 E_3...
        F F_0...
        G G_0 G_1 G_2 G_3 G_4 G_5...
        H H_0 H_1 H_2 H_3 H_4...
        I I_0 I_1...
        J J_0 J_1 J_2 J_3...
        K K_0 K_1 K_2 K_3 K_4...
        L L_0...
        M M_0 M_1 M_2 M_3...
        N N_0 N_1...
        O O_0 O_1 O_2...
        P P_0 P_1...
        Q Q_0 Q_1 Q_2 Q_3 Q_4 Q_5...
        R R_0 R_1 R_2 R_3 R_4...
        S S_0 S_1 S_2...
        T T_0 T_1...
        U U_0 U_1 U_2 U_3...
        V V_0 V_1...
        W W_0 W_1 W_2 W_3 W_4 W_5...
        X X_0...
        Y...
        Z Z_0];


    %%%%%%%% creating number matrix%%%%%%%%%%%%%%%%%%%%%%
numbers=[ one one_0 one_1 one_2 one_3...
    two two_0 two_1 two_2 two_3 two_4 two_5 two_6...
    three three_0 three_1 three_2 three_3 three_4 three_5 three_6...
    four four_0 four_1 four_2...
    five five_0 five_1 five_2 five_3 five_4...
    six six_0 six_1 six_2 six_3...
    seven seven_0 seven_1 seven_2 seven_3...
    eight eight_0 eight_1 eight_2...
    nine nine_0 nine_1 nine_2 nine_3 nine_4 nine_5...
    zero zero_0 zero_1 zero_2 zero_3 zero_4 zero_5];

 
    %%%%%%%%%%%%%%%%% creating lowercase matrix %%%%%%%%%%%%%%%%%%%%%%
small = [a a_0 a_1 a_2 a_3 a_4 a_5 a_6 a_7 a_8 a_9 a_910 a_911...
    b b_0 b_1 b_2...
    c c_0 c_1...
    d d_0 d_1 d_2 d_3... 
    e e_0 e_1 e_2 e_3 e_4...
    f f_0 f_1...
    g g_0 g_1 g_2 g_3 g_4...
    h h_0 h_1 h_2 h_3 h_4...
    i ...
    j j_0 j_1...
    k k_0 k_1 ...
    l l_0 l_1 l_2...
    m m_0 m_1 m_2...
    n n_0 n_1 n_2 n_3...
    o o_0...
    p p_0 p_1 p_2 p_3 p_4...
    q q_0 q_1...
    r r_0 r_1 r_2 r_3 r_4...
    s s_0 s_1 s_2...
    t t_0 t_1 t_2...
    u u_0 u_1 u_2 u_3 u_4...
    v v_0 v_1 v_2 v_3 v_4...
    w w_0 w_1 w_2...
    x x_0...
    y y_0 y_1 y_2...
    z z_0 i_0];
  %%%%%%%%%%%%%% concatenating all matrixes  to character matrix
character=[capital numbers small];
 %%%%%%%%%%%%%%% converting cell templates from character matrix%%%%%%%%%%%
templates=mat2cell(character,42,[24 24 24 24 24 24 24 ...
    24 24 24 24 24 24 24 ...
    24 24 24 24 24 24 24 ...
    24 24 24 24 24 24 24 ...
    24 24 24 24 24 24 24 24 ...
    24 24 24 24 24 24 24 24 ...
    24 24 24 24 24 24 24 24 ...
    24 24 24 24 24 24 24 24 ...
    24 24 ...
   24 24 24 24 24 24 24 ...
   24 24 24 24 24 24 24 ...
   24 24 24 24 24 24 24 ...
   24 24 24 24 24 24 24 ...
   24 24 24 24 24 24 24 ...
   24 24 24 24 24 24 24 ...
   24 24 24 24 24 24 24 ...
24 24 24 24 24 24 24 24 ...
24 24 24 24 24 24 24 24 ...
24 24 24 24 24 24 24 24 ...
24 24 24 24 24 24 24 24 ...
24 24 24 24 24 24 24 24 ...
24 24 24 24 24 24 24 24 ...
24 24 24 24 24 24 24 24 ...
24 24 24 24 24 24 24 24 ...
24 24 24 24 24 24 24 24 ...
24 24 24 24 24 24 24 24 ...
24 24 24 ...
   24 24 24 24 24 24 24 24 ...
   24 24 24 24 24 24 24 24 ...
   24 24 24 24 24 24 24 24 ...
   24 24 24 24 24 24 24 24 ...
   24 24 24 24 24 24 24 24 ...
   24 24 24 24 24 24 24 24 ...
   24 24 24 24 24 24 24 24 ...
   24 24 24 24 24 24 24 24 ...
   24 24 24 24 24 24 24 24 ...
   24 24 24 24 24 24 24 24 ...
   24 24 24 24 24 24 24 24 ...
   24 24]);
save ('templates','templates');   %%%%% saving templates for further use %%%

