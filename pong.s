.data

# coordenadas del dibujo
tablero:						.space 4
tablero_size:					.space 4
ancho_dibujo:	 				.word 50
alto_dibujo:	 				.word 17
proporcion_x:					.space 4
proporcion_y:					.space 4

# configuracion del juego
ancho_campo: 					.word 2000000
alto_campo:					.word 1000000
aceleracion_rebote_x:			.word 25
aceleracion_rebote_y:	 		.word 150
aceleracion_uniforme:			.word 0
longitud_pala:					.word 3
velocidad_pala:					.word 100		#	Porcentaje
aceleracion_pelota_x:			.word 0
aceleracion_incremento:			.word 0
alto_jugador:					.space 4
velocidad_jugador:				.space 4
velocidad_inicial_x:				.word 300
velocidad_inicial_y:				.word 0
velocidad_inicial_aleatoria:			.word 0	
puntuacion_maxima:			.word 3
girar_campo:					.word 0
acelerar_paredes:				.word 0

# teclas con las que jugar
arriba_jugador_izq:				.word 97
abajo_jugador_izq:				.word 122
arriba_jugador_der:				.word 107
abajo_jugador_der:				.word 109
tecla_salir:					.word 120
tecla_pausa:					.word 112

# configuracion de video
fps_max:						.word 5
tablero_pared:					.word '#'
tablero_pelota:					.word 'O'
tablero_numero:				.word '*'
tablero_pala_der:				.word '['
tablero_pala_izq:				.word ']'


# estado de la partida actual
posicion_pelota_x:				.space 4
posicion_pelota_y:				.space 4
velocidad_pelota_x:				.space 4
velocidad_pelota_y:				.space 4
posicion_jugador_izquierdo_x:		.space 4
posicion_jugador_izquierdo_y:		.space 4
posicion_jugador_derecho_x:		.space 4
posicion_jugador_derecho_y:		.space 4
puntuacion_jugador_izquierdo:		.space 4
puntuacion_jugador_derecho:		.space 4
pausar_juego:					.word 0
posicion_inicial_pelota_x:			.space 4
posicion_inicial_pelota_y:			.space 4
posicion_inicial_jugador_izquierdo_y:		.space 4
posicion_inicial_jugador_derecho_y:		.space 4



						


####################################################################################################################
##	CONSTANTES
####################################################################################################################
#Representacion de los numeros							
num_0:						.byte	0x1, 0x2, 0x3, 0x4, 0x6, 0x7, 0x9, 0xA, 0xC, 0xD, 0xE, 0xF,0
num_1:						.byte	0x1, 0x4, 0x7, 0xA, 0xD, 0
num_2:						.byte	0x1, 0x2, 0x3, 0x6, 0x7, 0x8, 0x9, 0xA, 0xD, 0xE, 0xF, 0
num_3:						.byte	0x1, 0x2, 0x3, 0x6, 0x8, 0x9, 0xC, 0xD, 0xE, 0xF, 0
num_4:						.byte	0x1, 0x3, 0x4, 0x6, 0x7, 0x8, 0x9, 0xC, 0xF, 0
num_5:						.byte	0x1, 0x2, 0x3, 0x4, 0x7, 0x8, 0x9, 0xC, 0xD, 0xE, 0xF, 0
num_6:						.byte	0x1, 0x2, 0x3, 0x4, 0x7, 0x8, 0x9, 0xA, 0xC, 0xD, 0xE, 0xF, 0
num_7:						.byte	0x1, 0x2, 0x3, 0x6, 0x9, 0xC, 0xF, 0
num_8:						.byte	0x1, 0x2, 0x3, 0x4, 0x6, 0x7, 0x8, 0x9, 0xA, 0xC, 0xD, 0xE, 0xF, 0
num_9:						.byte	0x1, 0x2, 0x3, 0x4, 0x6, 0x7, 0x8, 0x9, 0xC, 0xD, 0xE, 0xF, 0


# Cadenas comunes
msg_espacio:					.asciiz " "
msg_cr:						.asciiz "\n"
msg_tab:						.asciiz "\t"
msg_dos_puntos:				.asciiz ": "

# Mensajes de los menus
msg_titulo: 					.asciiz "PONGO: Dissasembled Edition\n\t1 - Iniciar Partida\n\t2 - Opciones del Juego\n\t3 - Instrucciones\n\n\tX - Salir\n"
msg_instrucciones: 				.asciiz "INSTRUCCIONES PARA JUGAR AL PONGO:\n\t1. Si no sabes jugar, retirate... en serio...\n\nPulse cualquier tecla para continuar..."

msg_opciones:					.asciiz "MENU DE OPCIONES\n\t1 - Configurar Teclado\n\t2 - Opciones del Juego\n\n\tX - Atr�s\n"
msg_opciones_juego:			.asciiz "OPCIONES DEL JUEGO\n\t- Opciones de Pantalla -\n\t1 - Ajustar el n�mero de fotogramas por segundo\n\t2 - Establecer la altura del campo de juego\n\t3 - Establecer el ancho del campo de juego\n\t4 - Longitud de las palas\n\n\t- F�sica del juego -\n\t5 - Velocidad de movimiento de las palas\n\t6 - Velocidad inicial de la pelota en horizontal\n\t7 - Velocidad inicial de la pelota en vertical\n\t8 - Pelota aleatoria al iniciar\n\t9 - Aceleraci�n uniforme de la pelota\n\t0 - Aceleraci�n horizontal de la pelota al chocar con una pala\n\tA - Aceleraci�n vertical de la pelota al chocar con una pala\n\tB - Aceleraci�n de la pelota al chocar con una pared\n\tC - Puntuacion m�xima\n\n\tX - Atras\nOPCION: "

msg_ganador:					.asciiz "	.....	 d*##$.\n	zP\"\"\"\"\"$e.	 $\"	$o\n 4$	 '$	$\"	$\n '$	'$	J$	 $F\n	'b	$k	 $>	 $\n	 $k	$r	 J$	 d$\n	 '$	 $	 $\"	 $~\n	'$	\"$	 '$E	 $\n	 $	 $L	 $\"	$F ...\n	$.	 4B	 $	$$$*\"\"\"*b\n	'$	$.	$$	 $$	$F\n	 \"$	 R$	$F	 $\"	$\n	$k	?$ u*	 dF	.$\n	^$.	$$\"	 z$	u$$$$e\n	 #$b	 $E.	$\"	?$\n	#$	 .o$$# d$$$$c	?F\n	 $	.d$$#\" . zo$>	 #$r .uF\n	 $L .u$*\"	$&$$$k	 .$$d$$F\n	$$\"	\"\"^\"$$$P\"$P9$\n	 JP	.o$$$$u:$P $$\n	 $	..ue$\"	\"\"	$\"\n	d$	$F	$\n	$$	 ....udE	 4B\n	 #$	\"\"\"\"` $r	@$\n	^$L	'$	$F\n	RN	4N	 $\n"
msg_ganador_derecha:			.asciiz "�� FELICIDADES JUGADOR DERECHO !!	�� HAS GANADO !!\n"
msg_ganador_izquierda:			.asciiz "�� FELICIDADES JUGADOR IZQUIERDO !!	�� HAS GANADO !!\n"

msg_opciones_1:				.asciiz "\nN�mero de fotogramas por segundo [5 / 20]: "
msg_opciones_2:				.asciiz "\nEstablecer la altura del campo de juego [5 / 25]: "
msg_opciones_3:				.asciiz "\nEstablecer el ancho del campo de juego [20 / 100]: "
msg_opciones_4:				.asciiz "\nLongitud de las palas [1 / 10]: "
msg_opciones_5:				.asciiz "\nVelocidad de las palas en porcentaje [50 / 200]: "
msg_opciones_6:				.asciiz "\nVelocidad inicial de la pelota en horizontal [50 / 500]: "
msg_opciones_7:				.asciiz "\nVelocidad inicial de la pelota en vertical [-100 / 100]: "
msg_opciones_8:				.asciiz "\n�Hacer que la bola comience con direcci�n y velocidad aleatorias? [0 / 1] "
msg_opciones_9:				.asciiz "\nAceleraci�n uniforme de la pelota [0 / 10]: "
msg_opciones_0:				.asciiz "\nAceleraci�n horizontal de la pelota al chocar con una pala [0 / 500]: "
msg_opciones_a:				.asciiz "\nAceleraci�n vertical de la pelota al chocar con una pala [0 / 100]: "
msg_opciones_b:				.asciiz "\nAceleraci�n de la pelota al chocar con una pared [0 / 1]: "
msg_opciones_c:				.asciiz "\nPuntuaci�n que se debe alcanzar para ganar la partida [10 / 100]:"

