using System;

class Cachorro {
  private string nome;
  private int idade;

  public Cachorro(string nome, int idade){
    this.nome = nome;
    this.idade = idade;
  }

  public virtual void showNome(){
    Console.WriteLine($"O nome do cachorro é {nome}");
  }

  public virtual void showIdade(){
    Console.WriteLine($"A idade do cachorro é {idade}");
  }

  public int getIdade(){
    return idade;
  }
}

class CachorroGrande : Cachorro {
  private double tamanho;

  public CachorroGrande(string nome, int idade, double tamanho) : base(nome, idade){
    this.tamanho = tamanho;
  }

  public override void showIdade(){
    Console.WriteLine($"A idade do cachorrão é {getIdade()}");
  }

  public void showTamanho(){
    Console.WriteLine($"A altura do cachorrão é {tamanho} metros");
  }
}

class CachorroPequeno : Cachorro{
  public CachorroPequeno(string nome, int idade) : base(nome, idade){}

  public override void showIdade(){
    Console.WriteLine($"A idade do cachorrinho é {getIdade()}");
  }
}

class Program {
  public static void Main(string[] args){

    Cachorro viralata = new Cachorro("Vagabundo", 3);
    CachorroGrande golden = new CachorroGrande("Marley", 2, 1.1);
    CachorroPequeno pinsher = new CachorroPequeno("Lili", 9);

    viralata.showNome();
    viralata.showIdade();

    golden.showNome();
    golden.showIdade();
    golden.showTamanho();

    pinsher.showNome();
    pinsher.showIdade();
  }
}
