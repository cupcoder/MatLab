function s=level2
% ������� ������: �������� � ����� ��������� �����
x=input('��������: ');
partsum=input('����� ��������� �����: ');
% ������� ��������� � ����������� ��� ������� �����
numerator=2;
denominator=6;
% ��������� ��������
s=x-(numerator/denominator)*x^2;
y=-(numerator/denominator)*x^2;
% ����� ��������� ����� ������ ���� ����������� ������ �������!
if partsum>1
    % ���� ��� �������� ��������� ����� ������� ����
    for i=3:partsum-1
        % C ������ ����� ����������� ��������� � 
        % ����������� �� 3 (� ������������ � ��������)
        numerator=numerator+3;
        denominator=denominator+3;
        % �������� ������� �������
        y=-y*x*numerator/denominator;
        % � ��������� ������������ �������� � ������ ����
        s=s+y;
    end
end
end