function o=item6_i2(x)
rows = size(x,1);
cols = size(x,2);
el = [];
for i=1:rows
    % ���� ��� ��������
    for j=1:cols
        for k=j:cols
            % ���� � ������ ��������� �������, ������ �������� �, ������,
            % ��� �� ��� ���� �������
            if j ~=k && x(i, j) == x(i, k)
                % ����� ��� � ������
                el(end+1) = x(i, k);
            end
        end
     end
end
    o=max(el); % � ������� ������������ ������� ������������� �������
end