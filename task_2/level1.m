function s=level1
% ������� ������: �������� � �����������
x=input('��������: ');
accuracy=input('�����������: ');
% ������� ��������� � ����������� ��� ������� �����
numerator=2;
denominator=6;
% ��������� ��������
s=x-(numerator/denominator)*x^2;
y=-(numerator/denominator)*x^2;
% ������� ����� ����, ���� ����������� ������ �������� �������
while accuracy<=abs(y)
    % C ������ ����� ����������� ��������� � 
    % ����������� �� 3 (� ����������� � ��������)
    numerator=numerator+3;
    denominator=denominator+3;
    % �������� ������� �������
    y=-y*x*numerator/denominator;
    % � ��������� ������������ �������� � ������ ����
    s=s+y;
end
end