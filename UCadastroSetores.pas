unit UCadastroSetores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Mask;

type
  TOperacao = (opInserir,opAtualizar,opConsultar);
  TF_cadastrosetores = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    txtvalorpesquisa: TEdit;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Label2: TLabel;
    txtedtcod: TEdit;
    Label3: TLabel;
    txtedtnome: TEdit;
    Label4: TLabel;
    txtedtdata: TMaskEdit;
    Label5: TLabel;
    txtedtobs: TEdit;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
  private
    FOperacao : TOperacao;
    procedure Inserir;
    procedure Salvar;
    procedure Atualizar;
    procedure PreencheCampos;
  public
    { Public declarations }
    procedure LimparCampos;
  end;

var
  F_cadastrosetores: TF_cadastrosetores;

implementation

uses
  Uprincipal, UDm;

{$R *.dfm}

procedure TF_cadastrosetores.BitBtn1Click(Sender: TObject);
begin
  Dm.QrySetor.Close;
  Dm.QrySetor.SQL.Clear;
  Dm.QrySetor.SQL.Add('Select * from setores where nome like :pPesq');
  Dm.QrySetor.ParamByName('pPesq').AsString := '%'+txtvalorpesquisa.Text+'%';
  Dm.QrySetor.Open
end;

procedure TF_cadastrosetores.BitBtn2Click(Sender: TObject);
begin
  FOperacao := opInserir;
  PageControl1.ActivePage := TabSheet1;
end;

procedure TF_cadastrosetores.BitBtn3Click(Sender: TObject);
begin
  FOperacao := opAtualizar;
   PageControl1.ActivePage := TabSheet1;
end;

procedure TF_cadastrosetores.BitBtn4Click(Sender: TObject);
begin
  Salvar;
  LimparCampos;
  PageControl1.ActivePage := TabSheet2;
end;

procedure TF_cadastrosetores.DataSource1DataChange(Sender: TObject;
  Field: TField);
begin
  PreencheCampos;
end;

procedure TF_cadastrosetores.FormKeyPress(Sender: TObject; var Key: Char);
begin
 If Key = #13 then //Se o comando for igual a enter
 Begin
  Key := #0;
  Perform (wm_nextdlgctl, 0, 0); //Para pular de campo em campo
 End;
end;

procedure TF_cadastrosetores.LimparCampos;
begin
 txtedtnome.Clear;
 txtedtdata.Clear;
 txtedtobs.Clear;
 txtedtnome.SetFocus;
end;

procedure TF_cadastrosetores.PreencheCampos;
begin
  with DataSource1.DataSet do
  begin
    txtedtcod.Text := FieldByName('id_set').AsString;
    txtedtnome.Text := FieldByName('nome').AsString;
    txtedtdata.Text := FieldByName('data').AsString;
    txtedtobs.Text := FieldByName('obs').AsString;
  end;
end;

procedure TF_cadastrosetores.Atualizar;
begin
  with Dm.QrySetIns do
  begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE SETORES SET NOME = :NOME,DATA = :DATA, OBS = :OBS '+
            ' WHERE ID_SET = :ID_SET');
    ParamByName('ID_SET').AsInteger := DataSource.DataSet.FieldByName('ID_SET').AsInteger;
    ParamByName('NOME').AsString := txtedtnome.Text;
    ParamByName('DATA').AsDate :=  StrToDate(txtedtdata.Text);
    ParamByName('OBS').AsString := txtedtobs.Text;
    try
      ExecSQL;
       ShowMessage('Registro Aletrado Com Sucesso.....');
    except
      raise Exception.Create('Erro');
    end;
  end;
end;

procedure TF_cadastrosetores.Salvar;
begin
  case FOperacao of
    opInserir:  Inserir;
    opAtualizar: Atualizar;
    opConsultar: ;
  end;
end;

procedure TF_cadastrosetores.Inserir;
begin
  with Dm.QrySetIns do
  begin
    Close;
    SQL.Clear;
    SQL.Add('INSERT INTO SETORES (nome, data, obs) values (:nome,:data,:obs)');
    ParamByName('nome').Value := txtedtnome.Text;
    ParamByName('data').Value := txtedtdata.Text;
    ParamByName('obs').Value := txtedtobs.Text;
    ExecSQL;
    ShowMessage('Registro Inserido Com Sucesso.....');
    LimparCampos;
  end;
end;

end.
