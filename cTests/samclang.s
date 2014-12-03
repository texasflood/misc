
samclang.o:     file format elf64-x86-64


Disassembly of section .interp:

0000000000400200 <.interp>:
  400200:	2f                   	(bad)  
  400201:	6c                   	insb   (%dx),%es:(%rdi)
  400202:	69 62 36 34 2f 6c 64 	imul   $0x646c2f34,0x36(%rdx),%esp
  400209:	2d 6c 69 6e 75       	sub    $0x756e696c,%eax
  40020e:	78 2d                	js     40023d <_init-0x17b>
  400210:	78 38                	js     40024a <_init-0x16e>
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
  40024b:	00 b0 3a c7 52 28    	add    %dh,0x2852c73a(%rax)
  400251:	23 d1                	and    %ecx,%edx
  400253:	24 ac                	and    $0xac,%al
  400255:	70 92                	jo     4001e9 <_init-0x1cf>
  400257:	25 d8 f0 a8 f3       	and    $0xf3a8f0d8,%eax
  40025c:	52                   	push   %rdx
  40025d:	44                   	rex.R
  40025e:	a9                   	.byte 0xa9
  40025f:	76                   	.byte 0x76

Disassembly of section .hash:

0000000000400260 <.hash>:
  400260:	03 00                	add    (%rax),%eax
  400262:	00 00                	add    %al,(%rax)
  400264:	04 00                	add    $0x0,%al
  400266:	00 00                	add    %al,(%rax)
  400268:	03 00                	add    (%rax),%eax
  40026a:	00 00                	add    %al,(%rax)
  40026c:	02 00                	add    (%rax),%al
  40026e:	00 00                	add    %al,(%rax)
  400270:	01 00                	add    %eax,(%rax)
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
  4002d8:	21 00                	and    %eax,(%rax)
  4002da:	00 00                	add    %al,(%rax)
  4002dc:	12 00                	adc    (%rax),%al
	...
  4002ee:	00 00                	add    %al,(%rax)
  4002f0:	01 00                	add    %eax,(%rax)
  4002f2:	00 00                	add    %al,(%rax)
  4002f4:	20 00                	and    %al,(%rax)
	...

Disassembly of section .dynstr:

0000000000400308 <.dynstr>:
  400308:	00 5f 5f             	add    %bl,0x5f(%rdi)
  40030b:	67 6d                	insl   (%dx),%es:(%edi)
  40030d:	6f                   	outsl  %ds:(%rsi),(%dx)
  40030e:	6e                   	outsb  %ds:(%rsi),(%dx)
  40030f:	5f                   	pop    %rdi
  400310:	73 74                	jae    400386 <_init-0x32>
  400312:	61                   	(bad)  
  400313:	72 74                	jb     400389 <_init-0x2f>
  400315:	5f                   	pop    %rdi
  400316:	5f                   	pop    %rdi
  400317:	00 6c 69 62          	add    %ch,0x62(%rcx,%rbp,2)
  40031b:	63 2e                	movslq (%rsi),%ebp
  40031d:	73 6f                	jae    40038e <_init-0x2a>
  40031f:	2e 36 00 70 72       	cs add %dh,%cs:%ss:0x72(%rax)
  400324:	69 6e 74 66 00 5f 5f 	imul   $0x5f5f0066,0x74(%rsi),%ebp
  40032b:	6c                   	insb   (%dx),%es:(%rdi)
  40032c:	69 62 63 5f 73 74 61 	imul   $0x6174735f,0x63(%rdx),%esp
  400333:	72 74                	jb     4003a9 <_init-0xf>
  400335:	5f                   	pop    %rdi
  400336:	6d                   	insl   (%dx),%es:(%rdi)
  400337:	61                   	(bad)  
  400338:	69 6e 00 47 4c 49 42 	imul   $0x42494c47,0x0(%rsi),%ebp
  40033f:	43 5f                	rex.XB pop %r15
  400341:	32 2e                	xor    (%rsi),%ch
  400343:	32 2e                	xor    (%rsi),%ch
  400345:	35                   	.byte 0x35
	...

Disassembly of section .gnu.version:

0000000000400348 <.gnu.version>:
  400348:	00 00                	add    %al,(%rax)
  40034a:	02 00                	add    (%rax),%al
  40034c:	02 00                	add    (%rax),%al
	...

Disassembly of section .gnu.version_r:

0000000000400350 <.gnu.version_r>:
  400350:	01 00                	add    %eax,(%rax)
  400352:	01 00                	add    %eax,(%rax)
  400354:	10 00                	adc    %al,(%rax)
  400356:	00 00                	add    %al,(%rax)
  400358:	10 00                	adc    %al,(%rax)
  40035a:	00 00                	add    %al,(%rax)
  40035c:	00 00                	add    %al,(%rax)
  40035e:	00 00                	add    %al,(%rax)
  400360:	75 1a                	jne    40037c <_init-0x3c>
  400362:	69 09 00 00 02 00    	imul   $0x20000,(%rcx),%ecx
  400368:	33 00                	xor    (%rax),%eax
  40036a:	00 00                	add    %al,(%rax)
  40036c:	00 00                	add    %al,(%rax)
	...

