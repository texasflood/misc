
samgcc.o:     file format elf64-x86-64


Disassembly of section .interp:

0000000000400200 <.interp>:
  400200:	2f                   	(bad)  
  400201:	6c                   	insb   (%dx),%es:(%rdi)
  400202:	69 62 36 34 2f 6c 64 	imul   $0x646c2f34,0x36(%rdx),%esp
  400209:	2d 6c 69 6e 75       	sub    $0x756e696c,%eax
  40020e:	78 2d                	js     40023d <_init-0x1b3>
  400210:	78 38                	js     40024a <_init-0x1a6>
  400212:	36                   	ss
  400213:	2d 36 34 2e 73       	sub    $0x732e3436,%eax
  400218:	6f                   	outsl  %ds:(%rsi),(%dx)
  400219:	2e 32 00             	xor    %cs:(%rax),%al

Disassembly of section .note.ABI-tag:

000000000040021c <.note.ABI-tag>:
  40021c:	04 00                	add    $0x0,%al
  40021e:	00 00                	add    %al,(%rax)
  400220:	10 00                	adc    %al,(%rax)
  400222:	00 00                	add    %al,(%rax)
  400224:	01 00                	add    %eax,(%rax)
  400226:	00 00                	add    %al,(%rax)
  400228:	47                   	rex.RXB
  400229:	4e 55                	rex.WRX push %rbp
  40022b:	00 00                	add    %al,(%rax)
  40022d:	00 00                	add    %al,(%rax)
  40022f:	00 02                	add    %al,(%rdx)
  400231:	00 00                	add    %al,(%rax)
  400233:	00 06                	add    %al,(%rsi)
  400235:	00 00                	add    %al,(%rax)
  400237:	00 1a                	add    %bl,(%rdx)
  400239:	00 00                	add    %al,(%rax)
	...

Disassembly of section .note.gnu.build-id:

000000000040023c <.note.gnu.build-id>:
  40023c:	04 00                	add    $0x0,%al
  40023e:	00 00                	add    %al,(%rax)
  400240:	14 00                	adc    $0x0,%al
  400242:	00 00                	add    %al,(%rax)
  400244:	03 00                	add    (%rax),%eax
  400246:	00 00                	add    %al,(%rax)
  400248:	47                   	rex.RXB
  400249:	4e 55                	rex.WRX push %rbp
  40024b:	00 b5 51 13 dc 00    	add    %dh,0xdc1351(%rbp)
  400251:	94                   	xchg   %eax,%esp
  400252:	4b 91                	rex.WXB xchg %rax,%r9
  400254:	07                   	(bad)  
  400255:	e4 21                	in     $0x21,%al
  400257:	2f                   	(bad)  
  400258:	67 28 40 67          	sub    %al,0x67(%eax)
  40025c:	f7                   	.byte 0xf7
  40025d:	c1                   	(bad)  
  40025e:	f2 a5                	repnz movsl %ds:(%rsi),%es:(%rdi)

Disassembly of section .hash:

0000000000400260 <.hash>:
  400260:	03 00                	add    (%rax),%eax
  400262:	00 00                	add    %al,(%rax)
  400264:	05 00 00 00 04       	add    $0x4000000,%eax
  400269:	00 00                	add    %al,(%rax)
  40026b:	00 03                	add    %al,(%rbx)
  40026d:	00 00                	add    %al,(%rax)
  40026f:	00 02                	add    %al,(%rdx)
	...
  40027d:	00 00                	add    %al,(%rax)
  40027f:	00 01                	add    %al,(%rcx)
  400281:	00 00                	add    %al,(%rax)
  400283:	00 00                	add    %al,(%rax)
  400285:	00 00                	add    %al,(%rax)
	...

Disassembly of section .gnu.hash:

0000000000400288 <.gnu.hash>:
  400288:	01 00                	add    %eax,(%rax)
  40028a:	00 00                	add    %al,(%rax)
  40028c:	01 00                	add    %eax,(%rax)
  40028e:	00 00                	add    %al,(%rax)
  400290:	01 00                	add    %eax,(%rax)
	...

Disassembly of section .dynsym:

00000000004002a8 <.dynsym>:
	...
  4002c0:	1a 00                	sbb    (%rax),%al
  4002c2:	00 00                	add    %al,(%rax)
  4002c4:	12 00                	adc    (%rax),%al
	...
  4002d6:	00 00                	add    %al,(%rax)
  4002d8:	1f                   	(bad)  
  4002d9:	00 00                	add    %al,(%rax)
  4002db:	00 12                	add    %dl,(%rdx)
	...
  4002ed:	00 00                	add    %al,(%rax)
  4002ef:	00 26                	add    %ah,(%rsi)
  4002f1:	00 00                	add    %al,(%rax)
  4002f3:	00 12                	add    %dl,(%rdx)
	...
  400305:	00 00                	add    %al,(%rax)
  400307:	00 01                	add    %al,(%rcx)
  400309:	00 00                	add    %al,(%rax)
  40030b:	00 20                	add    %ah,(%rax)
	...

Disassembly of section .dynstr:

0000000000400320 <.dynstr>:
  400320:	00 5f 5f             	add    %bl,0x5f(%rdi)
  400323:	67 6d                	insl   (%dx),%es:(%edi)
  400325:	6f                   	outsl  %ds:(%rsi),(%dx)
  400326:	6e                   	outsb  %ds:(%rsi),(%dx)
  400327:	5f                   	pop    %rdi
  400328:	73 74                	jae    40039e <_init-0x52>
  40032a:	61                   	(bad)  
  40032b:	72 74                	jb     4003a1 <_init-0x4f>
  40032d:	5f                   	pop    %rdi
  40032e:	5f                   	pop    %rdi
  40032f:	00 6c 69 62          	add    %ch,0x62(%rcx,%rbp,2)
  400333:	63 2e                	movslq (%rsi),%ebp
  400335:	73 6f                	jae    4003a6 <_init-0x4a>
  400337:	2e 36 00 70 75       	cs add %dh,%cs:%ss:0x75(%rax)
  40033c:	74 73                	je     4003b1 <_init-0x3f>
  40033e:	00 70 72             	add    %dh,0x72(%rax)
  400341:	69 6e 74 66 00 5f 5f 	imul   $0x5f5f0066,0x74(%rsi),%ebp
  400348:	6c                   	insb   (%dx),%es:(%rdi)
  400349:	69 62 63 5f 73 74 61 	imul   $0x6174735f,0x63(%rdx),%esp
  400350:	72 74                	jb     4003c6 <_init-0x2a>
  400352:	5f                   	pop    %rdi
  400353:	6d                   	insl   (%dx),%es:(%rdi)
  400354:	61                   	(bad)  
  400355:	69 6e 00 47 4c 49 42 	imul   $0x42494c47,0x0(%rsi),%ebp
  40035c:	43 5f                	rex.XB pop %r15
  40035e:	32 2e                	xor    (%rsi),%ch
  400360:	32 2e                	xor    (%rsi),%ch
  400362:	35                   	.byte 0x35
	...

Disassembly of section .gnu.version:

0000000000400364 <.gnu.version>:
  400364:	00 00                	add    %al,(%rax)
  400366:	02 00                	add    (%rax),%al
  400368:	02 00                	add    (%rax),%al
  40036a:	02 00                	add    (%rax),%al
	...

Disassembly of section .gnu.version_r:

0000000000400370 <.gnu.version_r>:
  400370:	01 00                	add    %eax,(%rax)
  400372:	01 00                	add    %eax,(%rax)
  400374:	10 00                	adc    %al,(%rax)
  400376:	00 00                	add    %al,(%rax)
  400378:	10 00                	adc    %al,(%rax)
  40037a:	00 00                	add    %al,(%rax)
  40037c:	00 00                	add    %al,(%rax)
  40037e:	00 00                	add    %al,(%rax)
  400380:	75 1a                	jne    40039c <_init-0x54>
  400382:	69 09 00 00 02 00    	imul   $0x20000,(%rcx),%ecx
  400388:	38 00                	cmp    %al,(%rax)
  40038a:	00 00                	add    %al,(%rax)
  40038c:	00 00                	add    %al,(%rax)
	...

Disassembly of section .rela.dyn:

0000000000400390 <.rela.dyn>:
  400390:	98                   	cwtl   
  400391:	09 60 00             	or     %esp,0x0(%rax)
  400394:	00 00                	add    %al,(%rax)
  400396:	00 00                	add    %al,(%rax)
  400398:	06                   	(bad)  
  400399:	00 00                	add    %al,(%rax)
  40039b:	00 04 00             	add    %al,(%rax,%rax,1)
	...

Disassembly of section .rela.plt:

00000000004003a8 <.rela.plt>:
  4003a8:	b8 09 60 00 00       	mov    $0x6009,%eax
  4003ad:	00 00                	add    %al,(%rax)
  4003af:	00 07                	add    %al,(%rdi)
  4003b1:	00 00                	add    %al,(%rax)
  4003b3:	00 01                	add    %al,(%rcx)
	...
  4003bd:	00 00                	add    %al,(%rax)
  4003bf:	00 c0                	add    %al,%al
  4003c1:	09 60 00             	or     %esp,0x0(%rax)
  4003c4:	00 00                	add    %al,(%rax)
  4003c6:	00 00                	add    %al,(%rax)
  4003c8:	07                   	(bad)  
  4003c9:	00 00                	add    %al,(%rax)
  4003cb:	00 02                	add    %al,(%rdx)
	...
  4003d5:	00 00                	add    %al,(%rax)
  4003d7:	00 c8                	add    %cl,%al
  4003d9:	09 60 00             	or     %esp,0x0(%rax)
  4003dc:	00 00                	add    %al,(%rax)
  4003de:	00 00                	add    %al,(%rax)
  4003e0:	07                   	(bad)  
  4003e1:	00 00                	add    %al,(%rax)
  4003e3:	00 03                	add    %al,(%rbx)
	...

Disassembly of section .init:

00000000004003f0 <_init>:
  4003f0:	48 83 ec 08          	sub    $0x8,%rsp
  4003f4:	e8 73 00 00 00       	callq  40046c <call_gmon_start>
  4003f9:	48 83 c4 08          	add    $0x8,%rsp
  4003fd:	c3                   	retq   

Disassembly of section .plt:

0000000000400400 <puts@plt-0x10>:
  400400:	ff 35 a2 05 20 00    	pushq  0x2005a2(%rip)        # 6009a8 <_GLOBAL_OFFSET_TABLE_+0x8>
  400406:	ff 25 a4 05 20 00    	jmpq   *0x2005a4(%rip)        # 6009b0 <_GLOBAL_OFFSET_TABLE_+0x10>
  40040c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400410 <puts@plt>:
  400410:	ff 25 a2 05 20 00    	jmpq   *0x2005a2(%rip)        # 6009b8 <_GLOBAL_OFFSET_TABLE_+0x18>
  400416:	68 00 00 00 00       	pushq  $0x0
  40041b:	e9 e0 ff ff ff       	jmpq   400400 <_init+0x10>