msg_jug_izq:					.asciiz "\nJugador izquierdo"
msg_jug_der:					.asciiz "\nJugador derecho"
msg_arriba: 					.asciiz "\nArriba: "
msg_abajo: 					.asciiz "\nAbajo: "
msg_tecla_pause:				.asciiz "\nTecla para pausar el juego: "
msg_tecla_salir:				.asciiz "\nTecla para salir del juego: "

# Procedimiento leer_entero
msg_leer_entero_error_max:		.asciiz "El numero debe ser como maximo "
msg_leer_entero_error_min:		.asciiz "El numero debe ser como minimo "
# procedimiento leer_minuscula
msg_leer_caracter_error:			.asciiz "\nLa tecla debe ser una letra de la A a la Z o un numero: "





.text
.globl main
####################################################################################################################
##	INICIO DEL CAOS
####################################################################################################################
main:
	addi		$sp, $sp,	-16
	sw		$ra, 0($sp)
	sw		$s0, 4($sp)
	sw		$s1, 8($sp)
	sw		$s2, 12($sp)
	################



	main_menu_principal:
	jal		menu_principal
	
	iniciar_juego:
	jal		iniciar_variables

	li		$t0, 1000
	lw		$t1, fps_max
	div		$s0, $t0, $t1					# tiempo_pausa = 1000 / fps_max

	
	li		$v0, 30						# Tiempo de inicio del juego
	syscall
	move	$s1, $a0						# $s1 = antes.lo


	bucle_principal_juego:
		jal		poll_entrada
		beqz		$v0, main_menu_principal

		li		$v0, 30						# syscall time
		syscall
		subu		$s2, $a0, $s1					# transcurrido = ahora.lo - antes.lo
		ble		$s2, $s0, bucle_principal_juego	# Si (transcurrido < tiempo_pausa)
		move	$s1, $a0						# antes.lo = ahora.lo

		move	$a0, $s2
		jal		avanza_pong					# avanza_pong(transcurrido)
	

		jal		dibujar_campo

		j		bucle_principal_juego


	
	salir_programa:
	################
	lw		$ra, 0($sp)
	lw		$s0, 4($sp)
	lw		$s1, 8($sp)
	lw		$s2, 12($sp)
	addi		$sp, $sp, 16
	li		$v0, 10
	syscall
	jr		$ra



####################################################################################################################
##	AVANZA_PONG
####################################################################################################################


#######################################################
# aceleracion: Aumenta la velocidad uniformemente
aceleracion:
	lw		$t0, velocidad_pelota_x
	lw		$t1, aceleracion_incremento
	lw		$t2, aceleracion_pelota_x
	add		$t2, $t2, $t1
	bltz		$t0, aceleracion_negativa
		add		$t0, $t0, $t2
		j		aceleracion_fin
	aceleracion_negativa:
		sub		$t0, $t0, $t2
	aceleracion_fin:
	sw		$t2, aceleracion_pelota_x
	sw		$t0, velocidad_pelota_x
	
	jr		$ra



# Mueve la pelota y detecta colisiones
# $a0: transcurrido: indica cuantos milisegundos han pasado desde la ultima actualizacion
avanza_pong:

	# Si el juego esta pausado, no hace nada, termina el metodo
	lw		$t0, pausar_juego
	beqz		$t0, avanza_pong_no_pausado
		jr		$ra
	avanza_pong_no_pausado:

	addi		$sp, $sp, -12
	sw		$ra, 0($sp)
	sw		$s0, 4($sp)
	sw		$s1, 8($sp)

	move	$a2, $a0
	jal		aceleracion
	
	lw		$a0, velocidad_pelota_x
	lw		$a1, velocidad_pelota_y
	jal	 	prod_vector_int			# prod_vector_int(velocidad_pelota_x, velocidad_pelota_y, transcurrido)
	
	
	lw		$a0, posicion_pelota_x
	lw		$a1, posicion_pelota_y
	move	$a2, $v0
	move	$a3, $v1
	jal		 suma_vector	 # suma_vector(posicion_pelota_x, posicion_pelota_y, $v0, $v1)
	sw		$v0, posicion_pelota_x
	sw		$v1, posicion_pelota_y
	move	$s0, $v0	# $s0: posicion_pelota_x (para preservar despues de llamadas)
	move	$s1, $v1	# $s1: posicion_pelota_y (para preservar despues de llamadas)

	lw		$t0, alto_jugador
	
	################################################################
	# rebote con pala derecha
	lw		$t1, posicion_jugador_derecho_x
	ble		$s0, $t1, l06a	# posicion_pelota_x <= posicion_jugador_derecho_x
	lw		$t2, posicion_jugador_derecho_y
	blt		$s1, $t2, l06a	# posicion_pelota_y < posicion_jugador_derecho_y
	add		$t3, $t2, $t0	 # posicion_jugador_derecho_y + alto_jugador
	bge		$s1, $t3, l06a	# posicion_pelota_y >= posicion_jugador_derecho_y + alto_jugador	
	## cambio de direccion y aceleracion horizontal
	sub		$s0, $s0, $t1	 # posicion_pelota_x - posicion_jugador_derecho_x
	sub		$s0, $t1, $s0	 # posicion_jugador_derecho_x - (posicion_pelota_x - posicion_jugador_derecho_x)
	sw		$s0, posicion_pelota_x
	lw		$t4, velocidad_pelota_x
	sub		$t4, $0, $t4	# -velocidad_pelota
	lw		$t5, aceleracion_rebote_x
	sub		$t4, $t4, $t5	 # -velocidad_pelota - aceleracion_rebote_x
	sw		$t4, velocidad_pelota_x
	## aceleracion vertical
	sra	 	$t5, $t0, 1	 # alto_jugador / 2
	add	 	$t6, $t2, $t5	 # centro_pala_y = posicion_jugador_derecho_y + alto_jugador / 2
	sub		$t6, $s1, $t6	 # dist_pelota_centro_pala = posicion_pelota_y - centro_pala_y
	mtc1		$t6, $f0 
	cvt.s.w 	$f0, $f0	# (float) dist_pelota_centro_pala
	mtc1		$t5, $f1
	cvt.s.w 	$f1, $f1	# (float) (alto_jugador / 2)
	div.s	 	$f0, $f0, $f1	 # f = (float) dist_pelota_centro_pala / (float) alto_jugador
	lwc1		$f1, aceleracion_rebote_y
	cvt.s.w 	$f1, $f1	# (float) aceleracion_rebote_y
	mul.s	$f0, $f0, $f1	 # f * ((float) aceleracion_rebote_y)
	lwc1		$f1, velocidad_pelota_y
	cvt.s.w	$f1, $f1	# (float) velocidad_pelota_y
	add.s	$f0, $f1, $f0	 # velocidad_pelota_y + f * ((float) aceleracion_rebote_y)
	cvt.w.s	$f0, $f0	# (int) (velocidad_pelota_y + f * ((float) aceleracion_rebote_y))
	swc1	$f0, velocidad_pelota_y
	
	li 		$a0, 60		#rebote en las palas 127
	li		$a1, 500		#duracion
	li		$a2, 127		#instrument
	li		$a3, 127		#volume
	li		$v0, 31
	syscall
	j		l06f
	 
	 

	#################################################
	# rebote con pala izquierda
