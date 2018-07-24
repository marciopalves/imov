unit Modelo.Endereco;

interface

type
  TEndereco = class
  private
    FLogradouro: String;
    FBairro: String;
    FCep: String;
    FComplemento: String;
    FCidade: String;
    FEstado: String;

  public

    property Logradouro: String read FLogradouro write FLogradouro;
    property Complemento: String read FComplemento write FComplemento;
    property Bairro: String read FBairro write FBairro;
    property Cep: String read FCep write FCep;
    property Cidade: String read FCidade write FCidade;
    property Estado: String read FEstado write FEstado;

  end;

implementation

end.
