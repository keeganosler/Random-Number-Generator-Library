function m = linearCongruence(sd,a,b,c,num)
%LINEARCONGRUENCE generates num random numbers starting with seed sd using
%the linear congruence method
m={};
for i=1:num
	q=(a*sd)+b;
	sd=mod(q,c);
	m{i}=sd;
	i=i+1;
end