l06a:

	lw		$t1, posicion_jugador_izquierdo_x
	bge	 	$s0, $t1, l06b	# posicion_pelota_x >= posicion_jugador_izquierdo_x
	lw		$t2, posicion_jugador_izquierdo_y
	blt		$s1, $t2, l06b	# posicion_pelota_y < posicion_jugador_izquierdo_y
	add		$t3, $t2, $t0	 # posicion_jugador_izquierdo_y + alto_jugador
	bge		$s1, $t3, l06b	# posicion_pelota_y >= posicion_jugador_izquierdo_y + alto_jugador
	## cambio de dirección y aceleración horizontal
	sub		$s0, $t1, $s0	 # posicion_jugador_izquierdo_x - posicion_pelota_x
	add		$s0, $t1, $s0	 # posicion_jugador_izquierdo_x + (posicion_jugador_izquierdo.x - posicion_pelota.x);
	sw		$s0, posicion_pelota_x
	lw		$t4, velocidad_pelota_x
	sub		$t4, $0, $t4	# -velocidad_pelota
	lw		$t5, aceleracion_rebote_x
	add		$t4, $t4, $t5	 # -velocidad_pelota + aceleracion_rebote_x
	sw		$t4, velocidad_pelota_x
	## aceleracion vertical
	sra		$t5, $t0, 1	 # alto_jugador / 2
	add		$t6, $t2, $t5	 # centro_pala_y = posicion_jugador_izquierdo_y + alto_jugador / 2
	sub		$t6, $s1, $t6	 # dist_pelota_centro_pala = posicion_pelota_y - centro_pala_y
	mtc1		$t6, $f0 
	cvt.s.w	$f0, $f0	# (float) dist_pelota_centro_pala
	mtc1		$t5, $f1
	cvt.s.w	$f1, $f1	# (float) (alto_jugador / 2)
	div.s		$f0, $f0, $f1	 # f = (float) dist_pelota_centro_pala / (float) alto_jugador
	lwc1		$f1, aceleracion_rebote_y
	cvt.s.w	$f1, $f1	# (float) aceleracion_rebote_y
	mul.s	$f0, $f0, $f1	 # f * ((float) aceleracion_rebote_y)
	lwc1		$f1, velocidad_pelota_y
	cvt.s.w	$f1, $f1	# (float) velocidad_pelota_y
	add.s	$f0, $f1, $f0	 # velocidad_pelota_y + f * ((float) aceleracion_rebote_y)
	cvt.w.s	$f0, $f0	# (int) (velocidad_pelota_y + f * ((float) aceleracion_rebote_y))
	swc1	$f0, velocidad_pelota_y
	 
	
	li		$a0, 60		#rebote en las palas 127
	li		$a1, 500		#duracion
	li		$a2, 127		#instrument
	li		$a3, 127		#volume
	li		$v0, 31
	syscall
	j		l06f


	
	# pared derecha: GOL
l06b:
	lw		$t1, ancho_campo
	ble		$s0, $t1, l06c			# posicion_pelota_x <= ancho_campo
	lw		$t1, puntuacion_jugador_izquierdo
	addi		$t1, $t1, 1			# puntuacion_jugador_izquierdo + 1
	sw		$t1, puntuacion_jugador_izquierdo
	lw		$t0, puntuacion_maxima	# puntuacion_maxima?
	bge		$t1, $t0, izquierdo_gana
	j		izquierdo_aun_no_gana
	izquierdo_gana:
		lw		$ra, 0($sp)
		lw		$s0, 4($sp)
		lw		$s1, 8($sp)
		addi		$sp, $sp, 12
		j		we_are_the_champions
	izquierdo_aun_no_gana:
	jal		actualizar_marcadores
	li		$a0, 1	# derecha
	jal		iniciar_bola
	j		l06f
	
	
	# pared izquierda: GOL
l06c:
	bge		$s0, $0, l06d			# posicion_pelota_x >= 0
	lw		$t1, puntuacion_jugador_derecho
	addi		$t1, $t1, 1			# puntuacion_jugador_derecho + 1
	sw		$t1, puntuacion_jugador_derecho
	lw		$t0, puntuacion_maxima	# puntuacion_maxima?
	bge		$t1, $t0, derecho_gana
	j		derecho_aun_no_gana
	derecho_gana:
		lw		$ra, 0($sp)
		lw		$s0, 4($sp)
		lw		$s1, 8($sp)
		addi		$sp, $sp, 12
		j		we_are_the_champions
	derecho_aun_no_gana:
	jal		actualizar_marcadores
	li		$a0, 0	# izquierda
	jal		iniciar_bola
	j		l06f
	
	
	# pared inferior
l06d:
	lw		$t1, alto_campo
	ble		$s1, $t1, l06e		# posicion_pelota_y <= alto_campo
	sub		$t2, $s1, $t1		# posicion_pelota_y - alto_campo
	sub		$s1, $t1, $t2		# alto_campo - (posicion_pelota_y - alto_campo)
	sw		$s1, posicion_pelota_y
	lw		$s1, velocidad_pelota_y
	sub		$s1, $0, $s1	# -velocidad_pelota_y
	# Aceleracion aleatoria al eje Y
	lw		$t0, acelerar_paredes
	beqz		$t0, no_acelerar_pared_inferior
		li		$a0, -100
		li		$a1, 0
		jal		random_integer
		add		$s1, $v0, $s1
	no_acelerar_pared_inferior:
	#

	sw		$s1, velocidad_pelota_y
	
	li		$a0, 120		#rebote en las 
 	li		$a1, 350		#duracion
	li		$a2, 127		#instrument
	li		$a3, 127		#volume
	li		$v0, 31
	syscall
	j		l06f

	# pared superior
l06e:	
	bge		$s1, $0, l06f				# posicion_pelota_y >= 0
	sub		$s1, $0, $s1				# -posicion_pelota_y
	sw		$s1, posicion_pelota_y
	lw		$s1, velocidad_pelota_y
	sub		$s1, $0, $s1	# -velocidad_pelota_y
	# Aceleracion aleatoria al eje Y
	lw		$t0, acelerar_paredes
	beqz		$t0, no_acelerar_pared_superior
		li		$a0, 0
		li		$a1, 100
		jal		random_integer
		add		$s1, $v0, $s1		
	no_acelerar_pared_superior:
	#

	sw		$s1, velocidad_pelota_y
	
	li		$a0, 120		#rebote en las 
	li		$a1, 350		#duracion
	li		$a2, 127		#instrument
	li		$a3, 127		#volume
	li		$v0, 31
	syscall
	j		l06f
	
l06f:
	lw		$ra, 0($sp)
	lw		$s0, 4($sp)
	lw		$s1, 8($sp)
	addi		$sp, $sp, 12
	jr		$ra

####################################################################################################################
##	MANEJO DE LAS TECLAS
####################################################################################################################


#######################################################
# keyio_poll_key: Realiza un sondeo del teclado
# RETURN:
#	$v0 - Codigo del caracter correspondiente a la letra MINUSCULA de la ultima tecla pulsada o cero si no se pulso ninguna tecla
keyio_poll_key:
	addi		$sp, $sp, -4
	sw		$ra, 0($sp)
	# APILA #
	li		$v0, 0
	lb		$t0, 0xffff0000			# carga registro de control del receptor
	andi		$t0, $t0, 0x00000001	# mira el bit 0
	beqz		$t0, keyio_poll_salida	# si no hay nada disponible, devuelve 0.
	lb		$a0, 0xffff0004			# lee caracter del registro de datos del receptor
	
	jal		pasar_minusculas
	keyio_poll_salida:
	# DESAPILA #
	lw		$ra, 0($sp)
	addi		$sp, $sp, 4
	jr		$ra

