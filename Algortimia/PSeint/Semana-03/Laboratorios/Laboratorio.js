function resumenNotas(notas) {
    if (notas.length === 0) {
        return { promedio: 0, mayor: null, menor: null, reprobados: 0 };
    }

    let suma = 0;
    let mayor = notas[0];
    let menor = notas[0];
    let reprobados = 0;

    for (const nota of notas) {
        suma += nota;

        if (nota > mayor) {
            mayor = nota;
        }

        if (nota < menor) {
            menor = nota;
        }

        if (nota < 3.0) {
            reprobados++;
        }
    }

    const promedio = suma / notas.length;
    return { promedio, mayor, menor, reprobados };
}

console.log(resumenNotas([4.5, 2.8, 3.9, 2.5, 5.0]));