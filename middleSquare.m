function m = middleSquare(sd, num);

%MIDDLESQUARE generates a specified amount of random numbers using the middle square method
%m=middleSqaure(sd,num):
%m=matrix of size num containing the generated random numbers (as strings)
%sd=seed, x_0 value

if sd==0 || num==0
	fprintf('Not enough arguments\n');
end
m = {};
sd2=sd.^2;
x=num2str(sd2);
if strlength(x)==1
	x=strcat('0000000',x);
elseif strlength(x)==2
	x=strcat('000000',x);
elseif strlength(x)==3
	x=strcat('00000',x);
elseif strlength(x)==4
	x=strcat('0000',x);
elseif strlength(x)==5
	x=strcat('000',x);
elseif strlength(x)==6
	x=strcat('00',x);
elseif strlength(x)==7
	x=strcat('0',x);
end
new=x(3:6);
m{1}=new;
for i=2:num
	new=str2num(new);
	new2=new.^2;
	x=num2str(new2);
	if strlength(x)==1
		x=strcat('0000000',x);
	elseif strlength(x)==2
		x=strcat('000000',x);
	elseif strlength(x)==3
		x=strcat('00000',x);
	elseif strlength(x)==4
		x=strcat('0000',x);
	elseif strlength(x)==5
		x=strcat('000',x);
	elseif strlength(x)==6
		x=strcat('00',x);
	elseif strlength(x)==7
		x=strcat('0',x);
	end
new=x(3:6);
m{i}=new;
i=i+1;
end
% for i=1:num
% 	disp(m{i});
% end