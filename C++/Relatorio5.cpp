#include <iostream>
#include <string>
using namespace std;

class Pessoa{
  public:
    int idade;
    string nome;

    Pessoa(string nome, int idade){
      this-> nome = nome;
      this-> idade = idade;
    }

    virtual string falaNome(){
      return "O nome e: " + nome;
    }
};

class Professor : public Pessoa{
  public:
    Professor(string nome, int idade) : Pessoa(nome, idade){}

    string falaNome() override{
      return Pessoa::falaNome();
    }

    void getIdade(){
      cout << "O professor " << nome << " tem " << idade << " anos." << endl;
    }

};

class Aluno : public Pessoa{
  public:
    Aluno(string nome,int idade) : Pessoa(nome, idade){}

    string falaNome() override{
      return Pessoa::falaNome();
    }

    void setMatricula(int mat){
      this-> matricula = mat;
    }
    int getMatricula(){
      return matricula;
    }

    void getIdade(){
      cout << "O aluno " << nome << " tem " << idade << " anos." << endl;
    }

  private:
      int matricula;
};

int main(){
  Pessoa pessoa("Joao", 18);
  Aluno aluno("Jose", 23);
  Professor professor("Etevaldo", 46);

  cout << pessoa.falaNome() << endl;
  cout << professor.falaNome() << endl;
  cout << aluno.falaNome() << endl;

  aluno.setMatricula(234);
  cout << aluno.getMatricula() << endl;

  aluno.getIdade();
  professor.getIdade();

  return 0;
}
