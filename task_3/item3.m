function y=item3(x)
y = bubble_sort(x);
end

function a=bubble_sort(a)
n = length(a);
for j=1:n-1
    % ���������� ������ ������� � ����������� � ������ �� �������
    for i=1:n-1
    if a(i)>a(i+1);
        % temp - ����������, � ������� �������� ������ ��������
        temp=a(i);
        a(i)=a(i+1);
        a(i+1)=temp;
    end
    end
end
end