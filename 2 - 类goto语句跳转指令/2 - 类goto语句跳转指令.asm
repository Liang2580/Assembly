; 2 - ��goto�����תָ��
; ���� ����Ҫ�� 2000H��1000H���￪ʼ��д 0123456789ABCDEF ��Щ�ֽ������ݣ�Ӧ����ô����

;Ҫִ����ͬ��ָ��ִ��16��

;�����CPU���ϵ�ִ����3��ָ�
;	����ʹ��jmp
;	����ʹ��һ��������C�����е�goto���, ͨ�����ߵĽ���������

assume cs:codesg		; ��cs�Ĵ�����codesg��������

codesg segment
		mov ax, 2000H
		mov ds, ax

		mov bx, 1000H
		mov dl, 0

setNumber:	mov ds:[bx], dl
		inc dl		; inc����������������� ++
		inc bx
	
		jmp setNumber	; ��ţ��ڴ��ַ����ʶjmp

		mov ax, 4C00H
		int 21H
codesg ends

end
	
	
