# Algoritmia I · Sesión 02 · Lógica y decisiones

## 1. ValidarRegistro.psc

La condición es `(edad >= 14) Y (respuesta = "S")`. El operador `Y` exige que se cumplan ambas condiciones. `Mayusculas` convierte `s` en `S` y `n` en `N`.

### Tabla de verdad y pruebas del video

| Edad ≥ 14 | Acepta términos | Registro permitido | Entrada de ejemplo |
|---|---|---|---|
| V | V | V | `14, S` y `14, s` → Registro exitoso |
| V | F | F | `30, n` → No puedes registrarte |
| F | V | F | `13, S` → No puedes registrarte |
| F | F | F | `13, N` → No puedes registrarte |

## 2. ValidarEdad.psc

El intervalo válido incluye 0 y 120. Al negar `(edad >= 0) Y (edad <= 120)`, la ley de De Morgan da `(edad < 0) O (edad > 120)`. Cualquiera de esos dos casos basta para que la edad sea inválida.

| Edad | ¿Menor que 0? | ¿Mayor que 120? | Resultado |
|---:|---|---|---|
| -1 | V | F | Edad inválida |
| 0 | F | F | Edad válida |
| 120 | F | F | Edad válida |
| 121 | F | V | Edad inválida |

## 3. Parqueadero.psc

El tipo `1` representa un carro ($4.000 por hora o fracción) y el tipo `2`, una moto ($2.000). Hasta 15 minutos inclusive, la estadía es gratis. Desde el minuto 16 se cobra sobre el **tiempo total**. Para minutos enteros, `Trunc((minutos + 59) / 60)` cuenta cada hora iniciada. Por ejemplo, 60 minutos dan 1 hora y 61 minutos dan 2. Se aplica primero el tope de $30.000 y luego, con factura, el descuento del 50 %.

### Tabla de decisión

| Regla | Tipo | Minutos | Factura | Resultado |
|---|---|---|---|---|
| R1 | Cualquiera | Menos de 0 | Cualquiera | Error por minutos negativos |
| R2 | Distinto de 1 y 2 | 0 o más | Cualquiera | Error por tipo inválido |
| R3 | Carro o moto | 0 a 15 | Cualquiera | $0 |
| R4 | Carro o moto | Más de 15 | N | Horas × tarifa, con tope de $30.000 |
| R5 | Carro o moto | Más de 15 | S | Mitad del valor de R4 |

### Nueve casos borde

**OK** indica que la salida obtenida al verificar la lógica del archivo coincide con la esperada. La verificación se hizo con un intérprete de comprobación para las instrucciones usadas en los ejercicios.

| Caso | Tipo | Minutos | Factura | Horas cobrables | Esperado | Obtenido | Estado |
|---:|---|---:|:---:|---:|---|---|:---:|
| 1 | 1 | 15 | N | — | $0 | $0 | OK |
| 2 | 1 | 16 | N | 1 | $4.000 | $4.000 | OK |
| 3 | 1 | 60 | N | 1 | $4.000 | $4.000 | OK |
| 4 | 1 | 61 | N | 2 | $8.000 | $8.000 | OK |
| 5 | 2 | 61 | S | 2 | $2.000 | $2.000 | OK |
| 6 | 1 | 600 | N | 10 | $30.000 | $30.000 | OK |
| 7 | 1 | 600 | S | 10 | $15.000 | $15.000 | OK |
| 8 | 3 | 30 | N | — | Tipo inválido | Tipo inválido | OK |
| 9 | 1 | -5 | N | — | Minutos negativos | Minutos negativos | OK |

### Pruebas de escritorio de los casos 4 y 5

| Paso | Caso 4 · Carro sin factura | Caso 5 · Moto con factura |
|---|---|---|
| Leer datos | `tipo = 1`, `minutos = 61`, `factura = "N"` | `tipo = 2`, `minutos = 61`, `factura = "S"` |
| Verificar minutos | `61 < 0` → F. Continúa | `61 < 0` → F. Continúa |
| Escoger tarifa | `tarifa = 4000` | `tarifa = 2000` |
| Evaluar gratuidad | `61 <= 15` → F | `61 <= 15` → F |
| Calcular horas | `Trunc((61 + 59) / 60) = 2` | `Trunc((61 + 59) / 60) = 2` |
| Calcular valor | `2 * 4000 = 8000` | `2 * 2000 = 4000` |
| Revisar tope | `8000 > 30000` → F. Conserva $8.000 | `4000 > 30000` → F. Conserva $4.000 |
| Revisar factura | `"N" = "S"` → F. Conserva $8.000 | `"S" = "S"` → V. Divide $4.000 entre 2 |
| Mostrar valor | **$8.000** | **$2.000** |

## 4. Semaforo.psc

### Tabla de decisión

| Unidades | Resultado |
|---|---|
| Menos de 0 | Error |
| 0 | Rojo · Agotado |
| De 1 a 10 | Amarillo · Pedir |
| Más de 10 | Verde · Todo bien |

### Prueba de escritorio

Las condiciones se recorren de izquierda a derecha hasta encontrar una verdadera. Un guion indica que esa condición ya no se evalúa.

| Unidades | `unidades < 0` | `unidades = 0` | `unidades <= 10` | Salida |
|---:|:---:|:---:|:---:|---|
| -3 | V | — | — | Error |
| 0 | F | V | — | Rojo |
| 1 | F | F | V | Amarillo |
| 6 | F | F | V | Amarillo |
| 10 | F | F | V | Amarillo |
| 11 | F | F | F | Verde |
| 12 | F | F | F | Verde |
| 15 | F | F | F | Verde |

## 5. Bisiesto.psc

`MOD` devuelve el residuo de una división. Como `2000 MOD 400` da 0, 2000 es múltiplo de 400 y es bisiesto. En cambio, 1900 es múltiplo de 100 y su residuo al dividirlo entre 400 es 300, así que febrero tiene 28 días ese año.

### Tabla de decisión

| Divisible entre 4 | Divisible entre 100 | Divisible entre 400 | ¿Bisiesto? | Días de febrero |
|:---:|:---:|:---:|:---:|---:|
| V | F | F | Sí | 29 |
| V | V | F | No | 28 |
| V | V | V | Sí | 29 |
| F | F | F | No | 28 |

### Prueba de escritorio

| Año | `MOD 4` | `MOD 100` | `MOD 400` | ¿Divisible entre 4 y no entre 100? | ¿Divisible entre 400? | Resultado |
|---:|---:|---:|---:|:---:|:---:|---|
| 2024 | 0 | 24 | 24 | V | F | Bisiesto · 29 días |
| 1900 | 0 | 0 | 300 | F | F | No bisiesto · 28 días |
| 2000 | 0 | 0 | 0 | F | V | Bisiesto · 29 días |
| 2026 | 2 | 26 | 26 | F | F | No bisiesto · 28 días |