#######################################################
# poll_entrada: Comprueba si se ha pulsado alguna tecla y la procesa en caso afirmativo
# RETURN:
#	$v0 - Cero si el juego debe ser detenido
poll_entrada:
	addi		$sp, $sp, -4
	sw		$ra, 0($sp)
	# APILA #
	jal		keyio_poll_key
	beqz		$v0, poll_entrada_end1
	
	lw		$t0, pausar_juego
	bnez		$t0, keyin_pausa			# Si el juego esta en pausa, ignora todas las teclas salvo la de pausa y la de salir
	
	
	keyin_izq_arriba:
	lw		$t3, arriba_jugador_izq
	bne		$v0, $t3, keyin_izq_abajo
		keyin_izq_arriba_pulsada:
		lw		$t0, posicion_jugador_izquierdo_y
		blez		$t0, poll_entrada_end1
		lw		$t1, velocidad_jugador
		sub		$t0, $t0, $t1						# posicion_jugador_izquierdo_y - velocidad_jugador
		sw		$t0, posicion_jugador_izquierdo_y
		j		poll_entrada_end1
	
	keyin_izq_abajo:
	lw		$t3, abajo_jugador_izq
	bne		$v0, $t3, keyin_der_arriba
		keyin_izq_abajo_pulsada:
		lw		$t0, posicion_jugador_izquierdo_y
		lw		$t1, alto_jugador
		add		$t1, $t0, $t1						# posicion_jugador_izquierdo_y + alto_jugador
		lw		$t2, alto_campo
		bge		$t1, $t2, poll_entrada_end1
		lw		$t1, velocidad_jugador
		add		$t0, $t0, $t1						# posicion_jugador_izquierdo_y +velocidad_jugador
		sw		$t0, posicion_jugador_izquierdo_y
		j		poll_entrada_end1
		
	keyin_der_arriba:
	lw		$t3, arriba_jugador_der
	bne		$v0, $t3, keyin_der_abajo
		keyin_der_arriba_pulsada:
		lw		$t0, posicion_jugador_derecho_y
		blez		$t0, poll_entrada_end1
		lw		$t1, velocidad_jugador
		sub		$t0, $t0, $t1						# posicion_jugador_derecho_y - velocidad_jugador
		sw		$t0, posicion_jugador_derecho_y
		j		poll_entrada_end1
	
	keyin_der_abajo:
	lw		$t3, abajo_jugador_der
	bne		$v0, $t3, keyin_pausa
		keyin_der_abajo_pulsada:
		lw		$t0, posicion_jugador_derecho_y
		lw		$t1, alto_jugador
		add		$t1, $t0, $t1						# posicion_jugador_izquierdo_y + alto_jugador
		lw		$t2, alto_campo
		bge		$t1, $t2, poll_entrada_end1
		lw		$t1, velocidad_jugador
		add		$t0, $t0, $t1						# posicion_jugador_izquierdo_y +velocidad_jugador
		sw		$t0, posicion_jugador_derecho_y
		j		poll_entrada_end1
		
	keyin_pausa:
	lw		$t3, tecla_pausa
	bne		$v0, $t3, keyin_salir
		keyin_pausa_pulsada:
		lw		$t0, pausar_juego
		not		$t0, $t0
		sw		$t0, pausar_juego
		j		poll_entrada_end1
		
	keyin_salir:
	lw		$t3, tecla_salir
	bne		$v0, $t3, poll_entrada_end1
	
	
	poll_entrada_end0:
	li		$v0, 0
	j		poll_entrada_end
	
	poll_entrada_end1:
	li		$v0, 1
	
	poll_entrada_end:
	# DESAPILA #
	lw		$ra, 0($sp)
	addi		$sp, $sp, 4
	jr		$ra






####################################################################################################################
##	INICIO DE VARIABLES
####################################################################################################################

#######################################################
# iniciar_variables: Inicia todas las variables necesarias antes de comenzar el juego
iniciar_variables:
	addi		$sp, $sp,	-36
	sw		$s0, 0($sp)
	sw		$s1, 4($sp)
	sw		$s2, 8($sp)
	sw		$s3, 12($sp)
	sw		$s4, 16($sp)
	sw		$s5, 20($sp)
	sw		$s6, 24($sp)
	sw		$s7, 28($sp)
	sw		$ra, 32($sp)
	#APILA#

	lw		$s0, alto_campo
	lw		$s1, ancho_campo
	lw		$s2, alto_dibujo
	lw		$s3, ancho_dibujo


	# 1 - Pausa = 0
	sw		$0, pausar_juego

	# 2 - Proporciones X e Y
	lwc1		$f0, ancho_dibujo
	lwc1		$f1, ancho_campo
	cvt.s.w	$f0, $f0			# (float) ancho_dibujo
	cvt.s.w	$f1, $f1			# (float) ancho_campo
	div.s		$f0, $f1, $f0		# f0: proporcion_x = (float) ancho_dibujo / (float) ancho_campo
	swc1	$f0, proporcion_x	
	cvt.w.s	$f0, $f0
	mfc1		$s5, $f0

	lwc1		$f0, alto_dibujo
	lwc1		$f1, alto_campo
	cvt.s.w	$f0, $f0			# (float) alto_dibujo
	cvt.s.w	$f1, $f1			# (float) alto_campo
	div.s		$f0, $f1, $f0		# f0: proporcion_y = (float) alto_dibujo / (float) alto_campo
	swc1	$f0, proporcion_y	
	cvt.w.s	$f0, $f0
	mfc1		$s4, $f0

	# 3 - Alto Jugador = Proporcion_y * Longitud de pala
	lw		$s6, longitud_pala
	mul		$t0, $s6, $s5	
	sw		$t0, alto_jugador
	
	# 4 - Velocidad Jugador = (Proporcion_y *velocidad_pala)/100
	lw		$s7, velocidad_pala
	li		$t0, 100	
	mul		$t1, $s4, $s7
	div		$s7, $t1, $t0
	sw		$s7, velocidad_jugador
	
	# 5 - Tama�o del buffer
	addi		$t0, $s2, 8
	addi		$t1, $s3, 1
	mul		$a0, $t1, $t0
	sw		$a0, tablero_size
	addi		$a0, $a0, 1		# Pedimos 1 byte mas para guardar un 0x0 final
	li		$v0, 9			# Pide memoria al SO
	syscall
	sw		$v0, tablero
	
	# 6 - Posiciones iniciales de palas y pelota
	srl		$t0, $s0, 1
	srl		$t1, $s1, 1
	
	sw		$t0, posicion_inicial_pelota_y
	sw		$t1, posicion_inicial_pelota_x

	mul		$t4, $s6, $s5
	srl		$t2, $t4, 1
	sub		$t3, $t0, $t2
	sw		$t3, posicion_inicial_jugador_izquierdo_y
	sw		$t3, posicion_inicial_jugador_derecho_y
	
	srl		$t0, $s5, 1
	sw		$t0, posicion_jugador_izquierdo_x			# A media proporcion_x de la izq
	sub		$t3, $s1, $t0
	sw		$t3, posicion_jugador_derecho_x			# A media proporcion_x de la der
	
	# 7 - Puntuaciones
	sw		$0, puntuacion_jugador_derecho
	sw		$0, puntuacion_jugador_izquierdo

	# 8 - Tablero
	jal		iniciar_tablero
	jal		actualizar_marcadores

	
	# 9 - Pelota
	la		$a0, -1
	jal		iniciar_bola

	#DESAPILA#
	lw		$s0, 0($sp)
	lw		$s1, 4($sp)
	lw		$s2, 8($sp)
	lw		$s3, 12($sp)
	lw		$s4, 16($sp)
	lw		$s5, 20($sp)
	lw		$s6, 24($sp)
	lw		$s7, 28($sp)
	lw		$ra, 32($sp)
	addi		$sp, $sp,	36
	jr		$ra

#######################################################
# iniciar_bola: Pone la bola en el centro del campo y centra las palas
# ARGS:
#	$a0 - Direccion inicial de la bola. -1 = aleatorio, 0 = Izquierda, 1 = Derecha
iniciar_bola:
	addi		$sp, $sp,	-12
	sw		$s0, 8($sp)
	sw		$s1, 4($sp)
	sw		$ra, 0($sp)
	#APILA#

	# 1 - Reestablece la aceleracion
	sw		$zero, aceleracion_pelota_x
	
	# 2 - Cargamos las posiciones iniciales de la pelota y las palas
	# 	Notese que las posiciones X de las palas se establencen constantes en iniciar_variables
	lw		$t0, posicion_inicial_pelota_x
	sw		$t0, posicion_pelota_x
	lw		$t0, posicion_inicial_pelota_y
	sw		$t0, posicion_pelota_y
	lw		$t0, posicion_inicial_jugador_izquierdo_y
	sw		$t0, posicion_jugador_izquierdo_y
	lw		$t0, posicion_inicial_jugador_derecho_y
	sw		$t0, posicion_jugador_derecho_y

	# 3 - Calculando velocidad inicial de la pelota
	lw		$t0, velocidad_inicial_aleatoria
	beqz		$t0, inicia_pelota_velocidad_fija
	
		inicia_pelota_velocidad_aleatoria:
		move	$s1, $a0			# Salvamos $a0 antes de las llamadas
		li		$a0, 150			# X
		li		$a1, 500
		jal		random_integer
		move	$s0, $v0
		li		$a0, -250			# Y
		li		$a1, 250
		jal		random_integer
		move	$a0, $s1			# Recuperamos $a0 tras las llamadas
		move	$s1, $v0
		j		inicia_pelota_direccion
		
		inicia_pelota_velocidad_fija:
		lw		$s0, velocidad_inicial_x
		lw		$s1, velocidad_inicial_y

	# 4 - Establecemos la direccion inicial de la pelota
	inicia_pelota_direccion:
	bgez		$a0, inicia_pelota_establece_direccion		# Si ($a0 == -1) entoces $a0 = random(0, 1)
	li		$a0, 0
	li		$a1, 1
	jal		random_integer
	move	$a0, $v0
	
	inicia_pelota_establece_direccion:
	beq		$a0, 0, inicia_pelota_izquierda			# Si ($a0 == 0) entonces {NADA} sino {velocidad_x *= -1}
	j		inicia_pelota_fin
	
		inicia_pelota_izquierda:
		sub		$s0, $0, $s0
				
	inicia_pelota_fin:	
 	sw		$s0, velocidad_pelota_x
	sw		$s1, velocidad_pelota_y
	
	
	#DESAPILA#
	lw		$s0, 8($sp)
	lw		$s1, 4($sp)
	lw		$ra, 0($sp)
	addi 	$sp, $sp, 12
	jr		$ra





















