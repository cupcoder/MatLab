function graph()
% ������� ������ (�� �������: 0.2, 1.8, 10)
firstPoint = input('��������� �����: ');
lastPoint = input('�������� �����: ');
numPoints = input('���������� ������������� �����: ');

% ������� �������� ������������� �����
interval = (lastPoint-firstPoint)/numPoints;

% �������������� ������ ������ Pero
p = Pero(firstPoint, f(firstPoint,numPoints));

% � �������������� ���������� ��� ������ (1.3)
ySumm = 0;
% ��������� ������ � �������
for i = firstPoint:interval:lastPoint
   cy = f(i,numPoints); % ������ ����������, ����� �� �������
                        % ��������� ��� ���� � �� ��.
   
   % (1.4) - ����� ������������ ���������� �������� ������� ..
   iPrev = i-interval;
   cyPrev = f(iPrev,numPoints);
   % .. � ���������� ����� �������� �����. ���� ����� �����������,
   % �� �� ������ �������� ������� ���������� ��� 0X.
   if sign(cy) ~= sign(cyPrev)
     % ��� ���������� ~ �������� � ������������� ����������
     % ������� �� - �� ������� ������� ������� �������.
     % �������, ������ �������� �� ����������� �������
     if f(iPrev,numPoints) * f(i,numPoints) >= 0
         error('������� �� �������� ���������!')
     end
     % �������� ��������
     curr = i;
     while curr-(iPrev) > 0.0001    % �������. ��� �������� ����� 
                                 % ������� �������� �� - ������.
         t = (iPrev + curr)/2;
         if f(t, numPoints) * f(iPrev,numPoints) > 0
             iPrev = t;
         else
             curr = t;
         end
     end 
     markz(t, i, cy, p);
   else
     p.punct(i, cy);
   end
   % (1.3) - ������� ����� ��������� x y
   ySumm = ySumm + cy;
end
% ������ ������
% ������ ��������� ������� �� ����� ���� ������� ..
axis('equal');
p.draw

% (1.3) - ��������� �����
% ������� ������������� ����� ���� ����� ..
p.set('lineColor' , 'w');
% ��������� � ����� ������ ����� ..
p.punct(lastPoint, ySumm/numPoints);
p.draw
% .. � ��������� ���� �������
p.set('lineColor' , 'b');
p.punct(firstPoint, ySumm/numPoints);
% ������ �����
p.draw