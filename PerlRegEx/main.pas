unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TfrmMain = class(TForm)
    Timer1: TTimer;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    Button19: TButton;
    Button20: TButton;
    Button21: TButton;
    Button22: TButton;
    Button23: TButton;
    Button24: TButton;
    Button25: TButton;
    Button26: TButton;
    Button27: TButton;
    Button28: TButton;
    Button29: TButton;
    Button30: TButton;
    Button31: TButton;
    Button32: TButton;
    Button33: TButton;
    Button34: TButton;
    Button35: TButton;
    Button36: TButton;
    Button37: TButton;
    Button38: TButton;
    Button39: TButton;
    Button40: TButton;
    Button41: TButton;
    Button42: TButton;
    Button43: TButton;
    Button44: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure Button21Click(Sender: TObject);
    procedure Button22Click(Sender: TObject);
    procedure Button23Click(Sender: TObject);
    procedure Button24Click(Sender: TObject);
    procedure Button25Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses
  PerlRegEx;

procedure TfrmMain.FormCreate(Sender: TObject);
var
  reg: TPerlRegEx; //声明正则表达式变量
begin
  reg := TPerlRegEx.Create(); //建立

  reg.Subject := 'sSsS';    //这是要替换的源字符串
  reg.RegEx   := 's';       //这是表达式, 在这里是准备替换掉的子串
  reg.Replacement := '◆';  //要替换成的新串
  reg.ReplaceAll;           //执行全部替换

  //ShowMessage(reg.Subject); //返回替换结果: ◆S◆S

  FreeAndNil(reg); //或 reg.Free
  //Timer1.Enabled:=True;
end;

procedure TfrmMain.Timer1Timer(Sender: TObject);
begin
  close;
end;

procedure TfrmMain.Button1Click(Sender: TObject);
var
  reg: TPerlRegEx;
begin
  reg := TPerlRegEx.Create();

  reg.Subject := '我爱DELPHI, 但Delphi不爱我!';
  reg.RegEx   := 'Delphi';
  reg.Replacement := '◆';
  reg.ReplaceAll;

  ShowMessage(reg.Subject); //返回: 我爱DELPHI, 但◆不爱我!

  FreeAndNil(reg);
end;

procedure TfrmMain.Button2Click(Sender: TObject);
var
  reg: TPerlRegEx;
begin
  reg := TPerlRegEx.Create();

  reg.Subject := '我爱DELPHI, 但Delphi不爱我!';
  reg.RegEx   := 'Delphi';
  reg.Replacement := '◆';
  reg.Options := [preCaseLess]; //不区分大小的设定, 默认是区分的
  reg.ReplaceAll;

  ShowMessage(reg.Subject); //返回: 我爱◆, 但◆不爱我!

  FreeAndNil(reg);
end;

procedure TfrmMain.Button3Click(Sender: TObject);
var
  reg: TPerlRegEx;
begin
  reg := TPerlRegEx.Create();

  reg.Subject := '我爱DELPHI, 但Delphi不爱我!';
  reg.RegEx   := '我';
  reg.Replacement := '◆';
  //reg.Options := [preCaseLess]; //也设定不区分大小
  reg.ReplaceAll;

  ShowMessage(reg.Subject); //返回: ◆爱DELPHI, 但Delphi不爱◆!

  FreeAndNil(reg);
end;

procedure TfrmMain.Button4Click(Sender: TObject);
// | 号的使用, | 是或者的意思
var
  reg: TPerlRegEx;
begin
  reg := TPerlRegEx.Create();

  reg.Subject := 'CodeGear Delphi 2007';
  reg.RegEx   := 'e|Delphi|0'; //使用了 | 记号
  reg.Replacement := '◆';
  reg.ReplaceAll;

  ShowMessage(reg.Subject); //返回: Cod◆G◆ar ◆ 2◆◆7

  FreeAndNil(reg);
end;


procedure TfrmMain.Button5Click(Sender: TObject);
// + 的使用, + 是重复 1 个或多个
var
  reg: TPerlRegEx;
begin
  reg := TPerlRegEx.Create();

  reg.Subject := 'a aa aaa aaaa ab abb abbba a呀a';
  reg.RegEx   := 'ab+'; //使用了 + 记号, 这里是允许 a 后面有 1 个或多个 b
  reg.Replacement := '◆';
  reg.ReplaceAll;

  ShowMessage(reg.Subject); //返回: a aa aaa aaaa ◆ ◆ ◆a a呀a

  FreeAndNil(reg);