Disassembly of section .rela.dyn:

0000000000400370 <.rela.dyn>:
  400370:	80 09 60             	orb    $0x60,(%rcx)
  400373:	00 00                	add    %al,(%rax)
  400375:	00 00                	add    %al,(%rax)
  400377:	00 06                	add    %al,(%rsi)
  400379:	00 00                	add    %al,(%rax)
  40037b:	00 03                	add    %al,(%rbx)
	...

Disassembly of section .rela.plt:

0000000000400388 <.rela.plt>:
  400388:	a0 09 60 00 00 00 00 	movabs 0x700000000006009,%al
  40038f:	00 07 
  400391:	00 00                	add    %al,(%rax)
  400393:	00 01                	add    %al,(%rcx)
	...
  40039d:	00 00                	add    %al,(%rax)
  40039f:	00 a8 09 60 00 00    	add    %ch,0x6009(%rax)
  4003a5:	00 00                	add    %al,(%rax)
  4003a7:	00 07                	add    %al,(%rdi)
  4003a9:	00 00                	add    %al,(%rax)
  4003ab:	00 02                	add    %al,(%rdx)
	...

Disassembly of section .init:

00000000004003b8 <_init>:
  4003b8:	48 83 ec 08          	sub    $0x8,%rsp
  4003bc:	e8 6b 00 00 00       	callq  40042c <call_gmon_start>
  4003c1:	e8 fa 00 00 00       	callq  4004c0 <frame_dummy>
  4003c6:	e8 65 02 00 00       	callq  400630 <__do_global_ctors_aux>
  4003cb:	48 83 c4 08          	add    $0x8,%rsp
  4003cf:	c3                   	retq   

Disassembly of section .plt:

00000000004003d0 <printf@plt-0x10>:
  4003d0:	ff 35 ba 05 20 00    	pushq  0x2005ba(%rip)        # 600990 <_GLOBAL_OFFSET_TABLE_+0x8>
  4003d6:	ff 25 bc 05 20 00    	jmpq   *0x2005bc(%rip)        # 600998 <_GLOBAL_OFFSET_TABLE_+0x10>
  4003dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004003e0 <printf@plt>:
  4003e0:	ff 25 ba 05 20 00    	jmpq   *0x2005ba(%rip)        # 6009a0 <_GLOBAL_OFFSET_TABLE_+0x18>
  4003e6:	68 00 00 00 00       	pushq  $0x0
  4003eb:	e9 e0 ff ff ff       	jmpq   4003d0 <_init+0x18>

00000000004003f0 <__libc_start_main@plt>:
  4003f0:	ff 25 b2 05 20 00    	jmpq   *0x2005b2(%rip)        # 6009a8 <_GLOBAL_OFFSET_TABLE_+0x20>
  4003f6:	68 01 00 00 00       	pushq  $0x1
  4003fb:	e9 d0 ff ff ff       	jmpq   4003d0 <_init+0x18>

Disassembly of section .text:

0000000000400400 <_start>:
  400400:	31 ed                	xor    %ebp,%ebp
  400402:	49 89 d1             	mov    %rdx,%r9
  400405:	5e                   	pop    %rsi
  400406:	48 89 e2             	mov    %rsp,%rdx
  400409:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40040d:	50                   	push   %rax
  40040e:	54                   	push   %rsp
  40040f:	49 c7 c0 90 05 40 00 	mov    $0x400590,%r8
  400416:	48 c7 c1 a0 05 40 00 	mov    $0x4005a0,%rcx
  40041d:	48 c7 c7 f0 04 40 00 	mov    $0x4004f0,%rdi
  400424:	e8 c7 ff ff ff       	callq  4003f0 <__libc_start_main@plt>
  400429:	f4                   	hlt    
  40042a:	90                   	nop
  40042b:	90                   	nop

000000000040042c <call_gmon_start>:
  40042c:	48 83 ec 08          	sub    $0x8,%rsp
  400430:	48 8b 05 49 05 20 00 	mov    0x200549(%rip),%rax        # 600980 <_DYNAMIC+0x1a0>
  400437:	48 85 c0             	test   %rax,%rax
  40043a:	74 02                	je     40043e <call_gmon_start+0x12>
  40043c:	ff d0                	callq  *%rax
  40043e:	48 83 c4 08          	add    $0x8,%rsp
  400442:	c3                   	retq   
  400443:	90                   	nop
  400444:	90                   	nop
  400445:	90                   	nop
  400446:	90                   	nop
  400447:	90                   	nop
  400448:	90                   	nop
  400449:	90                   	nop
  40044a:	90                   	nop
  40044b:	90                   	nop
  40044c:	90                   	nop
  40044d:	90                   	nop
  40044e:	90                   	nop
  40044f:	90                   	nop

