# Laboratorio de Arquirectura de Computadores 2021-2
# Laboratorio 1: Instrucciones MIPS y Simulacion en MARS
# Nombre: John Serrano Carrasco
# Seccion: 13309-0-A-1
# Fecha: 30 de septiembre de 2021

addi $t6, $zero, 2    # int a = 2;
addi $t7, $zero, 10   # int b = 10;
addi $t0, $zero, 0    #int m = 0;

CICLO:
beqz $t6, END
add $t0, $t0, $t7
addi $t6, $t6, -1
j CICLO

END:

# Se parte asignando a $t6 el valor 0x00000002, a $t7 0x0000000a y a $t0 0x00000000
# Luego se tiene una etica CICLO. Se hace un branch equal zero, donde se compara si $t6
# es 0x00000000. Si lo es, se salta a la etiqueta END y se acaba el programa. Si no, se
# procede a sumarle a $t0 el contenido de $t7 y a $t6 se le resta 1. Una hecho eso, el
# programa realiza un jump y vuelve a repetir el proceso hasta que $t6 sea 0x00000000