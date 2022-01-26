# Laboratorio de Arquirectura de Computadores 2021-2
# Laboratorio 1: Instrucciones MIPS y Simulacion en MARS
# Nombre: John Serrano Carrasco
# Seccion: 13309-0-A-1
# Fecha: 30 de septiembre de 2021

# Para este codigo se asume que el arreglo comienza en la direccion 0x10010000
addiu $t0, $zero, 0x10010000  
addi $t1, $zero, 3
sw $t1, 0($t0)                # a[0] = 3;
add $t1, $t1, -1
add $t3, $zero, 12
add $t0, $t0, $t3
sw $t1, 0($t0)                # a[3] = a[0] - 1;

# Se parte agregaron a $t0 el valor 0x10010000, esto para poder acceder a la direccion
# de memoria del mismo valor. Luego a $t1 se agrega 0x00000003. Posterior a eso, se 
# procede a agregar el valor 0x00000003 en la direccion de memoria 0x10010000. Tras eso,
# se le resta a $t1 el numero -1, quedando $t1 como 0x00000002. En $t3 se agrega el numero
# 12, el cual en hexadecimal es 0x0000000c. Se le suma a $t0 este ultimo valor, para asi
# poder acceder a la direccion de memoria 0x1001000c, la que representa la ultima posicion
# del arreglo y a esta se le agrega el valor 0x00000002, finalizando el programa.