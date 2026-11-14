// 1. Un año es bisiesto si es divisible entre 4 y no entre 100,
//    o si es divisible entre 400.
function esBisiesto(anio) {
    return (anio % 4 === 0 && anio % 100 !== 0) || anio % 400 === 0;
}

// 2. Stock 0 → "Agotado"; entre 1 y 10 → "Bajo";
//    más de 10 → "Disponible"; negativo → "Error".
function semaforoInventario(stock) {
    if (stock < 0) {
        return "Error";
    }

    if (stock === 0) {
        return "Agotado";
    }

    if (stock <= 10) {
        return "Bajo";
    }

    return "Disponible";
}

console.log(esBisiesto(2024), semaforoInventario(5));
