Matlab code for the example in the second paper of Dr. Gan

variables={'x111','x121','x131','x141','x151','x112','x122','x132','x142','x152','x211','x221','x231','x241','x251', 'x212','x222','x232','x242','x252','x311','x321','x331','x341','x351', 'x312','x322','x332','x342','x352'};
N = length(variables) 
 
  
 
 
 
 lb=[zeros(30,1)];
 v=[inf];
ub=[repelem(v,30)]
 
Aeq=[zeros(16,30)];
Aeq(1,[1,2,3,4,5])=[1,1,1,1,1]; 
Aeq(2,[6,7,8,9,10])=[1,1,1,1,1]; 
Aeq(3,[11,12,13,14,15])=[1,1,1,1,1];
Aeq(4,[16,17,18,19,20])=[1,1,1,1,1];
Aeq(5,[21,22,23,24,25])=[1,1,1,1,1];
Aeq(6,[26,27,28,29,30])=[1,1,1,1,1];
Aeq(7,[1,11,21])=[1,1,1];
Aeq(8,[6,16,26])=[1,1,1];
Aeq(9,[2,12,22])=[1,1,1];
Aeq(10,[7,17,27])=[1,1,1];
Aeq(11,[3,13,23])=[1,1,1];
Aeq(12,[8,18,28])=[1,1,1];
Aeq(13,[4,14,24])=[1,1,1];
Aeq(14,[9,19,29])=[1,1,1];
Aeq(15,[5,15,25])=[1,1,1];
Aeq(16,[10,20,30])=[1,1,1];
Aeq;
beq=[70;90; 50; 90; 70; 90; 20; 50; 30;40; 40;50; 60;70;40;60]
 
f=[20 110 30 40 0 20 110 30 40 0  100 30 50 90 0 100 30 50 90 0  70 80 10 30 0 70 80 10 30 0]
A=[];
b=[];
 
 
 
% z= zeros(size(variables));
options = optimoptions('linprog','Algorithm','dual-simplex');
[x,fval,exitflag,output] = linprog(f,A,b,Aeq,beq,lb,ub,options)
 
 
% z= zeros(size(variables));
options = optimoptions('linprog','Algorithm','dual-simplex');
[x,fval,exitflag,output] = linprog(f,A,b,Aeq,beq,lb,ub,options)




If you separate W1 and W2


The one for W2:

variables={'x11','x12','x13','x14','x15','x21','x22','x23','x24','x25','x31','x32','x33','x34','x35'};
N = length(variables) 
  
 
 
 
 lb=[zeros(15,1)];
 v=[inf];
ub=[repelem(v,15)]
Aeq=[zeros(8,15)];
Aeq(1,[1,2,3,4,5])=[1,1,1,1,1]; 
Aeq(2,[6,7,8,9,10])=[1,1,1,1,1];
Aeq(3,[11,12,13,14,15])=[1,1,1,1,1];
 
Aeq(4,[1,6,11])=[1,1,1];
Aeq(5,[2,7,12])=[1,1,1];
Aeq(6,[3,8,13])=[1,1,1];
Aeq(7,[4,9,14])=[1,1,1];
Aeq(8,[5,10,15])=[1,1,1];
 
Aeq;
beq=[90; 90; 90; 50; 40; 50; 70;60]
 
f=[20 110 30 40 0 100 30 50 90 0 70 80 10 30 0]
A=[];
b=[];
 
 
% z= zeros(size(variables));
options = optimoptions('linprog','Algorithm','dual-simplex');
[x,fval,exitflag,output] = linprog(f,A,b,Aeq,beq,lb,ub,options)

The one for W1:

variables={'x11','x12','x13','x14','x15','x21','x22','x23','x24','x25','x31','x32','x33','x34','x35'};
N = length(variables) 
  
 
 
 
 lb=[zeros(60,1)];
 v=[inf];
ub=[repelem(v,60)]
Aeq=[zeros(8,15)];
Aeq(1,[1,2,3,4,5])=[1,1,1,1,1]; 
Aeq(2,[6,7,8,9,10])=[1,1,1,1,1];
Aeq(3,[11,12,13,14,15])=[1,1,1,1,1];
 
Aeq(4,[1,6,11])=[1,1,1];
Aeq(5,[2,7,12])=[1,1,1];
Aeq(6,[3,8,13])=[1,1,1];
Aeq(7,[4,9,14])=[1,1,1];
Aeq(8,[5,10,15])=[1,1,1];
 
Aeq;
beq=[70; 50; 70; 20; 30; 40; 60;40]
 
f=[20 110 30 40 0 100 30 50 90 0 70 80 10 30 0]
A=[];
b=[];
 
 
% z= zeros(size(variables));
options = optimoptions('linprog','Algorithm','dual-simplex');
[x,fval,exitflag,output] = linprog(f,A,b,Aeq,beq,lb,ub,options)


