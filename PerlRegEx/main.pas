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
  reg: TPerlRegEx; //����������ʽ����
begin
  reg := TPerlRegEx.Create(); //����

  reg.Subject := 'sSsS';    //����Ҫ�滻��Դ�ַ���
  reg.RegEx   := 's';       //���Ǳ��ʽ, ��������׼���滻�����Ӵ�
  reg.Replacement := '��';  //Ҫ�滻�ɵ��´�
  reg.ReplaceAll;           //ִ��ȫ���滻

  //ShowMessage(reg.Subject); //�����滻���: ��S��S

  FreeAndNil(reg); //�� reg.Free
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

  reg.Subject := '�Ұ�DELPHI, ��Delphi������!';
  reg.RegEx   := 'Delphi';
  reg.Replacement := '��';
  reg.ReplaceAll;

  ShowMessage(reg.Subject); //����: �Ұ�DELPHI, ����������!

  FreeAndNil(reg);
end;

procedure TfrmMain.Button2Click(Sender: TObject);
var
  reg: TPerlRegEx;
begin
  reg := TPerlRegEx.Create();

  reg.Subject := '�Ұ�DELPHI, ��Delphi������!';
  reg.RegEx   := 'Delphi';
  reg.Replacement := '��';
  reg.Options := [preCaseLess]; //�����ִ�С���趨, Ĭ�������ֵ�
  reg.ReplaceAll;

  ShowMessage(reg.Subject); //����: �Ұ���, ����������!

  FreeAndNil(reg);
end;

procedure TfrmMain.Button3Click(Sender: TObject);
var
  reg: TPerlRegEx;
begin
  reg := TPerlRegEx.Create();

  reg.Subject := '�Ұ�DELPHI, ��Delphi������!';
  reg.RegEx   := '��';
  reg.Replacement := '��';
  //reg.Options := [preCaseLess]; //Ҳ�趨�����ִ�С
  reg.ReplaceAll;

  ShowMessage(reg.Subject); //����: ����DELPHI, ��Delphi������!

  FreeAndNil(reg);
end;

procedure TfrmMain.Button4Click(Sender: TObject);
// | �ŵ�ʹ��, | �ǻ��ߵ���˼
var
  reg: TPerlRegEx;
begin
  reg := TPerlRegEx.Create();

  reg.Subject := 'CodeGear Delphi 2007';
  reg.RegEx   := 'e|Delphi|0'; //ʹ���� | �Ǻ�
  reg.Replacement := '��';
  reg.ReplaceAll;

  ShowMessage(reg.Subject); //����: Cod��G��ar �� 2����7

  FreeAndNil(reg);
end;


procedure TfrmMain.Button5Click(Sender: TObject);
// + ��ʹ��, + ���ظ� 1 ������
var
  reg: TPerlRegEx;
begin
  reg := TPerlRegEx.Create();

  reg.Subject := 'a aa aaa aaaa ab abb abbba aѽa';
  reg.RegEx   := 'ab+'; //ʹ���� + �Ǻ�, ���������� a ������ 1 ������ b
  reg.Replacement := '��';
  reg.ReplaceAll;

  ShowMessage(reg.Subject); //����: a aa aaa aaaa �� �� ��a aѽa

  FreeAndNil(reg);
end;


procedure TfrmMain.Button6Click(Sender: TObject);
// * ��ʹ��, * ���ظ� 0 ������
var
  reg: TPerlRegEx;
begin
  reg := TPerlRegEx.Create();

  reg.Subject := 'a aa aaa aaaa ab abb abbba aѽa';
  reg.RegEx   := 'ab*'; //ʹ���� * �Ǻ�, ���������� a �����ж������û�� b
  reg.Replacement := '��';
  reg.ReplaceAll;

  ShowMessage(reg.Subject); //����: �� ���� ������ �������� �� �� ���� ��ѽ��

  FreeAndNil(reg);
end;