end;


procedure TfrmMain.Button6Click(Sender: TObject);
// * 的使用, * 是重复 0 个或多个
var
  reg: TPerlRegEx;
begin
  reg := TPerlRegEx.Create();

  reg.Subject := 'a aa aaa aaaa ab abb abbba a呀a';
  reg.RegEx   := 'ab*'; //使用了 * 记号, 这里是允许 a 后面有多个或者没有 b
  reg.Replacement := '◆';
  reg.ReplaceAll;

  ShowMessage(reg.Subject); //返回: ◆ ◆◆ ◆◆◆ ◆◆◆◆ ◆ ◆ ◆◆ ◆呀◆

  FreeAndNil(reg);
end;


procedure TfrmMain.Button7Click(Sender: TObject);
// ? 的使用, ? 是重复 0 个或 1 个
var
  reg: TPerlRegEx;
begin
  reg := TPerlRegEx.Create();

  reg.Subject := 'a aa aaa aaaa ab abb abbba a呀a';
  reg.RegEx   := 'a?'; //使用了 ? 记号
  reg.Replacement := '◆';
  reg.ReplaceAll;

  ShowMessage(reg.Subject); //返回: ◆ ◆◆ ◆◆◆ ◆◆◆◆ ◆b ◆bb ◆bbb◆ ◆呀◆

  FreeAndNil(reg);
end;


procedure TfrmMain.Button8Click(Sender: TObject);
//大括号的使用<1>, 指定重复数
var
  reg: TPerlRegEx;
begin
  reg := TPerlRegEx.Create();

  reg.Subject := 'a aa aaa aaaa ab abb abbba a呀a';
  //reg.RegEx   := 'a{3}';    //这里指定重复 3 次
  //reg.RegEx   := 'a{2,4}';  //这里指定重复 2-4 次
  reg.RegEx   := 'a{1,}';   //n个或多个, 这里是 1 个或多个
  //上面这个 {1,} 和 + 是等效的;
  //还有 {0,1} 与 ? 是等效的;
  //{0,} 和 * 是等效的
  reg.Replacement := '◆';
  reg.ReplaceAll;

  ShowMessage(reg.Subject); //返回: a aa ◆ ◆a ab abb abbba a呀a

  FreeAndNil(reg);
end;

procedure TfrmMain.Button9Click(Sender: TObject);
// [A-Z]: 匹配所有大写字母
var
  reg: TPerlRegEx;
begin
  reg := TPerlRegEx.Create();

  reg.Subject := 'CodeGear Delphi 2007 for Win32啊';
  reg.RegEx   := '[A-Z]';
  //reg.RegEx   := '[a-z]';
  //reg.RegEx   := '[0-9]';
  reg.Replacement := '◆';
  reg.ReplaceAll;

  ShowMessage(reg.Subject); //返回: ◆ode◆ear ◆elphi 2007 for ◆in32

  FreeAndNil(reg);
end;


procedure TfrmMain.Button10Click(Sender: TObject);
//匹配几个范围
var
  reg: TPerlRegEx;
begin
  reg := TPerlRegEx.Create();

  reg.Subject := 'CodeGear Delphi 2007 for Win32啊';
  reg.RegEx   := '[C-Do-p0-2]'; //大写字母: C-D; 小写字母: o-p; 数字: 0-2
  reg.RegEx   := '[Ci2]'; //大写字母: C; 小写字母: i; 数字: 2  
  reg.Replacement := '◆';
  reg.ReplaceAll;

  ShowMessage(reg.Subject); //返回: ◆◆deGear ◆el◆hi ◆◆◆7 f◆r Win3◆

  FreeAndNil(reg);
end;

procedure TfrmMain.Button11Click(Sender: TObject);
// ^ 排除 [] 中的所有
var
  reg: TPerlRegEx;
begin
  reg := TPerlRegEx.Create();

  reg.Subject := 'CodeGear Delphi 2007 for Win32';
  reg.RegEx   := '[^Ci0-2]'; //这里排除了大写字母: C; 小写字母: i; 数字: 0-2
  reg.Replacement := '◆';
  reg.ReplaceAll;

  ShowMessage(reg.Subject); //返回: C◆◆◆◆◆◆◆◆◆◆◆◆◆i◆200◆◆◆◆◆◆◆i◆◆2

  FreeAndNil(reg);
