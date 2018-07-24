unit Modelo.Parceiro;

interface

implementation

uses Modelo.Acao, Modelo.Endereco;

type
  TParceiro = Class

  private
    FAcao: TAcao;
    FNomeConjuge: String;
    FEmail: String;
    FNascimento: TDate;
    FCodigo: Integer;
    FCpfCnpj: String;
    FCpfConjuge: String;
    FNome: String;
    FEndereco: TEndereco;
    FTelefone1: String;
    FTelefone2: String;
    FAtivo: String;

  public
    property Codigo: Integer read FCodigo write FCodigo;
    property Nome: String read FNome write FNome;
    property CpfCNpj: String read FCpfCnpj write FCpfCnpj;
    property Nascimento: TDate read FNascimento write FNascimento;
    property Telefone1: String read FTelefone1 write FTelefone1;
    property Telefone2: String read FTelefone2 write FTelefone2;
    property Email: String read FEmail write FEmail;
    property NomeConjuge: String read FNomeConjuge write FNomeConjuge;
    property CpfConjuge: String read FCpfConjuge write FCpfConjuge;
    property Ativo: String read FAtivo write FAtivo;
    property Endereco: TEndereco read FEndereco write FEndereco;
    property Acao: TAcao read FAcao write FAcao;

  End;

end.