0000000000400450 <__do_global_dtors_aux>:
  400450:	55                   	push   %rbp
  400451:	48 89 e5             	mov    %rsp,%rbp
  400454:	53                   	push   %rbx
  400455:	48 83 ec 08          	sub    $0x8,%rsp
  400459:	80 3d 60 05 20 00 00 	cmpb   $0x0,0x200560(%rip)        # 6009c0 <__bss_start>
  400460:	75 4b                	jne    4004ad <__do_global_dtors_aux+0x5d>
  400462:	bb d0 07 60 00       	mov    $0x6007d0,%ebx
  400467:	48 8b 05 5a 05 20 00 	mov    0x20055a(%rip),%rax        # 6009c8 <dtor_idx.5888>
  40046e:	48 81 eb c8 07 60 00 	sub    $0x6007c8,%rbx
  400475:	48 c1 fb 03          	sar    $0x3,%rbx
  400479:	48 83 eb 01          	sub    $0x1,%rbx
  40047d:	48 39 d8             	cmp    %rbx,%rax
  400480:	73 24                	jae    4004a6 <__do_global_dtors_aux+0x56>
  400482:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400488:	48 83 c0 01          	add    $0x1,%rax
  40048c:	48 89 05 35 05 20 00 	mov    %rax,0x200535(%rip)        # 6009c8 <dtor_idx.5888>
  400493:	ff 14 c5 c8 07 60 00 	callq  *0x6007c8(,%rax,8)
  40049a:	48 8b 05 27 05 20 00 	mov    0x200527(%rip),%rax        # 6009c8 <dtor_idx.5888>
  4004a1:	48 39 d8             	cmp    %rbx,%rax
  4004a4:	72 e2                	jb     400488 <__do_global_dtors_aux+0x38>
  4004a6:	c6 05 13 05 20 00 01 	movb   $0x1,0x200513(%rip)        # 6009c0 <__bss_start>
  4004ad:	48 83 c4 08          	add    $0x8,%rsp
  4004b1:	5b                   	pop    %rbx
  4004b2:	5d                   	pop    %rbp
  4004b3:	c3                   	retq   
  4004b4:	66 66 66 2e 0f 1f 84 	data32 data32 nopw %cs:0x0(%rax,%rax,1)
  4004bb:	00 00 00 00 00 

00000000004004c0 <frame_dummy>:
  4004c0:	48 83 3d 10 03 20 00 	cmpq   $0x0,0x200310(%rip)        # 6007d8 <__JCR_END__>
  4004c7:	00 
  4004c8:	55                   	push   %rbp
  4004c9:	48 89 e5             	mov    %rsp,%rbp
  4004cc:	74 12                	je     4004e0 <frame_dummy+0x20>
  4004ce:	b8 00 00 00 00       	mov    $0x0,%eax
  4004d3:	48 85 c0             	test   %rax,%rax
  4004d6:	74 08                	je     4004e0 <frame_dummy+0x20>
  4004d8:	5d                   	pop    %rbp
  4004d9:	bf d8 07 60 00       	mov    $0x6007d8,%edi
  4004de:	ff e0                	jmpq   *%rax
  4004e0:	5d                   	pop    %rbp
  4004e1:	c3                   	retq   
  4004e2:	90                   	nop
  4004e3:	90                   	nop
  4004e4:	90                   	nop
  4004e5:	90                   	nop
  4004e6:	90                   	nop
  4004e7:	90                   	nop
  4004e8:	90                   	nop
  4004e9:	90                   	nop
  4004ea:	90                   	nop
  4004eb:	90                   	nop
  4004ec:	90                   	nop
  4004ed:	90                   	nop
  4004ee:	90                   	nop
  4004ef:	90                   	nop

00000000004004f0 <main>:
  4004f0:	55                   	push   %rbp
  4004f1:	48 89 e5             	mov    %rsp,%rbp
  4004f4:	48 83 ec 10          	sub    $0x10,%rsp
  4004f8:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  4004ff:	e8 2c 00 00 00       	callq  400530 <foo>
  400504:	89 45 f8             	mov    %eax,-0x8(%rbp)
  400507:	e8 54 00 00 00       	callq  400560 <bar>
  40050c:	48 8d 3c 25 7c 06 40 	lea    0x40067c,%rdi
  400513:	00 
  400514:	8b 75 f8             	mov    -0x8(%rbp),%esi
  400517:	89 c2                	mov    %eax,%edx
  400519:	b0 00                	mov    $0x0,%al
  40051b:	e8 c0 fe ff ff       	callq  4003e0 <printf@plt>
  400520:	ba 00 00 00 00       	mov    $0x0,%edx
  400525:	89 45 f4             	mov    %eax,-0xc(%rbp)
  400528:	89 d0                	mov    %edx,%eax
  40052a:	48 83 c4 10          	add    $0x10,%rsp
  40052e:	5d                   	pop    %rbp
  40052f:	c3                   	retq   

0000000000400530 <foo>:
  400530:	55                   	push   %rbp
  400531:	48 89 e5             	mov    %rsp,%rbp
  400534:	48 83 ec 10          	sub    $0x10,%rsp
  400538:	48 8d 3c 25 83 06 40 	lea    0x400683,%rdi
  40053f:	00 
  400540:	b0 00                	mov    $0x0,%al
  400542:	e8 99 fe ff ff       	callq  4003e0 <printf@plt>
  400547:	b9 00 00 00 00       	mov    $0x0,%ecx
  40054c:	89 45 fc             	mov    %eax,-0x4(%rbp)
  40054f:	89 c8                	mov    %ecx,%eax
  400551:	48 83 c4 10          	add    $0x10,%rsp
  400555:	5d                   	pop    %rbp
  400556:	c3                   	retq   
  400557:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40055e:	00 00 