end;

procedure TfrmMain.Button12Click(Sender: TObject);
// \d 匹配所有数字, 相当于 [0-9]
var
  reg: TPerlRegEx;
begin
  reg := TPerlRegEx.Create();

  reg.Subject := '期待Delphi 2008 for Win32！';
  reg.RegEx   := '\d';
  reg.Replacement := '◆';
  reg.ReplaceAll;

  ShowMessage(reg.Subject); //返回: 期待Delphi ◆◆◆◆ for Win◆◆！

  FreeAndNil(reg);
end;

procedure TfrmMain.Button13Click(Sender: TObject);
// \D 匹配所有非数字, 相当于 [^0-9]
var
  reg: TPerlRegEx;
begin
  reg := TPerlRegEx.Create();

  reg.Subject := '期待Delphi 2008 for Win32！';
  reg.RegEx   := '\D';
  reg.Replacement := '◆';
  reg.ReplaceAll;

  ShowMessage(reg.Subject); //返回: ◆◆◆◆◆◆◆◆◆◆◆2008◆◆◆◆◆◆◆◆32◆◆

  FreeAndNil(reg);
end;      

procedure TfrmMain.Button14Click(Sender: TObject);
// \w 匹配字母、数字与下划线_, 相当于 [A-Za-z0-9_]
var
  reg: TPerlRegEx;
begin
  reg := TPerlRegEx.Create();

  reg.Subject := '期_待Delphi 2008 for Win32！';
  reg.RegEx   := '\w';
  reg.Replacement := '◆';
  reg.ReplaceAll;

  ShowMessage(reg.Subject); //返回: 期◆待◆◆◆◆◆◆ ◆◆◆◆ ◆◆◆ ◆◆◆◆◆！
  FreeAndNil(reg);
end;

procedure TfrmMain.Button15Click(Sender: TObject);
// \W 匹配非字母、数字与下划线_, 相当于 [^A-Za-z0-9_]
var
  reg: TPerlRegEx;
begin
  reg := TPerlRegEx.Create();

  reg.Subject := '期_-,待Delphi 2008 for Win32！';
  reg.RegEx   := '\W';
  reg.Replacement := '◆';
  reg.ReplaceAll;

  ShowMessage(reg.Subject); //返回: ◆◆◆◆Delphi◆2008◆for◆Win32◆◆

  FreeAndNil(reg);
end;

procedure TfrmMain.Button16Click(Sender: TObject);
// \s 匹配任何空白, 包括空格、制表、换页等, 相当于 [\f\n\r\t\v]
var
  reg: TPerlRegEx;
begin
  reg := TPerlRegEx.Create();

  reg.Subject := '期待Delphi 2008 for Win32'+#10+#13+'PP';
  reg.RegEx   := '\s';
  reg.Replacement := '◆';
  reg.ReplaceAll;

  ShowMessage(reg.Subject); //返回: 期待Delphi◆2008◆for◆Win32！

  FreeAndNil(reg);
end;

procedure TfrmMain.Button17Click(Sender: TObject);
// \S 匹配任何非空白, 相当于 [^\f\n\r\t\v]
var
  reg: TPerlRegEx;
begin
  reg := TPerlRegEx.Create();

  reg.Subject := '期待Delphi 2008 for Win32！';
  reg.RegEx   := '\S';
  reg.Replacement := '◆';
  reg.ReplaceAll;

  ShowMessage(reg.Subject); //返回: ◆◆◆◆◆◆◆◆◆◆ ◆◆◆◆ ◆◆◆ ◆◆◆◆◆◆◆

  FreeAndNil(reg);
end;
         
procedure TfrmMain.Button18Click(Sender: TObject);
// \x 匹配十六进制的 ASCII
var
  reg: TPerlRegEx;
begin
  reg := TPerlRegEx.Create();

  reg.Subject := 'CodeGear Delphi';
  reg.RegEx   := '\x61'; // a 的 ASCII 值是 97, 也就是十六进制的 61
  reg.Replacement := '◆';
  reg.ReplaceAll;

  ShowMessage(reg.Subject); //返回: CodeGe◆r Delphi  
  FreeAndNil(reg);
end;