0000000000400420 <printf@plt>:
  400420:	ff 25 9a 05 20 00    	jmpq   *0x20059a(%rip)        # 6009c0 <_GLOBAL_OFFSET_TABLE_+0x20>
  400426:	68 01 00 00 00       	pushq  $0x1
  40042b:	e9 d0 ff ff ff       	jmpq   400400 <_init+0x10>

0000000000400430 <__libc_start_main@plt>:
  400430:	ff 25 92 05 20 00    	jmpq   *0x200592(%rip)        # 6009c8 <_GLOBAL_OFFSET_TABLE_+0x28>
  400436:	68 02 00 00 00       	pushq  $0x2
  40043b:	e9 c0 ff ff ff       	jmpq   400400 <_init+0x10>

Disassembly of section .text:

0000000000400440 <_start>:
  400440:	31 ed                	xor    %ebp,%ebp
  400442:	49 89 d1             	mov    %rdx,%r9
  400445:	5e                   	pop    %rsi
  400446:	48 89 e2             	mov    %rsp,%rdx
  400449:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40044d:	50                   	push   %rax
  40044e:	54                   	push   %rsp
  40044f:	49 c7 c0 c0 05 40 00 	mov    $0x4005c0,%r8
  400456:	48 c7 c1 d0 05 40 00 	mov    $0x4005d0,%rcx
  40045d:	48 c7 c7 4c 05 40 00 	mov    $0x40054c,%rdi
  400464:	e8 c7 ff ff ff       	callq  400430 <__libc_start_main@plt>
  400469:	f4                   	hlt    
  40046a:	90                   	nop
  40046b:	90                   	nop

000000000040046c <call_gmon_start>:
  40046c:	48 83 ec 08          	sub    $0x8,%rsp
  400470:	48 8b 05 21 05 20 00 	mov    0x200521(%rip),%rax        # 600998 <_DYNAMIC+0x1e0>
  400477:	48 85 c0             	test   %rax,%rax
  40047a:	74 02                	je     40047e <call_gmon_start+0x12>
  40047c:	ff d0                	callq  *%rax
  40047e:	48 83 c4 08          	add    $0x8,%rsp
  400482:	c3                   	retq   
  400483:	90                   	nop
  400484:	90                   	nop
  400485:	90                   	nop
  400486:	90                   	nop
  400487:	90                   	nop
  400488:	90                   	nop
  400489:	90                   	nop
  40048a:	90                   	nop
  40048b:	90                   	nop
  40048c:	90                   	nop
  40048d:	90                   	nop
  40048e:	90                   	nop
  40048f:	90                   	nop

0000000000400490 <deregister_tm_clones>:
  400490:	b8 e7 09 60 00       	mov    $0x6009e7,%eax
  400495:	55                   	push   %rbp
  400496:	48 2d e0 09 60 00    	sub    $0x6009e0,%rax
  40049c:	48 83 f8 0e          	cmp    $0xe,%rax
  4004a0:	48 89 e5             	mov    %rsp,%rbp
  4004a3:	77 02                	ja     4004a7 <deregister_tm_clones+0x17>
  4004a5:	5d                   	pop    %rbp
  4004a6:	c3                   	retq   
  4004a7:	b8 00 00 00 00       	mov    $0x0,%eax
  4004ac:	48 85 c0             	test   %rax,%rax
  4004af:	74 f4                	je     4004a5 <deregister_tm_clones+0x15>
  4004b1:	5d                   	pop    %rbp
  4004b2:	bf e0 09 60 00       	mov    $0x6009e0,%edi
  4004b7:	ff e0                	jmpq   *%rax
  4004b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004004c0 <register_tm_clones>:
  4004c0:	b8 e0 09 60 00       	mov    $0x6009e0,%eax
  4004c5:	55                   	push   %rbp
  4004c6:	48 2d e0 09 60 00    	sub    $0x6009e0,%rax
  4004cc:	48 c1 f8 03          	sar    $0x3,%rax
  4004d0:	48 89 e5             	mov    %rsp,%rbp
  4004d3:	48 89 c2             	mov    %rax,%rdx
  4004d6:	48 c1 ea 3f          	shr    $0x3f,%rdx
  4004da:	48 01 d0             	add    %rdx,%rax
  4004dd:	48 89 c6             	mov    %rax,%rsi
  4004e0:	48 d1 fe             	sar    %rsi
  4004e3:	75 02                	jne    4004e7 <register_tm_clones+0x27>
  4004e5:	5d                   	pop    %rbp
  4004e6:	c3                   	retq   
  4004e7:	ba 00 00 00 00       	mov    $0x0,%edx
  4004ec:	48 85 d2             	test   %rdx,%rdx
  4004ef:	74 f4                	je     4004e5 <register_tm_clones+0x25>
  4004f1:	5d                   	pop    %rbp
  4004f2:	bf e0 09 60 00       	mov    $0x6009e0,%edi
  4004f7:	ff e2                	jmpq   *%rdx
  4004f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400500 <__do_global_dtors_aux>:
  400500:	80 3d d9 04 20 00 00 	cmpb   $0x0,0x2004d9(%rip)        # 6009e0 <__bss_start>
  400507:	75 11                	jne    40051a <__do_global_dtors_aux+0x1a>
  400509:	55                   	push   %rbp
  40050a:	48 89 e5             	mov    %rsp,%rbp
  40050d:	e8 7e ff ff ff       	callq  400490 <deregister_tm_clones>
  400512:	5d                   	pop    %rbp
  400513:	c6 05 c6 04 20 00 01 	movb   $0x1,0x2004c6(%rip)        # 6009e0 <__bss_start>
  40051a:	f3 c3                	repz retq 
  40051c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400520 <frame_dummy>:
  400520:	48 83 3d 88 02 20 00 	cmpq   $0x0,0x200288(%rip)        # 6007b0 <__JCR_END__>
  400527:	00 
  400528:	74 1b                	je     400545 <frame_dummy+0x25>
  40052a:	b8 00 00 00 00       	mov    $0x0,%eax
  40052f:	48 85 c0             	test   %rax,%rax
  400532:	74 11                	je     400545 <frame_dummy+0x25>
  400534:	55                   	push   %rbp
  400535:	bf b0 07 60 00       	mov    $0x6007b0,%edi
  40053a:	48 89 e5             	mov    %rsp,%rbp
  40053d:	ff d0                	callq  *%rax
  40053f:	5d                   	pop    %rbp
  400540:	e9 7b ff ff ff       	jmpq   4004c0 <register_tm_clones>
  400545:	e9 76 ff ff ff       	jmpq   4004c0 <register_tm_clones>
  40054a:	90                   	nop
  40054b:	90                   	nop

