function s=level2
% ������� ������: �������� � ����� ��������� �����
x=input('��������: ');
partsum=input('����� ��������� �����: ');
% ������� ��������� � ����������� ��� ������� �����
numerator=2;
denominator=6;
% ��������� ��������
s=(numerator/denominator)*x;
y=s;
% ����� ��������� ����� ������ ���� ����������� ������ �������!
if partsum>1
    % ���� ��� �������� ��������� ����� ������� ����
    for i=1:partsum-1
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