####################################################################################################################
##	PROCEDIMIENTOS - MENUS
####################################################################################################################

#######################################################
# menu_principal: Muestra el menu por pantalla
menu_principal:


	jal	limpiar_pantalla
	
	la	$a0, msg_titulo
	jal	leer_caracter
	
	beq		$v0, 49, menu_inicio_juego
	beq		$v0, 50, menu_opciones
	beq		$v0, 51, menu_instrucciones
	j		salir_programa
	
	menu_inicio_juego:
		j		iniciar_juego
		
	
	menu_opciones:
		jal	limpiar_pantalla
		la	$a0, msg_opciones
		jal	leer_caracter

		beq		$v0, 49, menu_opciones_teclado
		beq		$v0, 50, menu_opciones_juego
		j	menu_principal
		
		menu_opciones_teclado:
			jal	limpiar_pantalla
			
			# salir
			la		$a0, msg_tecla_salir
			jal		leer_caracter
			sw		$v0, tecla_salir	
			
			# pause
			la		$a0, msg_tecla_pause
			jal		leer_caracter
			sw		$v0, tecla_pausa		
			
			# Jugador Izquierdo
			la		$a0, msg_jug_izq
			jal		imprimir_cadena
				
				# Arriba
				la		$a0, msg_arriba
				jal		leer_caracter
				sw		$v0, arriba_jugador_izq
				
				# Abajo
				la		$a0, msg_abajo
				jal		leer_caracter
				sw		$v0, abajo_jugador_izq
			
			# Jugador Derecho
			la		$a0, msg_jug_der
			jal		imprimir_cadena
				
				# Arriba
				la		$a0, msg_arriba
				jal		leer_caracter
				sw		$v0, arriba_jugador_der
				
				# Abajo
				la		$a0, msg_abajo
				jal		leer_caracter
				sw		$v0, abajo_jugador_der				
					
			j	menu_opciones

		menu_opciones_juego:
			jal		limpiar_pantalla
			
			la		$a0, msg_opciones_juego
			jal		leer_caracter
			
			beq		$v0, 49, menu_opciones_juego_1
			beq		$v0, 50, menu_opciones_juego_2	
			beq		$v0, 51, menu_opciones_juego_3	
			beq		$v0, 52, menu_opciones_juego_4	
			beq		$v0, 53, menu_opciones_juego_5	
			beq		$v0, 54, menu_opciones_juego_6	
			beq		$v0, 55, menu_opciones_juego_7	
			beq		$v0, 56, menu_opciones_juego_8	
			beq		$v0, 57, menu_opciones_juego_9				
			beq		$v0, 48, menu_opciones_juego_0
			beq		$v0, 97, menu_opciones_juego_a	
			beq		$v0, 98, menu_opciones_juego_b	
			beq		$v0, 99, menu_opciones_juego_c	
			j		menu_opciones
			
			menu_opciones_juego_1:
				la		$a0, msg_opciones_1
				li		$a1, 5
				li		$a2, 20
				jal		leer_entero
				sw		$v0, fps_max
				j		menu_opciones_juego
				
			menu_opciones_juego_2:
				la		$a0, msg_opciones_2
				li		$a1, 5
				li		$a2, 25
				jal		leer_entero
				sw		$v0, alto_dibujo
				j		menu_opciones_juego
				
			menu_opciones_juego_3:
				la		$a0, msg_opciones_3
				li		$a1, 20
				li		$a2, 100
				jal		leer_entero
				sw		$v0, ancho_dibujo
				j		menu_opciones_juego
				
				
			menu_opciones_juego_4:
				la		$a0, msg_opciones_4
				li		$a1, 1
				li		$a2, 10
				jal		leer_entero
				sw		$v0, longitud_pala
				j		menu_opciones_juego
				
			menu_opciones_juego_5:
				la		$a0, msg_opciones_5
				li		$a1, 50
				li		$a2, 200
				jal		leer_entero
				sw		$v0, velocidad_pala
				j		menu_opciones_juego
				
			menu_opciones_juego_6:
				la		$a0, msg_opciones_6
				li		$a1, 50
				li		$a2, 500
				jal		leer_entero
				sw		$v0, velocidad_inicial_x
				j		menu_opciones_juego
				
			menu_opciones_juego_7:
				la		$a0, msg_opciones_7
				li		$a1, -100
				li		$a2, 100
				jal		leer_entero
				sw		$v0, velocidad_inicial_y
				j		menu_opciones_juego
				
			menu_opciones_juego_8:
				la		$a0, msg_opciones_8
				li		$a1, 0
				li		$a2, 1
				jal		leer_entero
				sw		$v0, velocidad_inicial_aleatoria
				j		menu_opciones_juego
				
			menu_opciones_juego_9:
				la		$a0, msg_opciones_9
				li		$a1, 0
				li		$a2, 10
				jal		leer_entero
				sw		$v0, aceleracion_incremento
				j		menu_opciones_juego
				
			menu_opciones_juego_0:
				la		$a0, msg_opciones_0
				li		$a1, 0
				li		$a2, 500
				jal		leer_entero
				sw		$v0, aceleracion_rebote_x
				j		menu_opciones_juego
				
			menu_opciones_juego_a:
				la		$a0, msg_opciones_a
				li		$a1, 0
				li		$a2, 100
				jal		leer_entero
				sw		$v0, aceleracion_rebote_y
				j		menu_opciones_juego
				
			menu_opciones_juego_b:
				la		$a0, msg_opciones_b
				li		$a1, 0
				li		$a2, 1
				jal		leer_entero
				sw		$v0, acelerar_paredes
				j		menu_opciones_juego

			menu_opciones_juego_c:
				la		$a0, msg_opciones_c
				li		$a1, 10
				li		$a2, 100
				jal		leer_entero
				sw		$v0, puntuacion_maxima
				j		menu_opciones_juego
				
				
			j		menu_opciones
			

	menu_instrucciones:
		jal		limpiar_pantalla
		la		$a0, msg_instrucciones
		jal		imprimir_cadena
		li		$v0, 12
		syscall
		j		menu_principal
	



####################################################################################################################
##	PROCEDIMIENTOS AUXILIARES
####################################################################################################################

#######################################################
# imprimir_cadena: Imprime una cadena
# ARG:
#	$a0 - La direccion de la cadena a imprimir
imprimir_cadena:
	li		$v0, 4
	syscall 
	jr		$ra

#######################################################
# imprimir_entero: Imprime un entero
# ARG:
#	$a0 - El entero a imprimir
imprimir_entero:
	li		$v0, 1
	syscall
	jr		$ra

#######################################################
# leer-entero: Lee un entero positivo y se asegura que cumple ciertos requisitos de tama�o
# ARG:
#	$a0 - La direccion de la cadena a imprimir con la descripcion del dato ej $a0 -> "Introduzca su edad:"
#	$a1 - Valor minimo
#	$a2 - Valor maximo (Si es menor o igual al valor minimo, se ignora este requisito)
# RETURN:
#	$v0 - El entero leido
leer_entero:
	addi		$sp, $sp,	-4
	sw		$ra, 0($sp)
	#APILA#
	
	# Imprime la cadena de descripcion
	jal		imprimir_cadena
	
	leer_entero_input:
	li		$v0, 5
	syscall
	
	leer_entero_validacion:
		blt 		$v0, $a1, leer_entero_error_min
		bgt		$v0, $a2, leer_entero_error_max
		j		leer_entero_ok
		
		leer_entero_error_min:
			la		$a0, msg_leer_entero_error_min
			jal		imprimir_cadena
			move	$a0, $a1
			jal		imprimir_entero
			la		$a0, msg_dos_puntos
			jal		imprimir_cadena
			j		leer_entero_input
			
		leer_entero_error_max:
			la		$a0, msg_leer_entero_error_max
			jal		imprimir_cadena
			move	$a0, $a2
			jal		imprimir_entero
			la		$a0, msg_dos_puntos
			jal		imprimir_cadena
			j		leer_entero_input
			
	leer_entero_ok:
	#DESAPILA#
	lw		$ra, 0($sp)
	addi		$sp, $sp, 4
	jr		$ra



