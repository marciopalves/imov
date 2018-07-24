unit uConexao;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, Data.DB, FireDAC.Comp.Client, FireDAC.Phys.MySQLDef,
  FireDAC.Phys.FB, FireDAC.DApt, FireDAC.VCLUI.Wait,
  FireDAC.Phys.FBDef;

type
  TDMConexao = class(TDataModule)
    FConn: TFDConnection;
  private
    { Private declarations }
    procedure ConfigurarConexao;
  public
    { Public declarations }
    function CriaQuery: TFDQuery;
  end;

var
  DMConexao: TDMConexao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDMConexao }

procedure TDMConexao.ConfigurarConexao;
Const PATH_BANCO = 'D:\projetos\imov\bd\IMOV.FDB';
begin
  FConn.Connected := False;
  FConn.Params.DriverID := 'FB';
  FConn.Params.Database := PATH_BANCO;
  FConn.Params.UserName := 'SYSDBA';
  FConn.Params.Password := 'masterkey';
  FConn.LoginPrompt     := False;
  FConn.Connected := True;
end;

function TDMConexao.CriaQuery: TFDQuery;
var vQuery : TFDQuery;
begin
  vQuery := TFDQuery.Create(nil);
  vQuery.Connection := FConn;
  Result := vQuery;
end;

end.
