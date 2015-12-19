function y = REmapper_1Tx(in, csr)
%����N_pilot���ж�ӳ��Ϊ����Ƶ�����ĵ�Ƶ
[M,N_pilot]=size(csr);
y = complex(zeros(M, 14));
switch N_pilot
    case 2
        y(:,1:3) = in(:,1:3);
        y(:,4) = csr(:,1);
        y(:,5:10) = in(:,4:9);
        y(:,11) = csr(:,2);
        y(:,12:14) = in(:,10:12);
    case 4
%% ��Ƶλ�� 3,6,9,12      
%         y(:,1:2)=in(:,1:2);
%         y(:,3)=csr(:,1);
%         y(:,4:5)=in(:,3:4);
%         y(:,6)=csr(:,2);
%         y(:,7:8)=in(:,5:6);
%         y(:,9)=csr(:,3);
%         y(:,10:11)=in(:,7:8);
%         y(:,12)=csr(:,4);
%         y(:,13:14)=in(:,9:10);
%% ��Ƶλ�� 1,5,9,13      
        y(:,1)=csr(:,1);
        y(:,2:4)=in(:,1:3);
        y(:,5)=csr(:,2);
        y(:,6:8)=in(:,4:6);
        y(:,9)=csr(:,3);
        y(:,10:12)=in(:,7:9);
        y(:,13)=csr(:,4);
        y(:,14)=in(:,10);
end

end