procedure TfrmMain.Button7Click(Sender: TObject);
// ? ��ʹ��, ? ���ظ� 0 ���� 1 ��
var
  reg: TPerlRegEx;
begin
  reg := TPerlRegEx.Create();

  reg.Subject := 'a aa aaa aaaa ab abb abbba aѽa';
  reg.RegEx   := 'a?'; //ʹ���� ? �Ǻ�
  reg.Replacement := '��';
  reg.ReplaceAll;

  ShowMessage(reg.Subject); //����: �� ���� ������ �������� ��b ��bb ��bbb�� ��ѽ��

  FreeAndNil(reg);
end;


procedure TfrmMain.Button8Click(Sender: TObject);
//�����ŵ�ʹ��<1>, ָ���ظ���
var
  reg: TPerlRegEx;
begin
  reg := TPerlRegEx.Create();

  reg.Subject := 'a aa aaa aaaa ab abb abbba aѽa';
  //reg.RegEx   := 'a{3}';    //����ָ���ظ� 3 ��
  //reg.RegEx   := 'a{2,4}';  //����ָ���ظ� 2-4 ��
  reg.RegEx   := 'a{1,}';   //n������, ������ 1 ������
  //������� {1,} �� + �ǵ�Ч��;
  //���� {0,1} �� ? �ǵ�Ч��;
  //{0,} �� * �ǵ�Ч��
  reg.Replacement := '��';
  reg.ReplaceAll;

  ShowMessage(reg.Subject); //����: a aa �� ��a ab abb abbba aѽa

  FreeAndNil(reg);
end;

procedure TfrmMain.Button9Click(Sender: TObject);
// [A-Z]: ƥ�����д�д��ĸ
var
  reg: TPerlRegEx;
begin
  reg := TPerlRegEx.Create();

  reg.Subject := 'CodeGear Delphi 2007 for Win32��';
  reg.RegEx   := '[A-Z]';
  //reg.RegEx   := '[a-z]';
  //reg.RegEx   := '[0-9]';
  reg.Replacement := '��';
  reg.ReplaceAll;

  ShowMessage(reg.Subject); //����: ��ode��ear ��elphi 2007 for ��in32

  FreeAndNil(reg);
end;


procedure TfrmMain.Button10Click(Sender: TObject);
//ƥ�伸����Χ
var
  reg: TPerlRegEx;
begin
  reg := TPerlRegEx.Create();

  reg.Subject := 'CodeGear Delphi 2007 for Win32��';
  reg.RegEx   := '[C-Do-p0-2]'; //��д��ĸ: C-D; Сд��ĸ: o-p; ����: 0-2
  reg.RegEx   := '[Ci2]'; //��д��ĸ: C; Сд��ĸ: i; ����: 2  
  reg.Replacement := '��';
  reg.ReplaceAll;

  ShowMessage(reg.Subject); //����: ����deGear ��el��hi ������7 f��r Win3��

  FreeAndNil(reg);
end;

procedure TfrmMain.Button11Click(Sender: TObject);
// ^ �ų� [] �е�����
var
  reg: TPerlRegEx;
begin
  reg := TPerlRegEx.Create();

  reg.Subject := 'CodeGear Delphi 2007 for Win32';
  reg.RegEx   := '[^Ci0-2]'; //�����ų��˴�д��ĸ: C; Сд��ĸ: i; ����: 0-2
  reg.Replacement := '��';
  reg.ReplaceAll;

  ShowMessage(reg.Subject); //����: C��������������������������i��200��������������i����2

  FreeAndNil(reg);
end;

procedure TfrmMain.Button12Click(Sender: TObject);
// \d ƥ����������, �൱�� [0-9]
var
  reg: TPerlRegEx;
begin
  reg := TPerlRegEx.Create();

  reg.Subject := '�ڴ�Delphi 2008 for Win32��';
  reg.RegEx   := '\d';
  reg.Replacement := '��';
  reg.ReplaceAll;

  ShowMessage(reg.Subject); //����: �ڴ�Delphi �������� for Win������

  FreeAndNil(reg);