0000000000400560 <bar>:
  400560:	55                   	push   %rbp
  400561:	48 89 e5             	mov    %rsp,%rbp
  400564:	48 83 ec 10          	sub    $0x10,%rsp
  400568:	48 8d 3c 25 88 06 40 	lea    0x400688,%rdi
  40056f:	00 
  400570:	b0 00                	mov    $0x0,%al
  400572:	e8 69 fe ff ff       	callq  4003e0 <printf@plt>
  400577:	b9 01 00 00 00       	mov    $0x1,%ecx
  40057c:	89 45 fc             	mov    %eax,-0x4(%rbp)
  40057f:	89 c8                	mov    %ecx,%eax
  400581:	48 83 c4 10          	add    $0x10,%rsp
  400585:	5d                   	pop    %rbp
  400586:	c3                   	retq   
  400587:	90                   	nop
  400588:	90                   	nop
  400589:	90                   	nop
  40058a:	90                   	nop
  40058b:	90                   	nop
  40058c:	90                   	nop
  40058d:	90                   	nop
  40058e:	90                   	nop
  40058f:	90                   	nop

0000000000400590 <__libc_csu_fini>:
  400590:	f3 c3                	repz retq 
  400592:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  400599:	1f 84 00 00 00 00 00 

00000000004005a0 <__libc_csu_init>:
  4005a0:	48 89 6c 24 d8       	mov    %rbp,-0x28(%rsp)
  4005a5:	4c 89 64 24 e0       	mov    %r12,-0x20(%rsp)
  4005aa:	48 8d 2d 03 02 20 00 	lea    0x200203(%rip),%rbp        # 6007b4 <__init_array_end>
  4005b1:	4c 8d 25 fc 01 20 00 	lea    0x2001fc(%rip),%r12        # 6007b4 <__init_array_end>
  4005b8:	4c 89 6c 24 e8       	mov    %r13,-0x18(%rsp)
  4005bd:	4c 89 74 24 f0       	mov    %r14,-0x10(%rsp)
  4005c2:	4c 89 7c 24 f8       	mov    %r15,-0x8(%rsp)
  4005c7:	48 89 5c 24 d0       	mov    %rbx,-0x30(%rsp)
  4005cc:	48 83 ec 38          	sub    $0x38,%rsp
  4005d0:	4c 29 e5             	sub    %r12,%rbp
  4005d3:	41 89 fd             	mov    %edi,%r13d
  4005d6:	49 89 f6             	mov    %rsi,%r14
  4005d9:	48 c1 fd 03          	sar    $0x3,%rbp
  4005dd:	49 89 d7             	mov    %rdx,%r15
  4005e0:	e8 d3 fd ff ff       	callq  4003b8 <_init>
  4005e5:	48 85 ed             	test   %rbp,%rbp
  4005e8:	74 1c                	je     400606 <__libc_csu_init+0x66>
  4005ea:	31 db                	xor    %ebx,%ebx
  4005ec:	0f 1f 40 00          	nopl   0x0(%rax)
  4005f0:	4c 89 fa             	mov    %r15,%rdx
  4005f3:	4c 89 f6             	mov    %r14,%rsi
  4005f6:	44 89 ef             	mov    %r13d,%edi
  4005f9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  4005fd:	48 83 c3 01          	add    $0x1,%rbx
  400601:	48 39 eb             	cmp    %rbp,%rbx
  400604:	72 ea                	jb     4005f0 <__libc_csu_init+0x50>
  400606:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
  40060b:	48 8b 6c 24 10       	mov    0x10(%rsp),%rbp
  400610:	4c 8b 64 24 18       	mov    0x18(%rsp),%r12
  400615:	4c 8b 6c 24 20       	mov    0x20(%rsp),%r13
  40061a:	4c 8b 74 24 28       	mov    0x28(%rsp),%r14
  40061f:	4c 8b 7c 24 30       	mov    0x30(%rsp),%r15
  400624:	48 83 c4 38          	add    $0x38,%rsp
  400628:	c3                   	retq   
  400629:	90                   	nop
  40062a:	90                   	nop
  40062b:	90                   	nop
  40062c:	90                   	nop
  40062d:	90                   	nop
  40062e:	90                   	nop
  40062f:	90                   	nop

0000000000400630 <__do_global_ctors_aux>:
  400630:	55                   	push   %rbp
  400631:	48 89 e5             	mov    %rsp,%rbp
  400634:	53                   	push   %rbx
  400635:	48 83 ec 08          	sub    $0x8,%rsp
  400639:	48 8b 05 78 01 20 00 	mov    0x200178(%rip),%rax        # 6007b8 <__CTOR_LIST__>
  400640:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  400644:	74 19                	je     40065f <__do_global_ctors_aux+0x2f>
  400646:	bb b8 07 60 00       	mov    $0x6007b8,%ebx
  40064b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400650:	48 83 eb 08          	sub    $0x8,%rbx
  400654:	ff d0                	callq  *%rax
  400656:	48 8b 03             	mov    (%rbx),%rax
  400659:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  40065d:	75 f1                	jne    400650 <__do_global_ctors_aux+0x20>
  40065f:	48 83 c4 08          	add    $0x8,%rsp
  400663:	5b                   	pop    %rbx
  400664:	5d                   	pop    %rbp
  400665:	c3                   	retq   
  400666:	90                   	nop
  400667:	90                   	nop

