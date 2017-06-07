// Exercícios desenvolvidos na faculdade 


// 1) Escreva um programa para cadastrar dois clientes de uma loja. As informações necessárias são:
// nome, endereço e telefone. Deve ser usada uma estrutura de registro para a construção deste
// cadastro, usando Type para a declaração do registro. 

program exerc1reg;
uses crt;

type cadastro = record
               nome, ender: string[40];
               fone:string[20];
               end;

var cliente: array[1..2] of cadastro;
var i: integer;

begin
     for i:=1 to 2 do
         begin
              write('Nome: ');
              readln(cliente[i].nome);
              writeln('Endereco:');
              readln(cliente[i].ender);
              writeln('Telefone');
              readln(cliente[i].fone);
         end;

         writeln('------------------------');

      for i:=1 to 2 do
          begin
               write('Nome: ');
               writeln(cliente[i].nome);
               write('Endereco: ');
               writeln(cliente[i].ender);
               write('Telefone: ');
               writeln(cliente[i].fone);
          end;


    readln;
end.


//  2) O mesmo exercício anterior, mas o programa deverá suportar até 50 clientes. Ao final do cadastro
// de cada cliente deverá ser perguntado: "Novo Cliente (S/N)?". Deve-se utilizar um vetor do tipo
// declarado como um registro para a solução deste programa. 

program exerc2reg;
uses crt;

type cadastro = record
               nome, ender: string[40];
               fone:string[20];
               end;

var cliente: array[1..2] of cadastro;
var i, cont: integer;
var resp: string[10];

begin
     cont:=0;
     writeln('Deseja fazer um cadastro: ');
     readln(resp);
     while(resp='s') and (cont<10) do
         begin
              cont:=cont+1;
              write('Nome: ');
              readln(cliente[cont].nome);
              writeln('Endereco:');
              readln(cliente[cont].ender);
              writeln('Telefone');
              readln(cliente[cont].fone);
              writeln('Deseja fazer um cadastro: ');
              readln(resp);
         end;

         writeln('------------------------');
         for i:=1 to cont do
          begin
               write('Nome: ');
               writeln(cliente[cont].nome);
               write('Endereco: ');
               writeln(cliente[cont].ender);
               write('Telefone: ');
               writeln(cliente[cont].fone);
          end;


    readln;
end.

// 3)  O mesmo exercício anterior, mas após o término de todos os cadastros, ou seja, quando o usuário
// digitar "N" na pergunta para novo cliente ou quando preencher o vetor com 50 clientes, a tela
// deverá ser limpa e deverá ser montada uma tela para permitir a consulta aos clientes: por código
// (que é o índice do vetor). Deverá ser digitado o código 999 para encerrar o programa

program exerc3reg;
uses crt;

type cadastro = record
               nome, ender: string[40];
               fone:string[20];
               end;

var cliente: array[1..2] of cadastro;
var i, cont,cod: integer;
var resp: string[10];

begin
     cont:=0;
     cod:=0;
     writeln('Deseja fazer um cadastro: ');
     readln(resp);
     while(resp='s') and (cont<50) do
         begin
              cont:=cont+1;
              cod:=cod+1;
              write('Nome: ');
              readln(cliente[cod].nome);
              write('Endereco: ');
              readln(cliente[cod].ender);
              write('Telefone: ');
              readln(cliente[cod].fone);
              write('Deseja fazer um cadastro: ');
              readln(resp);
         end;

         writeln('------------------------');


         clrscr; 

         while(cod<>999) and(cod<=cont) do
            begin
                 write('Digite o codigo do cliente: ');
                 readln(cod);
                 if cod<>999 then
                    begin
                         write('Nome: ');
                         writeln(cliente[cod].nome);
                         write('Endereco: ');
                         writeln(cliente[cod].ender);
                         write('Telefone: ');
                         writeln(cliente[cod].fone);
                         write('<Digite 999 para sair...>');
                         writeln;
                    end;
             end;




    readln;
end.

