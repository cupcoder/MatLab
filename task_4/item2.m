% x=randi(3,2,8);
% x(1:1)=0
function item2(x)
rows = size(x,1);
cols = size(x,2);
el = (1:1);
% ���������� ��� �������� � ������� ��������� ������
% ���� ��� �����
for i=1:rows
    % ���� ��� ��������
    for j=1:cols
        for k=1:cols
            % ���� � ������ ��������� �������, ������ ��������.
            if x(i, j) == x(i, k)
                el(i:end+1) = x(i, k);
            end
        end
     end
end
el(2:1)
end