function o=item1_v0(str)
x = [];
% ������ ������ ������ � ��������� ����� �� �����������
sent = regexp(str, '[!?.]', 'split'); 
% ������ ������ ������, � ������� ������� ���������� ���� � ����������
% ��������� � ������.
for i=sent
    % ���� ������� �� ������, �� ��������� ������ �� �����
    if ~isempty(char(i))
        word = regexp(char(i), '[ ,:;"()]', 'split');
        ch = word(~cellfun('isempty',word));
        numch = length(strjoin(ch,'')); % ������� ���������� ��������
        x(end+1) = numch/length(ch); % � ������� ������� ����� ����
    end
end
% � ����� ������� ������������ ������� ������� (������ ����������� � ������������ ������� ������ ����)
o=find(x==max(x));
end