000000000040054c <main>:
  40054c:	55                   	push   %rbp
  40054d:	48 89 e5             	mov    %rsp,%rbp
  400550:	53                   	push   %rbx
  400551:	48 83 ec 08          	sub    $0x8,%rsp
  400555:	b8 00 00 00 00       	mov    $0x0,%eax
  40055a:	e8 40 00 00 00       	callq  40059f <bar>
  40055f:	89 c3                	mov    %eax,%ebx
  400561:	b8 00 00 00 00       	mov    $0x0,%eax
  400566:	e8 1f 00 00 00       	callq  40058a <foo>
  40056b:	89 da                	mov    %ebx,%edx
  40056d:	89 c6                	mov    %eax,%esi
  40056f:	bf 6c 06 40 00       	mov    $0x40066c,%edi
  400574:	b8 00 00 00 00       	mov    $0x0,%eax
  400579:	e8 a2 fe ff ff       	callq  400420 <printf@plt>
  40057e:	b8 00 00 00 00       	mov    $0x0,%eax
  400583:	48 83 c4 08          	add    $0x8,%rsp
  400587:	5b                   	pop    %rbx
  400588:	5d                   	pop    %rbp
  400589:	c3                   	retq   

000000000040058a <foo>:
  40058a:	55                   	push   %rbp
  40058b:	48 89 e5             	mov    %rsp,%rbp
  40058e:	bf 73 06 40 00       	mov    $0x400673,%edi
  400593:	e8 78 fe ff ff       	callq  400410 <puts@plt>
  400598:	b8 00 00 00 00       	mov    $0x0,%eax
  40059d:	5d                   	pop    %rbp
  40059e:	c3                   	retq   

000000000040059f <bar>:
  40059f:	55                   	push   %rbp
  4005a0:	48 89 e5             	mov    %rsp,%rbp
  4005a3:	bf 77 06 40 00       	mov    $0x400677,%edi
  4005a8:	e8 63 fe ff ff       	callq  400410 <puts@plt>
  4005ad:	b8 01 00 00 00       	mov    $0x1,%eax
  4005b2:	5d                   	pop    %rbp
  4005b3:	c3                   	retq   
  4005b4:	90                   	nop
  4005b5:	90                   	nop
  4005b6:	90                   	nop
  4005b7:	90                   	nop
  4005b8:	90                   	nop
  4005b9:	90                   	nop
  4005ba:	90                   	nop
  4005bb:	90                   	nop
  4005bc:	90                   	nop
  4005bd:	90                   	nop
  4005be:	90                   	nop
  4005bf:	90                   	nop

00000000004005c0 <__libc_csu_fini>:
  4005c0:	f3 c3                	repz retq 
  4005c2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  4005c9:	1f 84 00 00 00 00 00 

00000000004005d0 <__libc_csu_init>:
  4005d0:	48 89 6c 24 d8       	mov    %rbp,-0x28(%rsp)
  4005d5:	4c 89 64 24 e0       	mov    %r12,-0x20(%rsp)
  4005da:	48 8d 2d c7 01 20 00 	lea    0x2001c7(%rip),%rbp        # 6007a8 <__init_array_end>
  4005e1:	4c 8d 25 b8 01 20 00 	lea    0x2001b8(%rip),%r12        # 6007a0 <__frame_dummy_init_array_entry>
  4005e8:	4c 89 6c 24 e8       	mov    %r13,-0x18(%rsp)
  4005ed:	4c 89 74 24 f0       	mov    %r14,-0x10(%rsp)
  4005f2:	4c 89 7c 24 f8       	mov    %r15,-0x8(%rsp)
  4005f7:	48 89 5c 24 d0       	mov    %rbx,-0x30(%rsp)
  4005fc:	48 83 ec 38          	sub    $0x38,%rsp
  400600:	4c 29 e5             	sub    %r12,%rbp
  400603:	41 89 fd             	mov    %edi,%r13d
  400606:	49 89 f6             	mov    %rsi,%r14
  400609:	48 c1 fd 03          	sar    $0x3,%rbp
  40060d:	49 89 d7             	mov    %rdx,%r15
  400610:	e8 db fd ff ff       	callq  4003f0 <_init>
  400615:	48 85 ed             	test   %rbp,%rbp
  400618:	74 1c                	je     400636 <__libc_csu_init+0x66>
  40061a:	31 db                	xor    %ebx,%ebx
  40061c:	0f 1f 40 00          	nopl   0x0(%rax)
  400620:	4c 89 fa             	mov    %r15,%rdx
  400623:	4c 89 f6             	mov    %r14,%rsi
  400626:	44 89 ef             	mov    %r13d,%edi
  400629:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  40062d:	48 83 c3 01          	add    $0x1,%rbx
  400631:	48 39 eb             	cmp    %rbp,%rbx
  400634:	72 ea                	jb     400620 <__libc_csu_init+0x50>
  400636:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
  40063b:	48 8b 6c 24 10       	mov    0x10(%rsp),%rbp
  400640:	4c 8b 64 24 18       	mov    0x18(%rsp),%r12
  400645:	4c 8b 6c 24 20       	mov    0x20(%rsp),%r13
  40064a:	4c 8b 74 24 28       	mov    0x28(%rsp),%r14
  40064f:	4c 8b 7c 24 30       	mov    0x30(%rsp),%r15
  400654:	48 83 c4 38          	add    $0x38,%rsp
  400658:	c3                   	retq   
  400659:	90                   	nop
  40065a:	90                   	nop
  40065b:	90                   	nop