Disassembly of section .fini:

0000000000400668 <_fini>:
  400668:	48 83 ec 08          	sub    $0x8,%rsp
  40066c:	e8 df fd ff ff       	callq  400450 <__do_global_dtors_aux>
  400671:	48 83 c4 08          	add    $0x8,%rsp
  400675:	c3                   	retq   

Disassembly of section .rodata:

0000000000400678 <_IO_stdin_used>:
  400678:	01 00                	add    %eax,(%rax)
  40067a:	02 00                	add    (%rax),%al
  40067c:	25 69 20 25 69       	and    $0x69252069,%eax
  400681:	0a 00                	or     (%rax),%al
  400683:	66 6f                	outsw  %ds:(%rsi),(%dx)
  400685:	6f                   	outsl  %ds:(%rsi),(%dx)
  400686:	0a 00                	or     (%rax),%al
  400688:	62                   	(bad)  
  400689:	61                   	(bad)  
  40068a:	72 0a                	jb     400696 <_IO_stdin_used+0x1e>
	...

Disassembly of section .eh_frame_hdr:

0000000000400690 <.eh_frame_hdr>:
  400690:	01 1b                	add    %ebx,(%rbx)
  400692:	03 3b                	add    (%rbx),%edi
  400694:	3c 00                	cmp    $0x0,%al
  400696:	00 00                	add    %al,(%rax)
  400698:	06                   	(bad)  
  400699:	00 00                	add    %al,(%rax)
  40069b:	00 40 fd             	add    %al,-0x3(%rax)
  40069e:	ff                   	(bad)  
  40069f:	ff 58 00             	lcallq *0x0(%rax)
  4006a2:	00 00                	add    %al,(%rax)
  4006a4:	60                   	(bad)  
  4006a5:	fe                   	(bad)  
  4006a6:	ff                   	(bad)  
  4006a7:	ff 80 00 00 00 a0    	incl   -0x60000000(%rax)
  4006ad:	fe                   	(bad)  
  4006ae:	ff                   	(bad)  
  4006af:	ff a0 00 00 00 d0    	jmpq   *-0x30000000(%rax)
  4006b5:	fe                   	(bad)  
  4006b6:	ff                   	(bad)  
  4006b7:	ff c0                	inc    %eax
  4006b9:	00 00                	add    %al,(%rax)
  4006bb:	00 00                	add    %al,(%rax)
  4006bd:	ff                   	(bad)  
  4006be:	ff                   	(bad)  
  4006bf:	ff e0                	jmpq   *%rax
  4006c1:	00 00                	add    %al,(%rax)
  4006c3:	00 10                	add    %dl,(%rax)
  4006c5:	ff                   	(bad)  
  4006c6:	ff                   	(bad)  
  4006c7:	ff                   	(bad)  
  4006c8:	f8                   	clc    
  4006c9:	00 00                	add    %al,(%rax)
	...

Disassembly of section .eh_frame:

00000000004006d0 <__FRAME_END__-0xe0>:
  4006d0:	14 00                	adc    $0x0,%al
  4006d2:	00 00                	add    %al,(%rax)
  4006d4:	00 00                	add    %al,(%rax)
  4006d6:	00 00                	add    %al,(%rax)
  4006d8:	01 7a 52             	add    %edi,0x52(%rdx)
  4006db:	00 01                	add    %al,(%rcx)
  4006dd:	78 10                	js     4006ef <_IO_stdin_used+0x77>
  4006df:	01 1b                	add    %ebx,(%rbx)
  4006e1:	0c 07                	or     $0x7,%al
  4006e3:	08 90 01 00 00 24    	or     %dl,0x24000001(%rax)
  4006e9:	00 00                	add    %al,(%rax)
  4006eb:	00 1c 00             	add    %bl,(%rax,%rax,1)
  4006ee:	00 00                	add    %al,(%rax)
  4006f0:	e0 fc                	loopne 4006ee <_IO_stdin_used+0x76>
  4006f2:	ff                   	(bad)  
  4006f3:	ff 30                	pushq  (%rax)
  4006f5:	00 00                	add    %al,(%rax)
  4006f7:	00 00                	add    %al,(%rax)
  4006f9:	0e                   	(bad)  
  4006fa:	10 46 0e             	adc    %al,0xe(%rsi)
  4006fd:	18 4a 0f             	sbb    %cl,0xf(%rdx)
  400700:	0b 77 08             	or     0x8(%rdi),%esi
  400703:	80 00 3f             	addb   $0x3f,(%rax)
  400706:	1a 3b                	sbb    (%rbx),%bh
  400708:	2a 33                	sub    (%rbx),%dh
  40070a:	24 22                	and    $0x22,%al
  40070c:	00 00                	add    %al,(%rax)
  40070e:	00 00                	add    %al,(%rax)
  400710:	1c 00                	sbb    $0x0,%al
  400712:	00 00                	add    %al,(%rax)
  400714:	44 00 00             	add    %r8b,(%rax)
  400717:	00 d8                	add    %bl,%al
  400719:	fd                   	std    
  40071a:	ff                   	(bad)  
  40071b:	ff 40 00             	incl   0x0(%rax)
  40071e:	00 00                	add    %al,(%rax)
  400720:	00 41 0e             	add    %al,0xe(%rcx)
  400723:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
  400729:	00 00                	add    %al,(%rax)
  40072b:	00 00                	add    %al,(%rax)
  40072d:	00 00                	add    %al,(%rax)
  40072f:	00 1c 00             	add    %bl,(%rax,%rax,1)
  400732:	00 00                	add    %al,(%rax)
  400734:	64 00 00             	add    %al,%fs:(%rax)
  400737:	00 f8                	add    %bh,%al
  400739:	fd                   	std    
  40073a:	ff                   	(bad)  
  40073b:	ff 27                	jmpq   *(%rdi)
  40073d:	00 00                	add    %al,(%rax)
  40073f:	00 00                	add    %al,(%rax)
  400741:	41 0e                	rex.B (bad) 
  400743:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
  400749:	00 00                	add    %al,(%rax)
  40074b:	00 00                	add    %al,(%rax)
  40074d:	00 00                	add    %al,(%rax)
  40074f:	00 1c 00             	add    %bl,(%rax,%rax,1)
  400752:	00 00                	add    %al,(%rax)
  400754:	84 00                	test   %al,(%rax)
  400756:	00 00                	add    %al,(%rax)
  400758:	08 fe                	or     %bh,%dh
  40075a:	ff                   	(bad)  
  40075b:	ff 27                	jmpq   *(%rdi)
  40075d:	00 00                	add    %al,(%rax)
  40075f:	00 00                	add    %al,(%rax)
  400761:	41 0e                	rex.B (bad) 
  400763:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
  400769:	00 00                	add    %al,(%rax)
  40076b:	00 00                	add    %al,(%rax)
  40076d:	00 00                	add    %al,(%rax)
  40076f:	00 14 00             	add    %dl,(%rax,%rax,1)
  400772:	00 00                	add    %al,(%rax)
  400774:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
  400775:	00 00                	add    %al,(%rax)
  400777:	00 18                	add    %bl,(%rax)
  400779:	fe                   	(bad)  
  40077a:	ff                   	(bad)  
  40077b:	ff 02                	incl   (%rdx)
	...
  400785:	00 00                	add    %al,(%rax)
  400787:	00 24 00             	add    %ah,(%rax,%rax,1)
  40078a:	00 00                	add    %al,(%rax)
  40078c:	bc 00 00 00 10       	mov    $0x10000000,%esp
  400791:	fe                   	(bad)  
  400792:	ff                   	(bad)  
  400793:	ff 89 00 00 00 00    	decl   0x0(%rcx)
  400799:	51                   	push   %rcx
  40079a:	8c 05 86 06 5f 0e    	mov    %es,0xe5f0686(%rip)        # e9f0e26 <_end+0xe3f0456>
  4007a0:	40                   	rex
  4007a1:	46 83 07 8f          	rex.RX addl $0xffffff8f,(%rdi)
  4007a5:	02 8e 03 8d 04 00    	add    0x48d03(%rsi),%cl
  4007ab:	00 00                	add    %al,(%rax)
  4007ad:	00 00                	add    %al,(%rax)
	...

00000000004007b0 <__FRAME_END__>:
  4007b0:	00 00                	add    %al,(%rax)
	...

Disassembly of section .ctors:

00000000006007b8 <__CTOR_LIST__>:
  6007b8:	ff                   	(bad)  
  6007b9:	ff                   	(bad)  
  6007ba:	ff                   	(bad)  
  6007bb:	ff                   	(bad)  
  6007bc:	ff                   	(bad)  
  6007bd:	ff                   	(bad)  
  6007be:	ff                   	(bad)  
  6007bf:	ff 00                	incl   (%rax)

00000000006007c0 <__CTOR_END__>:
	...

Disassembly of section .dtors:

00000000006007c8 <__DTOR_LIST__>:
  6007c8:	ff                   	(bad)  
  6007c9:	ff                   	(bad)  
  6007ca:	ff                   	(bad)  
  6007cb:	ff                   	(bad)  
  6007cc:	ff                   	(bad)  
  6007cd:	ff                   	(bad)  
  6007ce:	ff                   	(bad)  
  6007cf:	ff 00                	incl   (%rax)

00000000006007d0 <__DTOR_END__>:
	...

Disassembly of section .jcr:

00000000006007d8 <__JCR_END__>:
	...

Disassembly of section .dynamic:

00000000006007e0 <_DYNAMIC>:
  6007e0:	01 00                	add    %eax,(%rax)
  6007e2:	00 00                	add    %al,(%rax)
  6007e4:	00 00                	add    %al,(%rax)
  6007e6:	00 00                	add    %al,(%rax)
  6007e8:	10 00                	adc    %al,(%rax)
  6007ea:	00 00                	add    %al,(%rax)
  6007ec:	00 00                	add    %al,(%rax)
  6007ee:	00 00                	add    %al,(%rax)
  6007f0:	0c 00                	or     $0x0,%al
  6007f2:	00 00                	add    %al,(%rax)
  6007f4:	00 00                	add    %al,(%rax)
  6007f6:	00 00                	add    %al,(%rax)
  6007f8:	b8 03 40 00 00       	mov    $0x4003,%eax
  6007fd:	00 00                	add    %al,(%rax)
  6007ff:	00 0d 00 00 00 00    	add    %cl,0x0(%rip)        # 600805 <_DYNAMIC+0x25>
  600805:	00 00                	add    %al,(%rax)
  600807:	00 68 06             	add    %ch,0x6(%rax)
  60080a:	40 00 00             	add    %al,(%rax)
  60080d:	00 00                	add    %al,(%rax)
  60080f:	00 04 00             	add    %al,(%rax,%rax,1)
  600812:	00 00                	add    %al,(%rax)
  600814:	00 00                	add    %al,(%rax)
  600816:	00 00                	add    %al,(%rax)
  600818:	60                   	(bad)  
  600819:	02 40 00             	add    0x0(%rax),%al
  60081c:	00 00                	add    %al,(%rax)
  60081e:	00 00                	add    %al,(%rax)
  600820:	f5                   	cmc    
  600821:	fe                   	(bad)  
  600822:	ff 6f 00             	ljmpq  *0x0(%rdi)
  600825:	00 00                	add    %al,(%rax)
  600827:	00 88 02 40 00 00    	add    %cl,0x4002(%rax)
  60082d:	00 00                	add    %al,(%rax)
  60082f:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 600835 <_DYNAMIC+0x55>
  600835:	00 00                	add    %al,(%rax)
  600837:	00 08                	add    %cl,(%rax)
  600839:	03 40 00             	add    0x0(%rax),%eax
  60083c:	00 00                	add    %al,(%rax)
  60083e:	00 00                	add    %al,(%rax)
  600840:	06                   	(bad)  
  600841:	00 00                	add    %al,(%rax)
  600843:	00 00                	add    %al,(%rax)
  600845:	00 00                	add    %al,(%rax)
  600847:	00 a8 02 40 00 00    	add    %ch,0x4002(%rax)
  60084d:	00 00                	add    %al,(%rax)
  60084f:	00 0a                	add    %cl,(%rdx)
  600851:	00 00                	add    %al,(%rax)
  600853:	00 00                	add    %al,(%rax)
  600855:	00 00                	add    %al,(%rax)
  600857:	00 3f                	add    %bh,(%rdi)
  600859:	00 00                	add    %al,(%rax)
  60085b:	00 00                	add    %al,(%rax)
  60085d:	00 00                	add    %al,(%rax)
  60085f:	00 0b                	add    %cl,(%rbx)
  600861:	00 00                	add    %al,(%rax)
  600863:	00 00                	add    %al,(%rax)
  600865:	00 00                	add    %al,(%rax)
  600867:	00 18                	add    %bl,(%rax)
  600869:	00 00                	add    %al,(%rax)
  60086b:	00 00                	add    %al,(%rax)
  60086d:	00 00                	add    %al,(%rax)
  60086f:	00 15 00 00 00 00    	add    %dl,0x0(%rip)        # 600875 <_DYNAMIC+0x95>
	...
  60087d:	00 00                	add    %al,(%rax)
  60087f:	00 03                	add    %al,(%rbx)
  600881:	00 00                	add    %al,(%rax)
  600883:	00 00                	add    %al,(%rax)
  600885:	00 00                	add    %al,(%rax)
  600887:	00 88 09 60 00 00    	add    %cl,0x6009(%rax)
  60088d:	00 00                	add    %al,(%rax)
  60088f:	00 02                	add    %al,(%rdx)
  600891:	00 00                	add    %al,(%rax)
  600893:	00 00                	add    %al,(%rax)
  600895:	00 00                	add    %al,(%rax)
  600897:	00 30                	add    %dh,(%rax)
  600899:	00 00                	add    %al,(%rax)
  60089b:	00 00                	add    %al,(%rax)
  60089d:	00 00                	add    %al,(%rax)
  60089f:	00 14 00             	add    %dl,(%rax,%rax,1)
  6008a2:	00 00                	add    %al,(%rax)
  6008a4:	00 00                	add    %al,(%rax)
  6008a6:	00 00                	add    %al,(%rax)
  6008a8:	07                   	(bad)  
  6008a9:	00 00                	add    %al,(%rax)
  6008ab:	00 00                	add    %al,(%rax)
  6008ad:	00 00                	add    %al,(%rax)
  6008af:	00 17                	add    %dl,(%rdi)
  6008b1:	00 00                	add    %al,(%rax)
  6008b3:	00 00                	add    %al,(%rax)
  6008b5:	00 00                	add    %al,(%rax)
  6008b7:	00 88 03 40 00 00    	add    %cl,0x4003(%rax)
  6008bd:	00 00                	add    %al,(%rax)
  6008bf:	00 07                	add    %al,(%rdi)
  6008c1:	00 00                	add    %al,(%rax)
  6008c3:	00 00                	add    %al,(%rax)
  6008c5:	00 00                	add    %al,(%rax)
  6008c7:	00 70 03             	add    %dh,0x3(%rax)
  6008ca:	40 00 00             	add    %al,(%rax)
  6008cd:	00 00                	add    %al,(%rax)
  6008cf:	00 08                	add    %cl,(%rax)
  6008d1:	00 00                	add    %al,(%rax)
  6008d3:	00 00                	add    %al,(%rax)
  6008d5:	00 00                	add    %al,(%rax)
  6008d7:	00 18                	add    %bl,(%rax)
  6008d9:	00 00                	add    %al,(%rax)
  6008db:	00 00                	add    %al,(%rax)
  6008dd:	00 00                	add    %al,(%rax)
  6008df:	00 09                	add    %cl,(%rcx)
  6008e1:	00 00                	add    %al,(%rax)
  6008e3:	00 00                	add    %al,(%rax)
  6008e5:	00 00                	add    %al,(%rax)
  6008e7:	00 18                	add    %bl,(%rax)
  6008e9:	00 00                	add    %al,(%rax)
  6008eb:	00 00                	add    %al,(%rax)
  6008ed:	00 00                	add    %al,(%rax)
  6008ef:	00 fe                	add    %bh,%dh
  6008f1:	ff                   	(bad)  
  6008f2:	ff 6f 00             	ljmpq  *0x0(%rdi)
  6008f5:	00 00                	add    %al,(%rax)
  6008f7:	00 50 03             	add    %dl,0x3(%rax)
  6008fa:	40 00 00             	add    %al,(%rax)
  6008fd:	00 00                	add    %al,(%rax)
  6008ff:	00 ff                	add    %bh,%bh
  600901:	ff                   	(bad)  
  600902:	ff 6f 00             	ljmpq  *0x0(%rdi)
  600905:	00 00                	add    %al,(%rax)
  600907:	00 01                	add    %al,(%rcx)
  600909:	00 00                	add    %al,(%rax)
  60090b:	00 00                	add    %al,(%rax)
  60090d:	00 00                	add    %al,(%rax)
  60090f:	00 f0                	add    %dh,%al
  600911:	ff                   	(bad)  
  600912:	ff 6f 00             	ljmpq  *0x0(%rdi)
  600915:	00 00                	add    %al,(%rax)
  600917:	00 48 03             	add    %cl,0x3(%rax)
  60091a:	40 00 00             	add    %al,(%rax)
	...