// 4)  Escreva um programa para cadastrar até 30 alunos de uma turma. As informações necessárias são:
// nome do aluno, nome da disciplina e média final. Deve ser usada uma estrutura de registro para
// a construção deste cadastro, usando Type para a declaração do registro. Ao final do cadastro de
// cada aluno deverá ser perguntado: "Novo Aluno (S/N)?". Deve-se utilizar um vetor do tipo
// declarado como registro para a solução deste programa. Após o término de todos os cadastros, ou
// seja, quando o usuário digitar "N" na pergunta para novo aluno ou quando preencher o vetor com
// 30 alunos, a tela deverá ser limpa e deverá ser montada uma tela para permitir a consulta aos
// alunos: por nome. Deverá ser digitada a palavra FIM para o nome para encerrar o programa. Você
// deverá fazer uma tela de consulta com o formato que achar adequado. 

program exerc4reg;
uses crt;

type alunoscad = record
              nome:string[30];
              disc: string[40];
              medf: real;
              end;

var alunos: array [1..5] of alunoscad;
var i, cont: integer;
var nomealuno: string[10];
var resp:char;

begin

     cont:=0;
     writeln('----- Cadastro de Alunos -----');
     writeln;
     writeln('Deseja cadastrar um aluno? [s/n]: ');
     readln(resp);
     while(resp='s') and (cont<5) do
           begin

                cont:=cont+1;
                write('Nome do Aluno: ');
                readln(alunos[cont].nome);
                write('Nome da Disciplina: ');
                readln(alunos[cont].disc);
                write('Media Final: ');
                readln(alunos[cont].medf);
                writeln;
                write('Novo Aluno? [s/n]: ');
                readln(resp);
             end;

    writeln('--------------------------------');
    clrscr;

    writeln('-------- Consulta de Alunos ------');

    writeln ('Digite o nome do aluno para consulta: ');
    readln(nomealuno);
    clrscr;

    writeln('-------- Lista de Alunos ------');
    while (nomealuno <> 'fim') do
         for i:=1 to cont do
	      if nomealuno = alunos[i].nome then
               		begin
                             write('Nome do Aluno: ');
			     writeln(alunos[i].nome);
                             write('Nome da Disciplina: ');
                             writeln(alunos[i].disc);
                             write('Media Final: ');
                             writeln(alunos[i].medf:5:2);
		             write('Digite um novo nome para consulta ou fim para encerrar: ');
		             readln(nomealuno);
		  	end;
		  ;
	;			

   readln;


end.


// 5) Faça um programa em Pascal para cadastrar até 300 imóveis a serem alugados ou vendidos, contendo os
// seguintes dados: tipo (loja, apartamento, casa, quitinete (kitchenet), endereço, bairro, valor, situação (aluguel
// ou venda). Ao final, solicitar ao usuário a situação a ser pesquisada e mostrar todos os dados dos imóveis
// enquadrados na solicitação.

program exerc5;
uses crt;

type imovel = record
            tipo:string[30];
            ender:string[30];
            bairro:string[30];
            situacao:string[20];
            end;
var imoveis: array[1..5] of imovel;
var resp, respconsult:string[10];
var i,cont: integer;

begin
     cont:=0;
      writeln('------- Cadastro de Imoveis -------');
      writeln;
      write('Deseja cadastrar um imovel? [s/n]: ');
      readln(resp);

      writeln;

      while(resp='s') and (cont<5) do
            begin
                 cont:=cont+1;
                 writeln('Tipos de Imoveis: ');
                 writeln('- Loja');
                 writeln('- Apartamento');
                 writeln('- Casa');
                 writeln('- Kitchenet');
                 writeln;
                 write('Digite o tipo do Imovel: ');
                 readln(imoveis[cont].tipo);
                 write('Digite o endereco: ');
                 readln(imoveis[cont].ender);
                 write('Digite o Bairro: ');
                 readln(imoveis[cont].bairro);
                 writeln;
                 writeln('Situacao do Imovel: ');
                 writeln('- Aluguel');
                 writeln('- Venda');
                 writeln;
                 write('Digite a situacao: ');
                 readln(imoveis[cont].situacao);
                 write('Novo Imovel? [s/n]: ');
                 readln(resp);
                 writeln;
            end;

             clrscr;

             writeln('----- Consulta de Imoveis ----');
             writeln;
             writeln('Situacoes dos Imoveis: ');
             writeln('- Aluguel');
             writeln('- Venda');
             writeln;
             write('Digite a situacao dos imoveis que gostaria  de encontrar: ');
             readln(respconsult);

             clrscr;

             writeln('------- Lista de Imoveis -------');
             for i:=1 to cont do
                 if(respconsult=imoveis[i].situacao) then
                           begin
                                write('Tipo do Imovel: ');
                                writeln(imoveis[i].tipo);
                                write('Endereco: ');
                                writeln(imoveis[i].ender);
                                write('Bairro: ');
                                writeln(imoveis[i].bairro);
                                write('Situacao: ');
                                writeln(imoveis[i].situacao);
                                writeln;
                                writeln;
                           end;
                   ;
            ;

     readln;



