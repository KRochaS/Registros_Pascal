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