#######################################################
# leer_caracter: Lee un caracter del teclado y se asegura de que es una letra o numero [a-z][A-Z][0-9]. Devuelve el valor en minuscula.
# ARG:
#	$a0 - La direccion de la cadena a imprimir con la descripcion del dato ej $a0 -> "Introduzca letra DNI:"
# RETURN:
#	$v0 - El caracter leido convertido a minusculas
leer_caracter:
	addi		$sp, $sp,	-4
	sw		$ra, 0($sp)
	#APILA#
	
	jal		imprimir_cadena
	
	leer_caracter_input:
	li		$v0, 12
	syscall
	
	
	leer_caracter_validacion:
		move	$a0, $v0
		jal		pasar_minusculas
		
		# RANGOS ASCII VALIDOS
		#	--------------[48 numeros 57]------------[97 minusculas 122]--------------#
		blt		$v0, 48, leer_caracter_error		# char anterior a 0 - MAL
		bgt		$v0, 122, leer_caracter_error		# char posterior a z - MAL
		ble		$v0, 57, leer_caracter_ok		# 0 <= char <= 9	BIEN
		bge		$v0, 97, leer_caracter_ok		# a <= char <= z	BIEN


		leer_caracter_error:
			la		$a0, msg_leer_caracter_error
			jal		imprimir_cadena
			j		leer_caracter_input

	leer_caracter_ok:
	
	#DESAPILA#
	lw		$ra, 0($sp)
	addi		$sp, $sp, 4
	jr		$ra




#######################################################
# limpiar_pantalla: Limpia la consola
limpiar_pantalla:
	li		$v0, 39
	syscall
	jr		$ra






#######################################################
# random_integer: Genera un enero aleatorio entre ciertos valores
# ARGS:
#	$a0 - Valor minimo
#	$a1 - Valor maximo
# RETURN:
#	$v0 - Un entero entre $a0 y $a1, ambos incluidos
random_integer:
	sub		$t0, $a1, $a0		# $t0 = diferencia entre max y min
	move	$t1, $a0			# $t1 = min
	
	li		$v0, 30			# Generar semilla sacada de la hora del sistema
	syscall 
	
	addi		$a1, $t0, 1		# Generamos un random entre 0 y ($t0+1)
	li		$v0,	42			
	syscall
	
	add		$v0, $a0, $t1		# Como $a0 = random[0 - $t0+1], <- le sumamos min($t1)

	jr		$ra





#######################################################
# pasar_minusculas: Transforma un caracter en minusculas. Si el caracter no es una letra a-Z devuelve el caracter sin modificar
# ARGS:
#	$a0 - El caracter que se desea transformar
# RETURN:
#	$v0 - El caracter en mayusculas
pasar_minusculas:
	bgt		$a0, 90, pasar_minusculas_fin
	blt		$a0, 65, pasar_minusculas_fin
	addi		$a0, $a0, 32

	pasar_minusculas_fin:
	move	$v0, $a0
	jr		$ra



#######################################################
# prod_vector_int: Multiplica un vector de enteros por un entero
# ARGS:
#	$a0 - Coordenada X del vector
#	$a1 - Coordenada Y del vector
#	$a2 - Escalar por el que multiplicar el vector
# RETURN:
#	$v0 - Coordenada X del nuevo vector
#	$v1 - Coordenada Y del nuevo vector
prod_vector_int:
	mul		$v0, $a0, $a2	 # Vx * c
	mul		$v1, $a1, $a2	 # Vy * c
	jr		$ra

#######################################################
# suma_vector: Suma dos vectores de enteros
# ARGS:
#	$a0 - Coordenada X del vector 1
#	$a1 - Coordenada Y del vector 1
#	$a2 - Coordenada X del vector 2
#	$a3 - Coordenada Y del vector 2
# RETURN:
#	$v0 - Coordenada X del nuevo vector
#	$v1 - Coordenada Y del nuevo vector
suma_vector:
	add		$v0, $a0, $a2	 # a.x + b.x
	add		$v1, $a1, $a3	 # a.y + b.y
	jr		$ra



#######################################################
# we_are_the_champions: Te hace sentir mejor
we_are_the_champions: 

	li		$v0, 39
	syscall
	
	bnez		$a0, champion_izquierda
		la		$a0, msg_ganador_derecha
		j		champion_ok
	champion_izquierda:
		la		$a0, msg_ganador_izquierda
	champion_ok:
	li		$v0, 4
	syscall
	
	la		$a0, msg_ganador
	li		$v0, 4
	syscall

	li 	$a0, 65		#fa
	li	$a1, 1050	#duracion
	li	$a2, 24		#instrument
	li	$a3, 127		#volume
	li	$v0, 33
	syscall
	li 	$a0, 64		#mi
	li	$a1, 350		#duracion
	li	$a2, 24		#instrument
	li	$a3, 127		#volume
	li	$v0, 33
	syscall
	li 	$a0, 65		#fa
	li	$a1, 350		#duracion
	li	$a2, 24		#instrument
	li	$a3, 127		#volume
	li	$v0, 33
	syscall	
	li 	$a0, 64		#mi
	li	$a1, 700		#duracion
	li	$a2, 24		#instrument
	li	$a3, 127		#volume
	li	$v0, 33
	syscall
	li 	$a0, 60		#do
	li	$a1, 850		#duracion
	li	$a2, 24		#instrument
	li	$a3, 127		#volume
	li	$v0, 33
	syscall
	li 	$a0, 57		#la
	li	$a1, 350		#duracion
	li	$a2, 24		#instrument
	li	$a3, 127		#volume
	li	$v0, 33
	syscall	
	li 	$a0, 62		#re
	li	$a1, 850		#duracion
	li	$a2, 24		#instrument
	li	$a3, 127		#volume
	li	$v0, 33
	syscall
	li 	$a0, 57		#la
	li	$a1, 850		#duracion
	li	$a2, 24		#instrument
	li	$a3, 127		#volume
	li	$v0, 33
	syscall
	li 	$a0, 55		#sol
	li	$a1, 850		#duracion
	li	$a2, 24		#instrument
	li	$a3, 127		#volume
	li	$v0, 33
	syscall	
	li 	$a0, 57		#la
	li	$a1, 850		#duracion
	li	$a2, 24		#instrument
	li	$a3, 127		#volume
	li	$v0, 33
	syscall
	li 	$a0, 57		#la
	li	$a1, 350		#duracion
	li	$a2, 24		#instrument
	li	$a3, 127		#volume
	li	$v0, 33
	syscall	 
	li 	$a0, 65		#fa
	li	$a1, 1050	#duracion
	li	$a2, 24		#instrument
	li	$a3, 127		#volume
	li	$v0, 33
	syscall	
	li 	$a0, 67		#sol
	li	$a1, 350		#duracion
	li	$a2, 24		#instrument
	li	$a3, 127		#volume
	li	$v0, 33
	syscall	
	li 	$a0, 69		#la
	li	$a1, 350		#duracion
	li	$a2, 24		#instrument
	li	$a3, 127		#volume
	li	$v0, 33
	syscall	
	li 	$a0, 72		#do
	li	$a1, 1050	#duracion
	li	$a2, 24		#instrument
	li	$a3, 100		#volume
	li	$v0, 33
	syscall	
	li 	$a0, 67		#sol
	li	$a1, 350		#duracion
	li	$a2, 24		#instrument
	li	$a3, 80		#volume
	li	$v0, 33
	syscall	
	li 	$a0, 69		#la
	li	$a1, 350		#duracion
	li	$a2, 24		#instrument
	li	$a3, 43		#volume
	li	$v0, 33
	syscall 
	li 	$a0, 67		#sol
	li	$a1, 1050	#duracion
	li	$a2, 24		#instrument
	li	$a3, 25		#volume
	li	$v0, 33
	syscall 
	
	j 	main




















