// Disciplina : Arquitetura e Organização de Computadores
// Atividade : Avaliação 03 – Programação em Linguagem de Alto nível
// Programa 02
// Grupo : - Mateus Barbosa
//         - Matheus de Oliveira Rocha

#include <iostream>

using namespace std;

int rec_vet_soma(int vet[], int pos)
{
    if (pos < 0)
    {
        return 0;
    }
    return vet[pos] + rec_vet_soma(vet, pos - 1);
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

    cout << "Resultado: " << rec_vet_soma(vet, pos - 1);

    return 0;
}
