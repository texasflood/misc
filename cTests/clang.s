push   %rbp
mov    %rsp,%rbp
sub    $0x10,%rsp
movl   $0x0,-0x4(%rbp)
mov    $0x0,%al
callq  4005d0 <foo>
mov    %eax,-0x8(%rbp)
mov    $0x0,%al
callq  4005b0 <bar>
lea    0x400664,%rdi
mov    -0x8(%rbp),%esi
mov    %eax,%edx
mov    $0x0,%al
callq  400460 <printf@plt>
