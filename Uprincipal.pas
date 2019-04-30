unit Uprincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.Menus, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Buttons;

type
  TF_principal = class(TForm)
    StatusBar1: TStatusBar;
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Clientes1: TMenuItem;
    Fornecedores1: TMenuItem;
    Produtos1: TMenuItem;
    N1: TMenuItem;
    Empresas1: TMenuItem;
    Filiais1: TMenuItem;
    Setores1: TMenuItem;
    Sair1: TMenuItem;
    Panel1: TPanel;
    Panel2: TPanel;
    BtnSair: TBitBtn;
    BtnClientes: TBitBtn;
    BtnProdutos: TBitBtn;
    BtnEmpresas: TBitBtn;
    Equipamentos1: TMenuItem;
    procedure BtnSairClick(Sender: TObject);
    procedure BtnClientesClick(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure Setores1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure FecharSistema;
    Procedure InformacaoSistema;
  end;

var
  F_principal: TF_principal;

implementation

{$R *.dfm}

uses UcadastroClientes, UCadastroSetores;

{ TF_principal }

procedure TF_principal.BtnClientesClick(Sender: TObject);
begin
  if F_CadastrosClientes = nil then
  begin
  Application.CreateForm(TF_CadastrosClientes, F_CadastrosClientes);
  end;
  F_CadastrosClientes.Show;
end;

procedure TF_principal.BtnSairClick(Sender: TObject);
begin
  FecharSistema;
end;

procedure TF_principal.Clientes1Click(Sender: TObject);
begin
  if F_CadastrosClientes = nil then
  begin
  Application.CreateForm(TF_CadastrosClientes, F_CadastrosClientes);
  end;
  F_CadastrosClientes.Show;
end;

procedure TF_principal.FecharSistema;
begin
  if Application.MessageBox('Informação do Sistema ?', 'Confirmação', MB_ICONQUESTION
  + MB_YESNO) = IDYES then
  Application.Terminate;
end;
procedure TF_principal.InformacaoSistema;
begin
  if Application.MessageBox('Informação do Sistema ?', 'Confirmação', MB_ICONQUESTION
  + MB_YESNO) = IDYES then
end;

procedure TF_principal.Sair1Click(Sender: TObject);
begin
  FecharSistema;
end;

procedure TF_principal.Setores1Click(Sender: TObject);
begin
    if F_cadastrosetores = nil then
  begin
  Application.CreateForm(TF_cadastrosetores, F_cadastrosetores);
  end;
  F_cadastrosetores.Show
end;

end.
