function o=item6_i1(x)
    [r, c, v] = find(x==0);           % ������� ������� ����� � ������ (r)
    o=size(x,1) - length(unique(r));  % �������� �� ��� - �� ���� ����� ��� - �� ����� � ������
end