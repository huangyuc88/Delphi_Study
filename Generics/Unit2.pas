unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Memo1: TMemo;
    GroupBox2: TGroupBox;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Memo2: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Generics.Collections; {Delphi 2009 新增的泛型容器单元}

type
  TRec = record
    Name: string;
    Age: Word;
  end;

var
  Queue: TQueue<TRec>;  {定义一个泛型 TQueue 类, 这指定了要用于上面定义的 TRec 记录}
  Stack: TStack<TRec>;  {定义一个泛型 TStack 类, 这指定了要用于上面定义的 TRec 记录}

procedure TForm1.Button1Click(Sender: TObject);
var
  rec: TRec;
begin
  rec.Name := StringOfChar(Char(65 + Random(26)), 3);
  rec.Age := Random(150);
  Queue.Enqueue(rec);
  Text := Format('当前队列成员总数: %d', [Queue.Count]);

  {让 Memo1 配合显示}
  Memo1.Lines.Add(Format('%s, %d', [rec.Name, rec.Age]));
end;


procedure TForm1.Button2Click(Sender: TObject);
var
  rec: TRec;
begin
  if Queue.Count = 0 then Exit;
  rec := Queue.Dequeue;
  ShowMessage(Format('%s, %d', [rec.Name, rec.Age]));
  Text := Format('当前队列成员总数: %d', [Queue.Count]);

  {让 Memo1 配合显示}
  Memo1.Lines.Delete(0);
end;


procedure TForm1.Button3Click(Sender: TObject);
var
  rec: TRec;
begin
  if Queue.Count = 0 then Exit;
  rec := Queue.Peek;
  ShowMessage(Format('%s, %d', [rec.Name, rec.Age]));
end;


procedure TForm1.Button4Click(Sender: TObject);
var
  rec: TRec;
begin
  rec.Name := StringOfChar(Char(65 + Random(26)), 3);
  rec.Age := Random(150);
  Stack.Push(rec);
  Text := Format('当前队列成员总数: %d', [Stack.Count]);

  {让 Memo1 配合显示}
  Memo2.Lines.Add(Format('%s, %d', [rec.Name, rec.Age]));
end;


procedure TForm1.Button5Click(Sender: TObject);
var
  rec: TRec;
begin
  if Stack.Count = 0 then Exit;
  rec := Stack.Pop;
  ShowMessage(Format('%s, %d', [rec.Name, rec.Age]));
  Text := Format('当前队列成员总数: %d', [Stack.Count]);

  {让 Memo1 配合显示}
  Memo2.Lines.Delete(Memo1.Lines.Count - 1);
end;


procedure TForm1.Button6Click(Sender: TObject);
var
  rec: TRec;
begin
  if Stack.Count = 0 then Exit;
  rec := Stack.Peek;
  ShowMessage(Format('%s, %d', [rec.Name, rec.Age]));
end;


procedure TForm1.FormCreate(Sender: TObject);
begin
  Queue := TQueue<TRec>.Create;

  Memo1.Clear;
  Button1.Caption := Button1.Caption + ' 入列';
  Button2.Caption := Button2.Caption + ' 出列';
  Button3.Caption := Button3.Caption + ' 下一个出列的...';

  Stack := TStack<TRec>.Create;
  Memo2.Clear;
  Button4.Caption := Button1.Caption + ' 压栈';
  Button5.Caption := Button2.Caption + ' 出栈';
  Button6.Caption := Button3.Caption + ' 下一个出栈的...';


end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  Queue.Free;
  Stack.Free;
end;

end.
