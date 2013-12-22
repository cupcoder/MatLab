function o=item1_v0(string)
% �������� ��� ����� ���������� �� �������.
string = strrep(string, ',', ' ');
string = strrep(string, ';', ' ');
string = strrep(string, ':', ' ');
string = strrep(string, '-', ' ');
string = strrep(string, '(', ' ');
string = strrep(string, ')', ' ');
string = strrep(string, '"', ' ');

% �������� ��� ������������� ������� �� ��������� ������.
string = strrep(string, '  ', ' ');
string = strrep(string, '   ', ' ');
string = strrep(string, '    ', ' ');
string = strrep(string, '     ', ' '); % �� ������ ������.

% �������� ��� ����� ���������� �� �����.
string = strrep(string, '!', '.');
string = strrep(string, '?', '.');
string = strrep(string, '...', '.');

% ������� ������ ������� �� ����� � ����� �����
string = strrep(string, ' . ', '.');
string = strrep(string, '. ', '.');
string = strrep(string, ' .', '.');

% ��������� ����� �� ����������� � ����� �� � ������ (1 - �� ������)
array = strsplit(string, '.');

% �������������� ������
num = [];

% ��� ������� �������� ������� ������� ���������� ��������
% � ���������� ������� (������ �����). 2 - �� ������.

for i=1:length(array)
    words = sum(array{i} == ' ') + 1; % ���������� ����
    chars = length(array{i}) - sum(array{i} == ' '); % ���������� ��������
    num(end+1) = chars/words; % ����� � ������ ������� ����� ���� ����� �����������
end
% ������� �����������(��) �������(�) ������� - �����(�) �����������(��) � ������������ ������� ������ ����
o=find(num==max(num));
end