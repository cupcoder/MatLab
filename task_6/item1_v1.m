function o=item1_v1(string)
% �������������� ����������� ���������� � ����� ..
w = 0; % c������ ��� ����
l = 0; % ������� ��� ����, ���� � �������, �� ������������� ������ ����������
f = 0; % ���� �� ������ ������������� ������ ���������� (��������: '...' ��� '?!!')
x = []; % ������ � ������������
% ������ ���� ��� ���� ������
for i=1:length(string)
% ���� ����������� ������ ��� ���� ����������
if string(i) == ' ' || string(i) == ',' || string(i) == ';' || string(i) == ':' || string(i) == '-' || string(i) == '(' || string(i) == ')'
    % � �� �� �������������
    if string(i-1) ~= '.' && string(i-1) ~= '!' && string(i-1) ~= '?'
    if f == 0
        f = 1;      % ������ ���� � �������
        w = w + 1;  % � ���������� �����  
    end
    end
else
    % ���� ����������� ���� ��������� �����������
    if string(i) == '.' || string(i) == '!' || string(i) == '?'
        % � �� ���������
        if string(i-1) ~= '.' && string(i-1) ~= '!' && string(i-1) ~= '?'
            w = w + 1;      % ���������� ��������� �����
            x(end+1) = l/w; % � ���������� ������� ����� ���� ����� ����������� � ������
            w = 0;          % � ��������
            l = 0;          % ��������
        end
    else
        % � ����� ������ ������
        f = 0;      % ������ ���� � ����
        l = l + 1;  % � ������� ������
    end
end
end
% � ����� ������� ������������ ������� ������� (������ ����������� � ������������ ������� ������ ����)
o=find(x==max(x));