Disassembly of section .got:

0000000000600980 <.got>:
	...

Disassembly of section .got.plt:

0000000000600988 <_GLOBAL_OFFSET_TABLE_>:
  600988:	e0 07                	loopne 600991 <_GLOBAL_OFFSET_TABLE_+0x9>
  60098a:	60                   	(bad)  
	...
  60099f:	00 e6                	add    %ah,%dh
  6009a1:	03 40 00             	add    0x0(%rax),%eax
  6009a4:	00 00                	add    %al,(%rax)
  6009a6:	00 00                	add    %al,(%rax)
  6009a8:	f6 03 40             	testb  $0x40,(%rbx)
  6009ab:	00 00                	add    %al,(%rax)
  6009ad:	00 00                	add    %al,(%rax)
	...

Disassembly of section .data:

00000000006009b0 <__data_start>:
	...

00000000006009b8 <__dso_handle>:
	...

Disassembly of section .bss:

00000000006009c0 <completed.5886>:
	...

00000000006009c8 <dtor_idx.5888>:
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	47                   	rex.RXB
   1:	43                   	rex.XB
   2:	43 3a 20             	rex.XB cmp (%r8),%spl
   5:	28 44 65 62          	sub    %al,0x62(%rbp,%riz,2)
   9:	69 61 6e 20 34 2e 36 	imul   $0x362e3420,0x6e(%rcx),%esp
  10:	2e 33 2d 31 34 29 20 	xor    %cs:0x20293431(%rip),%ebp        # 20293448 <_end+0x1fc92a78>
  17:	34 2e                	xor    $0x2e,%al
  19:	36 2e 33 00          	ss xor %cs:%ss:(%rax),%eax
  1d:	47                   	rex.RXB
  1e:	43                   	rex.XB
  1f:	43 3a 20             	rex.XB cmp (%r8),%spl
  22:	28 44 65 62          	sub    %al,0x62(%rbp,%riz,2)
  26:	69 61 6e 20 34 2e 34 	imul   $0x342e3420,0x6e(%rcx),%esp
  2d:	2e                   	cs
  2e:	37                   	(bad)  
  2f:	2d 32 29 20 34       	sub    $0x34202932,%eax
  34:	2e                   	cs
  35:	34 2e                	xor    $0x2e,%al
  37:	37                   	(bad)  
	...
