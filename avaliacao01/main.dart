// Agregação e Composição
import 'dart:convert';
class Dependente {
  late String _nome;

  Dependente(String nome) {
    this._nome = nome;
    
  }
 Map<String, dynamic> toJson() {
    return {
      'nome': _nome,
    };
  }
}

class Funcionario {
  late String _nome;
  late List<Dependente> _dependentes;

  Funcionario(String nome, List<Dependente> dependentes) {
    this._nome = nome;
    this._dependentes = dependentes;
  }
  Map<String, dynamic> toJson() {
    return {
      'nome': _nome,
      'dependentes': _dependentes.map((d) => d.toJson()).toList(),
    };
  }
}

class EquipeProjeto {
  late String _nomeProjeto;
  late List<Funcionario> _funcionarios;

  EquipeProjeto(String nomeprojeto, List<Funcionario> funcionarios) {
    _nomeProjeto = nomeprojeto;
    _funcionarios = funcionarios;
  }
  Map<String, dynamic> toJson() {
    return {
      'nomeProjeto': _nomeProjeto,
      'funcionarios': _funcionarios.map((f) => f.toJson()).toList(),
    };
  }
}

void main() {
   Dependente dependente1 = new Dependente("Sophia");
   Dependente dependente2 = new Dependente("Aninha");
   Dependente dependente3 = new Dependente("Elizinha");
   Dependente dependente4 = new Dependente("Atila");
   
  
   Funcionario func1 = new Funcionario("Sérgio",[dependente1]);
   Funcionario func2 = new Funcionario("Paula",[dependente2]);
   Funcionario func3 = new Funcionario("Paula",[dependente3]);
   Funcionario func4 = new Funcionario("Paula",[dependente4]);
   var func = [func1,func2,func3,func4];
   EquipeProjeto equipe1 = new EquipeProjeto("Sofredores",func);
  String equipeJson = json.encode(equipe1.toJson());
  print(equipeJson);

  



  


  


  
  // 1. Criar varios objetos Dependentes
  // 2. Criar varios objetos Funcionario
  // 3. Associar os Dependentes criados aos respectivos
  //    funcionarios
  // 4. Criar uma lista de Funcionarios
  // 5. criar um objeto Equipe Projeto chamando o metodo
  //    contrutor que da nome ao projeto e insere uma
  //    coleção de funcionario
  // 6. Printar no formato JSON o objeto Equipe Projeto.
}