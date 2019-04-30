unit UcadastroClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Data.DB, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids;

type
  TF_CadastrosClientes = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Panel1: TPanel;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    BtnIncluir: TBitBtn;
    BTnAlterar: TBitBtn;
    BtnSalvar: TBitBtn;
    BtnCancelar: TBitBtn;
    BtnExcluir: TBitBtn;
    Label14: TLabel;
    txtvalorpesquisa: TEdit;
    BitBtn1: TBitBtn;
    DBGrid1: TDBGrid;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BtnIncluirClick(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BTnAlterarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure AtivaDesativaBotoes;
  end;

var
  F_CadastrosClientes: TF_CadastrosClientes;

implementation

uses
  UDm, Uprincipal;

{$R *.dfm}

procedure TF_CadastrosClientes.AtivaDesativaBotoes;
begin
   BtnIncluir.Enabled  := not btnincluir.Enabled;
   btnexcluir.Enabled  := not btnexcluir.Enabled;
   btnalterar.Enabled  := not btnalterar.Enabled;
   btncancelar.Enabled := not btncancelar.Enabled;
   btnsalvar.Enabled   := not btnsalvar.Enabled;
end;

procedure TF_CadastrosClientes.BitBtn1Click(Sender: TObject);
begin
  Dm.QryClientes.Close;
  Dm.QryClientes.SQL.Clear;
  Dm.QryClientes.SQL.Add('Select * from clientes where nome like :pPesq');
  Dm.QryClientes.ParamByName('pPesq').AsString := '%'+txtvalorpesquisa.Text+'%';
  Dm.QryClientes.Open
end;

procedure TF_CadastrosClientes.BTnAlterarClick(Sender: TObject);
begin
  if not Dm.QryClientes.FieldByName('ID_CLI').IsNull then
  begin
  AtivaDesativaBotoes;
  Dm.QryClientes.Edit;
  DBEdit2.SetFocus;
  end else
  begin
  ShowMessage('Nenhum Registro selecionado para Alteração');
  end;
end;

procedure TF_CadastrosClientes.BtnCancelarClick(Sender: TObject);
begin
  AtivaDesativaBotoes;
  Dm.QryClientes.Cancel;
end;

procedure TF_CadastrosClientes.BtnExcluirClick(Sender: TObject);
begin
  if not Dm.QryClientes.FieldByName('id_cli').IsNull then
  begin
    Dm.QryClientes.Delete;
    dm.QryClientes.Close;
    ShowMessage('Cliente Excluido com Sucesso!!');
    end else
    begin
    ShowMessage('Nenhum Cliente Selecionado!');
  end
end;

procedure TF_CadastrosClientes.BtnIncluirClick(Sender: TObject);
begin
  AtivaDesativaBotoes;
  Dm.QryClientes.Open;
  Dm.QryClientes.Append;
  DBEdit2.SetFocus;
end;

procedure TF_CadastrosClientes.BtnSalvarClick(Sender: TObject);
begin
 Dm.QryClientes.Post;
 AtivaDesativaBotoes;
 ShowMessage('Cliente Gravado Com Sucesso!!!!');
end;

procedure TF_CadastrosClientes.DBGrid1DblClick(Sender: TObject);
begin
 PageControl1.ActivePageIndex := 0;
end;

procedure TF_CadastrosClientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := caFree;
end;

procedure TF_CadastrosClientes.FormDestroy(Sender: TObject);
begin
  F_CadastrosClientes := nil;
end;

procedure TF_CadastrosClientes.FormKeyPress(Sender: TObject; var Key: Char);
begin
 If Key = #13 then //Se o comando for igual a enter
 Begin
  Key := #0;
  Perform (wm_nextdlgctl, 0, 0); //Para pular de campo em campo
 End;
end;

end.
