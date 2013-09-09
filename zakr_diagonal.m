function zakr_diagonal(r)
% r-������ �� ����
% ����: ����� � ������������ ����� ����.
% ���: ����� �������� ����� �����.

% ����������� ��������� �� ���-�����.
zakr_diag(r,'s', 'w')
nazad_po_zakr(r, 'n', 'o')

% ����������� ��������� �� ���-������.
zakr_diag(r,'s', 'o')
nazad_po_zakr(r, 'n', 'w')

% ����������� ��������� �� ������-�����.
zakr_diag(r,'n', 'w')
nazad_po_zakr(r, 's', 'o')

% ����������� ��������� �� ������-������.
zakr_diag(r,'n', 'o')
nazad_po_zakr(r, 's', 'w')

% ����������� ��������� ������.
r.mark

function zakr_diag(r, side_vert, side_hor)
while (~ r.is_bord(side_vert) && ~ r.is_bord(side_hor))
    
    r.step(side_vert)
    r.step(side_hor)
    r.mark
    
    if r.is_bord(side_vert) || r.is_bord(side_hor)
       r.mark
    end
    
end

function nazad_po_zakr(r, side_vert, side_hor)
while r.is_mark==1
    r.step(side_vert)
    r.step(side_hor)
end