end;

procedure TfrmMain.Button13Click(Sender: TObject);
// \D ƥ�����з�����, �൱�� [^0-9]
var
  reg: TPerlRegEx;
begin
  reg := TPerlRegEx.Create();

  reg.Subject := '�ڴ�Delphi 2008 for Win32��';
  reg.RegEx   := '\D';
  reg.Replacement := '��';
  reg.ReplaceAll;

  ShowMessage(reg.Subject); //����: ����������������������2008����������������32����

  FreeAndNil(reg);
end;      

procedure TfrmMain.Button14Click(Sender: TObject);
// \w ƥ����ĸ���������»���_, �൱�� [A-Za-z0-9_]
var
  reg: TPerlRegEx;
begin
  reg := TPerlRegEx.Create();

  reg.Subject := '��_��Delphi 2008 for Win32��';
  reg.RegEx   := '\w';
  reg.Replacement := '��';
  reg.ReplaceAll;

  ShowMessage(reg.Subject); //����: �ڡ��������������� �������� ������ ������������
  FreeAndNil(reg);
end;

procedure TfrmMain.Button15Click(Sender: TObject);
// \W ƥ�����ĸ���������»���_, �൱�� [^A-Za-z0-9_]
var
  reg: TPerlRegEx;
begin
  reg := TPerlRegEx.Create();

  reg.Subject := '��_-,��Delphi 2008 for Win32��';
  reg.RegEx   := '\W';
  reg.Replacement := '��';
  reg.ReplaceAll;

  ShowMessage(reg.Subject); //����: ��������Delphi��2008��for��Win32����

  FreeAndNil(reg);
end;

procedure TfrmMain.Button16Click(Sender: TObject);
// \s ƥ���κοհ�, �����ո��Ʊ���ҳ��, �൱�� [\f\n\r\t\v]
var
  reg: TPerlRegEx;
begin
  reg := TPerlRegEx.Create();

  reg.Subject := '�ڴ�Delphi 2008 for Win32'+#10+#13+'PP';
  reg.RegEx   := '\s';
  reg.Replacement := '��';
  reg.ReplaceAll;

  ShowMessage(reg.Subject); //����: �ڴ�Delphi��2008��for��Win32��

  FreeAndNil(reg);
end;

procedure TfrmMain.Button17Click(Sender: TObject);
// \S ƥ���κηǿհ�, �൱�� [^\f\n\r\t\v]
var
  reg: TPerlRegEx;
begin
  reg := TPerlRegEx.Create();

  reg.Subject := '�ڴ�Delphi 2008 for Win32��';
  reg.RegEx   := '\S';
  reg.Replacement := '��';
  reg.ReplaceAll;

  ShowMessage(reg.Subject); //����: �������������������� �������� ������ ��������������

  FreeAndNil(reg);
end;
         
procedure TfrmMain.Button18Click(Sender: TObject);
// \x ƥ��ʮ�����Ƶ� ASCII
var
  reg: TPerlRegEx;
begin
  reg := TPerlRegEx.Create();

  reg.Subject := 'CodeGear Delphi';
  reg.RegEx   := '\x61'; // a �� ASCII ֵ�� 97, Ҳ����ʮ�����Ƶ� 61
  reg.Replacement := '��';
  reg.ReplaceAll;

  ShowMessage(reg.Subject); //����: CodeGe��r Delphi  
  FreeAndNil(reg);
end;

procedure TfrmMain.Button19Click(Sender: TObject);
// . ƥ������з�������κ��ַ�
var
  reg: TPerlRegEx;
begin
  reg := TPerlRegEx.Create();

  reg.Subject := '�ڴ�' + #10 + 'Delphi 2008 for Win32��'; //#10�ǻ��з�
  reg.RegEx   := '.';
  reg.Replacement := '��';
  reg.ReplaceAll;

  ShowMessage(reg.Subject);
  {����:
    ��������
    ����������������������������������������������
  }
  FreeAndNil(reg);
