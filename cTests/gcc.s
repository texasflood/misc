push   %rbp
mov    %rsp,%rbp
push   %rbx
sub    $0x8,%rsp
mov    $0x0,%eax
callq  4005d0 <bar>
mov    %eax,%ebx
mov    $0x0,%eax
callq  4005bb <foo>
mov    %ebx,%edx
mov    %eax,%esi
mov    $0x400674,%edi
mov    $0x0,%eax
callq  400460 <printf@plt>
