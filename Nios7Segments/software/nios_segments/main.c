//Добавляем стандартные библиотеки
#include "io.h"
#include "alt_types.h"
#include "system.h"
#include <stdio.h>
//Описание функции считывания значений переключателей

int main(){
	int num = 1996;
	IOWR(SEGM_BASE,0, num);
	//ор и сдвиг
}
