function s=level1
% ������� ������: �������� � �����������
x=input('��������: ');
accuracy=input('�����������: ');
% ������� ��������� � ����������� ��� ������� �����
numerator=2;
denominator=6;
% ��������� ��������
s=(numerator/denominator)*x;
y=s;
% ������� ����� ����, ���� ����������� ������ �������� �������
while accuracy<abs(y)
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