function zakr_krest(r)
% r-������ �� ����
%����:����� � ������������ ����� ����
%���:����� � �������� ��������� � ������ ������������ �������� ������
zakr_luch(r,'o')
nazad_po_zakr(r,'w')
%����� � ��������� ���������
zakr_luch(r,'n')
nazad_po_zakr(r,'s')
%����� � ��������� ���������
zakr_luch(r,'s')
nazad_po_zakr(r,'n')
%����� � ��������� ���������
zakr_luch(r,'w')
nazad_po_zakr(r,'o')
%����� � ��������� ���������
r.mark
function zakr_luch(r, side)
while ~ r.is_bord(side)
    r.step(side)
    r.mark
end 

function nazad_po_zakr(r, side)
while r.is_mark
    r.step(side)
end