procedure TfrmMain.Button19Click(Sender: TObject);
// . 匹配除换行符以外的任何字符
var
  reg: TPerlRegEx;
begin
  reg := TPerlRegEx.Create();

  reg.Subject := '期待' + #10 + 'Delphi 2008 for Win32！'; //#10是换行符
  reg.RegEx   := '.';
  reg.Replacement := '◆';
  reg.ReplaceAll;

  ShowMessage(reg.Subject);
  {返回:
    ◆◆◆◆
    ◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆
  }
  FreeAndNil(reg);
end;


procedure TfrmMain.Button20Click(Sender: TObject);
// \b 单词边界
var
  reg: TPerlRegEx;
begin
  reg := TPerlRegEx.Create();

  reg.Subject := 'Delphi Delphi2007 MyDelphi'; 
  //reg.RegEx   := '\bDelphi\b'; //前后边界
  //reg.RegEx   := '\bDelphi'; //左边界
  reg.RegEx   := 'Delphi\b'; //右边界
  reg.Replacement := '◆';
  reg.ReplaceAll;

  ShowMessage(reg.Subject); //返回: ◆ Delphi2007 MyDelphi

  FreeAndNil(reg);
end;


procedure TfrmMain.Button21Click(Sender: TObject);
// \B 非单词边界
var
  reg: TPerlRegEx;
begin
  reg := TPerlRegEx.Create();

  reg.Subject := 'Delphi MyDelphi2007 MyDelphi';
  //reg.RegEx   := '\BDelphi\B'; //现在只有 MyDelphi2007 中的 Delphi 属于非单词边界
  //reg.RegEx   := '\BDelphi';
  reg.RegEx   := 'Delphi\B';
  reg.Replacement := '◆';
  reg.ReplaceAll;

  ShowMessage(reg.Subject); //返回: Delphi My◆2007 MyDelphi

  FreeAndNil(reg);
end;

procedure TfrmMain.Button22Click(Sender: TObject);
// ^ 行首
var
  reg: TPerlRegEx;
begin
  reg := TPerlRegEx.Create();

  reg.Subject := 'Delphi Delphi2007 MyDelphi';
  //reg.RegEx   := '^Del'; //匹配在行首的 Del
  reg.RegEx   := '\ADel'; //匹配在行首的 Del
  //reg.RegEx   := '\aDel'; //小写不匹配
  reg.Replacement := '◆';
  reg.ReplaceAll;

  ShowMessage(reg.Subject); //返回: ◆phi Delphi2007 MyDelphi

  FreeAndNil(reg);
end;


procedure TfrmMain.Button23Click(Sender: TObject);
// $ 行尾
var
  reg: TPerlRegEx;
begin
  reg := TPerlRegEx.Create();

  reg.Subject := 'Delphi Delphi2007 MyDelphi'; 
  //reg.RegEx   := 'phi$'; //匹配在行尾的 phi
  //reg.RegEx   := 'phi\Z'; //匹配在行尾的 phi
  reg.RegEx   := 'phi\z'; //匹配在行尾的 phi
  reg.Replacement := '◆';
  reg.ReplaceAll;

  ShowMessage(reg.Subject); //返回: Delphi Delphi2007 MyDel◆

  FreeAndNil(reg);
end;


procedure TfrmMain.Button24Click(Sender: TObject);
//贪婪匹配
var
  reg: TPerlRegEx;
begin
  reg := TPerlRegEx.Create();

  reg.Subject := '<html><head><title>标题</title></head><body>内容</body></html>';
  reg.RegEx   := '<.*>'; //将会全部匹配, 因为两头分别是: < 和 >
  reg.Replacement := '◆';
  reg.ReplaceAll;

  ShowMessage(reg.Subject); //返回: ◆

  FreeAndNil(reg);
end;

procedure TfrmMain.Button25Click(Sender: TObject);
//非贪婪匹配
var
  reg: TPerlRegEx;
begin
  reg := TPerlRegEx.Create();

  reg.Subject := '<html><head><title>标题</title></head><body>内容</body></html>';
  reg.RegEx   := '<.*?>'; // *? 是非贪婪匹配方法之一, 将匹配每组 <>
  reg.Replacement := '◆';
  reg.ReplaceAll;

  ShowMessage(reg.Subject); //返回: ◆◆◆标题◆◆◆内容◆◆

  FreeAndNil(reg);
end;

end.



