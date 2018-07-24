create domain dSimNao as char(1) default 'N' check (value in ('S', 'N'));
create domain dVarchar2 as varchar(2);
create domain dVarchar3 as varchar(3);
create domain dVarchar10 as varchar(10);
create domain dVarchar20 as varchar(20);
create domain dVarchar50 as varchar(50);
create domain dVarchar80 as varchar(80);
create domain dVarchar100 as varchar(100);
create domain dCodigo as integer;
create domain dData as Date default current_date;
create domain dDataHora as timestamp default current_timestamp;

Create table Parceiro(
id_Parceiro dcodigo primary key,
nome dvarchar50 not null,
cpfCnpj dvarchar20,
nascimento ddata,
email dvarchar50,
telefone1 dvarchar20,
telefone2 dvarchar20,
NomeConjuge dvarchar50,
cpfConjuge dvarchar20,
Ativo dsimnao,
Logradouro dvarchar50,
complemento dvarchar20,
bairro dvarchar20,
cidade dvarchar50,
uf dvarchar2 );

Create table imovel(
id_imovel dCodigo primary key,
Matriz dSimNao,
Desmembrado dsimnao,
Referencia dvarchar10,
Cerca dsimnao, 
Corrego dsimnao,
Energia dsimnao,
Observacao dvarchar100,
DataHoraAlteracao ddatahora,
Disponivel dsimnao,
Logradouro dvarchar50,
complemento dvarchar20,
bairro dvarchar20,
cidade dvarchar50,
uf dvarchar2,
id_Parceiro dCodigo,
Constraint Fk_Parceiro foreign key(id_parceiro) references Parceiro (id_Parceiro));