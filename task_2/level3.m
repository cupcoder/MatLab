function level3
% ���� ��� ���������� �������
% �.�. n ��������� �������� �������� ����� 2 �� 8 (2^3) -
% ��������� ���� ��� �������� - �� 0 �� 3.
for i=0:3
    n=2^i; % ������� �������� n
    % �������� �������� ������� ��� x �� ���������
    % �� 0 �� 1 � ����� 0.05 (1/20).
    for x=0:0.05:1
        s1=level1_new(x);   % ������ ������
        s2=level2_new(x,n); % ������ ������
        % ���� x = 0, => ��� ������ �����, � ������,
        % �������������� ������� ������ "����".
        if x==0;
            blue=Pero(x,s1);
            green=Pero(x,s2);
        else
            blue.punct(x,s1);
            green.punct(x,s2);
        end
    end
    % �������� ������ ���������� ������
    blue.set('linecolor' , 'g')
    % � ������������ ��� �������
    blue.draw
    green.draw
end
end

%���������� ����� � ������������
function s=level1_new(x)
accuracy=0.4; % ������ ��������� ����������� % WTF 0_o 
% ������� ��������� � ����������� ��� ������� �����
numerator=2;
denominator=6;
% ��������� ��������
s=(numerator/denominator)*x;
y=s;
while accuracy<=abs(y)
    % C ������ ����� ����������� ��������� � 
    % ����������� �� 3 (� ����������� � ��������)
    numerator=denominator+3;
    denominator=denominator+3;
    % �������� ������� �������
    y=-y*x*numerator/denominator;
    % � ��������� ������������ �������� � ������ ����
    s=s+y;
    abs(s)
end
end

%���������� ��������� �����
function s=level2_new(x,n)
% ������� ��������� � ����������� ��� ������� �����
numerator=2;
denominator=6;
% ��������� ��������
s=(numerator/denominator)*x;
y=s;
% ����� ��������� ����� ������ ���� ����������� ������ �������!
if n>1
    % ���� ��� �������� ��������� ����� ������� ����
    for i=1:n-1
        % C ������ ����� ����������� ��������� � 
        % ����������� �� 3 (� ����������� � ��������)
        numerator=denominator+3;
        denominator=denominator+3;
        % �������� ������� �������
        y=-y*x*numerator/denominator;
        % � ��������� ������������ �������� � ������ ����
        s=s+y;
    end
end
end