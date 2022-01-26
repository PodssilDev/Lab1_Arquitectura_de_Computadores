# Laboratorio de Arquirectura de Computadores 2021-2
# Laboratorio 1: Instrucciones MIPS y Simulacion en MARS
# Nombre: John Serrano Carrasco
# Seccion: 13309-0-A-1
# Fecha: 30 de septiembre de 2021

.data
arr: .word 10 22 15 40
end:
.text
la $s0, arr # esta instrucción pone la dirección base de arr en $s0
la $s1, end
subu $s1, $s1, $s0
srl $s1, $s1, 2 # ahora $s1 = num elementos en arreglo.
CICLO:            # Inicia el ciclo for
beq $t3, $s1, END # i == arrlen, si es asi, se acaba el programa 
lw $t4, 0($s0)    # Obtener arr[i]. Se guarda en $t4
andi $t5, $t4, 1  # arr[i] & 1
addi $s0, $s0, 4  # Se aumenta el valor de $s0 para acceder a las otras direcciones de memmoria
beqz $t5, COND    # (arr[i] & 1) == 0. Si se cumple, se salta a COND
addi $t3, $t3, 1  # i++
j CICLO           # Se vuelve al inicio del ciclo for

COND:
add $t0, $t0, $t4 # evensum += arr[i]
addi $t3, $t3, 1  # i++
j CICLO

END:              # Se acava el ciclo for y el programa

# Una vez creado el arreglo, se tiene la etiqueta CICLO, la cual representa al 
# ciclo for del codigo original. Luego, se obtiene el valor de la memoria y se 
# guarda en $t4. Pposterior a eso, se realiza el & logico entre el valor de $t4
# y 1. Luego el valor de $s0 en 4, esto es para poder acceder a los otros elementos
# del arreglo (es decir, las otras memorias). Luego de eso, se comprueba si el 
# & logico dio como resultado 0, y si es asi, se salta a la etiqueta COND, que contiene
# las instrucciones despues del if del ciclo for. Se le suma a $t3 un 1, el cual
# representa a i++ y luego se agrega a $t0 el valor actual de $t4. Posterior a eso
# el programa vuelve al inicio del ciclo for. Si $t3 y $s1 tienen el mismo valor
# (es decir, i == arrlen) entonces se acaba el programa.