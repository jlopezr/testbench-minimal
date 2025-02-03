#include <stdio.h>

int main() {
    // Declaración de constantes
    const double G = 6.67430e-11; // Constante de gravitación universal (m^3 kg^-1 s^-2)
    const double M = 5.972e24;    // Masa de la Tierra (kg)

    // Declaración de variables
    double m;  // Masa del satélite (kg)
    double r;  // Distancia al centro de la Tierra (m)
    double E;  // Energía orbital total (Joules)

    // Entrada de datos por el usuario
    printf("Ingrese la masa del satélite (kg): ");
    scanf("%lf", &m);
    
    printf("Ingrese la distancia del satélite al centro de la Tierra (m): ");
    scanf("%lf", &r);

    // Cálculo de la energía orbital total
    E = -(G * M * m) / (2 * r);

    // Salida del resultado
    printf("La energía orbital total del satélite es: %.2e Joules\n", E);

    return 0;
}