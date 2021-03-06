物理地址=SA*16+EA =基础地址+偏移地址
    SA：段地址     
    EA：偏移地址

通用寄存器：
    ax bx,cx,dx

段寄存器：不支持直接将数据送入段寄存器的操作
    CS：代码段寄存器
        IP：指令指针寄存器
        CS：IP M：N 8086将内存单元M*16+N单元开始读取指令并执行
        同时修改CS:IP 用jmp 段地址：偏移地址完成
    
    DS：存放要访问数据的段地址，默认段地址

    SS：SP 指向栈顶元素 SS 存放栈顶的段地址 SP存放偏移地址

dw：
    可以说是定义数据，也可以说是用它开辟内存空间


定义多个段的方法
    定义一个段的方法和定义代码段的方法没有区别，只是对于不同的段，要有不同的段名。

对段地址的引用 在程序中，段名就相当于一个标号，它代表段地址。一个段中的数据的段地址可由段名代表，偏移地址就要看它在段中的位置了。
 
总之，CPU到底如何处理我们定义的段中的内容，是当作指令执行，当作数据访问，还是当作栈空间来用，完全是靠程序中具体的汇编指令，和汇编指令对CS:IP、SS:SP、DS等寄存器的设置来决定的。

