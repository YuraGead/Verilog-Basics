//��������� ����������� ����������
#include "io.h"
#include "alt_types.h"
#include "system.h"
#include <stdio.h>
//�������� ������� ���������� �������� ��������������

int main(){
	int num = 1996;
	IOWR(SEGM_BASE,0, num);
	//�� � �����
}