Disassembly of section .fini:

000000000040065c <_fini>:
  40065c:	48 83 ec 08          	sub    $0x8,%rsp
  400660:	48 83 c4 08          	add    $0x8,%rsp
  400664:	c3                   	retq   

Disassembly of section .rodata:

0000000000400668 <_IO_stdin_used>:
  400668:	01 00                	add    %eax,(%rax)
  40066a:	02 00                	add    (%rax),%al
  40066c:	25 69 20 25 69       	and    $0x69252069,%eax
  400671:	0a 00                	or     (%rax),%al
  400673:	66 6f                	outsw  %ds:(%rsi),(%dx)
  400675:	6f                   	outsl  %ds:(%rsi),(%dx)
  400676:	00 62 61             	add    %ah,0x61(%rdx)
  400679:	72 00                	jb     40067b <_IO_stdin_used+0x13>

Disassembly of section .eh_frame_hdr:

000000000040067c <.eh_frame_hdr>:
  40067c:	01 1b                	add    %ebx,(%rbx)
  40067e:	03 3b                	add    (%rbx),%edi
  400680:	38 00                	cmp    %al,(%rax)
  400682:	00 00                	add    %al,(%rax)
  400684:	06                   	(bad)  
  400685:	00 00                	add    %al,(%rax)
  400687:	00 84 fd ff ff 54 00 	add    %al,0x54ffff(%rbp,%rdi,8)
  40068e:	00 00                	add    %al,(%rax)
  400690:	d0 fe                	sar    %dh
  400692:	ff                   	(bad)  
  400693:	ff                   	(bad)  
  400694:	7c 00                	jl     400696 <_IO_stdin_used+0x2e>
  400696:	00 00                	add    %al,(%rax)
  400698:	0e                   	(bad)  
  400699:	ff                   	(bad)  
  40069a:	ff                   	(bad)  
  40069b:	ff 9c 00 00 00 23 ff 	lcallq *-0xdd0000(%rax,%rax,1)
  4006a2:	ff                   	(bad)  
  4006a3:	ff                   	(bad)  
  4006a4:	bc 00 00 00 44       	mov    $0x44000000,%esp
  4006a9:	ff                   	(bad)  
  4006aa:	ff                   	(bad)  
  4006ab:	ff dc                	lcallq *<internal disassembler error>
  4006ad:	00 00                	add    %al,(%rax)
  4006af:	00 54 ff ff          	add    %dl,-0x1(%rdi,%rdi,8)
  4006b3:	ff f4                	push   %rsp
  4006b5:	00 00                	add    %al,(%rax)
	...

Disassembly of section .eh_frame:

00000000004006b8 <__FRAME_END__-0xe0>:
  4006b8:	14 00                	adc    $0x0,%al
  4006ba:	00 00                	add    %al,(%rax)
  4006bc:	00 00                	add    %al,(%rax)
  4006be:	00 00                	add    %al,(%rax)
  4006c0:	01 7a 52             	add    %edi,0x52(%rdx)
  4006c3:	00 01                	add    %al,(%rcx)
  4006c5:	78 10                	js     4006d7 <_IO_stdin_used+0x6f>
  4006c7:	01 1b                	add    %ebx,(%rbx)
  4006c9:	0c 07                	or     $0x7,%al
  4006cb:	08 90 01 00 00 24    	or     %dl,0x24000001(%rax)
  4006d1:	00 00                	add    %al,(%rax)
  4006d3:	00 1c 00             	add    %bl,(%rax,%rax,1)
  4006d6:	00 00                	add    %al,(%rax)
  4006d8:	28 fd                	sub    %bh,%ch
  4006da:	ff                   	(bad)  
  4006db:	ff 40 00             	incl   0x0(%rax)
  4006de:	00 00                	add    %al,(%rax)
  4006e0:	00 0e                	add    %cl,(%rsi)
  4006e2:	10 46 0e             	adc    %al,0xe(%rsi)
  4006e5:	18 4a 0f             	sbb    %cl,0xf(%rdx)
  4006e8:	0b 77 08             	or     0x8(%rdi),%esi
  4006eb:	80 00 3f             	addb   $0x3f,(%rax)
  4006ee:	1a 3b                	sbb    (%rbx),%bh
  4006f0:	2a 33                	sub    (%rbx),%dh
  4006f2:	24 22                	and    $0x22,%al
  4006f4:	00 00                	add    %al,(%rax)
  4006f6:	00 00                	add    %al,(%rax)
  4006f8:	1c 00                	sbb    $0x0,%al
  4006fa:	00 00                	add    %al,(%rax)
  4006fc:	44 00 00             	add    %r8b,(%rax)
  4006ff:	00 4c fe ff          	add    %cl,-0x1(%rsi,%rdi,8)
  400703:	ff                   	(bad)  
  400704:	3e 00 00             	add    %al,%ds:(%rax)
  400707:	00 00                	add    %al,(%rax)
  400709:	41 0e                	rex.B (bad) 
  40070b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
  400711:	45 83 03 74          	rex.RB addl $0x74,(%r11)
  400715:	0c 07                	or     $0x7,%al
  400717:	08 1c 00             	or     %bl,(%rax,%rax,1)
  40071a:	00 00                	add    %al,(%rax)
  40071c:	64 00 00             	add    %al,%fs:(%rax)
  40071f:	00 6a fe             	add    %ch,-0x2(%rdx)
  400722:	ff                   	(bad)  
  400723:	ff 15 00 00 00 00    	callq  *0x0(%rip)        # 400729 <_IO_stdin_used+0xc1>
  400729:	41 0e                	rex.B (bad) 
  40072b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
  400731:	50                   	push   %rax
  400732:	0c 07                	or     $0x7,%al
  400734:	08 00                	or     %al,(%rax)
  400736:	00 00                	add    %al,(%rax)
  400738:	1c 00                	sbb    $0x0,%al
  40073a:	00 00                	add    %al,(%rax)
  40073c:	84 00                	test   %al,(%rax)
  40073e:	00 00                	add    %al,(%rax)
  400740:	5f                   	pop    %rdi
  400741:	fe                   	(bad)  
  400742:	ff                   	(bad)  
  400743:	ff 15 00 00 00 00    	callq  *0x0(%rip)        # 400749 <_IO_stdin_used+0xe1>
  400749:	41 0e                	rex.B (bad) 
  40074b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
  400751:	50                   	push   %rax
  400752:	0c 07                	or     $0x7,%al
  400754:	08 00                	or     %al,(%rax)
  400756:	00 00                	add    %al,(%rax)
  400758:	14 00                	adc    $0x0,%al
  40075a:	00 00                	add    %al,(%rax)
  40075c:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
  40075d:	00 00                	add    %al,(%rax)
  40075f:	00 60 fe             	add    %ah,-0x2(%rax)
  400762:	ff                   	(bad)  
  400763:	ff 02                	incl   (%rdx)
	...
  40076d:	00 00                	add    %al,(%rax)
  40076f:	00 24 00             	add    %ah,(%rax,%rax,1)
  400772:	00 00                	add    %al,(%rax)
  400774:	bc 00 00 00 58       	mov    $0x58000000,%esp
  400779:	fe                   	(bad)  
  40077a:	ff                   	(bad)  
  40077b:	ff 89 00 00 00 00    	decl   0x0(%rcx)
  400781:	51                   	push   %rcx
  400782:	8c 05 86 06 5f 0e    	mov    %es,0xe5f0686(%rip)        # e9f0e0e <_end+0xe3f0426>
  400788:	40                   	rex
  400789:	46 83 07 8f          	rex.RX addl $0xffffff8f,(%rdi)
  40078d:	02 8e 03 8d 04 00    	add    0x48d03(%rsi),%cl
  400793:	00 00                	add    %al,(%rax)
  400795:	00 00                	add    %al,(%rax)
	...

0000000000400798 <__FRAME_END__>:
  400798:	00 00                	add    %al,(%rax)
	...

Disassembly of section .init_array:

00000000006007a0 <__frame_dummy_init_array_entry>:
  6007a0:	20 05 40 00 00 00    	and    %al,0x40(%rip)        # 6007e6 <_DYNAMIC+0x2e>
	...

Disassembly of section .fini_array:

00000000006007a8 <__do_global_dtors_aux_fini_array_entry>:
  6007a8:	00 05 40 00 00 00    	add    %al,0x40(%rip)        # 6007ee <_DYNAMIC+0x36>
	...

Disassembly of section .jcr:

00000000006007b0 <__JCR_END__>:
	...

Disassembly of section .dynamic:

00000000006007b8 <_DYNAMIC>:
  6007b8:	01 00                	add    %eax,(%rax)
  6007ba:	00 00                	add    %al,(%rax)
  6007bc:	00 00                	add    %al,(%rax)
  6007be:	00 00                	add    %al,(%rax)
  6007c0:	10 00                	adc    %al,(%rax)
  6007c2:	00 00                	add    %al,(%rax)
  6007c4:	00 00                	add    %al,(%rax)
  6007c6:	00 00                	add    %al,(%rax)
  6007c8:	0c 00                	or     $0x0,%al
  6007ca:	00 00                	add    %al,(%rax)
  6007cc:	00 00                	add    %al,(%rax)
  6007ce:	00 00                	add    %al,(%rax)
  6007d0:	f0 03 40 00          	lock add 0x0(%rax),%eax
  6007d4:	00 00                	add    %al,(%rax)
  6007d6:	00 00                	add    %al,(%rax)
  6007d8:	0d 00 00 00 00       	or     $0x0,%eax
  6007dd:	00 00                	add    %al,(%rax)
  6007df:	00 5c 06 40          	add    %bl,0x40(%rsi,%rax,1)
  6007e3:	00 00                	add    %al,(%rax)
  6007e5:	00 00                	add    %al,(%rax)
  6007e7:	00 19                	add    %bl,(%rcx)
  6007e9:	00 00                	add    %al,(%rax)
  6007eb:	00 00                	add    %al,(%rax)
  6007ed:	00 00                	add    %al,(%rax)
  6007ef:	00 a0 07 60 00 00    	add    %ah,0x6007(%rax)
  6007f5:	00 00                	add    %al,(%rax)
  6007f7:	00 1b                	add    %bl,(%rbx)
  6007f9:	00 00                	add    %al,(%rax)
  6007fb:	00 00                	add    %al,(%rax)
  6007fd:	00 00                	add    %al,(%rax)
  6007ff:	00 08                	add    %cl,(%rax)
  600801:	00 00                	add    %al,(%rax)
  600803:	00 00                	add    %al,(%rax)
  600805:	00 00                	add    %al,(%rax)
  600807:	00 1a                	add    %bl,(%rdx)
  600809:	00 00                	add    %al,(%rax)
  60080b:	00 00                	add    %al,(%rax)
  60080d:	00 00                	add    %al,(%rax)
  60080f:	00 a8 07 60 00 00    	add    %ch,0x6007(%rax)
  600815:	00 00                	add    %al,(%rax)
  600817:	00 1c 00             	add    %bl,(%rax,%rax,1)
  60081a:	00 00                	add    %al,(%rax)
  60081c:	00 00                	add    %al,(%rax)
  60081e:	00 00                	add    %al,(%rax)
  600820:	08 00                	or     %al,(%rax)
  600822:	00 00                	add    %al,(%rax)
  600824:	00 00                	add    %al,(%rax)
  600826:	00 00                	add    %al,(%rax)
  600828:	04 00                	add    $0x0,%al
  60082a:	00 00                	add    %al,(%rax)
  60082c:	00 00                	add    %al,(%rax)
  60082e:	00 00                	add    %al,(%rax)
  600830:	60                   	(bad)  
  600831:	02 40 00             	add    0x0(%rax),%al
  600834:	00 00                	add    %al,(%rax)
  600836:	00 00                	add    %al,(%rax)
  600838:	f5                   	cmc    
  600839:	fe                   	(bad)  
  60083a:	ff 6f 00             	ljmpq  *0x0(%rdi)
  60083d:	00 00                	add    %al,(%rax)
  60083f:	00 88 02 40 00 00    	add    %cl,0x4002(%rax)
  600845:	00 00                	add    %al,(%rax)
  600847:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 60084d <_DYNAMIC+0x95>
  60084d:	00 00                	add    %al,(%rax)
  60084f:	00 20                	add    %ah,(%rax)
  600851:	03 40 00             	add    0x0(%rax),%eax
  600854:	00 00                	add    %al,(%rax)
  600856:	00 00                	add    %al,(%rax)
  600858:	06                   	(bad)  
  600859:	00 00                	add    %al,(%rax)
  60085b:	00 00                	add    %al,(%rax)
  60085d:	00 00                	add    %al,(%rax)
  60085f:	00 a8 02 40 00 00    	add    %ch,0x4002(%rax)
  600865:	00 00                	add    %al,(%rax)
  600867:	00 0a                	add    %cl,(%rdx)
  600869:	00 00                	add    %al,(%rax)
  60086b:	00 00                	add    %al,(%rax)
  60086d:	00 00                	add    %al,(%rax)
  60086f:	00 44 00 00          	add    %al,0x0(%rax,%rax,1)
  600873:	00 00                	add    %al,(%rax)
  600875:	00 00                	add    %al,(%rax)
  600877:	00 0b                	add    %cl,(%rbx)
  600879:	00 00                	add    %al,(%rax)
  60087b:	00 00                	add    %al,(%rax)
  60087d:	00 00                	add    %al,(%rax)
  60087f:	00 18                	add    %bl,(%rax)
  600881:	00 00                	add    %al,(%rax)
  600883:	00 00                	add    %al,(%rax)
  600885:	00 00                	add    %al,(%rax)
  600887:	00 15 00 00 00 00    	add    %dl,0x0(%rip)        # 60088d <_DYNAMIC+0xd5>
	...
  600895:	00 00                	add    %al,(%rax)
  600897:	00 03                	add    %al,(%rbx)
  600899:	00 00                	add    %al,(%rax)
  60089b:	00 00                	add    %al,(%rax)
  60089d:	00 00                	add    %al,(%rax)
  60089f:	00 a0 09 60 00 00    	add    %ah,0x6009(%rax)
  6008a5:	00 00                	add    %al,(%rax)
  6008a7:	00 02                	add    %al,(%rdx)
  6008a9:	00 00                	add    %al,(%rax)
  6008ab:	00 00                	add    %al,(%rax)
  6008ad:	00 00                	add    %al,(%rax)
  6008af:	00 48 00             	add    %cl,0x0(%rax)
  6008b2:	00 00                	add    %al,(%rax)
  6008b4:	00 00                	add    %al,(%rax)
  6008b6:	00 00                	add    %al,(%rax)
  6008b8:	14 00                	adc    $0x0,%al
  6008ba:	00 00                	add    %al,(%rax)
  6008bc:	00 00                	add    %al,(%rax)
  6008be:	00 00                	add    %al,(%rax)
  6008c0:	07                   	(bad)  
  6008c1:	00 00                	add    %al,(%rax)
  6008c3:	00 00                	add    %al,(%rax)
  6008c5:	00 00                	add    %al,(%rax)
  6008c7:	00 17                	add    %dl,(%rdi)
  6008c9:	00 00                	add    %al,(%rax)
  6008cb:	00 00                	add    %al,(%rax)
  6008cd:	00 00                	add    %al,(%rax)
  6008cf:	00 a8 03 40 00 00    	add    %ch,0x4003(%rax)
  6008d5:	00 00                	add    %al,(%rax)
  6008d7:	00 07                	add    %al,(%rdi)
  6008d9:	00 00                	add    %al,(%rax)
  6008db:	00 00                	add    %al,(%rax)
  6008dd:	00 00                	add    %al,(%rax)
  6008df:	00 90 03 40 00 00    	add    %dl,0x4003(%rax)
  6008e5:	00 00                	add    %al,(%rax)
  6008e7:	00 08                	add    %cl,(%rax)
  6008e9:	00 00                	add    %al,(%rax)
  6008eb:	00 00                	add    %al,(%rax)
  6008ed:	00 00                	add    %al,(%rax)
  6008ef:	00 18                	add    %bl,(%rax)
  6008f1:	00 00                	add    %al,(%rax)
  6008f3:	00 00                	add    %al,(%rax)
  6008f5:	00 00                	add    %al,(%rax)
  6008f7:	00 09                	add    %cl,(%rcx)
  6008f9:	00 00                	add    %al,(%rax)
  6008fb:	00 00                	add    %al,(%rax)
  6008fd:	00 00                	add    %al,(%rax)
  6008ff:	00 18                	add    %bl,(%rax)
  600901:	00 00                	add    %al,(%rax)
  600903:	00 00                	add    %al,(%rax)
  600905:	00 00                	add    %al,(%rax)
  600907:	00 fe                	add    %bh,%dh
  600909:	ff                   	(bad)  
  60090a:	ff 6f 00             	ljmpq  *0x0(%rdi)
  60090d:	00 00                	add    %al,(%rax)
  60090f:	00 70 03             	add    %dh,0x3(%rax)
  600912:	40 00 00             	add    %al,(%rax)
  600915:	00 00                	add    %al,(%rax)
  600917:	00 ff                	add    %bh,%bh
  600919:	ff                   	(bad)  
  60091a:	ff 6f 00             	ljmpq  *0x0(%rdi)
  60091d:	00 00                	add    %al,(%rax)
  60091f:	00 01                	add    %al,(%rcx)
  600921:	00 00                	add    %al,(%rax)
  600923:	00 00                	add    %al,(%rax)
  600925:	00 00                	add    %al,(%rax)
  600927:	00 f0                	add    %dh,%al
  600929:	ff                   	(bad)  
  60092a:	ff 6f 00             	ljmpq  *0x0(%rdi)
  60092d:	00 00                	add    %al,(%rax)
  60092f:	00 64 03 40          	add    %ah,0x40(%rbx,%rax,1)
	...