end.

// 6)  Faça um programa em Pascal para ler os dados (nome, salário, estado civil, sexo, número de dependentes,
// cidade e estado de residência) dos funcionários de uma empresa e mostrar uma listagem de todos os dados dos
// funcionários(as) CASADOS(AS), residentes no RS e com SALÁRIO  acima  de R$ 1.500,00. Cadastrar no
// máximo 200 funcionários.

program exerc6;
uses crt;

type funcionarios = record
                    nome:string[10];
                    sal:string[10];
                    ec:string[10];
                    sexo:string[10];
                    depen:string[5];
                    cidade:string[10];
                    estado:string[5];
                    end;

var func: array [1..200] of funcionarios;
var cont, i: integer;
var resp: string[5];


begin
    cont:=0;
    writeln('------- Cadastro de Funcionários -------');
    writeln;
    write('Deseja cadastrar um funcionario? [s/n]: ');
    readln(resp);

    writeln;

    while(resp='s') and (cont<200) do
         begin
              cont:=cont+1;
              write('Digite o nome: ');
              readln(func[cont].nome);
              write('Digite o salario: ');
              readln(func[cont].sal);
              write('Digite o Estado Civil: [c/s]: ');
              readln(func[cont].ec);
              write('Digite o Sexo [f/m]: ');
              readln(func[cont].sexo);
              write('Digite a quantidade de dependentes(filhos): ');
              readln(func[cont].depen);
              write('Digite a Cidade: ');
              readln(func[cont].cidade);
              write('Digite o estado: ');
              readln(func[cont].estado);
              writeln;
              write('Novo Funcionario? [s/n]: ');
              readln(resp);
         end;

         clrscr;

         writeln('-------- Lista de Funcionarios ------------');
         writeln;

         for i:=1 to cont do
             if((func[i].ec='c') and (func[i].estado='RS') and (func[i].sal>'1500')) then
                     begin
                           write('Nome: ');
                           writeln(func[i].nome);
                           write('Salario: ');
                           writeln(func[i].sal);
                           write('Estado Civil: ');
                           writeln(func[i].ec);
                           write('Sexo [f/m]: ');
                           writeln(func[i].sexo);
                           write('Quantidade de dependentes(filhos): ');
                           writeln(func[i].depen);
                           write('Cidade: ');
                           writeln(func[i].cidade);
                           write('Estado: ');
                           writeln(func[i].estado);
                           writeln;
                       end;
               ;
         ;

      readln;
end.

// 7) Faça um programa em Pascal para cadastrar o nome do município, seu estado e sua população. Mostrar todos
// os  municípios  cadastrados  do  estado  de  Goiás e  os dados  do município  que  contém a  maior  população.
// Cadastrar até 90 municípios.

program exerc7;
uses crt;

type municipios = record
                  nome:string[10];
                  estado:string[10];
                  populacao: integer;
                  end;
var mcp: array [1..5] of municipios;
var resp:string[10];
var cont, i, pos, maior: integer;

