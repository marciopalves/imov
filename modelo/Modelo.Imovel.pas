unit Modelo.Imovel;

interface

uses Modelo.Acao, Modelo.Endereco;

type

  TImovel = class

  private
    FObservacao: String;
    FDesmembrado: Boolean;
    FCodigo: Integer;
    FMatriz,
    FCorrego: Boolean;
    FReferencia: String;
    FEndereco: TEndereco;
    FEnergia,
    FCerca: Boolean;
    FDataHoraAlteracao: TDateTime;
    FProprietario: Integer;
    FDisponivel: String;

  public
    property Codigo: Integer read FCodigo write FCodigo;
    property Endereco: TEndereco read FEndereco write FEndereco;
    property Matriz: Boolean read FMatriz write FMatriz;
    property Desmembrado: Boolean read FDesmembrado write FDesmembrado;
    property Referencia: String read FReferencia write FReferencia;
    property Cerca: Boolean read FCerca write FCerca;
    property Corrego: Boolean read FCorrego write FCorrego;
    property Energia: Boolean read FEnergia write FEnergia;
    property Observacao: String read FObservacao write FObservacao;
    property Disponivel: String read FDisponivel write FDisponivel;
    property DataHoraAlteracao: TDateTime read FDataHoraAlteracao write FDataHoraAlteracao;
    property Proprietario: Integer read FProprietario write FProprietario;

  end;

implementation



end.
