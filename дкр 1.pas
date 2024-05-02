uses GraphABC;
 
procedure Draw; //главная процедура
var xn, yn, rand : integer;
    f : longint;
    a, b, x, y: real;
    const satur = 100000; //задаем насыщение
begin
    xn := 250; //параметры фрактала в окне
    yn := 350;
    rand := 250;
    Randomize;
    x := 0;
    y := 0;
    for f := 0 to satur do 
 
    begin
        a := x; 
        b := Random;    
        if b <= 0.5 then 
 
        begin
            x := 0.5*x - 0.5*y;//точки излома, поворота
            y := 0.5*a + 0.5*y;
        end
 
        else
        begin
            x := 0.5*x + 0.5*y + 0.5;//рисование кривой по координатам
            y := -0.5*a + 0.5*y + 0.5;
        end;
 
        PutPixel(xn + Round(rand * x), yn - Round(rand * y), clBlack);//координаты точек и цвет
    end;
end;

begin
    SetWindowSize(750,600);
    ClearWindow;
    SetWindowCaption('Кривая Леви');
    Draw();
end.