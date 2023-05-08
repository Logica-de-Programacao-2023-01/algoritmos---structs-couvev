package main

import (
    "fmt"
    "math"
)

type Circulo struct {
    raio float64
}

func areaCirculo(c Circulo) float64 {
    return math.Pi * c.raio * c.raio
}

func main() {
    c := Circulo{raio: 2.5}
    area := areaCirculo(c)
    fmt.Printf("Área do círculo: %.2f\n", area)
}


package main

import "fmt"

type Endereco struct {
    rua    string
    numero int
    cidade string
    estado string
}

type Pessoa struct {
    nome     string
    idade    int
    endereco Endereco
}

func imprimeEndereco(p Pessoa) {
    fmt.Printf("Endereço completo de %s:\n", p.nome)
    fmt.Printf("%s, %d\n", p.endereco.rua, p.endereco.numero)
    fmt.Printf("%s - %s\n", p.endereco.cidade, p.endereco.estado)
}

func main() {
    e := Endereco{
        rua:    "Rua dos Bobos",
        numero: 0,
        cidade: "Nova Lima",
        estado: "MG",
    }
    p := Pessoa{
        nome:     "Fulano",
        idade:    30,
        endereco: e,
    }
    imprimeEndereco(p)
}


package main

import "fmt"

type Triangulo struct {
    base   float64
    altura float64
}

func areaTriangulo(t Triangulo) float64 {
    return t.base * t.altura / 2
}

func main() {
    t := Triangulo{base: 5.0, altura: 3.0}
    area := areaTriangulo(t)
    fmt.Printf("Área do triângulo: %.2f\n", area)
}


package main

import "fmt"

type Musica struct {
    titulo   string
    artista  string
    duracao  int
}

type Playlist struct {
    nome    string
    musicas []Musica
}

func tempoTotal(p Playlist) int {
    total := 0
    for _, m := range p.musicas {
        total += m.duracao
    }
    return total
}

func imprimePlaylist(p Playlist) {
    fmt.Printf("Nome da playlist: %s\n", p.nome)
    fmt.Printf("Tempo total: %d segundos\n", tempoTotal(p))
    for _, m := range p.musicas {
        fmt.Printf("%s - %s (%d segundos)\n", m.titulo, m.artista, m.duracao)
    }
}

func main() {
    m1 := Musica{titulo: "Música 1", artista: "Artista 1", duracao: 180}
    m2 := Musica{titulo: "Música 2", artista: "Artista 2", duracao: 240}
    m3 := Musica{titulo: "Música 3", artista: "Artista 3", duracao: 120}
    p := Playlist{
        nome:    "Minha playlist",
        musicas: []Musica{m1, m2, m3},
    }
    imprimePlaylist(p)
}


type Funcionário struct {
nome string
salário float64
idade int
}

func (f *Funcionário) aumentarSalário(porcentagem float64) {
f.salário *= 1 + (porcentagem / 100)
}

func (f *Funcionário) diminuirSalário(porcentagem float64) {
f.salário *= 1 - (porcentagem / 100)
}

func (f *Funcionário) tempoDeServiço() int {
return f.idade - 18
}

Crie uma struct chamada Animal com os campos "nome", "espécie", "idade" e "som". Escreva funções que permitam modificar o som que o animal faz e uma função que imprima as informações do animal e o som que ele faz.

type Animal struct {
nome string
espécie string
idade int
som string
}

func (a *Animal) modificarSom(novoSom string) {
a.som = novoSom
}

func (a Animal) imprimirInformações() {
fmt.Println("Nome:", a.nome)
fmt.Println("Espécie:", a.espécie)
fmt.Println("Idade:", a.idade)
fmt.Println("Som:", a.som)
}

Crie uma struct chamada Viagem com os campos "origem", "destino", "data" e "preço". Escreva uma função que receba um slice de Viagens como parâmetro e retorne a viagem mais cara.

type Viagem struct {
origem string
destino string
data string
preço float64
}

func viagemMaisCara(viagens []Viagem) Viagem {
maisCara := viagens[0]
for _, viagem := range viagens {
if viagem.preço > maisCara.preço {
maisCara = viagem
}
}
return maisCara
}

Crie uma struct chamada Aluno com os campos "nome", "idade" e "notas". O campo "notas" deve ser um slice de float64, representando as notas que o aluno tirou em uma determinada disciplina. Escreva funções que permitam adicionar ou remover notas do aluno, calcular a média das notas e imprimir o nome, idade e média do aluno.

type Aluno struct {
nome string
idade int
notas []float64
}

func (a *Aluno) adicionarNota(nota float64) {
a.notas = append(a.notas, nota)
}

func (a *Aluno) removerNota(nota float64) {
for i, n := range a.notas {
if n == nota {
a.notas = append(a.notas[:i], a.notas[i+1:]...)
break
}
}
}

func (a Aluno) calcularMédia() float64 {
var total float64
for _, nota := range a.notas {
total += nota
}
return total / float64(len(a.notas))
}

func (a Aluno) imprimirInformações() {
fmt.Println
