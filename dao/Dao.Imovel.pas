unit Dao.Imovel;

interface

uses
  FireDAC.Comp.Client, System.SysUtils, Modelo.Imovel;

  type
    TImovelDao = class

    public
      constructor Create;

      function incluir(const pImovel: TImovel):Boolean;
      function alterar(const pImovel: TImovel):Boolean;
      function deletar(const pId: Integer):Boolean;


    end;

implementation

uses uConexao;



{ TImovelDao }

constructor TImovelDao.Create;
begin

end;

function TImovelDao.incluir(const pImovel: TImovel): Boolean;
var vQry : TFDQuery;
begin
  vQry := DMConexao.CriaQuery;
  try


  finally
    FreeAndNil(vQry);
  end;
end;

function TImovelDao.alterar(const pImovel: TImovel): Boolean;
var vQry : TFDQuery;
begin

end;

function TImovelDao.deletar(const pId: Integer): Boolean;
var vQry : TFDQuery;
begin

end;

end.
