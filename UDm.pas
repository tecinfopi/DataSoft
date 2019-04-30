unit UDm;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TDm = class(TDataModule)
    Conexao: TFDConnection;
    Transacoes: TFDTransaction;
    QryClientes: TFDQuery;
    QryClientesID_CLI: TIntegerField;
    QryClientesNOME: TStringField;
    QryClientesENDERECO: TStringField;
    QryClientesBAIRRO: TStringField;
    QryClientesCEP: TStringField;
    QryClientesCIDADE: TStringField;
    QryClientesESTADO: TStringField;
    QryClientesCNPJCPF: TStringField;
    QryClientesINSCRG: TStringField;
    QryClientesEMAIL: TStringField;
    QryClientesOBS: TStringField;
    QryClientesPESSOA: TStringField;
    QryClientesDATA: TDateField;
    QrySetor: TFDQuery;
    QrySetIns: TFDQuery;
    QrySetInsID_SET: TIntegerField;
    QrySetInsNOME: TStringField;
    QrySetInsDATA: TDateField;
    QrySetInsOBS: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Dm: TDm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