####################################################################################################################
##	MOVIDAS PARA PINTAR EL CAMPO
####################################################################################################################


#######################################################
# calcula_coordenada_cabecera: Calcula la direccion de memoria correspondiente a la coordenada especificada de
# la cabecera del buffer
# ARGS:
#	$a0 - Coordenada X
#	$a1 - Coordenada Y
# RETURN:
#	$v0 - Direccion de memoria que corresponde con las coordenadas X, Y
calcular_coordenada_cabecera:
	lw		$t0, ancho_dibujo
	lw		$t1, tablero
	
	addi		$t2, $t0, 1		# t2 = ancho_dibujo + 1
	
	mul		$t2, $t2, $a1		# t2 = ancho_dibujo * Y
	add		$t2, $t2, $a0		# t2 += X
	
	add		$v0, $t1, $t2		# t2 += tablero
	jr		$ra


#######################################################
# pintar_numero: Pinta el n�mero especificado en la posicion dada.
# ARGS:
#	$a0 - El n�mero que queremos pintar
#	$a1 - La posicion (1, 2, 3, 4) donde pintar
pintar_numero:
	addi		$sp, $sp, -12
	sw		$ra, 0($sp)
	sw		$s1, 4($sp)
	sw		$s2, 8($sp)
	# APILA #
	
	# Cargamos la direccion inicial del numero que queremos pintar.
	addi		$sp, $sp, -40
	la		$t0, num_0
	sw		$t0, 0($sp)
	la		$t0, num_1
	sw		$t0, 4($sp)
	la		$t0, num_2
	sw		$t0, 8($sp)
	la		$t0, num_3
	sw		$t0, 12($sp)
	la		$t0, num_4
	sw		$t0, 16($sp)
	la		$t0, num_5
	sw		$t0, 20($sp)
	la		$t0, num_6
	sw		$t0, 24($sp)
	la		$t0, num_7
	sw		$t0, 28($sp)
	la		$t0, num_8
	sw		$t0, 32($sp)
	la		$t0, num_9
	sw		$t0, 36($sp)
	
	mul		$t0, $a0, 4
	add		$t0, $t0, $sp
	lw		$s0, 0($t0)

	addi		$sp, $sp, 40
	
	# Localizamos la coordenada X del byte inicial
	beq		$a1, 1, pintar_numero_posicion_1
	beq		$a1, 2, pintar_numero_posicion_2
	beq		$a1, 3, pintar_numero_posicion_3
	beq		$a1, 4, pintar_numero_posicion_4
	
	pintar_numero_posicion_1:
		li		$s1, 1
		j		pintar_numero_seguir
	pintar_numero_posicion_2:
		li		$s1, 5
		j		pintar_numero_seguir
	pintar_numero_posicion_3:
		lw		$t0, ancho_dibujo
		sub		$s1, $t0, 8
		j		pintar_numero_seguir
	pintar_numero_posicion_4:
		lw		$t0, ancho_dibujo
		sub		$s1, $t0, 4
		j		pintar_numero_seguir
	pintar_numero_seguir:	# X = s1	 Y = 1
	
	# Comenzamos a pintar el n�mero
	pintar_tablero_inicio_bucle:
	lb		$t0, 0($s0)
	beqz		$t0, pintar_numero_fin
		subi		$t0, $t0, 1
		div		$a1, $t0, 3		# a1 = posicion div 3
		mul		$t1, $a1, 3
		addi		$a1, $a1, 1		# a1++ <-- Y
		sub		$t0, $t0, $t1		# t0 = posicion mod 3 = offsetX
		add		$a0, $s1, $t0		# a0 = offsetX + X
		jal		calcular_coordenada_cabecera
		lb		$t0, tablero_numero
		sb		$t0, 0($v0)
		add		$s0, $s0, 1		# index++
		j		pintar_tablero_inicio_bucle
	
	pintar_numero_fin:
	# DESAPILA #
	lw		$ra, 0($sp)
	lw		$s1, 4($sp)
	lw		$s2, 8($sp)
	addi		$sp, $sp, 12
	jr		$ra

#######################################################
# pintar_numero: Actualiza los marcadores en el buffer
actualizar_marcadores:
	addi		$sp, $sp, -4
	sw		$ra, 0($sp)

	# Limpiamos las 7 primeras lineas del tablero
	lw		$t0, tablero
	lb		$t2, msg_espacio
	lb		$t3, msg_cr
	lw		$t4, ancho_dibujo
	addi		$t1, $t4, 1
	mul		$t1, $t1, 6 
	
	li		$t5, 0
	actualizar_marcadores_iniciar_tablero_bucle1:
		beq		$t5, $t1, actualizar_marcadores_iniciar_tablero_bucle2_1	# llegamos al final de la memoria
		add		$t6, $t0, $t5
		sb			$t2, 0($t6)
		addi		$t5, $t5, 1
		j		actualizar_marcadores_iniciar_tablero_bucle1
	
	actualizar_marcadores_iniciar_tablero_bucle2_1:

	li		$t5, 0
	actualizar_marcadores_iniciar_tablero_bucle2:		# Introducimos los retornos de carro
		bge		$t5, $t1, actualizar_marcadores_iniciar_tablero_fin
		add		$t5, $t5, $t4					# i += (radio*2)
		add		$t6, $t0, $t5
		sb		$t3, 0($t6)
		addi		$t5, $t5, 1					# i++
		j		actualizar_marcadores_iniciar_tablero_bucle2	
	
	actualizar_marcadores_iniciar_tablero_fin:


	# 1
	lw		$t0, puntuacion_jugador_izquierdo
	div		$a0, $t0, 10
	li		$a1, 1
	jal		pintar_numero
	# 2
	lw		$t0, puntuacion_jugador_izquierdo
	div		$t1, $t0, 10
	mul		$t1, $t1, 10
	sub		$a0, $t0, $t1
	li		$a1, 2
	jal		pintar_numero
	# 3
	lw		$t0, puntuacion_jugador_derecho
	div		$a0, $t0, 10
	li		$a1, 3
	jal		pintar_numero
	# 4
	lw		$t0, puntuacion_jugador_derecho
	div		$t1, $t0, 10
	mul		$t1, $t1, 10
	sub		$a0, $t0, $t1
	li		$a1, 4
	jal		pintar_numero
	
	lw		$ra, 0($sp)
	addi		$sp, $sp, 4
	jr		$ra
	

#######################################################
# iniciar_tablero: Rellena todas las casillas del tablero y pone retornos de carro al final de cada l�nea
iniciar_tablero:
	addi		$sp, $sp, -24
	sw		$ra, 0($sp)
	sw		$s0, 4($sp)
	sw		$s1, 8($sp)
	sw		$s2, 12($sp)
	sw		$s3, 16($sp)
	sw		$s4, 20($sp)
	

	lw		$t0, tablero
	lw		$t1, tablero_size
	lb		$t2, tablero_pared
	lb		$t3, msg_cr
	lw		$t4, ancho_dibujo

	# Rellenamos el campo con #
	li		$t5, 0
	iniciar_tablero_bucle1:
		beq		$t5, $t1, iniciar_tablero_bucle1_fin	# llegamos al final de la memoria
		add		$t6, $t0, $t5
		sb		$t2, 0($t6)
		addi		$t5, $t5, 1
		j		iniciar_tablero_bucle1
	iniciar_tablero_bucle1_fin:
	add		$t6, $t0, $t5
	sb			$0, 0($t6)			# Ponemos 0x00 al final
	
	
	# Introducimos los retornos de carro
	li		$t5, 0
	iniciar_tablero_bucle2:						
		bge		$t5, $t1, iniciar_tablero_bucle2_fin
		add		$t5, $t5, $t4					# i += tablero_ancho
		add		$t6, $t0, $t5
		sb		$t3, 0($t6)
		addi		$t5, $t5, 1					# i++
		j		iniciar_tablero_bucle2
	iniciar_tablero_bucle2_fin:
	# Dibujamos los marcadores
	jal		actualizar_marcadores
	
	
	
	# Dibujamos el hueco del campo de juego
	lw		$s2, ancho_dibujo
	addi		$s2, $s2, -1		# ancho -1
	lw		$s3, alto_dibujo
	#addi		$s2, $s2, 0		# ancho 
	lb		$s4, msg_espacio
	li		$s0, 0			# i = 0
	iniciar_tablero_hueco_i:
	beq		$s0, $s3, iniciar_tablero_hueco_i_fin			# i = alto ?
	
		li		$s1, 1	# j = 1
		iniciar_tablero_hueco_j:
			beq		$s1, $s2, iniciar_tablero_hueco_j_fin	# j = ancho-1?
			
			move	$a0, $s1
			move	$a1, $s0
			jal		calcular_coordenada
			sb		$s4, 0($v0)
			
			addi		$s1, $s1, 1	# j++
			j		iniciar_tablero_hueco_j			
		iniciar_tablero_hueco_j_fin:
		
		addi		$s0, $s0, 1	# i++
		j		iniciar_tablero_hueco_i
	iniciar_tablero_hueco_i_fin:



	lw		$ra, 0($sp)
	lw		$s0, 4($sp)
	lw		$s1, 8($sp)
	lw		$s2, 12($sp)
	lw		$s3, 16($sp)
	lw		$s4, 20($sp)
	addi		$sp, $sp, 24	
	jr		$ra
	

