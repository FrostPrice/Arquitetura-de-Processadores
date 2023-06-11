// Disciplina : Arquitetura e Organização de Computadores
// Atividade : Avaliação 03 – Programação em Linguagem de Alto nível
// Programa 01
// Grupo : - Mateus Barbosa
//         - Matheus de Oliveira Rocha

#include <iostream>
using namespace std;

int soma_vet(int vet[], int pos)
{
    int s = 0;
    for (int i = 0; i < pos; i++)
    {
        s = s + vet[i];
    }
    return s;
}

int main()
{
    int pos;
    do
    {
        cout << "Informe o número de posicoes do vetor: ";
        cin >> pos;
    } while (pos < 2 || pos > 100);

    int vet[pos];
    for (int i = 0; i < pos; i++)
    {
        vet[i] = i;
    }

    cout << soma_vet(vet, pos);

    return 0;
}
