program RandomArray;
uses crt;

var
  A: array[1..10, 1..10] of integer;  // ���������� ������ ������ 10x10
  n, i, j: integer;  // ���������� ������ ��� ������ ������ �� �������
  randomValue: integer;  // ����� ��� ���������� ����������� �����

begin
  clrscr;

  writeln('������ ���������� ������ n (����. 10): ');
  readln(n);

  { ������������ ���������� ���������� ����� }
  randomize;  // ������������ ���������� ���������� ����� ��� ��������� ����� ���������� �� ������� �������

  { ���������� ������ ����������� ������� � �������� �� -200 �� 200 }
  for i := 1 to n do
    for j := 1 to n do
    begin
      randomValue := random(401) - 200;  // random(401) ������ ����� �� 0 �� 400, �������� 200, ��� �������� ������� �� -200 �� 200
      A[i, j] := randomValue;  // ����� ����������� ����� � �����
      write('A[', i, ',', j, ']: ', A[i, j], '  ');  // ��������� �������� ������
    end;

  writeln;
  readln;
end.