Disassembly of section .got:

0000000000600998 <.got>:
	...

Disassembly of section .got.plt:

00000000006009a0 <_GLOBAL_OFFSET_TABLE_>:
  6009a0:	b8 07 60 00 00       	mov    $0x6007,%eax
	...
  6009b5:	00 00                	add    %al,(%rax)
  6009b7:	00 16                	add    %dl,(%rsi)
  6009b9:	04 40                	add    $0x40,%al
  6009bb:	00 00                	add    %al,(%rax)
  6009bd:	00 00                	add    %al,(%rax)
  6009bf:	00 26                	add    %ah,(%rsi)
  6009c1:	04 40                	add    $0x40,%al
  6009c3:	00 00                	add    %al,(%rax)
  6009c5:	00 00                	add    %al,(%rax)
  6009c7:	00 36                	add    %dh,(%rsi)
  6009c9:	04 40                	add    $0x40,%al
  6009cb:	00 00                	add    %al,(%rax)
  6009cd:	00 00                	add    %al,(%rax)
	...

Disassembly of section .data:

00000000006009d0 <__data_start>:
	...

00000000006009d8 <__dso_handle>:
	...

Disassembly of section .bss:

00000000006009e0 <completed.6092>:
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	47                   	rex.RXB
   1:	43                   	rex.XB
   2:	43 3a 20             	rex.XB cmp (%r8),%spl
   5:	28 44 65 62          	sub    %al,0x62(%rbp,%riz,2)
   9:	69 61 6e 20 34 2e 37 	imul   $0x372e3420,0x6e(%rcx),%esp
  10:	2e 32 2d 35 29 20 34 	xor    %cs:0x34202935(%rip),%ch        # 3420294c <_end+0x33c01f64>
  17:	2e                   	cs
  18:	37                   	(bad)  
  19:	2e 32 00             	xor    %cs:(%rax),%al
  1c:	47                   	rex.RXB
  1d:	43                   	rex.XB
  1e:	43 3a 20             	rex.XB cmp (%r8),%spl
  21:	28 44 65 62          	sub    %al,0x62(%rbp,%riz,2)
  25:	69 61 6e 20 34 2e 34 	imul   $0x342e3420,0x6e(%rcx),%esp
  2c:	2e                   	cs
  2d:	37                   	(bad)  
  2e:	2d 32 29 20 34       	sub    $0x34202932,%eax
  33:	2e                   	cs
  34:	34 2e                	xor    $0x2e,%al
  36:	37                   	(bad)  
	...
