# Laboratorio de Arquirectura de Computadores 2021-2
# Laboratorio 1: Instrucciones MIPS y Simulacion en MARS
# Nombre: John Serrano Carrasco
# Seccion: 13309-0-A-1
# Fecha: 30 de septiembre de 2021

addi $t0, $zero, 2
addi $t1, $zero, 2
beq $t0, $t1, A
addi $t1, $zero, 1

# Tecnicamente, debido a que A no está definido, el programa no se puede enzamblar. Sin embargo, si aún asi
# se pudiera ensamblar, la ejecución se detendria en la instrucción beq y tanto $t1 como $t0 terminarian
# con el valor 0x00000002
# Si se cambia la linea de beq por "beq $t0, $t0, A", a pesar de que ambos registros son iguales,
# de igual forma MARS no va a poder ensamblar el programa, ya que A sigue estando no definido.