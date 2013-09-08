function zakr_chess(r)
% r-������ �� ����
% ����: ����� � ������������ ����� ����
% ���: ����� �������� ��� ������ ���� � ��������� �������
%      (������� � ������ ������� ����)

% - - - ������������� ������ � ����� ������ ���� - - - %
starter(r)
% - - - ��������� ���������� ����� - - - %
controller(r)
% - - - ����������� ��������� ����� - - - %
zakr_line(r)

function controller(r)
while ~ r.is_bord('n') 
    zakr_line(r)
    r.step('n')
end


function starter(r)
  while ~ r.is_bord('s')
    r.step('s')
  end 
  while ~ r.is_bord('w')
    r.step('w')
  end 

function zakr_line(r)
  if r.is_bord('o')
    while ~ r.is_bord('w')
      if ~ r.is_bord('w')
        r.mark
        r.step('w')
      end
      if ~ r.is_bord('w')
        r.step('w')
      end
    end
  elseif r.is_bord('w')
    while ~ r.is_bord('o')
      if ~ r.is_bord('o')  
        r.mark
        r.step('o')
      end
      if ~ r.is_bord('o')  
        r.step('o')
      end
    end
  end