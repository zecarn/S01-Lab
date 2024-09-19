class Animal{
    constructor(nome, idade, especie){
        this.nome = nome
        this.idade = idade
        this.especie = especie
    }

    printInfo(){
        console.log(`O animal chamado ${this.nome} tem ${this.idade} anos e pertence a espécie ${this.especie}`)
    }
}

class Cachorro extends Animal{
    constructor(nome, idade, especie, raca){
        super(nome, idade, especie)
        this.raca = raca
    }
    printInfo(){
        console.log(`O cachorro ${this.nome} tem ${this.idade} anos da raça ${this.raca} e pertence à espécie ${this.especie}`)
    }
}

class Gato extends Animal{
    constructor(nome, idade, especie, cores){
        super(nome, idade, especie)
        this.cores = cores
    }
    printInfo(){
        console.log(`O gato ${this.nome} tem ${this.idade}, tem cores ${this.cores.join(', ')} e pertence à espécie ${this.especie}`)
    }

}

let gaivota = new Animal("Jojo", 8, "ave")
gaivota.printInfo()

let cachorro = new Cachorro("Lili", 13, "canina", "pinsher")
cachorro.printInfo()

let gato = new Gato("Palman", 3, "felina", ["marrom", "branco", "cinza"])
gato.printInfo()