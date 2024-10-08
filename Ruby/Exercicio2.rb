class Carro
  def initialize(modelo, marca, cor, ano)
    @modelo = modelo
    @marca = marca
    @cor = cor
    @ano = ano
  end
end

class CarroEsportivo < Carro
  def descricao
    puts "É um carro esportivo"
    puts "Modelo: #{@modelo}, Marca: #{@marca}, Cor: #{@cor}, Ano: #{@ano}"
  end
end

class CarroSedan < Carro
  def descricao
    puts "É um carro sedan"
    puts "Modelo: #{@modelo}, Marca: #{@marca}, Cor: #{@cor}, Ano: #{@ano}"
  end
end

carro1 = CarroEsportivo.new("911", "Porshe", "Preto", "2021")
carro2 = CarroSedan.new("Virtus", "Wolksvagen", "Branco", "2024")

carro1.descricao
carro2.descricao
