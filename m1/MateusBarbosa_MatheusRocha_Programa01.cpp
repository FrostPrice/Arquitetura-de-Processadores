// Disciplina : Arquitetura e Organização de Computadores
// Atividade : Avaliação 01 – Programação em Linguagem de Montagem
// Programa 01
// Grupo : - Mateus Barbosa
//         - Matheus de Oliveira Rocha

using namespace std;

#include <iostream>

#define MAX_TAM 8
#define MIN_TAM 1

int main()
{
    int input_vec_tam;

    // Solicita tamanho dos vetores
    do
    {
        cout << "\nEntre com o tamanho dos vetores (máx = 8): ";
        cin >> input_vec_tam;
        if (input_vec_tam < MIN_TAM || input_vec_tam > MAX_TAM)
            cout << "\nValor inválido!\n";
    } while (input_vec_tam < MIN_TAM || input_vec_tam > MAX_TAM);

    int Vetor_A[input_vec_tam], Vetor_B[input_vec_tam];

    // Preenche Vetor_A com os valores digitados pelo usuario
    for (int i = 0; i < input_vec_tam; i++)
    {
        cout << "\nVetor_A[" << i << "] = ";
        cin >> Vetor_A[i];
    }

    // Preenche Vetor_B com os valores digitados pelo usuario
    for (int i = 0; i < input_vec_tam; i++)
    {
        cout << "\nVetor_B[" << i << "] = ";
        cin >> Vetor_B[i];
    }

    // Troca os valores dos Vetores
    int auxiliar; // Usado como variavel temp para armazenar o valor de um dos Vetores
    for (int i = 0; i < input_vec_tam; i++)
    {
        auxiliar = Vetor_A[i];
        Vetor_A[i] = Vetor_B[i];
        Vetor_B[i] = auxiliar;
    }

    // Mostra Vetor_A com os valores tracodos com o Vetor_B
    for (int i = 0; i < input_vec_tam; i++)
    {
        cout << "\nVetor_A[" << i << "] = " << Vetor_A[i];
    }

    // Mostra Vetor_B com os valores tracodos com o Vetor_A
    for (int i = 0; i < input_vec_tam; i++)
    {
        cout << "\nVetor_B[" << i << "] = " << Vetor_B[i];
    }

    return 0;
}
