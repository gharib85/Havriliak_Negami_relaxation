function All_data=ReadEPSall(name0, doc_num, strok)
% ��������� ���������� ��� ����� � ���������� ���������, �� ������������
% �������� �������� � ��������� �������� ������ �� ���
%name0='F'; %��������� ����� �������� �����
% ������ ��������� �������� ����� �� ���������� � ��������� �����. ������:
% TEMP23.txt
%doc_num=60;

All=cell(1, (doc_num+1));
for q=1:(doc_num+1) %59 - ������������ ����� ���������+1
   name = sprintf('%s%d.TXT',name0, q-1);
   BigM = dlmread(name, '\t', strok, 0); % 4 - � ����� ������ ���������
   All{q}=BigM; %������� �������, � ������� ������ ��������� �� ����� ������� ��� ���� ��������� �������
end
   

xx=1;
p=3;  %������� �������� ��������
for t=1:1:61  %������ �������� �� ������ ������� ������ p-��� �������
    TempAll=All{t};
    vvv=TempAll(1:end,1);
    for p=1:2:3;         %����� �������� ������ 5,6 � 9, � �������, ���� ������ �������� ��� ������
       for y=1:1:length(TempAll(1:end,1))  % �� ���������� ������
           TempEPS(y,xx)=TempAll(y, p);
       end
       xx=xx+1;
    end
end   
All_data=TempEPS;

%dlmwrite('matricaEPS2_00.xls', TempEPS, '\t');
    