begin
     cont:=0;
     pos:=0;
     writeln('------ Cadastrar Municipios ------');
     writeln;
     writeln('Deseja cadastrar um municipio? [s/n]: ');
     readln(resp);

     while(resp='s') and (cont<5) do
              begin
		   cont:=cont+1;
                   write('Digite o nome do municipio: ');
                   readln(mcp[cont].nome);
                   write('Digite o estado: ');
                   readln(mcp[cont].estado);
                   write('Digite a populacao: ');
                   readln(mcp[cont].populacao);
                   writeln;
                   writeln('Novo Municipio? [s/n]: ');
                   readln(resp);
                end;

                maior:=mcp[0].populacao;


               clrscr;

                writeln;
                writeln('------ Municipios -------');
                writeln('---------- Do -----------');
                writeln('-------- Estado ---------');
                writeln('---------- De -----------');
                writeln('------- Goias(GO) -------');
                writeln;

                for i:=1 to cont do
                    if(mcp[i].estado='GO') then
                          begin
                              write('Nome: ');
                              writeln(mcp[i].nome);
                              write('Estado : ');
                              writeln(mcp[i].estado);
                              write('Populacao: ');
                              writeln(mcp[i].populacao);
                          end;

                      ;
                 ;

                 writeln;
                 writeln;
                 writeln('------ Municipio com a Maior Populacao -------');
                 writeln;



                 for i:=1 to cont do
                     if(mcp[i].populacao > maior) then
                            begin
                                 maior:=mcp[i].populacao;
                                 pos:=i;
                            end;

                     ;
                ;

                write('Nome: ');
                writeln(mcp[pos].nome);
                write('Estado : ');
                writeln(mcp[pos].estado);
                write('Populacao: ');
                writeln(mcp[pos].populacao);


                ;

       readln;

end.

8)  Faça um programa em Pascal para cadastrar o horário de partida de vôos, com os dados: código, horário de
// partida, quantidade de passageiros, valor da passagem, origem e destino. Solicitar ao usuário a origem e
// mostrar   todos   os   dados   dos   vôos   que   possuem   esta   origem.   Mostrar, também, todos os vôos que
// possuem horário de partida pela manhã.

program exerc8;
uses crt;

type partvoos = record
            cdg:string[10];
            hp:integer;
            qtdpassageiro:string[10];
            valpassagem:string[10];
            origem:string[20];
            dest:string[20];
            end;

var voos: array [1..10] of partvoos;
var resp:char;
var cont, i: integer;
var org:string[10];

begin
     cont:=0;
     writeln('------------- Cadastro Horários de Partidas de Voo -----------');
     writeln;
     write('Deseja cadastrar um voo? [s/n]: ');
     readln(resp);
     writeln;

     while(resp='s') or (resp='S') and (cont<10) do
              begin
                   cont:=cont+1;
                   write('Digite o codigo: ');
                   readln(voos[cont].cdg);
                   write('Digite Horario de Partida: ');
                   readln(voos[cont].hp);
                   write('Digite a quantidade de passageiros: ');
                   readln(voos[cont].qtdpassageiro);
                   write('Digite o valor das passagens: ');
                   readln(voos[cont].valpassagem);
                   write('Digite a Origem: ');
                   readln(voos[cont].origem);
                   write('Digite o Destino: ');
                   readln(voos[cont].dest);
                   writeln;
                   write('Cadastrar novo voo? [s/n]: ');
                   readln(resp);
               end;

               writeln;

               write('-------- Pesquisa de voos pela Origem -------');
               writeln;

              writeln('Digite a Origem que deseja pesquisa: ');
              readln(org);

              writeln;

              clrscr;

              write('------ Voos com a Origem escolhida ------');
              writeln;

              for i:=1 to cont do
                  if(org = voos[i].origem) then
                            begin
                                 write('Codigo: ');
                                 writeln(voos[i].cdg);
                                 write('Horario de Partida: ');
                                 writeln(voos[i].hp);
                                 write('Quantidade de passagens: ');
                                 writeln(voos[i].qtdpassageiro);
                                 write('Valor das passagens: ');
                                 writeln(voos[i].valpassagem);
                                 write('Origem: ');
                                 writeln(voos[i].origem);
                                 write('Destino: ');
                                 writeln(voos[i].dest);
                                 writeln;
                             end;
                 ;

           ;


           writeln;
           writeln('-------- Todos os voos pela manha -------');

           for i:=1 to cont do
               if(voos[i].hp < 12) then
                            begin
                                 write('Codigo: ');
                                 writeln(voos[i].cdg);
                                 write('Horario de Partida: ');
                                 writeln(voos[i].hp);
                                 write('Quantidade de passagens: ');
                                 writeln(voos[i].qtdpassageiro);
                                  write('Valor das passagens: ');
                                 writeln(voos[i].valpassagem);
                                 write('Origem: ');
                                 writeln(voos[i].origem);
                                 write('Destino: ');
                                 writeln(voos[i].dest);
                                 writeln;
                             end;
               ;
         ;

         readln;


end.
