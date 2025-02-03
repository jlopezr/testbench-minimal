# Energia orbital

Escribir un programa en C que calcule la energía orbital total de un satélite en órbita circular alrededor de la Tierra, dado su masa y su distancia al centro de la Tierra.

1. El programa debe pedir al usuario que introduzca:
    - La masa del satélite $m$ en kilogramos.
    - La distancia del satélite al centro de la Tierra $r$ en metros.
2. Utilizar la fórmula de la energía orbital total $E$ de un objeto en órbita circular:

    $E = -\frac{GMm}{2r}$

    donde:

    - $G = 6.67430 \times 10^{-11} \, \text{m}^3 \text{kg}^{-1} \text{s}^{-2}$ es la constante de gravitación universal.
    - $M = 5.972 \times 10^{24} \, \text{kg}$ es la masa de la Tierra.
    - $m$ es la masa del satélite.
    - $r$ es la distancia del satélite al centro de la Tierra.

3. El programa debe calcular la energía orbital total $E$ y mostrar el resultado al usuario.

## Ejemplo de ejecución

Una posible ejecución del programa seria la siguiente:

```bash
$ ./main
Ingrese la masa del satélite (kg): 1000
Ingrese la distancia del satélite al centro de la Tierra (m): 7000000
La energía orbital total del satélite es: -2.85e+10 Joules
```
