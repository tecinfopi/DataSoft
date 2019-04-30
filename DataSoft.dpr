program DataSoft;

uses
  Vcl.Forms,
  Uprincipal in 'Uprincipal.pas' {F_principal},
  UDm in 'UDm.pas' {Dm: TDataModule},
  UcadastroClientes in 'UcadastroClientes.pas' {F_CadastrosClientes},
  UCadastroSetores in 'UCadastroSetores.pas' {F_cadastrosetores};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'DataSoft - Controle';
  Application.CreateForm(TDm, Dm);
  Application.CreateForm(TF_principal, F_principal);
  Application.Run;
end.
