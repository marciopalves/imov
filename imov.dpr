program imov;

uses
  Vcl.Forms,
  uConexao in 'dao\uConexao.pas' {DMConexao: TDataModule},
  untPrincipal in 'visao\untPrincipal.pas' {frmPrincipal},
  Modelo.Acao in 'modelo\Modelo.Acao.pas',
  Modelo.Parceiro in 'modelo\Modelo.Parceiro.pas',
  Modelo.Endereco in 'modelo\Modelo.Endereco.pas',
  Modelo.Imovel in 'modelo\Modelo.Imovel.pas',
  Dao.Imovel in 'dao\Dao.Imovel.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDMConexao, DMConexao);
  Application.Run;
end.