#######################################################
# calcula_coordenada: Calcula la direccion de memoria correspondiente a la coordenada especificada del tablero
# ARGS:
#	$a0 - Coordenada X
#	$a1 - Coordenada Y
# RETURN:
#	$v0 - Direccion de memoria que corresponde con las coordenadas X, Y
calcular_coordenada:
	lw		$t0, ancho_dibujo
	lw		$t1, tablero
	
	addi		$t0, $t0, 1		# ancho_dibujo + 1
	mul		$t2, $t0, 7
	add		$t1, $t1, $t2		# Situamos el punto inicial 7 lineas mas abajo de tablero
	
	mul		$t0, $t0, $a1		# t2 = (ancho_dibujo+1) * Y
	add		$t0, $t0, $a0		# t2 += X
	add		$v0, $t1, $t0		# t2 += tablero
	jr		$ra


dibujar_campo:
	addi		$sp, $sp, -28
	sw		$ra, 0($sp)
	sw		$s0, 4($sp)
	sw		$s1, 8($sp)
	sw		$s2, 12($sp)
	sw		$s3, 16($sp)
	sw		$s4, 20($sp)
	sw		$s5, 24($sp)

	li		$v0, 39						# syscall clear_screen
	syscall

	lwc1		$f0, proporcion_x
	lwc1		$f1, proporcion_y
	lw		$s0, ancho_dibujo
	lw		$s1, alto_dibujo	

	#	PINTAR
	# 	PALA IZQUIERDA
	#
	lwc1		$f1, proporcion_y
	lwc1		$f2, posicion_jugador_izquierdo_y
	cvt.s.w	$f2, $f2		# (float) posicion_jugador_izquierdo_y
	div.s		$f2, $f2, $f1	# (float) posicion_jugador_izquierdo_y / escala_y
	cvt.w.s	$f2, $f2		# (int) ((float) posicion_jugador_izquierdo_y * escala_y)
	mfc1		$a1, $f2		# a1: jug_izq_y
	li		$a0, 1		# a0: jug_izq_x
	
	# Correccion superposicion inferior
	lw		$t5, longitud_pala
	sub		$t1, $s1, $t5
	blt		$a1, $t1, pala_izq_inferior_ok
		move	$a1, $t1
	pala_izq_inferior_ok:
	
	# Pintar parte superior
	jal		calcular_coordenada
	lb		$t0, tablero_pala_izq
	move	$s3, $v0
	sb		$t0, 0($s3)	
	# Pintado del la parte inferiores de la pala
	lw		$t1, longitud_pala
	li		$t2, 0
	addi		$t3, $s0, 1
	pintar_pala_izq_bucle:
	addi		$t2, $t2, 1
	beq		$t1, $t2, pintar_pala_izq_bucle_fin
		mul		$t4, $t2, $t3
		add		$t4, $s3, $t4
		sb		$t0, 0($t4)
	j		pintar_pala_izq_bucle
	pintar_pala_izq_bucle_fin:

	#	PINTAR
	# 	PALA DERECHA
	#
	lwc1		$f1, proporcion_y
	lwc1		$f2, posicion_jugador_derecho_y
	cvt.s.w	$f2, $f2		# (float) posicion_jugador_derecho_y
	div.s		$f2, $f2, $f1	# (float) posicion_jugador_derecho_y / escala_y
	cvt.w.s	$f2, $f2		# (int) ((float) posicion_jugador_derecho_y * escala_y)
	mfc1		$a1, $f2		# a1: jug_der_y
	sub		$a0, $s0, 2	# a0: jug_der_x
	
	# Correccion superposicion inferior
	lw		$t5, longitud_pala
	sub 		$t1, $s1, $t5
	blt		$a1, $t1, pala_der_inferior_ok
		move	$a1, $t1
	pala_der_inferior_ok:
	
	# Pintar parte superior
	jal		calcular_coordenada
	lb		$t0, tablero_pala_der
	move	$s4, $v0
	sb		$t0, 0($s4)
	
	lw		$t1, longitud_pala
	li		$t2, 0
	addi		$t3, $s0, 1
	pintar_pala_der_bucle:
	addi		$t2, $t2, 1
	beq		$t1, $t2, pintar_pala_der_bucle_fin
		mul		$t4, $t2, $t3
		add		$t4, $s4, $t4
		sb		$t0, 0($t4)
	j		pintar_pala_der_bucle
	pintar_pala_der_bucle_fin:
	
	
	#	PINTAR
	#	PELOTA
	#
	lwc1		$f2, posicion_pelota_x
	cvt.s.w	$f2, $f2		# (float) posicion_pelota_x
	div.s		$f2, $f2, $f0	# (float) posicion_pelota_x / escala_x
	cvt.w.s	$f2, $f2		# (int) ((float) posicion_pelota_x * escala_x)
	mfc1		$a0, $f2		# a0: pelota_x

	lwc1		$f2, posicion_pelota_y
	cvt.s.w	$f2, $f2		# (float) posicion_pelota_y
	div.s		$f2, $f2, $f1	# (float) posicion_pelota_y / escala_y
	cvt.w.s	$f2, $f2		# (int) ((float) posicion_pelota_y * escala_y)
	mfc1		$a1, $f2		# a1: pelota_y
	
	# Corrige que la pelota se superponga con los bordes
	correccion_x_izquierda:
		bgtz		$a0, correccion_x_derecha
		addi		$a0, $a0, 1
	correccion_x_derecha:
		sub		$t0, $s0, 1
		blt		$a0, $t0, correccion_x_completa
		addi		$a0, $a0, -1
	correccion_x_completa:
	jal		calcular_coordenada
	lb		$t0, tablero_pelota
	move	$s2, $v0
	sb		$t0, 0($s2)




	# Imprime el Buffer
	lw		$a0, tablero
	li		$v0, 4
	syscall
	
	# Borramos la pelota y las palas, aprovechando que conocemos sus posiciones en memoria
	lb		$t0, msg_espacio
	sb		$t0, 0($s2)
	sb		$t0, 0($s3)
	sb		$t0, 0($s4)
	
	# Borrar pala izquierda
	lw		$t1, longitud_pala
	li		$t2, 0
	addi		$t3, $s0, 1
	borrar_pala_izq_bucle:
	addi		$t2, $t2, 1
	beq		$t1, $t2, borrar_pala_izq_bucle_fin
		mul		$t4, $t2, $t3
		add		$t4, $s3, $t4
		sb		$t0, 0($t4)
	j		borrar_pala_izq_bucle
	borrar_pala_izq_bucle_fin:
	
	# Borrar pala derecha
	lw		$t1, longitud_pala
	li		$t2, 0
	addi		$t3, $s0, 1
	borrar_pala_der_bucle:
	addi		$t2, $t2, 1
	beq		$t1, $t2, borrar_pala_der_bucle_fin
		mul		$t4, $t2, $t3
		add		$t4, $s4, $t4
		sb		$t0, 0($t4)
	j		borrar_pala_der_bucle
	borrar_pala_der_bucle_fin:
	
	lw		$ra, 0($sp)
	lw		$s0, 4($sp)
	lw		$s1, 8($sp)
	lw		$s2, 12($sp)
	lw		$s3, 16($sp)
	lw		$s4, 20($sp)
	lw		$s5, 24($sp)
	addi		$sp, $sp, 28
	jr		$ra
