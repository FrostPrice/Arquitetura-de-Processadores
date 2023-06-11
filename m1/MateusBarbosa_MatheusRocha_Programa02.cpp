// Disciplina : Arquitetura e Organização de Computadores
// Atividade : Avaliação 01 – Programação em Linguagem de Montagem
// Programa 02
// Grupo : - Mateus Barbosa
//         - Matheus de Oliveira Rocha

using namespace std;

#include <iostream>
#include <string>

#define MAX_AULA 15
#define MAX_ALUNO 31
#define MAX_REGISTRO 1

int main()
{
    string Vetor_Dias[MAX_AULA]; // Por simplicidade, utilizamos uma string contendo os 32 bits dos alunos

    // Preenche todos os dias com todos os alunos presentes
    for (int i = 0; i < MAX_AULA; i++)
    {
        Vetor_Dias[i] = "1111111111111111111111111111111";
    }

    while (true)
    {
        // Solicita o número da aula
        int input_aula;
        do
        {
            cout << "\nEntre com o número da aula (de 0 a 15): ";
            cin >> input_aula;
            if (!cin.good()) // Sai deste loop se o input não for número
                break;
            else if (input_aula < 0 || input_aula > MAX_AULA)
                cout
                    << "\nValor inválido";
        } while (input_aula < 0 || input_aula > MAX_AULA);

        if (!cin.good()) // Sai do loop principal se o input não for número
            break;

        // Solicita o número do aluno
        int input_aluno;
        do
        {
            cout << "\nEntre com o número do aluno (de 0 a 31): ";
            cin >> input_aluno;
            if (!cin.good()) // Sai deste loop se o input não for número
                break;
            else if (input_aluno < 0 || input_aluno > MAX_ALUNO)
                cout << "\nValor inválido";
        } while (input_aluno < 0 || input_aluno > MAX_ALUNO);

        if (!cin.good()) // Sai do loop principal se o input não for número
            break;

        // Solicita o tipo do registro
        int input_registro;
        do
        {
            cout << "\nEntre com o tipo do registro (presença = 1; ausência = 0): ";
            cin >> input_registro;
            if (!cin.good()) // Sai deste loop se o input não for número
                break;
            else if (input_registro < 0 || input_registro > MAX_REGISTRO)
                cout
                    << "\nValor inválido";
        } while (input_registro < 0 || input_registro > MAX_REGISTRO);

        if (!cin.good()) // Sai do loop principal se o input não for número
            break;

        Vetor_Dias[input_aula][(MAX_ALUNO - 1) - input_aluno] = to_string(input_registro)[0]; // Para simular que as string são bits, inserimos da direita para a esquerda, isso é alcançado usando a formula (MAX_ALUNO - 1) - input_aluno
    }

    // O código abaixo simularia o campo Data Segment na aba Execute do RARS
    cout << "\nData Segment:\n";
    for (int i = 0; i < MAX_AULA; i++)
    {
        cout << i << "\t=> " << Vetor_Dias[i] << endl;
    }

    return 0;
}