end;


procedure TfrmMain.Button20Click(Sender: TObject);
// \b ���ʱ߽�
var
  reg: TPerlRegEx;
begin
  reg := TPerlRegEx.Create();

  reg.Subject := 'Delphi Delphi2007 MyDelphi'; 
  //reg.RegEx   := '\bDelphi\b'; //ǰ��߽�
  //reg.RegEx   := '\bDelphi'; //��߽�
  reg.RegEx   := 'Delphi\b'; //�ұ߽�
  reg.Replacement := '��';
  reg.ReplaceAll;

  ShowMessage(reg.Subject); //����: �� Delphi2007 MyDelphi

  FreeAndNil(reg);
end;


procedure TfrmMain.Button21Click(Sender: TObject);
// \B �ǵ��ʱ߽�
var
  reg: TPerlRegEx;
begin
  reg := TPerlRegEx.Create();

  reg.Subject := 'Delphi MyDelphi2007 MyDelphi';
  //reg.RegEx   := '\BDelphi\B'; //����ֻ�� MyDelphi2007 �е� Delphi ���ڷǵ��ʱ߽�
  //reg.RegEx   := '\BDelphi';
  reg.RegEx   := 'Delphi\B';
  reg.Replacement := '��';
  reg.ReplaceAll;

  ShowMessage(reg.Subject); //����: Delphi My��2007 MyDelphi

  FreeAndNil(reg);
end;

procedure TfrmMain.Button22Click(Sender: TObject);
// ^ ����
var
  reg: TPerlRegEx;
begin
  reg := TPerlRegEx.Create();

  reg.Subject := 'Delphi Delphi2007 MyDelphi';
  //reg.RegEx   := '^Del'; //ƥ�������׵� Del
  reg.RegEx   := '\ADel'; //ƥ�������׵� Del
  //reg.RegEx   := '\aDel'; //Сд��ƥ��
  reg.Replacement := '��';
  reg.ReplaceAll;

  ShowMessage(reg.Subject); //����: ��phi Delphi2007 MyDelphi

  FreeAndNil(reg);
end;


procedure TfrmMain.Button23Click(Sender: TObject);
// $ ��β
var
  reg: TPerlRegEx;
begin
  reg := TPerlRegEx.Create();

  reg.Subject := 'Delphi Delphi2007 MyDelphi'; 
  //reg.RegEx   := 'phi$'; //ƥ������β�� phi
  //reg.RegEx   := 'phi\Z'; //ƥ������β�� phi
  reg.RegEx   := 'phi\z'; //ƥ������β�� phi
  reg.Replacement := '��';
  reg.ReplaceAll;

  ShowMessage(reg.Subject); //����: Delphi Delphi2007 MyDel��

  FreeAndNil(reg);
end;


procedure TfrmMain.Button24Click(Sender: TObject);
//̰��ƥ��
var
  reg: TPerlRegEx;
begin
  reg := TPerlRegEx.Create();

  reg.Subject := '<html><head><title>����</title></head><body>����</body></html>';
  reg.RegEx   := '<.*>'; //����ȫ��ƥ��, ��Ϊ��ͷ�ֱ���: < �� >
  reg.Replacement := '��';
  reg.ReplaceAll;

  ShowMessage(reg.Subject); //����: ��

  FreeAndNil(reg);
end;

procedure TfrmMain.Button25Click(Sender: TObject);
//��̰��ƥ��
var
  reg: TPerlRegEx;
begin
  reg := TPerlRegEx.Create();

  reg.Subject := '<html><head><title>����</title></head><body>����</body></html>';
  reg.RegEx   := '<.*?>'; // *? �Ƿ�̰��ƥ�䷽��֮һ, ��ƥ��ÿ�� <>
  reg.Replacement := '��';
  reg.ReplaceAll;

  ShowMessage(reg.Subject); //����: ������������������ݡ���

  FreeAndNil(reg);
end;

end.



