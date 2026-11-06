/*Palindroma*/
let palabra = "ana";
let pal1 = "";
let contador = 1;

while (contador <= palabra.length) {
    pal1 = pal1 + palabra[palabra.length - contador];
    contador = contador + 1;
}

if (palabra === pal1) {
    console.log("palindroma");
}