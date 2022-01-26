# Laboratorio de Arquirectura de Computadores 2021-2
# Laboratorio 1: Instrucciones MIPS y Simulacion en MARS
# Nombre: John Serrano Carrasco
# Seccion: 13309-0-A-1
# Fecha: 30 de septiembre de 2021

addiu $t0, $zero, 0x10010000
addi $t1, $zero, 5
sw $t1, 0($t0)
lw $t2, 0($t0)
addiu $t0, $t0, 4
sw $t2, 0($t0)

# Tal como estaba escrito en el Pre-Laboratorio, los registro $t1 y $t2 y las memorias 0x10010000 y
# 010010004 quedab con el valor r 0x00000005. El registro  #t0 queda con el valor x10010004 y en 
# conclusión, están correctos los resultados del pre-laboratorio
