00020400  668CD8            mov ax,ds
00020403  8ED0              mov ss,ax
00020405  8EE0              mov fs,ax
00020407  8EE8              mov gs,ax
00020409  BCE0620200        mov esp,0x262e0
0002040E  0F0105B8750300    sgdt [dword 0x375b8]
00020415  E82E000000        call dword 0x20448
0002041A  0F0115B8750300    lgdt [dword 0x375b8]
00020421  0F011DE07A0200    lidt [dword 0x27ae0]
00020428  8B25E87D0300      mov esp,[dword 0x37de8]
0002042E  0FA9              pop gs
00020430  0FA1              pop fs
00020432  07                pop es
00020433  1F                pop ds
00020434  61                popad
00020435  CF                iretd
00020436  0F20E0            mov eax,cr4
00020439  0D00020000        or eax,0x200
0002043E  0F22E0            mov cr4,eax
00020441  D92D00400200      fldcw [dword 0x24000]
00020447  C3                ret
00020448  55                push ebp
00020449  89E5              mov ebp,esp
0002044B  83EC18            sub esp,byte +0x18
0002044E  C705E07D03000000  mov dword [dword 0x37de0],0x0
         -0000
00020458  C705007303002003  mov dword [dword 0x37300],0x320
         -0000
00020462  C705049303000000  mov dword [dword 0x39304],0x0
         -0000
0002046C  C605E67A020000    mov byte [dword 0x27ae6],0x0
00020473  C605E57D030000    mov byte [dword 0x37de5],0x0
0002047A  C605E47D030000    mov byte [dword 0x37de4],0x0
00020481  C705F07A02000000  mov dword [dword 0x27af0],0x0
         -0000
0002048B  C705C07503000000  mov dword [dword 0x375c0],0x0
         -0000
00020495  E832180000        call dword 0x21ccc
0002049A  E8851D0000        call dword 0x22224
0002049F  C704244C330200    mov dword [esp],0x2334c
000204A6  E8AB120000        call dword 0x21756
000204AB  E844100000        call dword 0x214f4
000204B0  C7042469330200    mov dword [esp],0x23369
000204B7  E89A120000        call dword 0x21756
000204BC  E867050000        call dword 0x20a28
000204C1  C704247D330200    mov dword [esp],0x2337d
000204C8  E889120000        call dword 0x21756
000204CD  E8AA240000        call dword 0x2297c
000204D2  E8E51B0000        call dword 0x220bc
000204D7  C7042498330200    mov dword [esp],0x23398
000204DE  E873120000        call dword 0x21756
000204E3  E838000000        call dword 0x20520
000204E8  C70424B1330200    mov dword [esp],0x233b1
000204EF  E862120000        call dword 0x21756
000204F4  E85B0A0000        call dword 0x20f54
000204F9  C70424CF330200    mov dword [esp],0x233cf
00020500  E851120000        call dword 0x21756
00020505  E8322E0000        call dword 0x2333c
0002050A  A100730300        mov eax,[0x37300]
0002050F  890424            mov [esp],eax
00020512  E8FC210000        call dword 0x22713
00020517  E8D4260000        call dword 0x22bf0
0002051C  C9                leave
0002051D  C3                ret
0002051E  90                nop
0002051F  90                nop
00020520  55                push ebp
00020521  89E5              mov ebp,esp
00020523  83EC28            sub esp,byte +0x28
00020526  C745F4007E0300    mov dword [ebp-0xc],0x37e00
0002052D  C705E87D0300007E  mov dword [dword 0x37de8],0x37e00
         -0300
00020537  BA06270200        mov edx,0x22706
0002053C  8B45F4            mov eax,[ebp-0xc]
0002053F  895030            mov [eax+0x30],edx
00020542  8B45F4            mov eax,[ebp-0xc]
00020545  C7403431000000    mov dword [eax+0x34],0x31
0002054C  8B45F4            mov eax,[ebp-0xc]
0002054F  C7400C39000000    mov dword [eax+0xc],0x39
00020556  8B45F4            mov eax,[ebp-0xc]
00020559  C7400839000000    mov dword [eax+0x8],0x39
00020560  8B45F4            mov eax,[ebp-0xc]
00020563  C70039000000      mov dword [eax],0x39
00020569  8B45F4            mov eax,[ebp-0xc]
0002056C  C7400439000000    mov dword [eax+0x4],0x39
00020573  8B45F4            mov eax,[ebp-0xc]
00020576  C7404039000000    mov dword [eax+0x40],0x39
0002057D  8B45F4            mov eax,[ebp-0xc]
00020580  C7403802120000    mov dword [eax+0x38],0x1202
00020587  C7042400040000    mov dword [esp],0x400
0002058E  E8D21D0000        call dword 0x22365
00020593  8D9000040000      lea edx,[eax+0x400]
00020599  8B45F4            mov eax,[ebp-0xc]
0002059C  89501C            mov [eax+0x1c],edx
0002059F  8B45F4            mov eax,[ebp-0xc]
000205A2  8B501C            mov edx,[eax+0x1c]
000205A5  8B45F4            mov eax,[ebp-0xc]
000205A8  89503C            mov [eax+0x3c],edx
000205AB  8B45F4            mov eax,[ebp-0xc]
000205AE  C7404400000000    mov dword [eax+0x44],0x0
000205B5  8B45F4            mov eax,[ebp-0xc]
000205B8  C7406000000000    mov dword [eax+0x60],0x0
000205BF  8B45F4            mov eax,[ebp-0xc]
000205C2  C7406800000000    mov dword [eax+0x68],0x0
000205C9  8B45F4            mov eax,[ebp-0xc]
000205CC  C7406400000000    mov dword [eax+0x64],0x0
000205D3  A1C0750300        mov eax,[0x375c0]
000205D8  83C001            add eax,byte +0x1
000205DB  A3C0750300        mov [0x375c0],eax
000205E0  8345F470          add dword [ebp-0xc],byte +0x70
000205E4  BA3D1A0200        mov edx,0x21a3d
000205E9  8B45F4            mov eax,[ebp-0xc]
000205EC  895030            mov [eax+0x30],edx
000205EF  8B45F4            mov eax,[ebp-0xc]
000205F2  C740341B000000    mov dword [eax+0x34],0x1b
000205F9  8B45F4            mov eax,[ebp-0xc]
000205FC  C7400C23000000    mov dword [eax+0xc],0x23
00020603  8B45F4            mov eax,[ebp-0xc]
00020606  C7400823000000    mov dword [eax+0x8],0x23
0002060D  8B45F4            mov eax,[ebp-0xc]
00020610  C70023000000      mov dword [eax],0x23
00020616  8B45F4            mov eax,[ebp-0xc]
00020619  C7400423000000    mov dword [eax+0x4],0x23
00020620  8B45F4            mov eax,[ebp-0xc]
00020623  C7404023000000    mov dword [eax+0x40],0x23
0002062A  8B45F4            mov eax,[ebp-0xc]
0002062D  C7403802020000    mov dword [eax+0x38],0x202
00020634  C7042400040000    mov dword [esp],0x400
0002063B  E8251D0000        call dword 0x22365
00020640  8D9000040000      lea edx,[eax+0x400]
00020646  8B45F4            mov eax,[ebp-0xc]
00020649  89501C            mov [eax+0x1c],edx
0002064C  8B45F4            mov eax,[ebp-0xc]
0002064F  8B501C            mov edx,[eax+0x1c]
00020652  8B45F4            mov eax,[ebp-0xc]
00020655  89503C            mov [eax+0x3c],edx
00020658  8B45F4            mov eax,[ebp-0xc]
0002065B  C7404400000000    mov dword [eax+0x44],0x0
00020662  8B45F4            mov eax,[ebp-0xc]
00020665  C7406000000000    mov dword [eax+0x60],0x0
0002066C  8B45F4            mov eax,[ebp-0xc]
0002066F  C7406800000000    mov dword [eax+0x68],0x0
00020676  8B45F4            mov eax,[ebp-0xc]
00020679  C7406400000000    mov dword [eax+0x64],0x0
00020680  A1F07A0200        mov eax,[0x27af0]
00020685  83C001            add eax,byte +0x1
00020688  A3F07A0200        mov [0x27af0],eax
0002068D  C705009303000000  mov dword [dword 0x39300],0x0
         -0000
00020697  C9                leave
00020698  C3                ret
00020699  55                push ebp
0002069A  89E5              mov ebp,esp
0002069C  83EC08            sub esp,byte +0x8
0002069F  A1E87D0300        mov eax,[0x37de8]
000206A4  C7404401000000    mov dword [eax+0x44],0x1
000206AB  A1E87D0300        mov eax,[0x37de8]
000206B0  8B4064            mov eax,[eax+0x64]
000206B3  83F801            cmp eax,byte +0x1
000206B6  0F8483000000      jz dword 0x2073f
000206BC  A1E87D0300        mov eax,[0x37de8]
000206C1  A3AC750300        mov [0x375ac],eax
000206C6  A1E87D0300        mov eax,[0x37de8]
000206CB  89C2              mov edx,eax
000206CD  B8007E0300        mov eax,0x37e00
000206D2  89D1              mov ecx,edx
000206D4  29C1              sub ecx,eax
000206D6  89C8              mov eax,ecx
000206D8  C1F804            sar eax,0x4
000206DB  69C0B76DDBB6      imul eax,eax,dword 0xb6db6db7
000206E1  8B0DF07A0200      mov ecx,[dword 0x27af0]
000206E7  8B15C0750300      mov edx,[dword 0x375c0]
000206ED  01CA              add edx,ecx
000206EF  83EA01            sub edx,byte +0x1
000206F2  39D0              cmp eax,edx
000206F4  750C              jnz 0x20702
000206F6  C705E87D0300007E  mov dword [dword 0x37de8],0x37e00
         -0300
00020700  EB0D              jmp short 0x2070f
00020702  A1E87D0300        mov eax,[0x37de8]
00020707  83C070            add eax,byte +0x70
0002070A  A3E87D0300        mov [0x37de8],eax
0002070F  A1E87D0300        mov eax,[0x37de8]
00020714  8B4060            mov eax,[eax+0x60]
00020717  83F801            cmp eax,byte +0x1
0002071A  7505              jnz 0x20721
0002071C  E878FFFFFF        call dword 0x20699
00020721  A1E87D0300        mov eax,[0x37de8]
00020726  8B4068            mov eax,[eax+0x68]
00020729  83F801            cmp eax,byte +0x1
0002072C  7505              jnz 0x20733
0002072E  E866FFFFFF        call dword 0x20699
00020733  C705009303000100  mov dword [dword 0x39300],0x1
         -0000
0002073D  EB01              jmp short 0x20740
0002073F  90                nop
00020740  C9                leave
00020741  C3                ret
00020742  55                push ebp
00020743  89E5              mov ebp,esp
00020745  83EC28            sub esp,byte +0x28
00020748  C745F400000000    mov dword [ebp-0xc],0x0
0002074F  C745F0007E0300    mov dword [ebp-0x10],0x37e00
00020756  EB17              jmp short 0x2076f
00020758  8B45F0            mov eax,[ebp-0x10]
0002075B  8B4068            mov eax,[eax+0x68]
0002075E  85C0              test eax,eax
00020760  7409              jz 0x2076b
00020762  C745F401000000    mov dword [ebp-0xc],0x1
00020769  EB30              jmp short 0x2079b
0002076B  8345F070          add dword [ebp-0x10],byte +0x70
0002076F  8B55F0            mov edx,[ebp-0x10]
00020772  B8007E0300        mov eax,0x37e00
00020777  89D1              mov ecx,edx
00020779  29C1              sub ecx,eax
0002077B  89C8              mov eax,ecx
0002077D  C1F804            sar eax,0x4
00020780  69C0B76DDBB6      imul eax,eax,dword 0xb6db6db7
00020786  8B0DC0750300      mov ecx,[dword 0x375c0]
0002078C  8B15F07A0200      mov edx,[dword 0x27af0]
00020792  01CA              add edx,ecx
00020794  83EA01            sub edx,byte +0x1
00020797  39D0              cmp eax,edx
00020799  72BD              jc 0x20758
0002079B  837DF400          cmp dword [ebp-0xc],byte +0x0
0002079F  753E              jnz 0x207df
000207A1  8345F070          add dword [ebp-0x10],byte +0x70
000207A5  837D0C01          cmp dword [ebp+0xc],byte +0x1
000207A9  7406              jz 0x207b1
000207AB  837D0C00          cmp dword [ebp+0xc],byte +0x0
000207AF  750F              jnz 0x207c0
000207B1  A1C0750300        mov eax,[0x375c0]
000207B6  83C001            add eax,byte +0x1
000207B9  A3C0750300        mov [0x375c0],eax
000207BE  EB1F              jmp short 0x207df
000207C0  837D0C03          cmp dword [ebp+0xc],byte +0x3
000207C4  750F              jnz 0x207d5
000207C6  A1F07A0200        mov eax,[0x27af0]
000207CB  83C001            add eax,byte +0x1
000207CE  A3F07A0200        mov [0x27af0],eax
000207D3  EB0A              jmp short 0x207df
000207D5  B800000000        mov eax,0x0
000207DA  E989010000        jmp dword 0x20968
000207DF  837D0C01          cmp dword [ebp+0xc],byte +0x1
000207E3  756E              jnz 0x20853
000207E5  8B45F0            mov eax,[ebp-0x10]
000207E8  C7403431000000    mov dword [eax+0x34],0x31
000207EF  8B45F0            mov eax,[ebp-0x10]
000207F2  C7400C39000000    mov dword [eax+0xc],0x39
000207F9  8B45F0            mov eax,[ebp-0x10]
000207FC  C7400839000000    mov dword [eax+0x8],0x39
00020803  8B45F0            mov eax,[ebp-0x10]
00020806  C70039000000      mov dword [eax],0x39
0002080C  8B45F0            mov eax,[ebp-0x10]
0002080F  C7400439000000    mov dword [eax+0x4],0x39
00020816  8B45F0            mov eax,[ebp-0x10]
00020819  C7404039000000    mov dword [eax+0x40],0x39
00020820  8B45F0            mov eax,[ebp-0x10]
00020823  C7403802120000    mov dword [eax+0x38],0x1202
0002082A  C7042400040000    mov dword [esp],0x400
00020831  E82F1B0000        call dword 0x22365
00020836  8D9000040000      lea edx,[eax+0x400]
0002083C  8B45F0            mov eax,[ebp-0x10]
0002083F  89501C            mov [eax+0x1c],edx
00020842  8B45F0            mov eax,[ebp-0x10]
00020845  8B501C            mov edx,[eax+0x1c]
00020848  8B45F0            mov eax,[ebp-0x10]
0002084B  89503C            mov [eax+0x3c],edx
0002084E  E9DF000000        jmp dword 0x20932
00020853  837D0C03          cmp dword [ebp+0xc],byte +0x3
00020857  756B              jnz 0x208c4
00020859  8B45F0            mov eax,[ebp-0x10]
0002085C  C740341B000000    mov dword [eax+0x34],0x1b
00020863  8B45F0            mov eax,[ebp-0x10]
00020866  C7400C23000000    mov dword [eax+0xc],0x23
0002086D  8B45F0            mov eax,[ebp-0x10]
00020870  C7400823000000    mov dword [eax+0x8],0x23
00020877  8B45F0            mov eax,[ebp-0x10]
0002087A  C70023000000      mov dword [eax],0x23
00020880  8B45F0            mov eax,[ebp-0x10]
00020883  C7400423000000    mov dword [eax+0x4],0x23
0002088A  8B45F0            mov eax,[ebp-0x10]
0002088D  C7404023000000    mov dword [eax+0x40],0x23
00020894  8B45F0            mov eax,[ebp-0x10]
00020897  C7403802020000    mov dword [eax+0x38],0x202
0002089E  C7042400100000    mov dword [esp],0x1000
000208A5  E8EF190000        call dword 0x22299
000208AA  8D9000100000      lea edx,[eax+0x1000]
000208B0  8B45F0            mov eax,[ebp-0x10]
000208B3  89501C            mov [eax+0x1c],edx
000208B6  8B45F0            mov eax,[ebp-0x10]
000208B9  8B501C            mov edx,[eax+0x1c]
000208BC  8B45F0            mov eax,[ebp-0x10]
000208BF  89503C            mov [eax+0x3c],edx
000208C2  EB6E              jmp short 0x20932
000208C4  837D0C00          cmp dword [ebp+0xc],byte +0x0
000208C8  7561              jnz 0x2092b
000208CA  8B45F0            mov eax,[ebp-0x10]
000208CD  C7403408000000    mov dword [eax+0x34],0x8
000208D4  8B45F0            mov eax,[ebp-0x10]
000208D7  C7400C10000000    mov dword [eax+0xc],0x10
000208DE  8B45F0            mov eax,[ebp-0x10]
000208E1  C7400810000000    mov dword [eax+0x8],0x10
000208E8  8B45F0            mov eax,[ebp-0x10]
000208EB  C70010000000      mov dword [eax],0x10
000208F1  8B45F0            mov eax,[ebp-0x10]
000208F4  C7400410000000    mov dword [eax+0x4],0x10
000208FB  8B45F0            mov eax,[ebp-0x10]
000208FE  C7404010000000    mov dword [eax+0x40],0x10
00020905  C7042400040000    mov dword [esp],0x400
0002090C  E8541A0000        call dword 0x22365
00020911  8D9000040000      lea edx,[eax+0x400]
00020917  8B45F0            mov eax,[ebp-0x10]
0002091A  89501C            mov [eax+0x1c],edx
0002091D  8B45F0            mov eax,[ebp-0x10]
00020920  8B501C            mov edx,[eax+0x1c]
00020923  8B45F0            mov eax,[ebp-0x10]
00020926  89503C            mov [eax+0x3c],edx
00020929  EB07              jmp short 0x20932
0002092B  B800000000        mov eax,0x0
00020930  EB36              jmp short 0x20968
00020932  8B45F0            mov eax,[ebp-0x10]
00020935  8B5508            mov edx,[ebp+0x8]
00020938  895030            mov [eax+0x30],edx
0002093B  8B45F0            mov eax,[ebp-0x10]
0002093E  C7404400000000    mov dword [eax+0x44],0x0
00020945  8B45F0            mov eax,[ebp-0x10]
00020948  C7406000000000    mov dword [eax+0x60],0x0
0002094F  8B45F0            mov eax,[ebp-0x10]
00020952  C7406800000000    mov dword [eax+0x68],0x0
00020959  8B45F0            mov eax,[ebp-0x10]
0002095C  C7406400000000    mov dword [eax+0x64],0x0
00020963  B801000000        mov eax,0x1
00020968  C9                leave
00020969  C3                ret
0002096A  55                push ebp
0002096B  89E5              mov ebp,esp
0002096D  83EC10            sub esp,byte +0x10
00020970  C745FC007E0300    mov dword [ebp-0x4],0x37e00
00020977  EB1D              jmp short 0x20996
00020979  8B45FC            mov eax,[ebp-0x4]
0002097C  3B4508            cmp eax,[ebp+0x8]
0002097F  7511              jnz 0x20992
00020981  8B4508            mov eax,[ebp+0x8]
00020984  C7406801000000    mov dword [eax+0x68],0x1
0002098B  B801000000        mov eax,0x1
00020990  EB35              jmp short 0x209c7
00020992  8345FC70          add dword [ebp-0x4],byte +0x70
00020996  8B55FC            mov edx,[ebp-0x4]
00020999  B8007E0300        mov eax,0x37e00
0002099E  89D1              mov ecx,edx
000209A0  29C1              sub ecx,eax
000209A2  89C8              mov eax,ecx
000209A4  C1F804            sar eax,0x4
000209A7  69C0B76DDBB6      imul eax,eax,dword 0xb6db6db7
000209AD  8B0DC0750300      mov ecx,[dword 0x375c0]
000209B3  8B15F07A0200      mov edx,[dword 0x27af0]
000209B9  01CA              add edx,ecx
000209BB  83EA01            sub edx,byte +0x1
000209BE  39D0              cmp eax,edx
000209C0  72B7              jc 0x20979
000209C2  B800000000        mov eax,0x0
000209C7  C9                leave
000209C8  C3                ret
000209C9  55                push ebp
000209CA  89E5              mov ebp,esp
000209CC  83EC10            sub esp,byte +0x10
000209CF  C745FC007E0300    mov dword [ebp-0x4],0x37e00
000209D6  EB1D              jmp short 0x209f5
000209D8  8B45FC            mov eax,[ebp-0x4]
000209DB  3B4508            cmp eax,[ebp+0x8]
000209DE  7511              jnz 0x209f1
000209E0  8B4508            mov eax,[ebp+0x8]
000209E3  C7406001000000    mov dword [eax+0x60],0x1
000209EA  B801000000        mov eax,0x1
000209EF  EB35              jmp short 0x20a26
000209F1  8345FC70          add dword [ebp-0x4],byte +0x70
000209F5  8B55FC            mov edx,[ebp-0x4]
000209F8  B8007E0300        mov eax,0x37e00
000209FD  89D1              mov ecx,edx
000209FF  29C1              sub ecx,eax
00020A01  89C8              mov eax,ecx
00020A03  C1F804            sar eax,0x4
00020A06  69C0B76DDBB6      imul eax,eax,dword 0xb6db6db7
00020A0C  8B0DC0750300      mov ecx,[dword 0x375c0]
00020A12  8B15F07A0200      mov edx,[dword 0x27af0]
00020A18  01CA              add edx,ecx
00020A1A  83EA01            sub edx,byte +0x1
00020A1D  39D0              cmp eax,edx
00020A1F  72B7              jc 0x209d8
00020A21  B800000000        mov eax,0x0
00020A26  C9                leave
00020A27  C3                ret
00020A28  55                push ebp
00020A29  89E5              mov ebp,esp
00020A2B  83EC28            sub esp,byte +0x28
00020A2E  B8B8750300        mov eax,0x375b8
00020A33  0FB700            movzx eax,word [eax]
00020A36  0FB7C0            movzx eax,ax
00020A39  83C001            add eax,byte +0x1
00020A3C  89C1              mov ecx,eax
00020A3E  B8BA750300        mov eax,0x375ba
00020A43  8B10              mov edx,[eax]
00020A45  B8006B0300        mov eax,0x36b00
00020A4A  894C2408          mov [esp+0x8],ecx
00020A4E  89542404          mov [esp+0x4],edx
00020A52  890424            mov [esp],eax
00020A55  E8570D0000        call dword 0x217b1
00020A5A  C745F4BA750300    mov dword [ebp-0xc],0x375ba
00020A61  C745F0B8750300    mov dword [ebp-0x10],0x375b8
00020A68  BA006B0300        mov edx,0x36b00
00020A6D  8B45F4            mov eax,[ebp-0xc]
00020A70  8910              mov [eax],edx
00020A72  8B45F0            mov eax,[ebp-0x10]
00020A75  66C700FF07        mov word [eax],0x7ff
00020A7A  C745F4E27A0200    mov dword [ebp-0xc],0x27ae2
00020A81  C745F0E07A0200    mov dword [ebp-0x10],0x27ae0
00020A88  BAE0750300        mov edx,0x375e0
00020A8D  8B45F4            mov eax,[ebp-0xc]
00020A90  8910              mov [eax],edx
00020A92  8B45F0            mov eax,[ebp-0x10]
00020A95  66C700FF07        mov word [eax],0x7ff
00020A9A  C7442408901B0200  mov dword [esp+0x8],0x21b90
00020AA2  C74424048F000000  mov dword [esp+0x4],0x8f
00020AAA  C7042400000000    mov dword [esp],0x0
00020AB1  E840040000        call dword 0x20ef6
00020AB6  C7442408A01B0200  mov dword [esp+0x8],0x21ba0
00020ABE  C74424048F000000  mov dword [esp+0x4],0x8f
00020AC6  C7042401000000    mov dword [esp],0x1
00020ACD  E824040000        call dword 0x20ef6
00020AD2  C7442408B01B0200  mov dword [esp+0x8],0x21bb0
00020ADA  C74424048F000000  mov dword [esp+0x4],0x8f
00020AE2  C7042402000000    mov dword [esp],0x2
00020AE9  E808040000        call dword 0x20ef6
00020AEE  C7442408C01B0200  mov dword [esp+0x8],0x21bc0
00020AF6  C74424048F000000  mov dword [esp+0x4],0x8f
00020AFE  C7042403000000    mov dword [esp],0x3
00020B05  E8EC030000        call dword 0x20ef6
00020B0A  C7442408D01B0200  mov dword [esp+0x8],0x21bd0
00020B12  C74424048F000000  mov dword [esp+0x4],0x8f
00020B1A  C7042404000000    mov dword [esp],0x4
00020B21  E8D0030000        call dword 0x20ef6
00020B26  C7442408E01B0200  mov dword [esp+0x8],0x21be0
00020B2E  C74424048F000000  mov dword [esp+0x4],0x8f
00020B36  C7042405000000    mov dword [esp],0x5
00020B3D  E8B4030000        call dword 0x20ef6
00020B42  C7442408F01B0200  mov dword [esp+0x8],0x21bf0
00020B4A  C74424048F000000  mov dword [esp+0x4],0x8f
00020B52  C7042406000000    mov dword [esp],0x6
00020B59  E898030000        call dword 0x20ef6
00020B5E  C7442408001C0200  mov dword [esp+0x8],0x21c00
00020B66  C74424048F000000  mov dword [esp+0x4],0x8f
00020B6E  C7042407000000    mov dword [esp],0x7
00020B75  E87C030000        call dword 0x20ef6
00020B7A  C7442408101C0200  mov dword [esp+0x8],0x21c10
00020B82  C74424048F000000  mov dword [esp+0x4],0x8f
00020B8A  C7042408000000    mov dword [esp],0x8
00020B91  E860030000        call dword 0x20ef6
00020B96  C7442408201C0200  mov dword [esp+0x8],0x21c20
00020B9E  C74424048F000000  mov dword [esp+0x4],0x8f
00020BA6  C7042409000000    mov dword [esp],0x9
00020BAD  E844030000        call dword 0x20ef6
00020BB2  C7442408301C0200  mov dword [esp+0x8],0x21c30
00020BBA  C74424048F000000  mov dword [esp+0x4],0x8f
00020BC2  C704240A000000    mov dword [esp],0xa
00020BC9  E828030000        call dword 0x20ef6
00020BCE  C7442408401C0200  mov dword [esp+0x8],0x21c40
00020BD6  C74424048F000000  mov dword [esp+0x4],0x8f
00020BDE  C704240B000000    mov dword [esp],0xb
00020BE5  E80C030000        call dword 0x20ef6
00020BEA  C7442408501C0200  mov dword [esp+0x8],0x21c50
00020BF2  C74424048F000000  mov dword [esp+0x4],0x8f
00020BFA  C704240C000000    mov dword [esp],0xc
00020C01  E8F0020000        call dword 0x20ef6
00020C06  C7442408601C0200  mov dword [esp+0x8],0x21c60
00020C0E  C74424048F000000  mov dword [esp+0x4],0x8f
00020C16  C704240D000000    mov dword [esp],0xd
00020C1D  E8D4020000        call dword 0x20ef6
00020C22  C7442408801C0200  mov dword [esp+0x8],0x21c80
00020C2A  C74424048F000000  mov dword [esp+0x4],0x8f
00020C32  C704240E000000    mov dword [esp],0xe
00020C39  E8B8020000        call dword 0x20ef6
00020C3E  C7442408901C0200  mov dword [esp+0x8],0x21c90
00020C46  C74424048F000000  mov dword [esp+0x4],0x8f
00020C4E  C7042410000000    mov dword [esp],0x10
00020C55  E89C020000        call dword 0x20ef6
00020C5A  C7442408A01C0200  mov dword [esp+0x8],0x21ca0
00020C62  C74424048F000000  mov dword [esp+0x4],0x8f
00020C6A  C7042411000000    mov dword [esp],0x11
00020C71  E880020000        call dword 0x20ef6
00020C76  C7442408B01C0200  mov dword [esp+0x8],0x21cb0
00020C7E  C74424048F000000  mov dword [esp+0x4],0x8f
00020C86  C7042412000000    mov dword [esp],0x12
00020C8D  E864020000        call dword 0x20ef6
00020C92  C7442408C01C0200  mov dword [esp+0x8],0x21cc0
00020C9A  C74424048F000000  mov dword [esp+0x4],0x8f
00020CA2  C7042413000000    mov dword [esp],0x13
00020CA9  E848020000        call dword 0x20ef6
00020CAE  C7442408901A0200  mov dword [esp+0x8],0x21a90
00020CB6  C74424048E000000  mov dword [esp+0x4],0x8e
00020CBE  C7042420000000    mov dword [esp],0x20
00020CC5  E82C020000        call dword 0x20ef6
00020CCA  C7442408101B0200  mov dword [esp+0x8],0x21b10
00020CD2  C74424048E000000  mov dword [esp+0x4],0x8e
00020CDA  C7042421000000    mov dword [esp],0x21
00020CE1  E810020000        call dword 0x20ef6
00020CE6  C7442408401B0200  mov dword [esp+0x8],0x21b40
00020CEE  C74424048E000000  mov dword [esp+0x4],0x8e
00020CF6  C7042422000000    mov dword [esp],0x22
00020CFD  E8F4010000        call dword 0x20ef6
00020D02  C7442408401B0200  mov dword [esp+0x8],0x21b40
00020D0A  C74424048E000000  mov dword [esp+0x4],0x8e
00020D12  C7042423000000    mov dword [esp],0x23
00020D19  E8D8010000        call dword 0x20ef6
00020D1E  C7442408401B0200  mov dword [esp+0x8],0x21b40
00020D26  C74424048E000000  mov dword [esp+0x4],0x8e
00020D2E  C7042424000000    mov dword [esp],0x24
00020D35  E8BC010000        call dword 0x20ef6
00020D3A  C7442408401B0200  mov dword [esp+0x8],0x21b40
00020D42  C74424048E000000  mov dword [esp+0x4],0x8e
00020D4A  C7042425000000    mov dword [esp],0x25
00020D51  E8A0010000        call dword 0x20ef6
00020D56  C7442408401B0200  mov dword [esp+0x8],0x21b40
00020D5E  C74424048E000000  mov dword [esp+0x4],0x8e
00020D66  C7042426000000    mov dword [esp],0x26
00020D6D  E884010000        call dword 0x20ef6
00020D72  C7442408401B0200  mov dword [esp+0x8],0x21b40
00020D7A  C74424048E000000  mov dword [esp+0x4],0x8e
00020D82  C7042427000000    mov dword [esp],0x27
00020D89  E868010000        call dword 0x20ef6
00020D8E  C7442408401B0200  mov dword [esp+0x8],0x21b40
00020D96  C74424048E000000  mov dword [esp+0x4],0x8e
00020D9E  C7042428000000    mov dword [esp],0x28
00020DA5  E84C010000        call dword 0x20ef6
00020DAA  C7442408601B0200  mov dword [esp+0x8],0x21b60
00020DB2  C74424048E000000  mov dword [esp+0x4],0x8e
00020DBA  C7042429000000    mov dword [esp],0x29
00020DC1  E830010000        call dword 0x20ef6
00020DC6  C7442408601B0200  mov dword [esp+0x8],0x21b60
00020DCE  C74424048E000000  mov dword [esp+0x4],0x8e
00020DD6  C704242A000000    mov dword [esp],0x2a
00020DDD  E814010000        call dword 0x20ef6
00020DE2  C7442408601B0200  mov dword [esp+0x8],0x21b60
00020DEA  C74424048E000000  mov dword [esp+0x4],0x8e
00020DF2  C704242B000000    mov dword [esp],0x2b
00020DF9  E8F8000000        call dword 0x20ef6
00020DFE  C7442408601B0200  mov dword [esp+0x8],0x21b60
00020E06  C74424048E000000  mov dword [esp+0x4],0x8e
00020E0E  C704242C000000    mov dword [esp],0x2c
00020E15  E8DC000000        call dword 0x20ef6
00020E1A  C7442408901B0200  mov dword [esp+0x8],0x21b90
00020E22  C74424048E000000  mov dword [esp+0x4],0x8e
00020E2A  C704242D000000    mov dword [esp],0x2d
00020E31  E8C0000000        call dword 0x20ef6
00020E36  C7442408901B0200  mov dword [esp+0x8],0x21b90
00020E3E  C74424048E000000  mov dword [esp+0x4],0x8e
00020E46  C704242E000000    mov dword [esp],0x2e
00020E4D  E8A4000000        call dword 0x20ef6
00020E52  C7442408901B0200  mov dword [esp+0x8],0x21b90
00020E5A  C74424048E000000  mov dword [esp+0x4],0x8e
00020E62  C704242F000000    mov dword [esp],0x2f
00020E69  E888000000        call dword 0x20ef6
00020E6E  C9                leave
00020E6F  C3                ret
00020E70  55                push ebp
00020E71  89E5              mov ebp,esp
00020E73  83EC10            sub esp,byte +0x10
00020E76  8B4508            mov eax,[ebp+0x8]
00020E79  C1E003            shl eax,0x3
00020E7C  05E0750300        add eax,0x375e0
00020E81  8945FC            mov [ebp-0x4],eax
00020E84  837D0800          cmp dword [ebp+0x8],byte +0x0
00020E88  7907              jns 0x20e91
00020E8A  B8FFFFFFFF        mov eax,0xffffffff
00020E8F  EB2A              jmp short 0x20ebb
00020E91  8B45FC            mov eax,[ebp-0x4]
00020E94  66C740020800      mov word [eax+0x2],0x8
00020E9A  8B450C            mov eax,[ebp+0xc]
00020E9D  0FB6D0            movzx edx,al
00020EA0  8B45FC            mov eax,[ebp-0x4]
00020EA3  668910            mov [eax],dx
00020EA6  8B450C            mov eax,[ebp+0xc]
00020EA9  C1E810            shr eax,0x10
00020EAC  0FB6D0            movzx edx,al
00020EAF  8B45FC            mov eax,[ebp-0x4]
00020EB2  66895006          mov [eax+0x6],dx
00020EB6  B800000000        mov eax,0x0
00020EBB  C9                leave
00020EBC  C3                ret
00020EBD  55                push ebp
00020EBE  89E5              mov ebp,esp
00020EC0  83EC10            sub esp,byte +0x10
00020EC3  8B4508            mov eax,[ebp+0x8]
00020EC6  C1E003            shl eax,0x3
00020EC9  05E0750300        add eax,0x375e0
00020ECE  8945FC            mov [ebp-0x4],eax
00020ED1  837D0800          cmp dword [ebp+0x8],byte +0x0
00020ED5  781C              js 0x20ef3
00020ED7  8B45FC            mov eax,[ebp-0x4]
00020EDA  66C740020000      mov word [eax+0x2],0x0
00020EE0  8B45FC            mov eax,[ebp-0x4]
00020EE3  66C7000000        mov word [eax],0x0
00020EE8  8B45FC            mov eax,[ebp-0x4]
00020EEB  66C740060000      mov word [eax+0x6],0x0
00020EF1  EB01              jmp short 0x20ef4
00020EF3  90                nop
00020EF4  C9                leave
00020EF5  C3                ret
00020EF6  55                push ebp
00020EF7  89E5              mov ebp,esp
00020EF9  83EC18            sub esp,byte +0x18
00020EFC  8B5508            mov edx,[ebp+0x8]
00020EFF  8B450C            mov eax,[ebp+0xc]
00020F02  8855EC            mov [ebp-0x14],dl
00020F05  8845E8            mov [ebp-0x18],al
00020F08  0FB645EC          movzx eax,byte [ebp-0x14]
00020F0C  C1E003            shl eax,0x3
00020F0F  05E0750300        add eax,0x375e0
00020F14  8945FC            mov [ebp-0x4],eax
00020F17  8B4510            mov eax,[ebp+0x10]
00020F1A  8945F8            mov [ebp-0x8],eax
00020F1D  8B45F8            mov eax,[ebp-0x8]
00020F20  89C2              mov edx,eax
00020F22  8B45FC            mov eax,[ebp-0x4]
00020F25  668910            mov [eax],dx
00020F28  8B45FC            mov eax,[ebp-0x4]
00020F2B  66C740020800      mov word [eax+0x2],0x8
00020F31  8B45FC            mov eax,[ebp-0x4]
00020F34  C6400400          mov byte [eax+0x4],0x0
00020F38  8B45FC            mov eax,[ebp-0x4]
00020F3B  0FB655E8          movzx edx,byte [ebp-0x18]
00020F3F  885005            mov [eax+0x5],dl
00020F42  8B45F8            mov eax,[ebp-0x8]
00020F45  C1E810            shr eax,0x10
00020F48  89C2              mov edx,eax
00020F4A  8B45FC            mov eax,[ebp-0x4]
00020F4D  66895006          mov [eax+0x6],dx
00020F51  C9                leave
00020F52  C3                ret
00020F53  90                nop
00020F54  55                push ebp
00020F55  89E5              mov ebp,esp
00020F57  83EC28            sub esp,byte +0x28
00020F5A  E8F3070000        call dword 0x21752
00020F5F  C74424040B000000  mov dword [esp+0x4],0xb
00020F67  C7042470000000    mov dword [esp],0x70
00020F6E  E8BD070000        call dword 0x21730
00020F73  C7042471000000    mov dword [esp],0x71
00020F7A  E8C3070000        call dword 0x21742
00020F7F  8845F7            mov [ebp-0x9],al
00020F82  C74424040B000000  mov dword [esp+0x4],0xb
00020F8A  C7042470000000    mov dword [esp],0x70
00020F91  E89A070000        call dword 0x21730
00020F96  0FB645F7          movzx eax,byte [ebp-0x9]
00020F9A  83C840            or eax,byte +0x40
00020F9D  0FB6C0            movzx eax,al
00020FA0  89442404          mov [esp+0x4],eax
00020FA4  C7042471000000    mov dword [esp],0x71
00020FAB  E880070000        call dword 0x21730
00020FB0  E89F070000        call dword 0x21754
00020FB5  C7042409000000    mov dword [esp],0x9
00020FBC  E80D060000        call dword 0x215ce
00020FC1  C7042400000000    mov dword [esp],0x0
00020FC8  E801060000        call dword 0x215ce
00020FCD  C9                leave
00020FCE  C3                ret
00020FCF  55                push ebp
00020FD0  89E5              mov ebp,esp
00020FD2  5D                pop ebp
00020FD3  C3                ret
00020FD4  55                push ebp
00020FD5  89E5              mov ebp,esp
00020FD7  53                push ebx
00020FD8  83EC54            sub esp,byte +0x54
00020FDB  A1E07D0300        mov eax,[0x37de0]
00020FE0  8945E8            mov [ebp-0x18],eax
00020FE3  8B4DE8            mov ecx,[ebp-0x18]
00020FE6  BA89888888        mov edx,0x88888889
00020FEB  89C8              mov eax,ecx
00020FED  F7E2              mul edx
00020FEF  89D0              mov eax,edx
00020FF1  C1E805            shr eax,0x5
00020FF4  C1E002            shl eax,0x2
00020FF7  89C2              mov edx,eax
00020FF9  C1E204            shl edx,0x4
00020FFC  29C2              sub edx,eax
00020FFE  89C8              mov eax,ecx
00021000  29D0              sub eax,edx
00021002  8945E4            mov [ebp-0x1c],eax
00021005  8B45E8            mov eax,[ebp-0x18]
00021008  8945C4            mov [ebp-0x3c],eax
0002100B  BA89888888        mov edx,0x88888889
00021010  8B45C4            mov eax,[ebp-0x3c]
00021013  F7E2              mul edx
00021015  89D0              mov eax,edx
00021017  C1E805            shr eax,0x5
0002101A  8945E8            mov [ebp-0x18],eax
0002101D  8B4DE8            mov ecx,[ebp-0x18]
00021020  BA89888888        mov edx,0x88888889
00021025  89C8              mov eax,ecx
00021027  F7E2              mul edx
00021029  89D0              mov eax,edx
0002102B  C1E805            shr eax,0x5
0002102E  C1E002            shl eax,0x2
00021031  89C2              mov edx,eax
00021033  C1E204            shl edx,0x4
00021036  29C2              sub edx,eax
00021038  89C8              mov eax,ecx
0002103A  29D0              sub eax,edx
0002103C  8945E0            mov [ebp-0x20],eax
0002103F  8B45E8            mov eax,[ebp-0x18]
00021042  8945C4            mov [ebp-0x3c],eax
00021045  BA89888888        mov edx,0x88888889
0002104A  8B45C4            mov eax,[ebp-0x3c]
0002104D  F7E2              mul edx
0002104F  89D0              mov eax,edx
00021051  C1E805            shr eax,0x5
00021054  8945E8            mov [ebp-0x18],eax
00021057  8B4DE8            mov ecx,[ebp-0x18]
0002105A  BA89888888        mov edx,0x88888889
0002105F  89C8              mov eax,ecx
00021061  F7E2              mul edx
00021063  89D0              mov eax,edx
00021065  C1E805            shr eax,0x5
00021068  C1E002            shl eax,0x2
0002106B  89C2              mov edx,eax
0002106D  C1E204            shl edx,0x4
00021070  29C2              sub edx,eax
00021072  89C8              mov eax,ecx
00021074  29D0              sub eax,edx
00021076  8945DC            mov [ebp-0x24],eax
00021079  8B45E8            mov eax,[ebp-0x18]
0002107C  8945C4            mov [ebp-0x3c],eax
0002107F  BA89888888        mov edx,0x88888889
00021084  8B45C4            mov eax,[ebp-0x3c]
00021087  F7E2              mul edx
00021089  89D0              mov eax,edx
0002108B  C1E805            shr eax,0x5
0002108E  8945E8            mov [ebp-0x18],eax
00021091  8B4DE8            mov ecx,[ebp-0x18]
00021094  BAABAAAAAA        mov edx,0xaaaaaaab
00021099  89C8              mov eax,ecx
0002109B  F7E2              mul edx
0002109D  C1EA04            shr edx,0x4
000210A0  89D0              mov eax,edx
000210A2  01C0              add eax,eax
000210A4  01D0              add eax,edx
000210A6  C1E003            shl eax,0x3
000210A9  89CA              mov edx,ecx
000210AB  29C2              sub edx,eax
000210AD  8955D8            mov [ebp-0x28],edx
000210B0  8B45E0            mov eax,[ebp-0x20]
000210B3  8945F4            mov [ebp-0xc],eax
000210B6  0FB605E97A0200    movzx eax,byte [dword 0x27ae9]
000210BD  0FB6C0            movzx eax,al
000210C0  0345DC            add eax,[ebp-0x24]
000210C3  8945F0            mov [ebp-0x10],eax
000210C6  0FB605EA7A0200    movzx eax,byte [dword 0x27aea]
000210CD  0FB6C0            movzx eax,al
000210D0  0345D8            add eax,[ebp-0x28]
000210D3  8945EC            mov [ebp-0x14],eax
000210D6  837DF43B          cmp dword [ebp-0xc],byte +0x3b
000210DA  7E0B              jng 0x210e7
000210DC  8345F001          add dword [ebp-0x10],byte +0x1
000210E0  C745F400000000    mov dword [ebp-0xc],0x0
000210E7  837DF03B          cmp dword [ebp-0x10],byte +0x3b
000210EB  0F8E0B020000      jng dword 0x212fc
000210F1  C744240409000000  mov dword [esp+0x4],0x9
000210F9  C7042470000000    mov dword [esp],0x70
00021100  E82B060000        call dword 0x21730
00021105  C7042471000000    mov dword [esp],0x71
0002110C  E831060000        call dword 0x21742
00021111  89C2              mov edx,eax
00021113  C0EA04            shr dl,0x4
00021116  89D0              mov eax,edx
00021118  C1E002            shl eax,0x2
0002111B  01D0              add eax,edx
0002111D  01C0              add eax,eax
0002111F  89C3              mov ebx,eax
00021121  C7042471000000    mov dword [esp],0x71
00021128  E815060000        call dword 0x21742
0002112D  83E00F            and eax,byte +0xf
00021130  01D8              add eax,ebx
00021132  A2EE7A0200        mov [0x27aee],al
00021137  C744240408000000  mov dword [esp+0x4],0x8
0002113F  C7042470000000    mov dword [esp],0x70
00021146  E8E5050000        call dword 0x21730
0002114B  C7042471000000    mov dword [esp],0x71
00021152  E8EB050000        call dword 0x21742
00021157  89C2              mov edx,eax
00021159  C0EA04            shr dl,0x4
0002115C  89D0              mov eax,edx
0002115E  C1E002            shl eax,0x2
00021161  01D0              add eax,edx
00021163  01C0              add eax,eax
00021165  89C3              mov ebx,eax
00021167  C7042471000000    mov dword [esp],0x71
0002116E  E8CF050000        call dword 0x21742
00021173  83E00F            and eax,byte +0xf
00021176  01D8              add eax,ebx
00021178  A2ED7A0200        mov [0x27aed],al
0002117D  C744240407000000  mov dword [esp+0x4],0x7
00021185  C7042470000000    mov dword [esp],0x70
0002118C  E89F050000        call dword 0x21730
00021191  C7042471000000    mov dword [esp],0x71
00021198  E8A5050000        call dword 0x21742
0002119D  89C2              mov edx,eax
0002119F  C0EA04            shr dl,0x4
000211A2  89D0              mov eax,edx
000211A4  C1E002            shl eax,0x2
000211A7  01D0              add eax,edx
000211A9  01C0              add eax,eax
000211AB  89C3              mov ebx,eax
000211AD  C7042471000000    mov dword [esp],0x71
000211B4  E889050000        call dword 0x21742
000211B9  83E00F            and eax,byte +0xf
000211BC  01D8              add eax,ebx
000211BE  A2EC7A0200        mov [0x27aec],al
000211C3  C744240406000000  mov dword [esp+0x4],0x6
000211CB  C7042470000000    mov dword [esp],0x70
000211D2  E859050000        call dword 0x21730
000211D7  C7042471000000    mov dword [esp],0x71
000211DE  E85F050000        call dword 0x21742
000211E3  89C2              mov edx,eax
000211E5  C0EA04            shr dl,0x4
000211E8  89D0              mov eax,edx
000211EA  C1E002            shl eax,0x2
000211ED  01D0              add eax,edx
000211EF  01C0              add eax,eax
000211F1  89C3              mov ebx,eax
000211F3  C7042471000000    mov dword [esp],0x71
000211FA  E843050000        call dword 0x21742
000211FF  83E00F            and eax,byte +0xf
00021202  01D8              add eax,ebx
00021204  A2EB7A0200        mov [0x27aeb],al
00021209  C744240404000000  mov dword [esp+0x4],0x4
00021211  C7042470000000    mov dword [esp],0x70
00021218  E813050000        call dword 0x21730
0002121D  C7042471000000    mov dword [esp],0x71
00021224  E819050000        call dword 0x21742
00021229  89C2              mov edx,eax
0002122B  C0EA04            shr dl,0x4
0002122E  89D0              mov eax,edx
00021230  C1E002            shl eax,0x2
00021233  01D0              add eax,edx
00021235  01C0              add eax,eax
00021237  89C3              mov ebx,eax
00021239  C7042471000000    mov dword [esp],0x71
00021240  E8FD040000        call dword 0x21742
00021245  83E00F            and eax,byte +0xf
00021248  01D8              add eax,ebx
0002124A  A2EA7A0200        mov [0x27aea],al
0002124F  C744240402000000  mov dword [esp+0x4],0x2
00021257  C7042470000000    mov dword [esp],0x70
0002125E  E8CD040000        call dword 0x21730
00021263  C7042471000000    mov dword [esp],0x71
0002126A  E8D3040000        call dword 0x21742
0002126F  89C2              mov edx,eax
00021271  C0EA04            shr dl,0x4
00021274  89D0              mov eax,edx
00021276  C1E002            shl eax,0x2
00021279  01D0              add eax,edx
0002127B  01C0              add eax,eax
0002127D  89C3              mov ebx,eax
0002127F  C7042471000000    mov dword [esp],0x71
00021286  E8B7040000        call dword 0x21742
0002128B  83E00F            and eax,byte +0xf
0002128E  01D8              add eax,ebx
00021290  A2E97A0200        mov [0x27ae9],al
00021295  C744240400000000  mov dword [esp+0x4],0x0
0002129D  C7042470000000    mov dword [esp],0x70
000212A4  E887040000        call dword 0x21730
000212A9  C7042471000000    mov dword [esp],0x71
000212B0  E88D040000        call dword 0x21742
000212B5  89C2              mov edx,eax
000212B7  C0EA04            shr dl,0x4
000212BA  89D0              mov eax,edx
000212BC  C1E002            shl eax,0x2
000212BF  01D0              add eax,edx
000212C1  01C0              add eax,eax
000212C3  89C3              mov ebx,eax
000212C5  C7042471000000    mov dword [esp],0x71
000212CC  E871040000        call dword 0x21742
000212D1  83E00F            and eax,byte +0xf
000212D4  01D8              add eax,ebx
000212D6  A2E87A0200        mov [0x27ae8],al
000212DB  C745F400000000    mov dword [ebp-0xc],0x0
000212E2  0FB605E97A0200    movzx eax,byte [dword 0x27ae9]
000212E9  0FB6C0            movzx eax,al
000212EC  8945F0            mov [ebp-0x10],eax
000212EF  0FB605EA7A0200    movzx eax,byte [dword 0x27aea]
000212F6  0FB6C0            movzx eax,al
000212F9  8945EC            mov [ebp-0x14],eax
000212FC  A1E87D0300        mov eax,[0x37de8]
00021301  C7406401000000    mov dword [eax+0x64],0x1
00021308  A100730300        mov eax,[0x37300]
0002130D  8945D4            mov [ebp-0x2c],eax
00021310  A104930300        mov eax,[0x39304]
00021315  059E070000        add eax,0x79e
0002131A  A300730300        mov [0x37300],eax
0002131F  C70424E4330200    mov dword [esp],0x233e4
00021326  E82B040000        call dword 0x21756
0002132B  0FB605E67A0200    movzx eax,byte [dword 0x27ae6]
00021332  0FB6C0            movzx eax,al
00021335  890424            mov [esp],eax
00021338  E842050000        call dword 0x2187f
0002133D  C70424E6330200    mov dword [esp],0x233e6
00021344  E80D040000        call dword 0x21756
00021349  0FB605E57D0300    movzx eax,byte [dword 0x37de5]
00021350  0FB6C0            movzx eax,al
00021353  890424            mov [esp],eax
00021356  E824050000        call dword 0x2187f
0002135B  C70424E6330200    mov dword [esp],0x233e6
00021362  E8EF030000        call dword 0x21756
00021367  0FB605E47D0300    movzx eax,byte [dword 0x37de4]
0002136E  0FB6C0            movzx eax,al
00021371  890424            mov [esp],eax
00021374  E806050000        call dword 0x2187f
00021379  C70424E8330200    mov dword [esp],0x233e8
00021380  E8D1030000        call dword 0x21756
00021385  8B45EC            mov eax,[ebp-0x14]
00021388  890424            mov [esp],eax
0002138B  E8EF040000        call dword 0x2187f
00021390  C70424EA330200    mov dword [esp],0x233ea
00021397  E8BA030000        call dword 0x21756
0002139C  8B45F0            mov eax,[ebp-0x10]
0002139F  890424            mov [esp],eax
000213A2  E8D8040000        call dword 0x2187f
000213A7  C70424EA330200    mov dword [esp],0x233ea
000213AE  E8A3030000        call dword 0x21756
000213B3  8B45F4            mov eax,[ebp-0xc]
000213B6  890424            mov [esp],eax
000213B9  E8C1040000        call dword 0x2187f
000213BE  C70424EC330200    mov dword [esp],0x233ec
000213C5  E88C030000        call dword 0x21756
000213CA  0FB605EB7A0200    movzx eax,byte [dword 0x27aeb]
000213D1  0FB6C0            movzx eax,al
000213D4  83F807            cmp eax,byte +0x7
000213D7  776A              ja 0x21443
000213D9  8B048538340200    mov eax,[eax*4+0x23438]
000213E0  FFE0              jmp eax
000213E2  C70424EF330200    mov dword [esp],0x233ef
000213E9  E868030000        call dword 0x21756
000213EE  EB53              jmp short 0x21443
000213F0  C70424F6330200    mov dword [esp],0x233f6
000213F7  E85A030000        call dword 0x21756
000213FC  EB45              jmp short 0x21443
000213FE  C70424FD330200    mov dword [esp],0x233fd
00021405  E84C030000        call dword 0x21756
0002140A  EB37              jmp short 0x21443
0002140C  C7042405340200    mov dword [esp],0x23405
00021413  E83E030000        call dword 0x21756
00021418  EB29              jmp short 0x21443
0002141A  C704240F340200    mov dword [esp],0x2340f
00021421  E830030000        call dword 0x21756
00021426  EB1B              jmp short 0x21443
00021428  C7042418340200    mov dword [esp],0x23418
0002142F  E822030000        call dword 0x21756
00021434  EB0D              jmp short 0x21443
00021436  C704241F340200    mov dword [esp],0x2341f
0002143D  E814030000        call dword 0x21756
00021442  90                nop
00021443  C7042428340200    mov dword [esp],0x23428
0002144A  E807030000        call dword 0x21756
0002144F  0FB605EE7A0200    movzx eax,byte [dword 0x27aee]
00021456  0FB6C0            movzx eax,al
00021459  890424            mov [esp],eax
0002145C  E81E040000        call dword 0x2187f
00021461  C704242D340200    mov dword [esp],0x2342d
00021468  E8E9020000        call dword 0x21756
0002146D  0FB605ED7A0200    movzx eax,byte [dword 0x27aed]
00021474  0FB6C0            movzx eax,al
00021477  890424            mov [esp],eax
0002147A  E800040000        call dword 0x2187f
0002147F  C704242D340200    mov dword [esp],0x2342d
00021486  E8CB020000        call dword 0x21756
0002148B  0FB605EC7A0200    movzx eax,byte [dword 0x27aec]
00021492  0FB6C0            movzx eax,al
00021495  890424            mov [esp],eax
00021498  E8E2030000        call dword 0x2187f
0002149D  C704242F340200    mov dword [esp],0x2342f
000214A4  E8AD020000        call dword 0x21756
000214A9  8B45D4            mov eax,[ebp-0x2c]
000214AC  A300730300        mov [0x37300],eax
000214B1  A1E87D0300        mov eax,[0x37de8]
000214B6  C7406400000000    mov dword [eax+0x64],0x0
000214BD  E919FBFFFF        jmp dword 0x20fdb
000214C2  55                push ebp
000214C3  89E5              mov ebp,esp
000214C5  5D                pop ebp
000214C6  C3                ret
000214C7  55                push ebp
000214C8  89E5              mov ebp,esp
000214CA  83EC18            sub esp,byte +0x18
000214CD  A1E07D0300        mov eax,[0x37de0]
000214D2  83C001            add eax,byte +0x1
000214D5  A3E07D0300        mov [0x37de0],eax
000214DA  E8BAF1FFFF        call dword 0x20699
000214DF  C7042400000000    mov dword [esp],0x0
000214E6  E801020000        call dword 0x216ec
000214EB  C9                leave
000214EC  C3                ret
000214ED  55                push ebp
000214EE  89E5              mov ebp,esp
000214F0  5D                pop ebp
000214F1  C3                ret
000214F2  90                nop
000214F3  90                nop
000214F4  55                push ebp
000214F5  89E5              mov ebp,esp
000214F7  83EC18            sub esp,byte +0x18
000214FA  C744240411000000  mov dword [esp+0x4],0x11
00021502  C7042420000000    mov dword [esp],0x20
00021509  E822020000        call dword 0x21730
0002150E  C744240411000000  mov dword [esp+0x4],0x11
00021516  C70424A0000000    mov dword [esp],0xa0
0002151D  E80E020000        call dword 0x21730
00021522  C744240420000000  mov dword [esp+0x4],0x20
0002152A  C7042421000000    mov dword [esp],0x21
00021531  E8FA010000        call dword 0x21730
00021536  C744240428000000  mov dword [esp+0x4],0x28
0002153E  C70424A1000000    mov dword [esp],0xa1
00021545  E8E6010000        call dword 0x21730
0002154A  C744240404000000  mov dword [esp+0x4],0x4
00021552  C7042421000000    mov dword [esp],0x21
00021559  E8D2010000        call dword 0x21730
0002155E  C744240402000000  mov dword [esp+0x4],0x2
00021566  C70424A1000000    mov dword [esp],0xa1
0002156D  E8BE010000        call dword 0x21730
00021572  C744240401000000  mov dword [esp+0x4],0x1
0002157A  C7042421000000    mov dword [esp],0x21
00021581  E8AA010000        call dword 0x21730
00021586  C744240401000000  mov dword [esp+0x4],0x1
0002158E  C70424A1000000    mov dword [esp],0xa1
00021595  E896010000        call dword 0x21730
0002159A  C7442404FB000000  mov dword [esp+0x4],0xfb
000215A2  C7042421000000    mov dword [esp],0x21
000215A9  E882010000        call dword 0x21730
000215AE  C7442404FF000000  mov dword [esp+0x4],0xff
000215B6  C70424A1000000    mov dword [esp],0xa1
000215BD  E86E010000        call dword 0x21730
000215C2  C9                leave
000215C3  C3                ret
000215C4  55                push ebp
000215C5  89E5              mov ebp,esp
000215C7  5D                pop ebp
000215C8  C3                ret
000215C9  55                push ebp
000215CA  89E5              mov ebp,esp
000215CC  5D                pop ebp
000215CD  C3                ret
000215CE  55                push ebp
000215CF  89E5              mov ebp,esp
000215D1  53                push ebx
000215D2  83EC14            sub esp,byte +0x14
000215D5  837D0800          cmp dword [ebp+0x8],byte +0x0
000215D9  787D              js 0x21658
000215DB  837D080F          cmp dword [ebp+0x8],byte +0xf
000215DF  7F77              jg 0x21658
000215E1  837D0807          cmp dword [ebp+0x8],byte +0x7
000215E5  7E3A              jng 0x21621
000215E7  8B4508            mov eax,[ebp+0x8]
000215EA  83E808            sub eax,byte +0x8
000215ED  BA01000000        mov edx,0x1
000215F2  89D3              mov ebx,edx
000215F4  89C1              mov ecx,eax
000215F6  D3E3              shl ebx,cl
000215F8  89D8              mov eax,ebx
000215FA  89C3              mov ebx,eax
000215FC  F7D3              not ebx
000215FE  C70424A1000000    mov dword [esp],0xa1
00021605  E838010000        call dword 0x21742
0002160A  21D8              and eax,ebx
0002160C  0FB6C0            movzx eax,al
0002160F  89442404          mov [esp+0x4],eax
00021613  C70424A1000000    mov dword [esp],0xa1
0002161A  E811010000        call dword 0x21730
0002161F  EB38              jmp short 0x21659
00021621  8B4508            mov eax,[ebp+0x8]
00021624  BA01000000        mov edx,0x1
00021629  89D3              mov ebx,edx
0002162B  89C1              mov ecx,eax
0002162D  D3E3              shl ebx,cl
0002162F  89D8              mov eax,ebx
00021631  89C3              mov ebx,eax
00021633  F7D3              not ebx
00021635  C7042421000000    mov dword [esp],0x21
0002163C  E801010000        call dword 0x21742
00021641  21D8              and eax,ebx
00021643  0FB6C0            movzx eax,al
00021646  89442404          mov [esp+0x4],eax
0002164A  C7042421000000    mov dword [esp],0x21
00021651  E8DA000000        call dword 0x21730
00021656  EB01              jmp short 0x21659
00021658  90                nop
00021659  83C414            add esp,byte +0x14
0002165C  5B                pop ebx
0002165D  5D                pop ebp
0002165E  C3                ret
0002165F  55                push ebp
00021660  89E5              mov ebp,esp
00021662  53                push ebx
00021663  83EC14            sub esp,byte +0x14
00021666  837D0800          cmp dword [ebp+0x8],byte +0x0
0002166A  7879              js 0x216e5
0002166C  837D080F          cmp dword [ebp+0x8],byte +0xf
00021670  7F73              jg 0x216e5
00021672  837D0807          cmp dword [ebp+0x8],byte +0x7
00021676  7E38              jng 0x216b0
00021678  8B4508            mov eax,[ebp+0x8]
0002167B  83E808            sub eax,byte +0x8
0002167E  BA01000000        mov edx,0x1
00021683  89D3              mov ebx,edx
00021685  89C1              mov ecx,eax
00021687  D3E3              shl ebx,cl
00021689  89D8              mov eax,ebx
0002168B  89C3              mov ebx,eax
0002168D  C70424A1000000    mov dword [esp],0xa1
00021694  E8A9000000        call dword 0x21742
00021699  09D8              or eax,ebx
0002169B  0FB6C0            movzx eax,al
0002169E  89442404          mov [esp+0x4],eax
000216A2  C70424A1000000    mov dword [esp],0xa1
000216A9  E882000000        call dword 0x21730
000216AE  EB36              jmp short 0x216e6
000216B0  8B4508            mov eax,[ebp+0x8]
000216B3  BA01000000        mov edx,0x1
000216B8  89D3              mov ebx,edx
000216BA  89C1              mov ecx,eax
000216BC  D3E3              shl ebx,cl
000216BE  89D8              mov eax,ebx
000216C0  89C3              mov ebx,eax
000216C2  C7042421000000    mov dword [esp],0x21
000216C9  E874000000        call dword 0x21742
000216CE  09D8              or eax,ebx
000216D0  0FB6C0            movzx eax,al
000216D3  89442404          mov [esp+0x4],eax
000216D7  C7042421000000    mov dword [esp],0x21
000216DE  E84D000000        call dword 0x21730
000216E3  EB01              jmp short 0x216e6
000216E5  90                nop
000216E6  83C414            add esp,byte +0x14
000216E9  5B                pop ebx
000216EA  5D                pop ebp
000216EB  C3                ret
000216EC  55                push ebp
000216ED  89E5              mov ebp,esp
000216EF  83EC18            sub esp,byte +0x18
000216F2  837D0807          cmp dword [ebp+0x8],byte +0x7
000216F6  7E14              jng 0x2170c
000216F8  C744240420000000  mov dword [esp+0x4],0x20
00021700  C70424A0000000    mov dword [esp],0xa0
00021707  E824000000        call dword 0x21730
0002170C  C744240420000000  mov dword [esp+0x4],0x20
00021714  C7042420000000    mov dword [esp],0x20
0002171B  E810000000        call dword 0x21730
00021720  C9                leave
00021721  C3                ret
00021722  90                nop
00021723  90                nop
00021724  90                nop
00021725  90                nop
00021726  90                nop
00021727  90                nop
00021728  90                nop
00021729  90                nop
0002172A  90                nop
0002172B  90                nop
0002172C  90                nop
0002172D  90                nop
0002172E  90                nop
0002172F  90                nop
00021730  55                push ebp
00021731  89E5              mov ebp,esp
00021733  8A44240C          mov al,[esp+0xc]
00021737  668B542408        mov dx,[esp+0x8]
0002173C  EE                out dx,al
0002173D  90                nop
0002173E  90                nop
0002173F  90                nop
00021740  5D                pop ebp
00021741  C3                ret
00021742  55                push ebp
00021743  89E5              mov ebp,esp
00021745  668B542408        mov dx,[esp+0x8]
0002174A  31C0              xor eax,eax
0002174C  EC                in al,dx
0002174D  90                nop
0002174E  90                nop
0002174F  90                nop
00021750  5D                pop ebp
00021751  C3                ret
00021752  FA                cli
00021753  C3                ret
00021754  FB                sti
00021755  C3                ret
00021756  55                push ebp
00021757  89E5              mov ebp,esp
00021759  31C0              xor eax,eax
0002175B  31DB              xor ebx,ebx
0002175D  31C9              xor ecx,ecx
0002175F  8B742408          mov esi,[esp+0x8]
00021763  4E                dec esi
00021764  BF00800B00        mov edi,0xb8000
00021769  B1A0              mov cl,0xa0
0002176B  668B1D00730300    mov bx,[dword 0x37300]
00021772  66D1E3            shl bx,1
00021775  01DF              add edi,ebx
00021777  46                inc esi
00021778  8A16              mov dl,[esi]
0002177A  80FA00            cmp dl,0x0
0002177D  7421              jz 0x217a0
0002177F  80FA0A            cmp dl,0xa
00021782  7515              jnz 0x21799
00021784  89F8              mov eax,edi
00021786  2D00800B00        sub eax,0xb8000
0002178B  88CD              mov ch,cl
0002178D  F6F1              div cl
0002178F  28E5              sub ch,ah
00021791  31C0              xor eax,eax
00021793  88E8              mov al,ch
00021795  01C7              add edi,eax
00021797  EBDE              jmp short 0x21777
00021799  8817              mov [edi],dl
0002179B  83C702            add edi,byte +0x2
0002179E  EBD7              jmp short 0x21777
000217A0  81EF00800B00      sub edi,0xb8000
000217A6  D1EF              shr edi,1
000217A8  66893D00730300    mov [dword 0x37300],di
000217AF  5D                pop ebp
000217B0  C3                ret
000217B1  55                push ebp
000217B2  31C9              xor ecx,ecx
000217B4  89E5              mov ebp,esp
000217B6  8B4C2410          mov ecx,[esp+0x10]
000217BA  8B74240C          mov esi,[esp+0xc]
000217BE  8B7C2408          mov edi,[esp+0x8]
000217C2  FC                cld
000217C3  F3A4              rep movsb
000217C5  5D                pop ebp
000217C6  C3                ret
000217C7  55                push ebp
000217C8  89E5              mov ebp,esp
000217CA  31C9              xor ecx,ecx
000217CC  31DB              xor ebx,ebx
000217CE  31C0              xor eax,eax
000217D0  8B442410          mov eax,[esp+0x10]
000217D4  8B4C240C          mov ecx,[esp+0xc]
000217D8  8B5C2408          mov ebx,[esp+0x8]
000217DC  8903              mov [ebx],eax
000217DE  83C304            add ebx,byte +0x4
000217E1  49                dec ecx
000217E2  75F8              jnz 0x217dc
000217E4  5D                pop ebp
000217E5  C3                ret
000217E6  90                nop
000217E7  90                nop
000217E8  90                nop
000217E9  90                nop
000217EA  90                nop
000217EB  90                nop
000217EC  90                nop
000217ED  90                nop
000217EE  90                nop
000217EF  90                nop
000217F0  55                push ebp
000217F1  89E5              mov ebp,esp
000217F3  E815000000        call dword 0x2180d
000217F8  BB00000000        mov ebx,0x0
000217FD  0F22DB            mov cr3,ebx
00021800  0F20C0            mov eax,cr0
00021803  0D00000080        or eax,0x80000000
00021808  0F22C0            mov cr0,eax
0002180B  5D                pop ebp
0002180C  C3                ret
0002180D  55                push ebp
0002180E  89E5              mov ebp,esp
00021810  31C9              xor ecx,ecx
00021812  B800000000        mov eax,0x0
00021817  BB00000000        mov ebx,0x0
0002181C  66B90014          mov cx,0x1400
00021820  8903              mov [ebx],eax
00021822  83C304            add ebx,byte +0x4
00021825  6649              dec cx
00021827  6683F900          cmp cx,byte +0x0
0002182B  75F3              jnz 0x21820
0002182D  BB00000000        mov ebx,0x0
00021832  B807100000        mov eax,0x1007
00021837  66B90400          mov cx,0x4
0002183B  8903              mov [ebx],eax
0002183D  83C304            add ebx,byte +0x4
00021840  0500100000        add eax,0x1000
00021845  6649              dec cx
00021847  6683F900          cmp cx,byte +0x0
0002184B  75EE              jnz 0x2183b
0002184D  FD                std
0002184E  B807F0FF00        mov eax,0xfff007
00021853  BFFC4F0000        mov edi,0x4ffc
00021858  FD                std
00021859  AB                stosd
0002185A  2D00100000        sub eax,0x1000
0002185F  7DF8              jnl 0x21859
00021861  5D                pop ebp
00021862  C3                ret
00021863  90                nop
00021864  55                push ebp
00021865  89E5              mov ebp,esp
00021867  8B4508            mov eax,[ebp+0x8]
0002186A  F7D8              neg eax
0002186C  5D                pop ebp
0002186D  C3                ret
0002186E  55                push ebp
0002186F  89E5              mov ebp,esp
00021871  837D0800          cmp dword [ebp+0x8],byte +0x0
00021875  7903              jns 0x2187a
00021877  F75D08            neg dword [ebp+0x8]
0002187A  8B4508            mov eax,[ebp+0x8]
0002187D  5D                pop ebp
0002187E  C3                ret
0002187F  55                push ebp
00021880  89E5              mov ebp,esp
00021882  83EC28            sub esp,byte +0x28
00021885  8D45EA            lea eax,[ebp-0x16]
00021888  8945F4            mov [ebp-0xc],eax
0002188B  8B45F4            mov eax,[ebp-0xc]
0002188E  89442404          mov [esp+0x4],eax
00021892  8B4508            mov eax,[ebp+0x8]
00021895  890424            mov [esp],eax
00021898  E80D000000        call dword 0x218aa
0002189D  8B45F4            mov eax,[ebp-0xc]
000218A0  890424            mov [esp],eax
000218A3  E8AEFEFFFF        call dword 0x21756
000218A8  C9                leave
000218A9  C3                ret
000218AA  55                push ebp
000218AB  89E5              mov ebp,esp
000218AD  83EC28            sub esp,byte +0x28
000218B0  8B4508            mov eax,[ebp+0x8]
000218B3  890424            mov [esp],eax
000218B6  E890000000        call dword 0x2194b
000218BB  8945F4            mov [ebp-0xc],eax
000218BE  8B450C            mov eax,[ebp+0xc]
000218C1  8945F0            mov [ebp-0x10],eax
000218C4  837DF400          cmp dword [ebp-0xc],byte +0x0
000218C8  7512              jnz 0x218dc
000218CA  8B45F0            mov eax,[ebp-0x10]
000218CD  C60030            mov byte [eax],0x30
000218D0  8345F001          add dword [ebp-0x10],byte +0x1
000218D4  8B45F0            mov eax,[ebp-0x10]
000218D7  C60000            mov byte [eax],0x0
000218DA  EB6D              jmp short 0x21949
000218DC  8B45F4            mov eax,[ebp-0xc]
000218DF  0345F0            add eax,[ebp-0x10]
000218E2  C60000            mov byte [eax],0x0
000218E5  EB53              jmp short 0x2193a
000218E7  8B4D08            mov ecx,[ebp+0x8]
000218EA  BA67666666        mov edx,0x66666667
000218EF  89C8              mov eax,ecx
000218F1  F7EA              imul edx
000218F3  C1FA02            sar edx,0x2
000218F6  89C8              mov eax,ecx
000218F8  C1F81F            sar eax,0x1f
000218FB  29C2              sub edx,eax
000218FD  89D0              mov eax,edx
000218FF  C1E002            shl eax,0x2
00021902  01D0              add eax,edx
00021904  01C0              add eax,eax
00021906  89CA              mov edx,ecx
00021908  29C2              sub edx,eax
0002190A  89D0              mov eax,edx
0002190C  8945EC            mov [ebp-0x14],eax
0002190F  8B4D08            mov ecx,[ebp+0x8]
00021912  BA67666666        mov edx,0x66666667
00021917  89C8              mov eax,ecx
00021919  F7EA              imul edx
0002191B  C1FA02            sar edx,0x2
0002191E  89C8              mov eax,ecx
00021920  C1F81F            sar eax,0x1f
00021923  89D1              mov ecx,edx
00021925  29C1              sub ecx,eax
00021927  89C8              mov eax,ecx
00021929  894508            mov [ebp+0x8],eax
0002192C  8B45F4            mov eax,[ebp-0xc]
0002192F  0345F0            add eax,[ebp-0x10]
00021932  8B55EC            mov edx,[ebp-0x14]
00021935  83C230            add edx,byte +0x30
00021938  8810              mov [eax],dl
0002193A  837DF400          cmp dword [ebp-0xc],byte +0x0
0002193E  0F95C0            setnz al
00021941  836DF401          sub dword [ebp-0xc],byte +0x1
00021945  84C0              test al,al
00021947  759E              jnz 0x218e7
00021949  C9                leave
0002194A  C3                ret
0002194B  55                push ebp
0002194C  89E5              mov ebp,esp
0002194E  83EC10            sub esp,byte +0x10
00021951  C745FC00000000    mov dword [ebp-0x4],0x0
00021958  EB21              jmp short 0x2197b
0002195A  8B4D08            mov ecx,[ebp+0x8]
0002195D  BA67666666        mov edx,0x66666667
00021962  89C8              mov eax,ecx
00021964  F7EA              imul edx
00021966  C1FA02            sar edx,0x2
00021969  89C8              mov eax,ecx
0002196B  C1F81F            sar eax,0x1f
0002196E  89D1              mov ecx,edx
00021970  29C1              sub ecx,eax
00021972  89C8              mov eax,ecx
00021974  894508            mov [ebp+0x8],eax
00021977  8345FC01          add dword [ebp-0x4],byte +0x1
0002197B  837D0800          cmp dword [ebp+0x8],byte +0x0
0002197F  75D9              jnz 0x2195a
00021981  8B45FC            mov eax,[ebp-0x4]
00021984  C9                leave
00021985  C3                ret
00021986  55                push ebp
00021987  89E5              mov ebp,esp
00021989  83EC10            sub esp,byte +0x10
0002198C  C745FC00000000    mov dword [ebp-0x4],0x0
00021993  EB04              jmp short 0x21999
00021995  8345FC01          add dword [ebp-0x4],byte +0x1
00021999  8B4508            mov eax,[ebp+0x8]
0002199C  0FB600            movzx eax,byte [eax]
0002199F  84C0              test al,al
000219A1  0F95C0            setnz al
000219A4  83450801          add dword [ebp+0x8],byte +0x1
000219A8  84C0              test al,al
000219AA  75E9              jnz 0x21995
000219AC  8B45FC            mov eax,[ebp-0x4]
000219AF  C9                leave
000219B0  C3                ret
000219B1  55                push ebp
000219B2  89E5              mov ebp,esp
000219B4  83EC10            sub esp,byte +0x10
000219B7  C745FC00000000    mov dword [ebp-0x4],0x0
000219BE  EB2A              jmp short 0x219ea
000219C0  C745F800000000    mov dword [ebp-0x8],0x0
000219C7  EB17              jmp short 0x219e0
000219C9  C745F400000000    mov dword [ebp-0xc],0x0
000219D0  EB04              jmp short 0x219d6
000219D2  8345F401          add dword [ebp-0xc],byte +0x1
000219D6  837DF463          cmp dword [ebp-0xc],byte +0x63
000219DA  7EF6              jng 0x219d2
000219DC  8345F801          add dword [ebp-0x8],byte +0x1
000219E0  837DF863          cmp dword [ebp-0x8],byte +0x63
000219E4  7EE3              jng 0x219c9
000219E6  8345FC01          add dword [ebp-0x4],byte +0x1
000219EA  837DFC63          cmp dword [ebp-0x4],byte +0x63
000219EE  7ED0              jng 0x219c0
000219F0  C9                leave
000219F1  C3                ret
000219F2  55                push ebp
000219F3  89E5              mov ebp,esp
000219F5  83EC28            sub esp,byte +0x28
000219F8  A100730300        mov eax,[0x37300]
000219FD  8945F0            mov [ebp-0x10],eax
00021A00  A104930300        mov eax,[0x39304]
00021A05  034508            add eax,[ebp+0x8]
00021A08  A300730300        mov [0x37300],eax
00021A0D  C745F400000000    mov dword [ebp-0xc],0x0
00021A14  EB10              jmp short 0x21a26
00021A16  C7042458340200    mov dword [esp],0x23458
00021A1D  E834FDFFFF        call dword 0x21756
00021A22  8345F401          add dword [ebp-0xc],byte +0x1
00021A26  8B45F4            mov eax,[ebp-0xc]
00021A29  3B450C            cmp eax,[ebp+0xc]
00021A2C  7CE8              jl 0x21a16
00021A2E  8B45F0            mov eax,[ebp-0x10]
00021A31  A300730300        mov [0x37300],eax
00021A36  C9                leave
00021A37  C3                ret
00021A38  55                push ebp
00021A39  89E5              mov ebp,esp
00021A3B  EBFE              jmp short 0x21a3b
00021A3D  55                push ebp
00021A3E  89E5              mov ebp,esp
00021A40  83EC18            sub esp,byte +0x18
00021A43  E869FFFFFF        call dword 0x219b1
00021A48  E864FFFFFF        call dword 0x219b1
00021A4D  E85FFFFFFF        call dword 0x219b1
00021A52  E85AFFFFFF        call dword 0x219b1
00021A57  B8D40F0200        mov eax,0x20fd4
00021A5C  C744240403000000  mov dword [esp+0x4],0x3
00021A64  890424            mov [esp],eax
00021A67  E8D6ECFFFF        call dword 0x20742
00021A6C  EBFE              jmp short 0x21a6c
00021A6E  55                push ebp
00021A6F  89E5              mov ebp,esp
00021A71  EBFE              jmp short 0x21a71
00021A73  90                nop
00021A74  90                nop
00021A75  90                nop
00021A76  90                nop
00021A77  90                nop
00021A78  90                nop
00021A79  90                nop
00021A7A  90                nop
00021A7B  90                nop
00021A7C  90                nop
00021A7D  90                nop
00021A7E  90                nop
00021A7F  90                nop
00021A80  0000              add [eax],al
00021A82  0000              add [eax],al
00021A84  E897060000        call dword 0x22120
00021A89  83C408            add esp,byte +0x8
00021A8C  F4                hlt
00021A8D  90                nop
00021A8E  90                nop
00021A8F  90                nop
00021A90  60                pushad
00021A91  1E                push ds
00021A92  06                push es
00021A93  0FA0              push fs
00021A95  0FA8              push gs
00021A97  668CD0            mov ax,ss
00021A9A  8EC0              mov es,ax
00021A9C  8ED8              mov ds,ax
00021A9E  89E0              mov eax,esp
00021AA0  A3B0750300        mov [0x375b0],eax
00021AA5  BCE07A0200        mov esp,0x27ae0
00021AAA  E818FAFFFF        call dword 0x214c7
00021AAF  A1B0750300        mov eax,[0x375b0]
00021AB4  89C4              mov esp,eax
00021AB6  A100930300        mov eax,[0x39300]
00021ABB  83F800            cmp eax,byte +0x0
00021ABE  7444              jz 0x21b04
00021AC0  B800000000        mov eax,0x0
00021AC5  A300930300        mov [0x39300],eax
00021ACA  FC                cld
00021ACB  B944000000        mov ecx,0x44
00021AD0  89E6              mov esi,esp
00021AD2  8B3DAC750300      mov edi,[dword 0x375ac]
00021AD8  F3A4              rep movsb
00021ADA  8B3DAC750300      mov edi,[dword 0x375ac]
00021AE0  83C73C            add edi,byte +0x3c
00021AE3  8B07              mov eax,[edi]
00021AE5  83EF20            sub edi,byte +0x20
00021AE8  8907              mov [edi],eax
00021AEA  8B25E87D0300      mov esp,[dword 0x37de8]
00021AF0  83C444            add esp,byte +0x44
00021AF3  58                pop eax
00021AF4  83F801            cmp eax,byte +0x1
00021AF7  7400              jz 0x21af9
00021AF9  83EC48            sub esp,byte +0x48
00021AFC  0FA9              pop gs
00021AFE  0FA1              pop fs
00021B00  07                pop es
00021B01  1F                pop ds
00021B02  61                popad
00021B03  CF                iretd
00021B04  0FA9              pop gs
00021B06  0FA1              pop fs
00021B08  07                pop es
00021B09  1F                pop ds
00021B0A  61                popad
00021B0B  CF                iretd
00021B0C  90                nop
00021B0D  90                nop
00021B0E  90                nop
00021B0F  90                nop
00021B10  60                pushad
00021B11  1E                push ds
00021B12  06                push es
00021B13  0FA0              push fs
00021B15  0FA8              push gs
00021B17  668CD0            mov ax,ss
00021B1A  8EC0              mov es,ax
00021B1C  8ED8              mov ds,ax
00021B1E  89E0              mov eax,esp
00021B20  A3801A0200        mov [0x21a80],eax
00021B25  BCE0720200        mov esp,0x272e0
00021B2A  E8BF050000        call dword 0x220ee
00021B2F  A1801A0200        mov eax,[0x21a80]
00021B34  89C4              mov esp,eax
00021B36  0FA9              pop gs
00021B38  0FA1              pop fs
00021B3A  07                pop es
00021B3B  1F                pop ds
00021B3C  61                popad
00021B3D  CF                iretd
00021B3E  90                nop
00021B3F  90                nop
00021B40  60                pushad
00021B41  B020              mov al,0x20
00021B43  E620              out 0x20,al
00021B45  E6A0              out 0xa0,al
00021B47  BE04800B00        mov esi,0xb8004
00021B4C  FE06              inc byte [esi]
00021B4E  B020              mov al,0x20
00021B50  E620              out 0x20,al
00021B52  E6A0              out 0xa0,al
00021B54  61                popad
00021B55  CF                iretd
00021B56  90                nop
00021B57  90                nop
00021B58  90                nop
00021B59  90                nop
00021B5A  90                nop
00021B5B  90                nop
00021B5C  90                nop
00021B5D  90                nop
00021B5E  90                nop
00021B5F  90                nop
00021B60  60                pushad
00021B61  1E                push ds
00021B62  06                push es
00021B63  0FA0              push fs
00021B65  0FA8              push gs
00021B67  89E0              mov eax,esp
00021B69  A3801A0200        mov [0x21a80],eax
00021B6E  BCE0720200        mov esp,0x272e0
00021B73  E8E70E0000        call dword 0x22a5f
00021B78  A1801A0200        mov eax,[0x21a80]
00021B7D  89C4              mov esp,eax
00021B7F  0FA9              pop gs
00021B81  0FA1              pop fs
00021B83  07                pop es
00021B84  1F                pop ds
00021B85  61                popad
00021B86  CF                iretd
00021B87  90                nop
00021B88  90                nop
00021B89  90                nop
00021B8A  90                nop
00021B8B  90                nop
00021B8C  90                nop
00021B8D  90                nop
00021B8E  90                nop
00021B8F  90                nop
00021B90  6AFF              push byte -0x1
00021B92  6A00              push byte +0x0
00021B94  E9EBFEFFFF        jmp dword 0x21a84
00021B99  90                nop
00021B9A  90                nop
00021B9B  90                nop
00021B9C  90                nop
00021B9D  90                nop
00021B9E  90                nop
00021B9F  90                nop
00021BA0  6AFF              push byte -0x1
00021BA2  6A01              push byte +0x1
00021BA4  E9DBFEFFFF        jmp dword 0x21a84
00021BA9  90                nop
00021BAA  90                nop
00021BAB  90                nop
00021BAC  90                nop
00021BAD  90                nop
00021BAE  90                nop
00021BAF  90                nop
00021BB0  6AFF              push byte -0x1
00021BB2  6A02              push byte +0x2
00021BB4  E9CBFEFFFF        jmp dword 0x21a84
00021BB9  90                nop
00021BBA  90                nop
00021BBB  90                nop
00021BBC  90                nop
00021BBD  90                nop
00021BBE  90                nop
00021BBF  90                nop
00021BC0  6AFF              push byte -0x1
00021BC2  6A03              push byte +0x3
00021BC4  E9BBFEFFFF        jmp dword 0x21a84
00021BC9  90                nop
00021BCA  90                nop
00021BCB  90                nop
00021BCC  90                nop
00021BCD  90                nop
00021BCE  90                nop
00021BCF  90                nop
00021BD0  6AFF              push byte -0x1
00021BD2  6A04              push byte +0x4
00021BD4  E9ABFEFFFF        jmp dword 0x21a84
00021BD9  90                nop
00021BDA  90                nop
00021BDB  90                nop
00021BDC  90                nop
00021BDD  90                nop
00021BDE  90                nop
00021BDF  90                nop
00021BE0  6AFF              push byte -0x1
00021BE2  6A05              push byte +0x5
00021BE4  E99BFEFFFF        jmp dword 0x21a84
00021BE9  90                nop
00021BEA  90                nop
00021BEB  90                nop
00021BEC  90                nop
00021BED  90                nop
00021BEE  90                nop
00021BEF  90                nop
00021BF0  6AFF              push byte -0x1
00021BF2  6A06              push byte +0x6
00021BF4  E98BFEFFFF        jmp dword 0x21a84
00021BF9  90                nop
00021BFA  90                nop
00021BFB  90                nop
00021BFC  90                nop
00021BFD  90                nop
00021BFE  90                nop
00021BFF  90                nop
00021C00  6AFF              push byte -0x1
00021C02  6A07              push byte +0x7
00021C04  E97BFEFFFF        jmp dword 0x21a84
00021C09  90                nop
00021C0A  90                nop
00021C0B  90                nop
00021C0C  90                nop
00021C0D  90                nop
00021C0E  90                nop
00021C0F  90                nop
00021C10  6A08              push byte +0x8
00021C12  E96DFEFFFF        jmp dword 0x21a84
00021C17  90                nop
00021C18  90                nop
00021C19  90                nop
00021C1A  90                nop
00021C1B  90                nop
00021C1C  90                nop
00021C1D  90                nop
00021C1E  90                nop
00021C1F  90                nop
00021C20  6AFF              push byte -0x1
00021C22  6A09              push byte +0x9
00021C24  E95BFEFFFF        jmp dword 0x21a84
00021C29  90                nop
00021C2A  90                nop
00021C2B  90                nop
00021C2C  90                nop
00021C2D  90                nop
00021C2E  90                nop
00021C2F  90                nop
00021C30  6A0A              push byte +0xa
00021C32  E94DFEFFFF        jmp dword 0x21a84
00021C37  90                nop
00021C38  90                nop
00021C39  90                nop
00021C3A  90                nop
00021C3B  90                nop
00021C3C  90                nop
00021C3D  90                nop
00021C3E  90                nop
00021C3F  90                nop
00021C40  6A0B              push byte +0xb
00021C42  E93DFEFFFF        jmp dword 0x21a84
00021C47  90                nop
00021C48  90                nop
00021C49  90                nop
00021C4A  90                nop
00021C4B  90                nop
00021C4C  90                nop
00021C4D  90                nop
00021C4E  90                nop
00021C4F  90                nop
00021C50  6A0C              push byte +0xc
00021C52  E92DFEFFFF        jmp dword 0x21a84
00021C57  90                nop
00021C58  90                nop
00021C59  90                nop
00021C5A  90                nop
00021C5B  90                nop
00021C5C  90                nop
00021C5D  90                nop
00021C5E  90                nop
00021C5F  90                nop
00021C60  66B81000          mov ax,0x10
00021C64  8ED8              mov ds,ax
00021C66  8EC0              mov es,ax
00021C68  E8880F0000        call dword 0x22bf5
00021C6D  83C404            add esp,byte +0x4
00021C70  CF                iretd
00021C71  90                nop
00021C72  90                nop
00021C73  90                nop
00021C74  90                nop
00021C75  90                nop
00021C76  90                nop
00021C77  90                nop
00021C78  90                nop
00021C79  90                nop
00021C7A  90                nop
00021C7B  90                nop
00021C7C  90                nop
00021C7D  90                nop
00021C7E  90                nop
00021C7F  90                nop
00021C80  6A0E              push byte +0xe
00021C82  E9FDFDFFFF        jmp dword 0x21a84
00021C87  90                nop
00021C88  90                nop
00021C89  90                nop
00021C8A  90                nop
00021C8B  90                nop
00021C8C  90                nop
00021C8D  90                nop
00021C8E  90                nop
00021C8F  90                nop
00021C90  6AFF              push byte -0x1
00021C92  6A10              push byte +0x10
00021C94  E9EBFDFFFF        jmp dword 0x21a84
00021C99  90                nop
00021C9A  90                nop
00021C9B  90                nop
00021C9C  90                nop
00021C9D  90                nop
00021C9E  90                nop
00021C9F  90                nop
00021CA0  6A11              push byte +0x11
00021CA2  E9DDFDFFFF        jmp dword 0x21a84
00021CA7  90                nop
00021CA8  90                nop
00021CA9  90                nop
00021CAA  90                nop
00021CAB  90                nop
00021CAC  90                nop
00021CAD  90                nop
00021CAE  90                nop
00021CAF  90                nop
00021CB0  6AFF              push byte -0x1
00021CB2  6A12              push byte +0x12
00021CB4  E9CBFDFFFF        jmp dword 0x21a84
00021CB9  90                nop
00021CBA  90                nop
00021CBB  90                nop
00021CBC  90                nop
00021CBD  90                nop
00021CBE  90                nop
00021CBF  90                nop
00021CC0  6AFF              push byte -0x1
00021CC2  6A13              push byte +0x13
00021CC4  E9BBFDFFFF        jmp dword 0x21a84
00021CC9  90                nop
00021CCA  90                nop
00021CCB  90                nop
00021CCC  55                push ebp
00021CCD  89E5              mov ebp,esp
00021CCF  83EC08            sub esp,byte +0x8
00021CD2  E84D030000        call dword 0x22024
00021CD7  E87E000000        call dword 0x21d5a
00021CDC  C9                leave
00021CDD  C3                ret
00021CDE  55                push ebp
00021CDF  89E5              mov ebp,esp
00021CE1  83EC28            sub esp,byte +0x28
00021CE4  E869FAFFFF        call dword 0x21752
00021CE9  C744240415000000  mov dword [esp+0x4],0x15
00021CF1  C7042470000000    mov dword [esp],0x70
00021CF8  E833FAFFFF        call dword 0x21730
00021CFD  C7042471000000    mov dword [esp],0x71
00021D04  E839FAFFFF        call dword 0x21742
00021D09  8845F7            mov [ebp-0x9],al
00021D0C  0FB645F7          movzx eax,byte [ebp-0x9]
00021D10  890424            mov [esp],eax
00021D13  E867FBFFFF        call dword 0x2187f
00021D18  C704245C340200    mov dword [esp],0x2345c
00021D1F  E832FAFFFF        call dword 0x21756
00021D24  C744240410000000  mov dword [esp+0x4],0x10
00021D2C  C7042470000000    mov dword [esp],0x70
00021D33  E8F8F9FFFF        call dword 0x21730
00021D38  C7042471000000    mov dword [esp],0x71
00021D3F  E8FEF9FFFF        call dword 0x21742
00021D44  8845F7            mov [ebp-0x9],al
00021D47  0FB645F7          movzx eax,byte [ebp-0x9]
00021D4B  890424            mov [esp],eax
00021D4E  E82CFBFFFF        call dword 0x2187f
00021D53  E8FCF9FFFF        call dword 0x21754
00021D58  C9                leave
00021D59  C3                ret
00021D5A  55                push ebp
00021D5B  89E5              mov ebp,esp
00021D5D  53                push ebx
00021D5E  83EC14            sub esp,byte +0x14
00021D61  C744240409000000  mov dword [esp+0x4],0x9
00021D69  C7042470000000    mov dword [esp],0x70
00021D70  E8BBF9FFFF        call dword 0x21730
00021D75  C7042471000000    mov dword [esp],0x71
00021D7C  E8C1F9FFFF        call dword 0x21742
00021D81  89C2              mov edx,eax
00021D83  C0EA04            shr dl,0x4
00021D86  89D0              mov eax,edx
00021D88  C1E002            shl eax,0x2
00021D8B  01D0              add eax,edx
00021D8D  01C0              add eax,eax
00021D8F  89C3              mov ebx,eax
00021D91  C7042471000000    mov dword [esp],0x71
00021D98  E8A5F9FFFF        call dword 0x21742
00021D9D  83E00F            and eax,byte +0xf
00021DA0  01D8              add eax,ebx
00021DA2  A2EE7A0200        mov [0x27aee],al
00021DA7  C744240408000000  mov dword [esp+0x4],0x8
00021DAF  C7042470000000    mov dword [esp],0x70
00021DB6  E875F9FFFF        call dword 0x21730
00021DBB  C7042471000000    mov dword [esp],0x71
00021DC2  E87BF9FFFF        call dword 0x21742
00021DC7  89C2              mov edx,eax
00021DC9  C0EA04            shr dl,0x4
00021DCC  89D0              mov eax,edx
00021DCE  C1E002            shl eax,0x2
00021DD1  01D0              add eax,edx
00021DD3  01C0              add eax,eax
00021DD5  89C3              mov ebx,eax
00021DD7  C7042471000000    mov dword [esp],0x71
00021DDE  E85FF9FFFF        call dword 0x21742
00021DE3  83E00F            and eax,byte +0xf
00021DE6  01D8              add eax,ebx
00021DE8  A2ED7A0200        mov [0x27aed],al
00021DED  C744240407000000  mov dword [esp+0x4],0x7
00021DF5  C7042470000000    mov dword [esp],0x70
00021DFC  E82FF9FFFF        call dword 0x21730
00021E01  C7042471000000    mov dword [esp],0x71
00021E08  E835F9FFFF        call dword 0x21742
00021E0D  89C2              mov edx,eax
00021E0F  C0EA04            shr dl,0x4
00021E12  89D0              mov eax,edx
00021E14  C1E002            shl eax,0x2
00021E17  01D0              add eax,edx
00021E19  01C0              add eax,eax
00021E1B  89C3              mov ebx,eax
00021E1D  C7042471000000    mov dword [esp],0x71
00021E24  E819F9FFFF        call dword 0x21742
00021E29  83E00F            and eax,byte +0xf
00021E2C  01D8              add eax,ebx
00021E2E  A2EC7A0200        mov [0x27aec],al
00021E33  C744240406000000  mov dword [esp+0x4],0x6
00021E3B  C7042470000000    mov dword [esp],0x70
00021E42  E8E9F8FFFF        call dword 0x21730
00021E47  C7042471000000    mov dword [esp],0x71
00021E4E  E8EFF8FFFF        call dword 0x21742
00021E53  89C2              mov edx,eax
00021E55  C0EA04            shr dl,0x4
00021E58  89D0              mov eax,edx
00021E5A  C1E002            shl eax,0x2
00021E5D  01D0              add eax,edx
00021E5F  01C0              add eax,eax
00021E61  89C3              mov ebx,eax
00021E63  C7042471000000    mov dword [esp],0x71
00021E6A  E8D3F8FFFF        call dword 0x21742
00021E6F  83E00F            and eax,byte +0xf
00021E72  01D8              add eax,ebx
00021E74  A2EB7A0200        mov [0x27aeb],al
00021E79  C744240404000000  mov dword [esp+0x4],0x4
00021E81  C7042470000000    mov dword [esp],0x70
00021E88  E8A3F8FFFF        call dword 0x21730
00021E8D  C7042471000000    mov dword [esp],0x71
00021E94  E8A9F8FFFF        call dword 0x21742
00021E99  89C2              mov edx,eax
00021E9B  C0EA04            shr dl,0x4
00021E9E  89D0              mov eax,edx
00021EA0  C1E002            shl eax,0x2
00021EA3  01D0              add eax,edx
00021EA5  01C0              add eax,eax
00021EA7  89C3              mov ebx,eax
00021EA9  C7042471000000    mov dword [esp],0x71
00021EB0  E88DF8FFFF        call dword 0x21742
00021EB5  83E00F            and eax,byte +0xf
00021EB8  01D8              add eax,ebx
00021EBA  A2EA7A0200        mov [0x27aea],al
00021EBF  C744240402000000  mov dword [esp+0x4],0x2
00021EC7  C7042470000000    mov dword [esp],0x70
00021ECE  E85DF8FFFF        call dword 0x21730
00021ED3  C7042471000000    mov dword [esp],0x71
00021EDA  E863F8FFFF        call dword 0x21742
00021EDF  89C2              mov edx,eax
00021EE1  C0EA04            shr dl,0x4
00021EE4  89D0              mov eax,edx
00021EE6  C1E002            shl eax,0x2
00021EE9  01D0              add eax,edx
00021EEB  01C0              add eax,eax
00021EED  89C3              mov ebx,eax
00021EEF  C7042471000000    mov dword [esp],0x71
00021EF6  E847F8FFFF        call dword 0x21742
00021EFB  83E00F            and eax,byte +0xf
00021EFE  01D8              add eax,ebx
00021F00  A2E97A0200        mov [0x27ae9],al
00021F05  C744240400000000  mov dword [esp+0x4],0x0
00021F0D  C7042470000000    mov dword [esp],0x70
00021F14  E817F8FFFF        call dword 0x21730
00021F19  C7042471000000    mov dword [esp],0x71
00021F20  E81DF8FFFF        call dword 0x21742
00021F25  89C2              mov edx,eax
00021F27  C0EA04            shr dl,0x4
00021F2A  89D0              mov eax,edx
00021F2C  C1E002            shl eax,0x2
00021F2F  01D0              add eax,edx
00021F31  01C0              add eax,eax
00021F33  89C3              mov ebx,eax
00021F35  C7042471000000    mov dword [esp],0x71
00021F3C  E801F8FFFF        call dword 0x21742
00021F41  83E00F            and eax,byte +0xf
00021F44  01D8              add eax,ebx
00021F46  A2E87A0200        mov [0x27ae8],al
00021F4B  C605E77A020000    mov byte [dword 0x27ae7],0x0
00021F52  C704245E340200    mov dword [esp],0x2345e
00021F59  E8F8F7FFFF        call dword 0x21756
00021F5E  0FB605EA7A0200    movzx eax,byte [dword 0x27aea]
00021F65  0FB6C0            movzx eax,al
00021F68  890424            mov [esp],eax
00021F6B  E80FF9FFFF        call dword 0x2187f
00021F70  C7042469340200    mov dword [esp],0x23469
00021F77  E8DAF7FFFF        call dword 0x21756
00021F7C  0FB605E97A0200    movzx eax,byte [dword 0x27ae9]
00021F83  0FB6C0            movzx eax,al
00021F86  890424            mov [esp],eax
00021F89  E8F1F8FFFF        call dword 0x2187f
00021F8E  C7042469340200    mov dword [esp],0x23469
00021F95  E8BCF7FFFF        call dword 0x21756
00021F9A  0FB605E87A0200    movzx eax,byte [dword 0x27ae8]
00021FA1  0FB6C0            movzx eax,al
00021FA4  890424            mov [esp],eax
00021FA7  E8D3F8FFFF        call dword 0x2187f
00021FAC  C704246B340200    mov dword [esp],0x2346b
00021FB3  E89EF7FFFF        call dword 0x21756
00021FB8  C704246E340200    mov dword [esp],0x2346e
00021FBF  E892F7FFFF        call dword 0x21756
00021FC4  0FB605EE7A0200    movzx eax,byte [dword 0x27aee]
00021FCB  0FB6C0            movzx eax,al
00021FCE  890424            mov [esp],eax
00021FD1  E8A9F8FFFF        call dword 0x2187f
00021FD6  C7042471340200    mov dword [esp],0x23471
00021FDD  E874F7FFFF        call dword 0x21756
00021FE2  0FB605ED7A0200    movzx eax,byte [dword 0x27aed]
00021FE9  0FB6C0            movzx eax,al
00021FEC  890424            mov [esp],eax
00021FEF  E88BF8FFFF        call dword 0x2187f
00021FF4  C7042471340200    mov dword [esp],0x23471
00021FFB  E856F7FFFF        call dword 0x21756
00022000  0FB605EC7A0200    movzx eax,byte [dword 0x27aec]
00022007  0FB6C0            movzx eax,al
0002200A  890424            mov [esp],eax
0002200D  E86DF8FFFF        call dword 0x2187f
00022012  C704245C340200    mov dword [esp],0x2345c
00022019  E838F7FFFF        call dword 0x21756
0002201E  83C414            add esp,byte +0x14
00022021  5B                pop ebx
00022022  5D                pop ebp
00022023  C3                ret
00022024  55                push ebp
00022025  89E5              mov ebp,esp
00022027  83EC28            sub esp,byte +0x28
0002202A  C7042473340200    mov dword [esp],0x23473
00022031  E820F7FFFF        call dword 0x21756
00022036  C744240410000000  mov dword [esp+0x4],0x10
0002203E  C7042470000000    mov dword [esp],0x70
00022045  E8E6F6FFFF        call dword 0x21730
0002204A  C7042471000000    mov dword [esp],0x71
00022051  E8ECF6FFFF        call dword 0x21742
00022056  8845F7            mov [ebp-0x9],al
00022059  0FB645F7          movzx eax,byte [ebp-0x9]
0002205D  C0E804            shr al,0x4
00022060  0FB6C0            movzx eax,al
00022063  83E00F            and eax,byte +0xf
00022066  83F804            cmp eax,byte +0x4
00022069  774E              ja 0x220b9
0002206B  8B0485C4340200    mov eax,[eax*4+0x234c4]
00022072  FFE0              jmp eax
00022074  C7042487340200    mov dword [esp],0x23487
0002207B  E8D6F6FFFF        call dword 0x21756
00022080  EB37              jmp short 0x220b9
00022082  C7042492340200    mov dword [esp],0x23492
00022089  E8C8F6FFFF        call dword 0x21756
0002208E  EB29              jmp short 0x220b9
00022090  C704249E340200    mov dword [esp],0x2349e
00022097  E8BAF6FFFF        call dword 0x21756
0002209C  EB1B              jmp short 0x220b9
0002209E  C70424AA340200    mov dword [esp],0x234aa
000220A5  E8ACF6FFFF        call dword 0x21756
000220AA  EB0D              jmp short 0x220b9
000220AC  C70424B6340200    mov dword [esp],0x234b6
000220B3  E89EF6FFFF        call dword 0x21756
000220B8  90                nop
000220B9  C9                leave
000220BA  C3                ret
000220BB  90                nop
000220BC  55                push ebp
000220BD  89E5              mov ebp,esp
000220BF  83EC18            sub esp,byte +0x18
000220C2  C705207503000000  mov dword [dword 0x37520],0x0
         -0000
000220CC  C705247503002C75  mov dword [dword 0x37524],0x3752c
         -0300
000220D6  A124750300        mov eax,[0x37524]
000220DB  A328750300        mov [0x37528],eax
000220E0  C7042401000000    mov dword [esp],0x1
000220E7  E8E2F4FFFF        call dword 0x215ce
000220EC  C9                leave
000220ED  C3                ret
000220EE  55                push ebp
000220EF  89E5              mov ebp,esp
000220F1  83EC28            sub esp,byte +0x28
000220F4  C7042460000000    mov dword [esp],0x60
000220FB  E842F6FFFF        call dword 0x21742
00022100  0FB6C0            movzx eax,al
00022103  8945F4            mov [ebp-0xc],eax
00022106  8B45F4            mov eax,[ebp-0xc]
00022109  890424            mov [esp],eax
0002210C  E833040000        call dword 0x22544
00022111  C7042401000000    mov dword [esp],0x1
00022118  E8CFF5FFFF        call dword 0x216ec
0002211D  C9                leave
0002211E  C3                ret
0002211F  90                nop
00022120  55                push ebp
00022121  89E5              mov ebp,esp
00022123  83EC18            sub esp,byte +0x18
00022126  837D0810          cmp dword [ebp+0x8],byte +0x10
0002212A  7E0E              jng 0x2213a
0002212C  C70424D8340200    mov dword [esp],0x234d8
00022133  E81EF6FFFF        call dword 0x21756
00022138  EB0B              jmp short 0x22145
0002213A  8B4508            mov eax,[ebp+0x8]
0002213D  890424            mov [esp],eax
00022140  E802000000        call dword 0x22147
00022145  C9                leave
00022146  C3                ret
00022147  55                push ebp
00022148  89E5              mov ebp,esp
0002214A  83EC68            sub esp,byte +0x68
0002214D  A100730300        mov eax,[0x37300]
00022152  8945F4            mov [ebp-0xc],eax
00022155  C745B4E5340200    mov dword [ebp-0x4c],0x234e5
0002215C  C745B8F1340200    mov dword [ebp-0x48],0x234f1
00022163  C745BCFD340200    mov dword [ebp-0x44],0x234fd
0002216A  C745C009350200    mov dword [ebp-0x40],0x23509
00022171  C745C415350200    mov dword [ebp-0x3c],0x23515
00022178  C745C821350200    mov dword [ebp-0x38],0x23521
0002217F  C745CC2D350200    mov dword [ebp-0x34],0x2352d
00022186  C745D039350200    mov dword [ebp-0x30],0x23539
0002218D  C745D445350200    mov dword [ebp-0x2c],0x23545
00022194  C745D851350200    mov dword [ebp-0x28],0x23551
0002219B  C745DC5D350200    mov dword [ebp-0x24],0x2355d
000221A2  C745E06A350200    mov dword [ebp-0x20],0x2356a
000221A9  C745E477350200    mov dword [ebp-0x1c],0x23577
000221B0  C745E884350200    mov dword [ebp-0x18],0x23584
000221B7  C745EC91350200    mov dword [ebp-0x14],0x23591
000221BE  C745F09E350200    mov dword [ebp-0x10],0x2359e
000221C5  C70500730300DA03  mov dword [dword 0x37300],0x3da
         -0000
000221CF  C70424AB350200    mov dword [esp],0x235ab
000221D6  E87BF5FFFF        call dword 0x21756
000221DB  8B4508            mov eax,[ebp+0x8]
000221DE  8D148500000000    lea edx,[eax*4+0x0]
000221E5  8D45B4            lea eax,[ebp-0x4c]
000221E8  01D0              add eax,edx
000221EA  8B00              mov eax,[eax]
000221EC  890424            mov [esp],eax
000221EF  E862F5FFFF        call dword 0x21756
000221F4  C70424AB350200    mov dword [esp],0x235ab
000221FB  E856F5FFFF        call dword 0x21756
00022200  8B45F4            mov eax,[ebp-0xc]
00022203  A300730300        mov [0x37300],eax
00022208  C9                leave
00022209  C3                ret
0002220A  90                nop
0002220B  90                nop
0002220C  55                push ebp
0002220D  89E5              mov ebp,esp
0002220F  83EC08            sub esp,byte +0x8
00022212  E8D9F5FFFF        call dword 0x217f0
00022217  E802000000        call dword 0x2221e
0002221C  C9                leave
0002221D  C3                ret
0002221E  55                push ebp
0002221F  89E5              mov ebp,esp
00022221  5D                pop ebp
00022222  C3                ret
00022223  90                nop
00022224  55                push ebp
00022225  89E5              mov ebp,esp
00022227  83EC10            sub esp,byte +0x10
0002222A  C745FC00000000    mov dword [ebp-0x4],0x0
00022231  EB12              jmp short 0x22245
00022233  8B45FC            mov eax,[ebp-0x4]
00022236  C704852073030000  mov dword [eax*4+0x37320],0x0
         -000000
00022241  8345FC01          add dword [ebp-0x4],byte +0x1
00022245  837DFC7F          cmp dword [ebp-0x4],byte +0x7f
00022249  7EE8              jng 0x22233
0002224B  C745FC00000000    mov dword [ebp-0x4],0x0
00022252  EB12              jmp short 0x22266
00022254  8B45FC            mov eax,[ebp-0x4]
00022257  C70485007B020000  mov dword [eax*4+0x27b00],0x0
         -000000
00022262  8345FC01          add dword [ebp-0x4],byte +0x1
00022266  817DFCFF3B0000    cmp dword [ebp-0x4],0x3bff
0002226D  7EE5              jng 0x22254
0002226F  C705207303000100  mov dword [dword 0x37320],0x1
         -0000
00022279  C705247303000100  mov dword [dword 0x37324],0x1
         -0000
00022283  C705287303000100  mov dword [dword 0x37328],0x1
         -0000
0002228D  C7052C7303000100  mov dword [dword 0x3732c],0x1
         -0000
00022297  C9                leave
00022298  C3                ret
00022299  55                push ebp
0002229A  89E5              mov ebp,esp
0002229C  83EC28            sub esp,byte +0x28
0002229F  817D08FF030000    cmp dword [ebp+0x8],0x3ff
000222A6  7709              ja 0x222b1
000222A8  C745F401000000    mov dword [ebp-0xc],0x1
000222AF  EB23              jmp short 0x222d4
000222B1  8B4508            mov eax,[ebp+0x8]
000222B4  25FF030000        and eax,0x3ff
000222B9  85C0              test eax,eax
000222BB  740E              jz 0x222cb
000222BD  8B4508            mov eax,[ebp+0x8]
000222C0  C1E80A            shr eax,0xa
000222C3  83C001            add eax,byte +0x1
000222C6  8945F4            mov [ebp-0xc],eax
000222C9  EB09              jmp short 0x222d4
000222CB  8B4508            mov eax,[ebp+0x8]
000222CE  C1E80A            shr eax,0xa
000222D1  8945F4            mov [ebp-0xc],eax
000222D4  C745F000000000    mov dword [ebp-0x10],0x0
000222DB  EB71              jmp short 0x2234e
000222DD  8B45F0            mov eax,[ebp-0x10]
000222E0  8B0485007B0200    mov eax,[eax*4+0x27b00]
000222E7  85C0              test eax,eax
000222E9  755F              jnz 0x2234a
000222EB  837DF401          cmp dword [ebp-0xc],byte +0x1
000222EF  7510              jnz 0x22301
000222F1  8B45F0            mov eax,[ebp-0x10]
000222F4  C70485007B020001  mov dword [eax*4+0x27b00],0x1
         -000000
000222FF  EB56              jmp short 0x22357
00022301  8B45F4            mov eax,[ebp-0xc]
00022304  89442404          mov [esp+0x4],eax
00022308  8B45F0            mov eax,[ebp-0x10]
0002230B  890424            mov [esp],eax
0002230E  E81B010000        call dword 0x2242e
00022313  8945EC            mov [ebp-0x14],eax
00022316  8B45EC            mov eax,[ebp-0x14]
00022319  3B45F4            cmp eax,[ebp-0xc]
0002231C  7526              jnz 0x22344
0002231E  EB13              jmp short 0x22333
00022320  8B45EC            mov eax,[ebp-0x14]
00022323  8B55F0            mov edx,[ebp-0x10]
00022326  01D0              add eax,edx
00022328  C70485007B020001  mov dword [eax*4+0x27b00],0x1
         -000000
00022333  837DEC00          cmp dword [ebp-0x14],byte +0x0
00022337  0F95C0            setnz al
0002233A  836DEC01          sub dword [ebp-0x14],byte +0x1
0002233E  84C0              test al,al
00022340  75DE              jnz 0x22320
00022342  EB13              jmp short 0x22357
00022344  8B45EC            mov eax,[ebp-0x14]
00022347  0145F0            add [ebp-0x10],eax
0002234A  8345F001          add dword [ebp-0x10],byte +0x1
0002234E  817DF0FF3B0000    cmp dword [ebp-0x10],0x3bff
00022355  7E86              jng 0x222dd
00022357  8B45F0            mov eax,[ebp-0x10]
0002235A  C1E00A            shl eax,0xa
0002235D  8945E8            mov [ebp-0x18],eax
00022360  8B45E8            mov eax,[ebp-0x18]
00022363  C9                leave
00022364  C3                ret
00022365  55                push ebp
00022366  89E5              mov ebp,esp
00022368  83EC28            sub esp,byte +0x28
0002236B  817D08FF030000    cmp dword [ebp+0x8],0x3ff
00022372  7709              ja 0x2237d
00022374  C745F401000000    mov dword [ebp-0xc],0x1
0002237B  EB23              jmp short 0x223a0
0002237D  8B4508            mov eax,[ebp+0x8]
00022380  25FF030000        and eax,0x3ff
00022385  85C0              test eax,eax
00022387  740E              jz 0x22397
00022389  8B4508            mov eax,[ebp+0x8]
0002238C  C1E80A            shr eax,0xa
0002238F  83C001            add eax,byte +0x1
00022392  8945F4            mov [ebp-0xc],eax
00022395  EB09              jmp short 0x223a0
00022397  8B4508            mov eax,[ebp+0x8]
0002239A  C1E80A            shr eax,0xa
0002239D  8945F4            mov [ebp-0xc],eax
000223A0  C745F000000000    mov dword [ebp-0x10],0x0
000223A7  EB71              jmp short 0x2241a
000223A9  8B45F0            mov eax,[ebp-0x10]
000223AC  8B048520730300    mov eax,[eax*4+0x37320]
000223B3  85C0              test eax,eax
000223B5  755F              jnz 0x22416
000223B7  837DF401          cmp dword [ebp-0xc],byte +0x1
000223BB  7510              jnz 0x223cd
000223BD  8B45F0            mov eax,[ebp-0x10]
000223C0  C704852073030001  mov dword [eax*4+0x37320],0x1
         -000000
000223CB  EB53              jmp short 0x22420
000223CD  8B45F4            mov eax,[ebp-0xc]
000223D0  89442404          mov [esp+0x4],eax
000223D4  8B45F0            mov eax,[ebp-0x10]
000223D7  890424            mov [esp],eax
000223DA  E84F000000        call dword 0x2242e
000223DF  8945EC            mov [ebp-0x14],eax
000223E2  8B45EC            mov eax,[ebp-0x14]
000223E5  3B45F4            cmp eax,[ebp-0xc]
000223E8  7526              jnz 0x22410
000223EA  EB13              jmp short 0x223ff
000223EC  8B45EC            mov eax,[ebp-0x14]
000223EF  8B55F0            mov edx,[ebp-0x10]
000223F2  01D0              add eax,edx
000223F4  C704852073030001  mov dword [eax*4+0x37320],0x1
         -000000
000223FF  837DEC00          cmp dword [ebp-0x14],byte +0x0
00022403  0F95C0            setnz al
00022406  836DEC01          sub dword [ebp-0x14],byte +0x1
0002240A  84C0              test al,al
0002240C  75DE              jnz 0x223ec
0002240E  EB10              jmp short 0x22420
00022410  8B45EC            mov eax,[ebp-0x14]
00022413  0145F0            add [ebp-0x10],eax
00022416  8345F001          add dword [ebp-0x10],byte +0x1
0002241A  837DF07F          cmp dword [ebp-0x10],byte +0x7f
0002241E  7E89              jng 0x223a9
00022420  8B45F0            mov eax,[ebp-0x10]
00022423  C1E00A            shl eax,0xa
00022426  8945E8            mov [ebp-0x18],eax
00022429  8B45E8            mov eax,[ebp-0x18]
0002242C  C9                leave
0002242D  C3                ret
0002242E  55                push ebp
0002242F  89E5              mov ebp,esp
00022431  83EC10            sub esp,byte +0x10
00022434  C745F801000000    mov dword [ebp-0x8],0x1
0002243B  8B4508            mov eax,[ebp+0x8]
0002243E  83C001            add eax,byte +0x1
00022441  8945FC            mov [ebp-0x4],eax
00022444  EB1E              jmp short 0x22464
00022446  8B45FC            mov eax,[ebp-0x4]
00022449  8B048520730300    mov eax,[eax*4+0x37320]
00022450  85C0              test eax,eax
00022452  7516              jnz 0x2246a
00022454  8B45F8            mov eax,[ebp-0x8]
00022457  3B450C            cmp eax,[ebp+0xc]
0002245A  740E              jz 0x2246a
0002245C  8345F801          add dword [ebp-0x8],byte +0x1
00022460  8345FC01          add dword [ebp-0x4],byte +0x1
00022464  837DFC7F          cmp dword [ebp-0x4],byte +0x7f
00022468  7EDC              jng 0x22446
0002246A  8B45F8            mov eax,[ebp-0x8]
0002246D  C9                leave
0002246E  C3                ret
0002246F  55                push ebp
00022470  89E5              mov ebp,esp
00022472  83EC10            sub esp,byte +0x10
00022475  817D0CFF030000    cmp dword [ebp+0xc],0x3ff
0002247C  7709              ja 0x22487
0002247E  C745FC01000000    mov dword [ebp-0x4],0x1
00022485  EB23              jmp short 0x224aa
00022487  8B450C            mov eax,[ebp+0xc]
0002248A  25FF030000        and eax,0x3ff
0002248F  85C0              test eax,eax
00022491  740E              jz 0x224a1
00022493  8B450C            mov eax,[ebp+0xc]
00022496  C1E80A            shr eax,0xa
00022499  83C001            add eax,byte +0x1
0002249C  8945FC            mov [ebp-0x4],eax
0002249F  EB09              jmp short 0x224aa
000224A1  8B450C            mov eax,[ebp+0xc]
000224A4  C1E80A            shr eax,0xa
000224A7  8945FC            mov [ebp-0x4],eax
000224AA  8B4508            mov eax,[ebp+0x8]
000224AD  C1E80A            shr eax,0xa
000224B0  8945F8            mov [ebp-0x8],eax
000224B3  EB13              jmp short 0x224c8
000224B5  8B45FC            mov eax,[ebp-0x4]
000224B8  8B55F8            mov edx,[ebp-0x8]
000224BB  01D0              add eax,edx
000224BD  C704852073030000  mov dword [eax*4+0x37320],0x0
         -000000
000224C8  837DFC00          cmp dword [ebp-0x4],byte +0x0
000224CC  0F95C0            setnz al
000224CF  836DFC01          sub dword [ebp-0x4],byte +0x1
000224D3  84C0              test al,al
000224D5  75DE              jnz 0x224b5
000224D7  C9                leave
000224D8  C3                ret
000224D9  55                push ebp
000224DA  89E5              mov ebp,esp
000224DC  83EC10            sub esp,byte +0x10
000224DF  817D0CFF030000    cmp dword [ebp+0xc],0x3ff
000224E6  7709              ja 0x224f1
000224E8  C745FC01000000    mov dword [ebp-0x4],0x1
000224EF  EB23              jmp short 0x22514
000224F1  8B450C            mov eax,[ebp+0xc]
000224F4  25FF030000        and eax,0x3ff
000224F9  85C0              test eax,eax
000224FB  740E              jz 0x2250b
000224FD  8B450C            mov eax,[ebp+0xc]
00022500  C1E80A            shr eax,0xa
00022503  83C001            add eax,byte +0x1
00022506  8945FC            mov [ebp-0x4],eax
00022509  EB09              jmp short 0x22514
0002250B  8B450C            mov eax,[ebp+0xc]
0002250E  C1E80A            shr eax,0xa
00022511  8945FC            mov [ebp-0x4],eax
00022514  8B4508            mov eax,[ebp+0x8]
00022517  C1E80A            shr eax,0xa
0002251A  8945F8            mov [ebp-0x8],eax
0002251D  EB13              jmp short 0x22532
0002251F  8B45FC            mov eax,[ebp-0x4]
00022522  8B55F8            mov edx,[ebp-0x8]
00022525  01D0              add eax,edx
00022527  C70485007B020000  mov dword [eax*4+0x27b00],0x0
         -000000
00022532  837DFC00          cmp dword [ebp-0x4],byte +0x0
00022536  0F95C0            setnz al
00022539  836DFC01          sub dword [ebp-0x4],byte +0x1
0002253D  84C0              test al,al
0002253F  75DE              jnz 0x2251f
00022541  C9                leave
00022542  C3                ret
00022543  90                nop
00022544  55                push ebp
00022545  89E5              mov ebp,esp
00022547  53                push ebx
00022548  A124750300        mov eax,[0x37524]
0002254D  8B5508            mov edx,[ebp+0x8]
00022550  8910              mov [eax],edx
00022552  83C004            add eax,byte +0x4
00022555  A324750300        mov [0x37524],eax
0002255A  A124750300        mov eax,[0x37524]
0002255F  BA2C750300        mov edx,0x3752c
00022564  B980FFFFFF        mov ecx,0xffffff80
00022569  89CB              mov ebx,ecx
0002256B  29D3              sub ebx,edx
0002256D  89DA              mov edx,ebx
0002256F  01D0              add eax,edx
00022571  83F803            cmp eax,byte +0x3
00022574  770A              ja 0x22580
00022576  C705247503002C75  mov dword [dword 0x37524],0x3752c
         -0300
00022580  5B                pop ebx
00022581  5D                pop ebp
00022582  C3                ret
00022583  55                push ebp
00022584  89E5              mov ebp,esp
00022586  53                push ebx
00022587  83EC24            sub esp,byte +0x24
0002258A  C645F700          mov byte [ebp-0x9],0x0
0002258E  C645EF00          mov byte [ebp-0x11],0x0
00022592  E957010000        jmp dword 0x226ee
00022597  E952010000        jmp dword 0x226ee
0002259C  A128750300        mov eax,[0x37528]
000225A1  8B10              mov edx,[eax]
000225A3  8955F0            mov [ebp-0x10],edx
000225A6  83C004            add eax,byte +0x4
000225A9  A328750300        mov [0x37528],eax
000225AE  A128750300        mov eax,[0x37528]
000225B3  BA2C750300        mov edx,0x3752c
000225B8  B980FFFFFF        mov ecx,0xffffff80
000225BD  89CB              mov ebx,ecx
000225BF  29D3              sub ebx,edx
000225C1  89DA              mov edx,ebx
000225C3  01D0              add eax,edx
000225C5  83F803            cmp eax,byte +0x3
000225C8  770A              ja 0x225d4
000225CA  C705287503002C75  mov dword [dword 0x37528],0x3752c
         -0300
000225D4  8B45F0            mov eax,[ebp-0x10]
000225D7  83E80E            sub eax,byte +0xe
000225DA  83F842            cmp eax,byte +0x42
000225DD  0F8798000000      ja dword 0x2267b
000225E3  8B0485B8350200    mov eax,[eax*4+0x235b8]
000225EA  FFE0              jmp eax
000225EC  0FB645F7          movzx eax,byte [ebp-0x9]
000225F0  83E001            and eax,byte +0x1
000225F3  85C0              test eax,eax
000225F5  0F94C0            setz al
000225F8  8845F7            mov [ebp-0x9],al
000225FB  E9EE000000        jmp dword 0x226ee
00022600  0FB645F7          movzx eax,byte [ebp-0x9]
00022604  83E001            and eax,byte +0x1
00022607  85C0              test eax,eax
00022609  0F94C0            setz al
0002260C  8845F7            mov [ebp-0x9],al
0002260F  E9DA000000        jmp dword 0x226ee
00022614  0FB645F7          movzx eax,byte [ebp-0x9]
00022618  83E001            and eax,byte +0x1
0002261B  85C0              test eax,eax
0002261D  0F94C0            setz al
00022620  8845F7            mov [ebp-0x9],al
00022623  E9C6000000        jmp dword 0x226ee
00022628  E8D3010000        call dword 0x22800
0002262D  E9BC000000        jmp dword 0x226ee
00022632  E83B010000        call dword 0x22772
00022637  E9B2000000        jmp dword 0x226ee
0002263C  E85B020000        call dword 0x2289c
00022641  E9A8000000        jmp dword 0x226ee
00022646  A100730300        mov eax,[0x37300]
0002264B  83E801            sub eax,byte +0x1
0002264E  A300730300        mov [0x37300],eax
00022653  A100730300        mov eax,[0x37300]
00022658  890424            mov [esp],eax
0002265B  E8B3000000        call dword 0x22713
00022660  C70424B4350200    mov dword [esp],0x235b4
00022667  E8EAF0FFFF        call dword 0x21756
0002266C  A100730300        mov eax,[0x37300]
00022671  83E801            sub eax,byte +0x1
00022674  A300730300        mov [0x37300],eax
00022679  EB73              jmp short 0x226ee
0002267B  8B45F0            mov eax,[ebp-0x10]
0002267E  2580000000        and eax,0x80
00022683  85C0              test eax,eax
00022685  7423              jz 0x226aa
00022687  817DF0AA000000    cmp dword [ebp-0x10],0xaa
0002268E  7409              jz 0x22699
00022690  817DF0B6000000    cmp dword [ebp-0x10],0xb6
00022697  7554              jnz 0x226ed
00022699  0FB645F7          movzx eax,byte [ebp-0x9]
0002269D  83E001            and eax,byte +0x1
000226A0  85C0              test eax,eax
000226A2  0F94C0            setz al
000226A5  8845F7            mov [ebp-0x9],al
000226A8  EB43              jmp short 0x226ed
000226AA  807DF701          cmp byte [ebp-0x9],0x1
000226AE  7514              jnz 0x226c4
000226B0  8B45F0            mov eax,[ebp-0x10]
000226B3  01C0              add eax,eax
000226B5  83C001            add eax,byte +0x1
000226B8  8B048520400200    mov eax,[eax*4+0x24020]
000226BF  8845EE            mov [ebp-0x12],al
000226C2  EB0F              jmp short 0x226d3
000226C4  8B45F0            mov eax,[ebp-0x10]
000226C7  01C0              add eax,eax
000226C9  8B048520400200    mov eax,[eax*4+0x24020]
000226D0  8845EE            mov [ebp-0x12],al
000226D3  8D45EE            lea eax,[ebp-0x12]
000226D6  890424            mov [esp],eax
000226D9  E878F0FFFF        call dword 0x21756
000226DE  A100730300        mov eax,[0x37300]
000226E3  890424            mov [esp],eax
000226E6  E828000000        call dword 0x22713
000226EB  EB01              jmp short 0x226ee
000226ED  90                nop
000226EE  8B1528750300      mov edx,[dword 0x37528]
000226F4  A124750300        mov eax,[0x37524]
000226F9  39C2              cmp edx,eax
000226FB  0F859BFEFFFF      jnz dword 0x2259c
00022701  E991FEFFFF        jmp dword 0x22597
00022706  55                push ebp
00022707  89E5              mov ebp,esp
00022709  83EC08            sub esp,byte +0x8
0002270C  E872FEFFFF        call dword 0x22583
00022711  C9                leave
00022712  C3                ret
00022713  55                push ebp
00022714  89E5              mov ebp,esp
00022716  83EC18            sub esp,byte +0x18
00022719  C74424040F000000  mov dword [esp+0x4],0xf
00022721  C70424D4030000    mov dword [esp],0x3d4
00022728  E803F0FFFF        call dword 0x21730
0002272D  8B4508            mov eax,[ebp+0x8]
00022730  0FB6C0            movzx eax,al
00022733  89442404          mov [esp+0x4],eax
00022737  C70424D5030000    mov dword [esp],0x3d5
0002273E  E8EDEFFFFF        call dword 0x21730
00022743  C74424040E000000  mov dword [esp+0x4],0xe
0002274B  C70424D4030000    mov dword [esp],0x3d4
00022752  E8D9EFFFFF        call dword 0x21730
00022757  8B4508            mov eax,[ebp+0x8]
0002275A  C1F808            sar eax,0x8
0002275D  0FB6C0            movzx eax,al
00022760  89442404          mov [esp+0x4],eax
00022764  C70424D5030000    mov dword [esp],0x3d5
0002276B  E8C0EFFFFF        call dword 0x21730
00022770  C9                leave
00022771  C3                ret
00022772  55                push ebp
00022773  89E5              mov ebp,esp
00022775  83EC18            sub esp,byte +0x18
00022778  E8D5EFFFFF        call dword 0x21752
0002277D  C744240450000000  mov dword [esp+0x4],0x50
00022785  C7042480070000    mov dword [esp],0x780
0002278C  E861F2FFFF        call dword 0x219f2
00022791  A104930300        mov eax,[0x39304]
00022796  83C050            add eax,byte +0x50
00022799  A304930300        mov [0x39304],eax
0002279E  C74424040C000000  mov dword [esp+0x4],0xc
000227A6  C70424D4030000    mov dword [esp],0x3d4
000227AD  E87EEFFFFF        call dword 0x21730
000227B2  A104930300        mov eax,[0x39304]
000227B7  C1F808            sar eax,0x8
000227BA  0FB6C0            movzx eax,al
000227BD  89442404          mov [esp+0x4],eax
000227C1  C70424D5030000    mov dword [esp],0x3d5
000227C8  E863EFFFFF        call dword 0x21730
000227CD  C74424040D000000  mov dword [esp+0x4],0xd
000227D5  C70424D4030000    mov dword [esp],0x3d4
000227DC  E84FEFFFFF        call dword 0x21730
000227E1  A104930300        mov eax,[0x39304]
000227E6  0FB6C0            movzx eax,al
000227E9  89442404          mov [esp+0x4],eax
000227ED  C70424D5030000    mov dword [esp],0x3d5
000227F4  E837EFFFFF        call dword 0x21730
000227F9  E856EFFFFF        call dword 0x21754
000227FE  C9                leave
000227FF  C3                ret
00022800  55                push ebp
00022801  89E5              mov ebp,esp
00022803  83EC18            sub esp,byte +0x18
00022806  A104930300        mov eax,[0x39304]
0002280B  83F84F            cmp eax,byte +0x4f
0002280E  0F8E86000000      jng dword 0x2289a
00022814  E839EFFFFF        call dword 0x21752
00022819  C744240450000000  mov dword [esp+0x4],0x50
00022821  C7042480070000    mov dword [esp],0x780
00022828  E8C5F1FFFF        call dword 0x219f2
0002282D  A104930300        mov eax,[0x39304]
00022832  83E850            sub eax,byte +0x50
00022835  A304930300        mov [0x39304],eax
0002283A  C74424040C000000  mov dword [esp+0x4],0xc
00022842  C70424D4030000    mov dword [esp],0x3d4
00022849  E8E2EEFFFF        call dword 0x21730
0002284E  A104930300        mov eax,[0x39304]
00022853  C1F808            sar eax,0x8
00022856  0FB6C0            movzx eax,al
00022859  89442404          mov [esp+0x4],eax
0002285D  C70424D5030000    mov dword [esp],0x3d5
00022864  E8C7EEFFFF        call dword 0x21730
00022869  C74424040D000000  mov dword [esp+0x4],0xd
00022871  C70424D4030000    mov dword [esp],0x3d4
00022878  E8B3EEFFFF        call dword 0x21730
0002287D  A104930300        mov eax,[0x39304]
00022882  0FB6C0            movzx eax,al
00022885  89442404          mov [esp+0x4],eax
00022889  C70424D5030000    mov dword [esp],0x3d5
00022890  E89BEEFFFF        call dword 0x21730
00022895  E8BAEEFFFF        call dword 0x21754
0002289A  C9                leave
0002289B  C3                ret
0002289C  55                push ebp
0002289D  89E5              mov ebp,esp
0002289F  83EC28            sub esp,byte +0x28
000228A2  8B1500730300      mov edx,[dword 0x37300]
000228A8  A104930300        mov eax,[0x39304]
000228AD  89D1              mov ecx,edx
000228AF  29C1              sub ecx,eax
000228B1  89C8              mov eax,ecx
000228B3  8945F4            mov [ebp-0xc],eax
000228B6  837DF400          cmp dword [ebp-0xc],byte +0x0
000228BA  751F              jnz 0x228db
000228BC  A100730300        mov eax,[0x37300]
000228C1  83C050            add eax,byte +0x50
000228C4  A300730300        mov [0x37300],eax
000228C9  A100730300        mov eax,[0x37300]
000228CE  890424            mov [esp],eax
000228D1  E83DFEFFFF        call dword 0x22713
000228D6  E98C000000        jmp dword 0x22967
000228DB  8B4DF4            mov ecx,[ebp-0xc]
000228DE  BA67666666        mov edx,0x66666667
000228E3  89C8              mov eax,ecx
000228E5  F7EA              imul edx
000228E7  C1FA05            sar edx,0x5
000228EA  89C8              mov eax,ecx
000228EC  C1F81F            sar eax,0x1f
000228EF  29C2              sub edx,eax
000228F1  89D0              mov eax,edx
000228F3  C1E002            shl eax,0x2
000228F6  01D0              add eax,edx
000228F8  C1E004            shl eax,0x4
000228FB  89CA              mov edx,ecx
000228FD  29C2              sub edx,eax
000228FF  85D2              test edx,edx
00022901  744A              jz 0x2294d
00022903  8B4DF4            mov ecx,[ebp-0xc]
00022906  BA67666666        mov edx,0x66666667
0002290B  89C8              mov eax,ecx
0002290D  F7EA              imul edx
0002290F  C1FA05            sar edx,0x5
00022912  89C8              mov eax,ecx
00022914  C1F81F            sar eax,0x1f
00022917  29C2              sub edx,eax
00022919  89D0              mov eax,edx
0002291B  C1E002            shl eax,0x2
0002291E  01D0              add eax,edx
00022920  C1E004            shl eax,0x4
00022923  89CA              mov edx,ecx
00022925  29C2              sub edx,eax
00022927  B850000000        mov eax,0x50
0002292C  89C1              mov ecx,eax
0002292E  29D1              sub ecx,edx
00022930  89CA              mov edx,ecx
00022932  A100730300        mov eax,[0x37300]
00022937  01D0              add eax,edx
00022939  A300730300        mov [0x37300],eax
0002293E  A100730300        mov eax,[0x37300]
00022943  890424            mov [esp],eax
00022946  E8C8FDFFFF        call dword 0x22713
0002294B  EB1A              jmp short 0x22967
0002294D  A100730300        mov eax,[0x37300]
00022952  83C050            add eax,byte +0x50
00022955  A300730300        mov [0x37300],eax
0002295A  A100730300        mov eax,[0x37300]
0002295F  890424            mov [esp],eax
00022962  E8ACFDFFFF        call dword 0x22713
00022967  8B45F4            mov eax,[ebp-0xc]
0002296A  2D30070000        sub eax,0x730
0002296F  83F84F            cmp eax,byte +0x4f
00022972  7705              ja 0x22979
00022974  E8F9FDFFFF        call dword 0x22772
00022979  C9                leave
0002297A  C3                ret
0002297B  90                nop
0002297C  55                push ebp
0002297D  89E5              mov ebp,esp
0002297F  83EC28            sub esp,byte +0x28
00022982  C7442404A8000000  mov dword [esp+0x4],0xa8
0002298A  C7042464000000    mov dword [esp],0x64
00022991  E89AEDFFFF        call dword 0x21730
00022996  C744240420000000  mov dword [esp+0x4],0x20
0002299E  C7042464000000    mov dword [esp],0x64
000229A5  E886EDFFFF        call dword 0x21730
000229AA  C7042460000000    mov dword [esp],0x60
000229B1  E88CEDFFFF        call dword 0x21742
000229B6  83C802            or eax,byte +0x2
000229B9  0FB6C0            movzx eax,al
000229BC  8945F4            mov [ebp-0xc],eax
000229BF  C744240460000000  mov dword [esp+0x4],0x60
000229C7  C7042464000000    mov dword [esp],0x64
000229CE  E85DEDFFFF        call dword 0x21730
000229D3  8B45F4            mov eax,[ebp-0xc]
000229D6  0FB6C0            movzx eax,al
000229D9  89442404          mov [esp+0x4],eax
000229DD  C7042460000000    mov dword [esp],0x60
000229E4  E847EDFFFF        call dword 0x21730
000229E9  C7442404D4000000  mov dword [esp+0x4],0xd4
000229F1  C7042464000000    mov dword [esp],0x64
000229F8  E833EDFFFF        call dword 0x21730
000229FD  C7442404F6000000  mov dword [esp+0x4],0xf6
00022A05  C7042460000000    mov dword [esp],0x60
00022A0C  E81FEDFFFF        call dword 0x21730
00022A11  C7042460000000    mov dword [esp],0x60
00022A18  E825EDFFFF        call dword 0x21742
00022A1D  C7442404D4000000  mov dword [esp+0x4],0xd4
00022A25  C7042464000000    mov dword [esp],0x64
00022A2C  E8FFECFFFF        call dword 0x21730
00022A31  C7442404F4000000  mov dword [esp+0x4],0xf4
00022A39  C7042460000000    mov dword [esp],0x60
00022A40  E8EBECFFFF        call dword 0x21730
00022A45  C7042460000000    mov dword [esp],0x60
00022A4C  E8F1ECFFFF        call dword 0x21742
00022A51  C704240C000000    mov dword [esp],0xc
00022A58  E871EBFFFF        call dword 0x215ce
00022A5D  C9                leave
00022A5E  C3                ret
00022A5F  55                push ebp
00022A60  89E5              mov ebp,esp
00022A62  83EC28            sub esp,byte +0x28
00022A65  C7042460000000    mov dword [esp],0x60
00022A6C  E8D1ECFFFF        call dword 0x21742
00022A71  8845F7            mov [ebp-0x9],al
00022A74  90                nop
00022A75  0FB605C0420200    movzx eax,byte [dword 0x242c0]
00022A7C  84C0              test al,al
00022A7E  0F95C2            setnz dl
00022A81  83E801            sub eax,byte +0x1
00022A84  A2C0420200        mov [0x242c0],al
00022A89  84D2              test dl,dl
00022A8B  0F8485000000      jz dword 0x22b16
00022A91  0FB605C0420200    movzx eax,byte [dword 0x242c0]
00022A98  0FB6C0            movzx eax,al
00022A9B  83F801            cmp eax,byte +0x1
00022A9E  744A              jz 0x22aea
00022AA0  83F802            cmp eax,byte +0x2
00022AA3  745B              jz 0x22b00
00022AA5  85C0              test eax,eax
00022AA7  756C              jnz 0x22b15
00022AA9  0FB605C0420200    movzx eax,byte [dword 0x242c0]
00022AB0  0FB6C0            movzx eax,al
00022AB3  0FB655F7          movzx edx,byte [ebp-0x9]
00022AB7  889008930300      mov [eax+0x39308],dl
00022ABD  0FB60509930300    movzx eax,byte [dword 0x39309]
00022AC4  A2E67A0200        mov [0x27ae6],al
00022AC9  0FB60508930300    movzx eax,byte [dword 0x39308]
00022AD0  A2E57D0300        mov [0x37de5],al
00022AD5  0FB6050A930300    movzx eax,byte [dword 0x3930a]
00022ADC  A2E47D0300        mov [0x37de4],al
00022AE1  C605C042020003    mov byte [dword 0x242c0],0x3
00022AE8  EB2B              jmp short 0x22b15
00022AEA  0FB605C0420200    movzx eax,byte [dword 0x242c0]
00022AF1  0FB6C0            movzx eax,al
00022AF4  0FB655F7          movzx edx,byte [ebp-0x9]
00022AF8  889008930300      mov [eax+0x39308],dl
00022AFE  EB15              jmp short 0x22b15
00022B00  0FB605C0420200    movzx eax,byte [dword 0x242c0]
00022B07  0FB6C0            movzx eax,al
00022B0A  0FB655F7          movzx edx,byte [ebp-0x9]
00022B0E  889008930300      mov [eax+0x39308],dl
00022B14  90                nop
00022B15  90                nop
00022B16  C704240C000000    mov dword [esp],0xc
00022B1D  E8CAEBFFFF        call dword 0x216ec
00022B22  C9                leave
00022B23  C3                ret
00022B24  90                nop
00022B25  90                nop
00022B26  90                nop
00022B27  90                nop
00022B28  90                nop
00022B29  90                nop
00022B2A  90                nop
00022B2B  90                nop
00022B2C  90                nop
00022B2D  90                nop
00022B2E  90                nop
00022B2F  90                nop
00022B30  0F20E0            mov eax,cr4
00022B33  83C801            or eax,byte +0x1
00022B36  0F22E0            mov cr4,eax
00022B39  B902020200        mov ecx,0x20202
00022B3E  B8942B0200        mov eax,0x22b94
00022B43  89C3              mov ebx,eax
00022B45  C1EB04            shr ebx,0x4
00022B48  83E00F            and eax,byte +0xf
00022B4B  51                push ecx
00022B4C  53                push ebx
00022B4D  50                push eax
00022B4E  CF                iretd
00022B4F  0F20E0            mov eax,cr4
00022B52  83C801            or eax,byte +0x1
00022B55  0F22E0            mov cr4,eax
00022B58  B902020200        mov ecx,0x20202
00022B5D  B8772B0200        mov eax,0x22b77
00022B62  89C3              mov ebx,eax
00022B64  C1EB04            shr ebx,0x4
00022B67  83E00F            and eax,byte +0xf
00022B6A  51                push ecx
00022B6B  53                push ebx
00022B6C  50                push eax
00022B6D  CF                iretd
00022B6E  66B81000          mov ax,0x10
00022B72  8ED8              mov ds,ax
00022B74  8EC0              mov es,ax
00022B76  C3                ret
00022B77  8CC8              mov eax,cs
00022B79  8ED8              mov ds,ax
00022B7B  B820108EE0        mov eax,0xe08e1020
00022B80  B400              mov ah,0x0
00022B82  B003              mov al,0x3
00022B84  CD10              int 0x10
00022B86  EBFE              jmp short 0x22b86
00022B88  3333              xor esi,[ebx]
00022B8A  3333              xor esi,[ebx]
00022B8C  B40B              mov ah,0xb
00022B8E  B700              mov bh,0x0
00022B90  B304              mov bl,0x4
00022B92  CD10              int 0x10
00022B94  8CC8              mov eax,cs
00022B96  8ED8              mov ds,ax
00022B98  8ED0              mov ss,ax
00022B9A  8EE8              mov gs,ax
00022B9C  8EE0              mov fs,ax
00022B9E  B800A08EC0        mov eax,0xc08ea000
00022BA3  BC0020B400        mov esp,0xb42000
00022BA8  B013              mov al,0x13
00022BAA  CD10              int 0x10
00022BAC  B410              mov ah,0x10
00022BAE  B003              mov al,0x3
00022BB0  B300              mov bl,0x0
00022BB2  B704              mov bh,0x4
00022BB4  CD10              int 0x10
00022BB6  EBFE              jmp short 0x22bb6
00022BB8  55                push ebp
00022BB9  89E5              mov ebp,esp
00022BBB  83EC10            sub esp,byte +0x10
00022BBE  8B4508            mov eax,[ebp+0x8]
00022BC1  83E00F            and eax,byte +0xf
00022BC4  668945FE          mov [ebp-0x2],ax
00022BC8  8B4508            mov eax,[ebp+0x8]
00022BCB  8B5508            mov edx,[ebp+0x8]
00022BCE  83E20F            and edx,byte +0xf
00022BD1  29D0              sub eax,edx
00022BD3  C1E804            shr eax,0x4
00022BD6  668945FC          mov [ebp-0x4],ax
00022BDA  0FB745FC          movzx eax,word [ebp-0x4]
00022BDE  89C2              mov edx,eax
00022BE0  C1E204            shl edx,0x4
00022BE3  0FB745FE          movzx eax,word [ebp-0x2]
00022BE7  01D0              add eax,edx
00022BE9  C9                leave
00022BEA  C3                ret
00022BEB  55                push ebp
00022BEC  89E5              mov ebp,esp
00022BEE  5D                pop ebp
00022BEF  C3                ret
00022BF0  55                push ebp
00022BF1  89E5              mov ebp,esp
00022BF3  5D                pop ebp
00022BF4  C3                ret
00022BF5  55                push ebp
00022BF6  89E5              mov ebp,esp
00022BF8  83EC38            sub esp,byte +0x38
00022BFB  8D4508            lea eax,[ebp+0x8]
00022BFE  8945F4            mov [ebp-0xc],eax
00022C01  C745F000000000    mov dword [ebp-0x10],0x0
00022C08  8B45F4            mov eax,[ebp-0xc]
00022C0B  83C008            add eax,byte +0x8
00022C0E  8B00              mov eax,[eax]
00022C10  89C2              mov edx,eax
00022C12  C1E204            shl edx,0x4
00022C15  8B45F4            mov eax,[ebp-0xc]
00022C18  83C004            add eax,byte +0x4
00022C1B  8B00              mov eax,[eax]
00022C1D  0FB7C0            movzx eax,ax
00022C20  01D0              add eax,edx
00022C22  8945EC            mov [ebp-0x14],eax
00022C25  8B45F4            mov eax,[ebp-0xc]
00022C28  83C014            add eax,byte +0x14
00022C2B  8B00              mov eax,[eax]
00022C2D  89C2              mov edx,eax
00022C2F  C1E204            shl edx,0x4
00022C32  8B45F4            mov eax,[ebp-0xc]
00022C35  83C010            add eax,byte +0x10
00022C38  8B00              mov eax,[eax]
00022C3A  0FB7C0            movzx eax,ax
00022C3D  01D0              add eax,edx
00022C3F  8945E8            mov [ebp-0x18],eax
00022C42  8B45E8            mov eax,[ebp-0x18]
00022C45  8945E4            mov [ebp-0x1c],eax
00022C48  8B45EC            mov eax,[ebp-0x14]
00022C4B  8B00              mov eax,[eax]
00022C4D  0FB6C0            movzx eax,al
00022C50  3DCD000000        cmp eax,0xcd
00022C55  0F85B5000000      jnz dword 0x22d10
00022C5B  C70424C4360200    mov dword [esp],0x236c4
00022C62  E8EFEAFFFF        call dword 0x21756
00022C67  C70424C8360200    mov dword [esp],0x236c8
00022C6E  E8E3EAFFFF        call dword 0x21756
00022C73  8B45F4            mov eax,[ebp-0xc]
00022C76  83C010            add eax,byte +0x10
00022C79  8B55F4            mov edx,[ebp-0xc]
00022C7C  83C210            add edx,byte +0x10
00022C7F  8B12              mov edx,[edx]
00022C81  83EA06            sub edx,byte +0x6
00022C84  81E2FFFF0000      and edx,0xffff
00022C8A  8910              mov [eax],edx
00022C8C  836DE406          sub dword [ebp-0x1c],byte +0x6
00022C90  8B45F4            mov eax,[ebp-0xc]
00022C93  8B00              mov eax,[eax]
00022C95  8D5002            lea edx,[eax+0x2]
00022C98  8B45E4            mov eax,[ebp-0x1c]
00022C9B  668910            mov [eax],dx
00022C9E  8B45E4            mov eax,[ebp-0x1c]
00022CA1  8D5002            lea edx,[eax+0x2]
00022CA4  8B45F4            mov eax,[ebp-0xc]
00022CA7  83C004            add eax,byte +0x4
00022CAA  8B00              mov eax,[eax]
00022CAC  668902            mov [edx],ax
00022CAF  8B45E4            mov eax,[ebp-0x1c]
00022CB2  8D5004            lea edx,[eax+0x4]
00022CB5  8B45F4            mov eax,[ebp-0xc]
00022CB8  83C008            add eax,byte +0x8
00022CBB  8B00              mov eax,[eax]
00022CBD  668902            mov [edx],ax
00022CC0  8B45EC            mov eax,[ebp-0x14]
00022CC3  8945E0            mov [ebp-0x20],eax
00022CC6  8B45F4            mov eax,[ebp-0xc]
00022CC9  8D5008            lea edx,[eax+0x8]
00022CCC  8B45E0            mov eax,[ebp-0x20]
00022CCF  83C001            add eax,byte +0x1
00022CD2  0FB600            movzx eax,byte [eax]
00022CD5  0FB6C0            movzx eax,al
00022CD8  C1E002            shl eax,0x2
00022CDB  83C002            add eax,byte +0x2
00022CDE  0345F0            add eax,[ebp-0x10]
00022CE1  0FB700            movzx eax,word [eax]
00022CE4  0FB7C0            movzx eax,ax
00022CE7  8902              mov [edx],eax
00022CE9  8B45F4            mov eax,[ebp-0xc]
00022CEC  8D5004            lea edx,[eax+0x4]
00022CEF  8B45E0            mov eax,[ebp-0x20]
00022CF2  83C001            add eax,byte +0x1
00022CF5  0FB600            movzx eax,byte [eax]
00022CF8  0FB6C0            movzx eax,al
00022CFB  C1E002            shl eax,0x2
00022CFE  0345F0            add eax,[ebp-0x10]
00022D01  0FB700            movzx eax,word [eax]
00022D04  0FB7C0            movzx eax,ax
00022D07  8902              mov [edx],eax
00022D09  B801000000        mov eax,0x1
00022D0E  EB01              jmp short 0x22d11
00022D10  90                nop
00022D11  C9                leave
00022D12  C3                ret
00022D13  90                nop
00022D14  90                nop
00022D15  90                nop
00022D16  90                nop
00022D17  90                nop
00022D18  90                nop
00022D19  90                nop
00022D1A  90                nop
00022D1B  90                nop
00022D1C  90                nop
00022D1D  90                nop
00022D1E  90                nop
00022D1F  90                nop
00022D20  55                push ebp
00022D21  89E5              mov ebp,esp
00022D23  BE00000A00        mov esi,0xa0000
00022D28  8B5C2408          mov ebx,[esp+0x8]
00022D2C  668B44240C        mov ax,[esp+0xc]
00022D31  66B94001          mov cx,0x140
00022D35  66F7E1            mul cx
00022D38  01C6              add esi,eax
00022D3A  01DE              add esi,ebx
00022D3C  8A4C2410          mov cl,[esp+0x10]
00022D40  880E              mov [esi],cl
00022D42  5D                pop ebp
00022D43  C3                ret
00022D44  55                push ebp
00022D45  89E5              mov ebp,esp
00022D47  BE00000A00        mov esi,0xa0000
00022D4C  8B5C2408          mov ebx,[esp+0x8]
00022D50  668B44240C        mov ax,[esp+0xc]
00022D55  66B94001          mov cx,0x140
00022D59  66F7E1            mul cx
00022D5C  01C6              add esi,eax
00022D5E  01DE              add esi,ebx
00022D60  66C7060000        mov word [esi],0x0
00022D65  5D                pop ebp
00022D66  C3                ret
00022D67  90                nop
00022D68  55                push ebp
00022D69  89E5              mov ebp,esp
00022D6B  837D0800          cmp dword [ebp+0x8],byte +0x0
00022D6F  7818              js 0x22d89
00022D71  837D0C00          cmp dword [ebp+0xc],byte +0x0
00022D75  7812              js 0x22d89
00022D77  817D0840010000    cmp dword [ebp+0x8],0x140
00022D7E  7F09              jg 0x22d89
00022D80  817D0CC8000000    cmp dword [ebp+0xc],0xc8
00022D87  7E07              jng 0x22d90
00022D89  B800000000        mov eax,0x0
00022D8E  EB05              jmp short 0x22d95
00022D90  B801000000        mov eax,0x1
00022D95  5D                pop ebp
00022D96  C3                ret
00022D97  55                push ebp
00022D98  89E5              mov ebp,esp
00022D9A  83EC18            sub esp,byte +0x18
00022D9D  8B450C            mov eax,[ebp+0xc]
00022DA0  89442404          mov [esp+0x4],eax
00022DA4  8B4508            mov eax,[ebp+0x8]
00022DA7  890424            mov [esp],eax
00022DAA  E8B9FFFFFF        call dword 0x22d68
00022DAF  85C0              test eax,eax
00022DB1  741B              jz 0x22dce
00022DB3  8B4510            mov eax,[ebp+0x10]
00022DB6  89442408          mov [esp+0x8],eax
00022DBA  8B450C            mov eax,[ebp+0xc]
00022DBD  89442404          mov [esp+0x4],eax
00022DC1  8B4508            mov eax,[ebp+0x8]
00022DC4  890424            mov [esp],eax
00022DC7  E854FFFFFF        call dword 0x22d20
00022DCC  EB01              jmp short 0x22dcf
00022DCE  90                nop
00022DCF  C9                leave
00022DD0  C3                ret
00022DD1  55                push ebp
00022DD2  89E5              mov ebp,esp
00022DD4  53                push ebx
00022DD5  83EC44            sub esp,byte +0x44
00022DD8  C745E000000000    mov dword [ebp-0x20],0x0
00022DDF  C745DC00000000    mov dword [ebp-0x24],0x0
00022DE6  8B4508            mov eax,[ebp+0x8]
00022DE9  3B4510            cmp eax,[ebp+0x10]
00022DEC  7E26              jng 0x22e14
00022DEE  8B4508            mov eax,[ebp+0x8]
00022DF1  8945D8            mov [ebp-0x28],eax
00022DF4  8B4510            mov eax,[ebp+0x10]
00022DF7  894508            mov [ebp+0x8],eax
00022DFA  8B45D8            mov eax,[ebp-0x28]
00022DFD  894510            mov [ebp+0x10],eax
00022E00  8B450C            mov eax,[ebp+0xc]
00022E03  8945D8            mov [ebp-0x28],eax
00022E06  8B4514            mov eax,[ebp+0x14]
00022E09  89450C            mov [ebp+0xc],eax
00022E0C  8B45D8            mov eax,[ebp-0x28]
00022E0F  894514            mov [ebp+0x14],eax
00022E12  EB50              jmp short 0x22e64
00022E14  8B4508            mov eax,[ebp+0x8]
00022E17  3B4510            cmp eax,[ebp+0x10]
00022E1A  7548              jnz 0x22e64
00022E1C  8B450C            mov eax,[ebp+0xc]
00022E1F  3B4514            cmp eax,[ebp+0x14]
00022E22  7D08              jnl 0x22e2c
00022E24  8B450C            mov eax,[ebp+0xc]
00022E27  8945F0            mov [ebp-0x10],eax
00022E2A  EB2B              jmp short 0x22e57
00022E2C  8B4514            mov eax,[ebp+0x14]
00022E2F  8945F0            mov [ebp-0x10],eax
00022E32  8B450C            mov eax,[ebp+0xc]
00022E35  894514            mov [ebp+0x14],eax
00022E38  EB1D              jmp short 0x22e57
00022E3A  8B4518            mov eax,[ebp+0x18]
00022E3D  89442408          mov [esp+0x8],eax
00022E41  8B45F0            mov eax,[ebp-0x10]
00022E44  89442404          mov [esp+0x4],eax
00022E48  8B4508            mov eax,[ebp+0x8]
00022E4B  890424            mov [esp],eax
00022E4E  E844FFFFFF        call dword 0x22d97
00022E53  8345F001          add dword [ebp-0x10],byte +0x1
00022E57  8B45F0            mov eax,[ebp-0x10]
00022E5A  3B4514            cmp eax,[ebp+0x14]
00022E5D  7CDB              jl 0x22e3a
00022E5F  E9CC010000        jmp dword 0x23030
00022E64  8B4510            mov eax,[ebp+0x10]
00022E67  8B5508            mov edx,[ebp+0x8]
00022E6A  89D1              mov ecx,edx
00022E6C  29C1              sub ecx,eax
00022E6E  89C8              mov eax,ecx
00022E70  890424            mov [esp],eax
00022E73  E8F6E9FFFF        call dword 0x2186e
00022E78  89C3              mov ebx,eax
00022E7A  8B4514            mov eax,[ebp+0x14]
00022E7D  8B550C            mov edx,[ebp+0xc]
00022E80  89D1              mov ecx,edx
00022E82  29C1              sub ecx,eax
00022E84  89C8              mov eax,ecx
00022E86  890424            mov [esp],eax
00022E89  E8E0E9FFFF        call dword 0x2186e
00022E8E  39C3              cmp ebx,eax
00022E90  7D07              jnl 0x22e99
00022E92  C745DC01000000    mov dword [ebp-0x24],0x1
00022E99  8B450C            mov eax,[ebp+0xc]
00022E9C  3B4514            cmp eax,[ebp+0x14]
00022E9F  7E07              jng 0x22ea8
00022EA1  C745E001000000    mov dword [ebp-0x20],0x1
00022EA8  8B4508            mov eax,[ebp+0x8]
00022EAB  8945EC            mov [ebp-0x14],eax
00022EAE  8B450C            mov eax,[ebp+0xc]
00022EB1  8945E8            mov [ebp-0x18],eax
00022EB4  8B4518            mov eax,[ebp+0x18]
00022EB7  89442408          mov [esp+0x8],eax
00022EBB  8B45E8            mov eax,[ebp-0x18]
00022EBE  89442404          mov [esp+0x4],eax
00022EC2  8B45EC            mov eax,[ebp-0x14]
00022EC5  890424            mov [esp],eax
00022EC8  E8CAFEFFFF        call dword 0x22d97
00022ECD  837DDC00          cmp dword [ebp-0x24],byte +0x0
00022ED1  0F85A9000000      jnz dword 0x22f80
00022ED7  837DE000          cmp dword [ebp-0x20],byte +0x0
00022EDB  7511              jnz 0x22eee
00022EDD  8B4514            mov eax,[ebp+0x14]
00022EE0  8B550C            mov edx,[ebp+0xc]
00022EE3  89D1              mov ecx,edx
00022EE5  29C1              sub ecx,eax
00022EE7  89C8              mov eax,ecx
00022EE9  8945F4            mov [ebp-0xc],eax
00022EEC  EB0F              jmp short 0x22efd
00022EEE  8B450C            mov eax,[ebp+0xc]
00022EF1  8B5514            mov edx,[ebp+0x14]
00022EF4  89D1              mov ecx,edx
00022EF6  29C1              sub ecx,eax
00022EF8  89C8              mov eax,ecx
00022EFA  8945F4            mov [ebp-0xc],eax
00022EFD  8B4508            mov eax,[ebp+0x8]
00022F00  8B5510            mov edx,[ebp+0x10]
00022F03  89D1              mov ecx,edx
00022F05  29C1              sub ecx,eax
00022F07  89C8              mov eax,ecx
00022F09  8945F0            mov [ebp-0x10],eax
00022F0C  8B45F4            mov eax,[ebp-0xc]
00022F0F  01C0              add eax,eax
00022F11  0345F0            add eax,[ebp-0x10]
00022F14  8945E4            mov [ebp-0x1c],eax
00022F17  8B45F4            mov eax,[ebp-0xc]
00022F1A  01C0              add eax,eax
00022F1C  8945D4            mov [ebp-0x2c],eax
00022F1F  8B45F0            mov eax,[ebp-0x10]
00022F22  8B55F4            mov edx,[ebp-0xc]
00022F25  01D0              add eax,edx
00022F27  01C0              add eax,eax
00022F29  8945D0            mov [ebp-0x30],eax
00022F2C  EB45              jmp short 0x22f73
00022F2E  837DE400          cmp dword [ebp-0x1c],byte +0x0
00022F32  791C              jns 0x22f50
00022F34  8345EC01          add dword [ebp-0x14],byte +0x1
00022F38  837DE000          cmp dword [ebp-0x20],byte +0x0
00022F3C  7506              jnz 0x22f44
00022F3E  8345E801          add dword [ebp-0x18],byte +0x1
00022F42  EB04              jmp short 0x22f48
00022F44  836DE801          sub dword [ebp-0x18],byte +0x1
00022F48  8B45D0            mov eax,[ebp-0x30]
00022F4B  0145E4            add [ebp-0x1c],eax
00022F4E  EB0A              jmp short 0x22f5a
00022F50  8345EC01          add dword [ebp-0x14],byte +0x1
00022F54  8B45D4            mov eax,[ebp-0x2c]
00022F57  0145E4            add [ebp-0x1c],eax
00022F5A  8B4518            mov eax,[ebp+0x18]
00022F5D  89442408          mov [esp+0x8],eax
00022F61  8B45E8            mov eax,[ebp-0x18]
00022F64  89442404          mov [esp+0x4],eax
00022F68  8B45EC            mov eax,[ebp-0x14]
00022F6B  890424            mov [esp],eax
00022F6E  E824FEFFFF        call dword 0x22d97
00022F73  8B45EC            mov eax,[ebp-0x14]
00022F76  3B4510            cmp eax,[ebp+0x10]
00022F79  7CB3              jl 0x22f2e
00022F7B  E9B0000000        jmp dword 0x23030
00022F80  8B4510            mov eax,[ebp+0x10]
00022F83  8B5508            mov edx,[ebp+0x8]
00022F86  89D1              mov ecx,edx
00022F88  29C1              sub ecx,eax
00022F8A  89C8              mov eax,ecx
00022F8C  8945F4            mov [ebp-0xc],eax
00022F8F  837DE000          cmp dword [ebp-0x20],byte +0x0
00022F93  7511              jnz 0x22fa6
00022F95  8B450C            mov eax,[ebp+0xc]
00022F98  8B5514            mov edx,[ebp+0x14]
00022F9B  89D1              mov ecx,edx
00022F9D  29C1              sub ecx,eax
00022F9F  89C8              mov eax,ecx
00022FA1  8945F0            mov [ebp-0x10],eax
00022FA4  EB0F              jmp short 0x22fb5
00022FA6  8B4514            mov eax,[ebp+0x14]
00022FA9  8B550C            mov edx,[ebp+0xc]
00022FAC  89D1              mov ecx,edx
00022FAE  29C1              sub ecx,eax
00022FB0  89C8              mov eax,ecx
00022FB2  8945F0            mov [ebp-0x10],eax
00022FB5  8B45F4            mov eax,[ebp-0xc]
00022FB8  01C0              add eax,eax
00022FBA  0345F0            add eax,[ebp-0x10]
00022FBD  8945E4            mov [ebp-0x1c],eax
00022FC0  8B45F4            mov eax,[ebp-0xc]
00022FC3  01C0              add eax,eax
00022FC5  8945D4            mov [ebp-0x2c],eax
00022FC8  8B45F0            mov eax,[ebp-0x10]
00022FCB  8B55F4            mov edx,[ebp-0xc]
00022FCE  01D0              add eax,edx
00022FD0  01C0              add eax,eax
00022FD2  8945D0            mov [ebp-0x30],eax
00022FD5  EB51              jmp short 0x23028
00022FD7  837DE400          cmp dword [ebp-0x1c],byte +0x0
00022FDB  791C              jns 0x22ff9
00022FDD  8345EC01          add dword [ebp-0x14],byte +0x1
00022FE1  837DE000          cmp dword [ebp-0x20],byte +0x0
00022FE5  7506              jnz 0x22fed
00022FE7  8345E801          add dword [ebp-0x18],byte +0x1
00022FEB  EB04              jmp short 0x22ff1
00022FED  836DE801          sub dword [ebp-0x18],byte +0x1
00022FF1  8B45D0            mov eax,[ebp-0x30]
00022FF4  0145E4            add [ebp-0x1c],eax
00022FF7  EB16              jmp short 0x2300f
00022FF9  837DE000          cmp dword [ebp-0x20],byte +0x0
00022FFD  7506              jnz 0x23005
00022FFF  8345E801          add dword [ebp-0x18],byte +0x1
00023003  EB04              jmp short 0x23009
00023005  836DE801          sub dword [ebp-0x18],byte +0x1
00023009  8B45D4            mov eax,[ebp-0x2c]
0002300C  0145E4            add [ebp-0x1c],eax
0002300F  8B4518            mov eax,[ebp+0x18]
00023012  89442408          mov [esp+0x8],eax
00023016  8B45E8            mov eax,[ebp-0x18]
00023019  89442404          mov [esp+0x4],eax
0002301D  8B45EC            mov eax,[ebp-0x14]
00023020  890424            mov [esp],eax
00023023  E86FFDFFFF        call dword 0x22d97
00023028  8B45EC            mov eax,[ebp-0x14]
0002302B  3B4510            cmp eax,[ebp+0x10]
0002302E  7CA7              jl 0x22fd7
00023030  83C444            add esp,byte +0x44
00023033  5B                pop ebx
00023034  5D                pop ebp
00023035  C3                ret
00023036  55                push ebp
00023037  89E5              mov ebp,esp
00023039  53                push ebx
0002303A  83EC24            sub esp,byte +0x24
0002303D  8B4514            mov eax,[ebp+0x14]
00023040  8B550C            mov edx,[ebp+0xc]
00023043  01C2              add edx,eax
00023045  8B4518            mov eax,[ebp+0x18]
00023048  89442410          mov [esp+0x10],eax
0002304C  8954240C          mov [esp+0xc],edx
00023050  8B4508            mov eax,[ebp+0x8]
00023053  89442408          mov [esp+0x8],eax
00023057  8B450C            mov eax,[ebp+0xc]
0002305A  89442404          mov [esp+0x4],eax
0002305E  8B4508            mov eax,[ebp+0x8]
00023061  890424            mov [esp],eax
00023064  E868FDFFFF        call dword 0x22dd1
00023069  8B4510            mov eax,[ebp+0x10]
0002306C  8B5508            mov edx,[ebp+0x8]
0002306F  01C2              add edx,eax
00023071  8B4518            mov eax,[ebp+0x18]
00023074  89442410          mov [esp+0x10],eax
00023078  8B450C            mov eax,[ebp+0xc]
0002307B  8944240C          mov [esp+0xc],eax
0002307F  89542408          mov [esp+0x8],edx
00023083  8B450C            mov eax,[ebp+0xc]
00023086  89442404          mov [esp+0x4],eax
0002308A  8B4508            mov eax,[ebp+0x8]
0002308D  890424            mov [esp],eax
00023090  E83CFDFFFF        call dword 0x22dd1
00023095  8B4514            mov eax,[ebp+0x14]
00023098  8B550C            mov edx,[ebp+0xc]
0002309B  8D1C02            lea ebx,[edx+eax]
0002309E  8B4510            mov eax,[ebp+0x10]
000230A1  8B5508            mov edx,[ebp+0x8]
000230A4  8D0C02            lea ecx,[edx+eax]
000230A7  8B4514            mov eax,[ebp+0x14]
000230AA  8B550C            mov edx,[ebp+0xc]
000230AD  01C2              add edx,eax
000230AF  8B4518            mov eax,[ebp+0x18]
000230B2  89442410          mov [esp+0x10],eax
000230B6  895C240C          mov [esp+0xc],ebx
000230BA  894C2408          mov [esp+0x8],ecx
000230BE  89542404          mov [esp+0x4],edx
000230C2  8B4508            mov eax,[ebp+0x8]
000230C5  890424            mov [esp],eax
000230C8  E804FDFFFF        call dword 0x22dd1
000230CD  8B4514            mov eax,[ebp+0x14]
000230D0  8B550C            mov edx,[ebp+0xc]
000230D3  8D1C02            lea ebx,[edx+eax]
000230D6  8B4510            mov eax,[ebp+0x10]
000230D9  8B5508            mov edx,[ebp+0x8]
000230DC  8D0C02            lea ecx,[edx+eax]
000230DF  8B4510            mov eax,[ebp+0x10]
000230E2  8B5508            mov edx,[ebp+0x8]
000230E5  01C2              add edx,eax
000230E7  8B4518            mov eax,[ebp+0x18]
000230EA  89442410          mov [esp+0x10],eax
000230EE  895C240C          mov [esp+0xc],ebx
000230F2  894C2408          mov [esp+0x8],ecx
000230F6  8B450C            mov eax,[ebp+0xc]
000230F9  89442404          mov [esp+0x4],eax
000230FD  891424            mov [esp],edx
00023100  E8CCFCFFFF        call dword 0x22dd1
00023105  83C424            add esp,byte +0x24
00023108  5B                pop ebx
00023109  5D                pop ebp
0002310A  C3                ret
0002310B  55                push ebp
0002310C  89E5              mov ebp,esp
0002310E  5D                pop ebp
0002310F  C3                ret
00023110  55                push ebp
00023111  89E5              mov ebp,esp
00023113  83EC28            sub esp,byte +0x28
00023116  8B4520            mov eax,[ebp+0x20]
00023119  89442410          mov [esp+0x10],eax
0002311D  8B4514            mov eax,[ebp+0x14]
00023120  8944240C          mov [esp+0xc],eax
00023124  8B4510            mov eax,[ebp+0x10]
00023127  89442408          mov [esp+0x8],eax
0002312B  8B450C            mov eax,[ebp+0xc]
0002312E  89442404          mov [esp+0x4],eax
00023132  8B4508            mov eax,[ebp+0x8]
00023135  890424            mov [esp],eax
00023138  E894FCFFFF        call dword 0x22dd1
0002313D  8B4520            mov eax,[ebp+0x20]
00023140  89442410          mov [esp+0x10],eax
00023144  8B451C            mov eax,[ebp+0x1c]
00023147  8944240C          mov [esp+0xc],eax
0002314B  8B4518            mov eax,[ebp+0x18]
0002314E  89442408          mov [esp+0x8],eax
00023152  8B450C            mov eax,[ebp+0xc]
00023155  89442404          mov [esp+0x4],eax
00023159  8B4508            mov eax,[ebp+0x8]
0002315C  890424            mov [esp],eax
0002315F  E86DFCFFFF        call dword 0x22dd1
00023164  8B4520            mov eax,[ebp+0x20]
00023167  89442410          mov [esp+0x10],eax
0002316B  8B451C            mov eax,[ebp+0x1c]
0002316E  8944240C          mov [esp+0xc],eax
00023172  8B4518            mov eax,[ebp+0x18]
00023175  89442408          mov [esp+0x8],eax
00023179  8B4514            mov eax,[ebp+0x14]
0002317C  89442404          mov [esp+0x4],eax
00023180  8B4510            mov eax,[ebp+0x10]
00023183  890424            mov [esp],eax
00023186  E846FCFFFF        call dword 0x22dd1
0002318B  C9                leave
0002318C  C3                ret
0002318D  55                push ebp
0002318E  89E5              mov ebp,esp
00023190  83EC18            sub esp,byte +0x18
00023193  8B4514            mov eax,[ebp+0x14]
00023196  8B550C            mov edx,[ebp+0xc]
00023199  8D0C02            lea ecx,[edx+eax]
0002319C  8B4508            mov eax,[ebp+0x8]
0002319F  8B5510            mov edx,[ebp+0x10]
000231A2  29C2              sub edx,eax
000231A4  8B4518            mov eax,[ebp+0x18]
000231A7  89442408          mov [esp+0x8],eax
000231AB  894C2404          mov [esp+0x4],ecx
000231AF  891424            mov [esp],edx
000231B2  E8E0FBFFFF        call dword 0x22d97
000231B7  8B4514            mov eax,[ebp+0x14]
000231BA  8B550C            mov edx,[ebp+0xc]
000231BD  8D0C02            lea ecx,[edx+eax]
000231C0  8B4510            mov eax,[ebp+0x10]
000231C3  8B5508            mov edx,[ebp+0x8]
000231C6  01C2              add edx,eax
000231C8  8B4518            mov eax,[ebp+0x18]
000231CB  89442408          mov [esp+0x8],eax
000231CF  894C2404          mov [esp+0x4],ecx
000231D3  891424            mov [esp],edx
000231D6  E8BCFBFFFF        call dword 0x22d97
000231DB  8B450C            mov eax,[ebp+0xc]
000231DE  8B5514            mov edx,[ebp+0x14]
000231E1  89D1              mov ecx,edx
000231E3  29C1              sub ecx,eax
000231E5  8B4510            mov eax,[ebp+0x10]
000231E8  8B5508            mov edx,[ebp+0x8]
000231EB  01C2              add edx,eax
000231ED  8B4518            mov eax,[ebp+0x18]
000231F0  89442408          mov [esp+0x8],eax
000231F4  894C2404          mov [esp+0x4],ecx
000231F8  891424            mov [esp],edx
000231FB  E897FBFFFF        call dword 0x22d97
00023200  8B450C            mov eax,[ebp+0xc]
00023203  8B5514            mov edx,[ebp+0x14]
00023206  89D1              mov ecx,edx
00023208  29C1              sub ecx,eax
0002320A  8B4508            mov eax,[ebp+0x8]
0002320D  8B5510            mov edx,[ebp+0x10]
00023210  29C2              sub edx,eax
00023212  8B4518            mov eax,[ebp+0x18]
00023215  89442408          mov [esp+0x8],eax
00023219  894C2404          mov [esp+0x4],ecx
0002321D  891424            mov [esp],edx
00023220  E872FBFFFF        call dword 0x22d97
00023225  8B4514            mov eax,[ebp+0x14]
00023228  8B5508            mov edx,[ebp+0x8]
0002322B  8D0C02            lea ecx,[edx+eax]
0002322E  8B4510            mov eax,[ebp+0x10]
00023231  8B550C            mov edx,[ebp+0xc]
00023234  01C2              add edx,eax
00023236  8B4518            mov eax,[ebp+0x18]
00023239  89442408          mov [esp+0x8],eax
0002323D  894C2404          mov [esp+0x4],ecx
00023241  891424            mov [esp],edx
00023244  E84EFBFFFF        call dword 0x22d97
00023249  8B4508            mov eax,[ebp+0x8]
0002324C  8B5514            mov edx,[ebp+0x14]
0002324F  89D1              mov ecx,edx
00023251  29C1              sub ecx,eax
00023253  8B4510            mov eax,[ebp+0x10]
00023256  8B550C            mov edx,[ebp+0xc]
00023259  01C2              add edx,eax
0002325B  8B4518            mov eax,[ebp+0x18]
0002325E  89442408          mov [esp+0x8],eax
00023262  894C2404          mov [esp+0x4],ecx
00023266  891424            mov [esp],edx
00023269  E829FBFFFF        call dword 0x22d97
0002326E  8B4514            mov eax,[ebp+0x14]
00023271  8B5508            mov edx,[ebp+0x8]
00023274  8D0C02            lea ecx,[edx+eax]
00023277  8B450C            mov eax,[ebp+0xc]
0002327A  8B5510            mov edx,[ebp+0x10]
0002327D  29C2              sub edx,eax
0002327F  8B4518            mov eax,[ebp+0x18]
00023282  89442408          mov [esp+0x8],eax
00023286  894C2404          mov [esp+0x4],ecx
0002328A  891424            mov [esp],edx
0002328D  E805FBFFFF        call dword 0x22d97
00023292  8B4508            mov eax,[ebp+0x8]
00023295  8B5514            mov edx,[ebp+0x14]
00023298  89D1              mov ecx,edx
0002329A  29C1              sub ecx,eax
0002329C  8B450C            mov eax,[ebp+0xc]
0002329F  8B5510            mov edx,[ebp+0x10]
000232A2  29C2              sub edx,eax
000232A4  8B4518            mov eax,[ebp+0x18]
000232A7  89442408          mov [esp+0x8],eax
000232AB  894C2404          mov [esp+0x4],ecx
000232AF  891424            mov [esp],edx
000232B2  E8E0FAFFFF        call dword 0x22d97
000232B7  C9                leave
000232B8  C3                ret
000232B9  55                push ebp
000232BA  89E5              mov ebp,esp
000232BC  83EC38            sub esp,byte +0x38
000232BF  C745F400000000    mov dword [ebp-0xc],0x0
000232C6  8B4510            mov eax,[ebp+0x10]
000232C9  8945F0            mov [ebp-0x10],eax
000232CC  B801000000        mov eax,0x1
000232D1  2B4510            sub eax,[ebp+0x10]
000232D4  8945EC            mov [ebp-0x14],eax
000232D7  EB56              jmp short 0x2332f
000232D9  8B4514            mov eax,[ebp+0x14]
000232DC  89442410          mov [esp+0x10],eax
000232E0  8B450C            mov eax,[ebp+0xc]
000232E3  8944240C          mov [esp+0xc],eax
000232E7  8B4508            mov eax,[ebp+0x8]
000232EA  89442408          mov [esp+0x8],eax
000232EE  8B45F0            mov eax,[ebp-0x10]
000232F1  89442404          mov [esp+0x4],eax
000232F5  8B45F4            mov eax,[ebp-0xc]
000232F8  890424            mov [esp],eax
000232FB  E88DFEFFFF        call dword 0x2318d
00023300  837DEC00          cmp dword [ebp-0x14],byte +0x0
00023304  790D              jns 0x23313
00023306  8B45F4            mov eax,[ebp-0xc]
00023309  01C0              add eax,eax
0002330B  83C003            add eax,byte +0x3
0002330E  0145EC            add [ebp-0x14],eax
00023311  EB18              jmp short 0x2332b
00023313  8B45F0            mov eax,[ebp-0x10]
00023316  8B55F4            mov edx,[ebp-0xc]
00023319  89D1              mov ecx,edx
0002331B  29C1              sub ecx,eax
0002331D  89C8              mov eax,ecx
0002331F  01C0              add eax,eax
00023321  83C005            add eax,byte +0x5
00023324  0145EC            add [ebp-0x14],eax
00023327  836DF001          sub dword [ebp-0x10],byte +0x1
0002332B  8345F401          add dword [ebp-0xc],byte +0x1
0002332F  8B45F4            mov eax,[ebp-0xc]
00023332  3B45F0            cmp eax,[ebp-0x10]
00023335  7EA2              jng 0x232d9
00023337  C9                leave
00023338  C3                ret
00023339  90                nop
0002333A  90                nop
0002333B  90                nop
0002333C  55                push ebp
0002333D  89E5              mov ebp,esp
0002333F  83EC08            sub esp,byte +0x8
00023342  E8EFD0FFFF        call dword 0x20436
00023347  C9                leave
00023348  C3                ret
00023349  0000              add [eax],al
0002334B  00496E            add [ecx+0x6e],cl
0002334E  697469616C697A69  imul esi,[ecx+ebp*2+0x61],dword 0x697a696c
00023356  6E                outsb
00023357  67204D65          and [di+0x65],cl
0002335B  6D                insd
0002335C  6F                outsd
0002335D  7279              jc 0x233d8
0002335F  2E2E2E2E2E2E2E2E  or al,[cs:eax]
         -0A00
00023369  45                inc ebp
0002336A  6E                outsb
0002336B  61                popad
0002336C  626C6520          bound ebp,[ebp+0x20]
00023370  49                dec ecx
00023371  52                push edx
00023372  51                push ecx
00023373  2E2E2E2E2E2E2E2E  or al,[cs:eax]
         -0A00
0002337D  45                inc ebp
0002337E  6E                outsb
0002337F  61                popad
00023380  626C6520          bound ebp,[ebp+0x20]
00023384  7072              jo 0x233f8
00023386  6F                outsd
00023387  7465              jz 0x233ee
00023389  6374696F          arpl [ecx+ebp*2+0x6f],si
0002338D  6E                outsb
0002338E  2E2E2E2E2E2E2E2E  or al,[cs:eax]
         -0A00
00023398  45                inc ebp
00023399  6E                outsb
0002339A  61                popad
0002339B  626C6520          bound ebp,[ebp+0x20]
0002339F  4B                dec ebx
000233A0  657962            gs jns 0x23405
000233A3  6F                outsd
000233A4  61                popad
000233A5  7264              jc 0x2340b
000233A7  2E2E2E2E2E2E2E2E  or al,[cs:eax]
         -0A00
000233B1  49                dec ecx
000233B2  6E                outsb
000233B3  697469616C697A69  imul esi,[ecx+ebp*2+0x61],dword 0x697a696c
000233BB  6E                outsb
000233BC  67205072          and [bx+si+0x72],dl
000233C0  6F                outsd
000233C1  636573            arpl [ebp+0x73],sp
000233C4  732E              jnc 0x233f4
000233C6  2E2E2E2E2E2E2E0A  or al,[cs:eax]
         -00
000233CF  45                inc ebp
000233D0  6E                outsb
000233D1  61                popad
000233D2  626C6520          bound ebp,[ebp+0x20]
000233D6  50                push eax
000233D7  49                dec ecx
000233D8  54                push esp
000233D9  2E2E2E2E2E2E2E2E  or al,[cs:eax]
         -0A00
000233E3  0028              add [eax],ch
000233E5  002C00            add [eax+eax],ch
000233E8  2900              sub [eax],eax
000233EA  3A00              cmp al,[eax]
000233EC  2020              and [eax],ah
000233EE  005375            add [ebx+0x75],dl
000233F1  6E                outsb
000233F2  6461              fs popad
000233F4  7900              jns 0x233f6
000233F6  4D                dec ebp
000233F7  6F                outsd
000233F8  6E                outsb
000233F9  6461              fs popad
000233FB  7900              jns 0x233fd
000233FD  54                push esp
000233FE  7565              jnz 0x23465
00023400  7364              jnc 0x23466
00023402  61                popad
00023403  7900              jns 0x23405
00023405  57                push edi
00023406  65646E            fs outsb
00023409  657364            gs jnc 0x23470
0002340C  61                popad
0002340D  7900              jns 0x2340f
0002340F  54                push esp
00023410  6875727364        push dword 0x64737275
00023415  61                popad
00023416  7900              jns 0x23418
00023418  46                inc esi
00023419  7269              jc 0x23484
0002341B  6461              fs popad
0002341D  7900              jns 0x2341f
0002341F  53                push ebx
00023420  61                popad
00023421  7475              jz 0x23498
00023423  7264              jc 0x23489
00023425  61                popad
00023426  7900              jns 0x23428
00023428  2020              and [eax],ah
0002342A  3230              xor dh,[eax]
0002342C  002E              add [esi],ch
0002342E  0020              add [eax],ah
00023430  2020              and [eax],ah
00023432  2020              and [eax],ah
00023434  0000              add [eax],al
00023436  0000              add [eax],al
00023438  43                inc ebx
00023439  1402              adc al,0x2
0002343B  00E2              add dl,ah
0002343D  1302              adc eax,[edx]
0002343F  00F0              add al,dh
00023441  1302              adc eax,[edx]
00023443  00FE              add dh,bh
00023445  1302              adc eax,[edx]
00023447  000C14            add [esp+edx],cl
0002344A  0200              add al,[eax]
0002344C  1A1402            sbb dl,[edx+eax]
0002344F  0028              add [eax],ch
00023451  1402              adc al,0x2
00023453  0036              add [esi],dh
00023455  1402              adc al,0x2
00023457  0020              add [eax],ah
00023459  0000              add [eax],al
0002345B  000A              add [edx],cl
0002345D  004E6F            add [esi+0x6f],cl
00023460  7720              ja 0x23482
00023462  69742069733A003A  imul esi,[eax+0x69],dword 0x3a003a73
0002346A  0020              add [eax],ah
0002346C  2000              and [eax],al
0002346E  3230              xor dh,[eax]
00023470  002E              add [esi],ch
00023472  00466C            add [esi+0x6c],al
00023475  6F                outsd
00023476  7070              jo 0x234e8
00023478  7920              jns 0x2349a
0002347A  696E666F726D61    imul ebp,[esi+0x66],dword 0x616d726f
00023481  7469              jz 0x234ec
00023483  6F                outsd
00023484  6E                outsb
00023485  3A00              cmp al,[eax]
00023487  4E                dec esi
00023488  6F                outsd
00023489  20647269          and [edx+esi*2+0x69],ah
0002348D  7665              jna 0x234f4
0002348F  210A              and [edx],ecx
00023491  007369            add [ebx+0x69],dh
00023494  7A65              jpe 0x234fb
00023496  2D2D333630        sub eax,0x3036332d
0002349B  6B0A00            imul ecx,[edx],byte +0x0
0002349E  7369              jnc 0x23509
000234A0  7A65              jpe 0x23507
000234A2  2D2D313230        sub eax,0x3032312d
000234A7  6B0A00            imul ecx,[edx],byte +0x0
000234AA  7369              jnc 0x23515
000234AC  7A65              jpe 0x23513
000234AE  2D2D373230        sub eax,0x3032372d
000234B3  4B                dec ebx
000234B4  0A00              or al,[eax]
000234B6  7369              jnc 0x23521
000234B8  7A65              jpe 0x2351f
000234BA  2D2D312E34        sub eax,0x342e312d
000234BF  344D              xor al,0x4d
000234C1  0A00              or al,[eax]
000234C3  00742002          add [eax+0x2],dh
000234C7  008220020090      add [edx-0x6ffffde0],al
000234CD  2002              and [edx],al
000234CF  009E200200AC      add [esi-0x53fffde0],bl
000234D5  2002              and [edx],al
000234D7  0021              add [ecx],ah
000234D9  40                inc eax
000234DA  2324255E262A28    and esp,[0x282a265e]
000234E1  295F2B            sub [edi+0x2b],ebx
000234E4  004578            add [ebp+0x78],al
000234E7  636570            arpl [ebp+0x70],sp
000234EA  7469              jz 0x23555
000234EC  6F                outsd
000234ED  6E                outsb
000234EE  3A30              cmp dh,[eax]
000234F0  004578            add [ebp+0x78],al
000234F3  636570            arpl [ebp+0x70],sp
000234F6  7469              jz 0x23561
000234F8  6F                outsd
000234F9  6E                outsb
000234FA  3A31              cmp dh,[ecx]
000234FC  004578            add [ebp+0x78],al
000234FF  636570            arpl [ebp+0x70],sp
00023502  7469              jz 0x2356d
00023504  6F                outsd
00023505  6E                outsb
00023506  3A32              cmp dh,[edx]
00023508  004578            add [ebp+0x78],al
0002350B  636570            arpl [ebp+0x70],sp
0002350E  7469              jz 0x23579
00023510  6F                outsd
00023511  6E                outsb
00023512  3A33              cmp dh,[ebx]
00023514  004578            add [ebp+0x78],al
00023517  636570            arpl [ebp+0x70],sp
0002351A  7469              jz 0x23585
0002351C  6F                outsd
0002351D  6E                outsb
0002351E  3A3400            cmp dh,[eax+eax]
00023521  45                inc ebp
00023522  7863              js 0x23587
00023524  657074            gs jo 0x2359b
00023527  696F6E3A350045    imul ebp,[edi+0x6e],dword 0x4500353a
0002352E  7863              js 0x23593
00023530  657074            gs jo 0x235a7
00023533  696F6E3A360045    imul ebp,[edi+0x6e],dword 0x4500363a
0002353A  7863              js 0x2359f
0002353C  657074            gs jo 0x235b3
0002353F  696F6E3A370045    imul ebp,[edi+0x6e],dword 0x4500373a
00023546  7863              js 0x235ab
00023548  657074            gs jo 0x235bf
0002354B  696F6E3A380045    imul ebp,[edi+0x6e],dword 0x4500383a
00023552  7863              js 0x235b7
00023554  657074            gs jo 0x235cb
00023557  696F6E3A390045    imul ebp,[edi+0x6e],dword 0x4500393a
0002355E  7863              js 0x235c3
00023560  657074            gs jo 0x235d7
00023563  696F6E3A313000    imul ebp,[edi+0x6e],dword 0x30313a
0002356A  45                inc ebp
0002356B  7863              js 0x235d0
0002356D  657074            gs jo 0x235e4
00023570  696F6E3A313100    imul ebp,[edi+0x6e],dword 0x31313a
00023577  45                inc ebp
00023578  7863              js 0x235dd
0002357A  657074            gs jo 0x235f1
0002357D  696F6E3A313200    imul ebp,[edi+0x6e],dword 0x32313a
00023584  45                inc ebp
00023585  7863              js 0x235ea
00023587  657074            gs jo 0x235fe
0002358A  696F6E3A313300    imul ebp,[edi+0x6e],dword 0x33313a
00023591  45                inc ebp
00023592  7863              js 0x235f7
00023594  657074            gs jo 0x2360b
00023597  696F6E3A313400    imul ebp,[edi+0x6e],dword 0x34313a
0002359E  45                inc ebp
0002359F  7863              js 0x23604
000235A1  657074            gs jo 0x23618
000235A4  696F6E3A313600    imul ebp,[edi+0x6e],dword 0x36313a
000235AB  2A2A              sub ch,[edx]
000235AD  2A2A              sub ch,[edx]
000235AF  2A2A              sub ch,[edx]
000235B1  0000              add [eax],al
000235B3  0020              add [eax],ah
000235B5  0000              add [eax],al
000235B7  004626            add [esi+0x26],al
000235BA  0200              add al,[eax]
000235BC  7B26              jpo 0x235e4
000235BE  0200              add al,[eax]
000235C0  7B26              jpo 0x235e8
000235C2  0200              add al,[eax]
000235C4  7B26              jpo 0x235ec
000235C6  0200              add al,[eax]
000235C8  7B26              jpo 0x235f0
000235CA  0200              add al,[eax]
000235CC  7B26              jpo 0x235f4
000235CE  0200              add al,[eax]
000235D0  7B26              jpo 0x235f8
000235D2  0200              add al,[eax]
000235D4  7B26              jpo 0x235fc
000235D6  0200              add al,[eax]
000235D8  7B26              jpo 0x23600
000235DA  0200              add al,[eax]
000235DC  7B26              jpo 0x23604
000235DE  0200              add al,[eax]
000235E0  7B26              jpo 0x23608
000235E2  0200              add al,[eax]
000235E4  7B26              jpo 0x2360c
000235E6  0200              add al,[eax]
000235E8  7B26              jpo 0x23610
000235EA  0200              add al,[eax]
000235EC  7B26              jpo 0x23614
000235EE  0200              add al,[eax]
000235F0  3C26              cmp al,0x26
000235F2  0200              add al,[eax]
000235F4  7B26              jpo 0x2361c
000235F6  0200              add al,[eax]
000235F8  7B26              jpo 0x23620
000235FA  0200              add al,[eax]
000235FC  7B26              jpo 0x23624
000235FE  0200              add al,[eax]
00023600  7B26              jpo 0x23628
00023602  0200              add al,[eax]
00023604  7B26              jpo 0x2362c
00023606  0200              add al,[eax]
00023608  7B26              jpo 0x23630
0002360A  0200              add al,[eax]
0002360C  7B26              jpo 0x23634
0002360E  0200              add al,[eax]
00023610  7B26              jpo 0x23638
00023612  0200              add al,[eax]
00023614  7B26              jpo 0x2363c
00023616  0200              add al,[eax]
00023618  7B26              jpo 0x23640
0002361A  0200              add al,[eax]
0002361C  7B26              jpo 0x23644
0002361E  0200              add al,[eax]
00023620  7B26              jpo 0x23648
00023622  0200              add al,[eax]
00023624  7B26              jpo 0x2364c
00023626  0200              add al,[eax]
00023628  EC                in al,dx
00023629  2502007B26        and eax,0x267b0002
0002362E  0200              add al,[eax]
00023630  7B26              jpo 0x23658
00023632  0200              add al,[eax]
00023634  7B26              jpo 0x2365c
00023636  0200              add al,[eax]
00023638  7B26              jpo 0x23660
0002363A  0200              add al,[eax]
0002363C  7B26              jpo 0x23664
0002363E  0200              add al,[eax]
00023640  7B26              jpo 0x23668
00023642  0200              add al,[eax]
00023644  7B26              jpo 0x2366c
00023646  0200              add al,[eax]
00023648  7B26              jpo 0x23670
0002364A  0200              add al,[eax]
0002364C  7B26              jpo 0x23674
0002364E  0200              add al,[eax]
00023650  7B26              jpo 0x23678
00023652  0200              add al,[eax]
00023654  7B26              jpo 0x2367c
00023656  0200              add al,[eax]
00023658  0026              add [esi],ah
0002365A  0200              add al,[eax]
0002365C  7B26              jpo 0x23684
0002365E  0200              add al,[eax]
00023660  7B26              jpo 0x23688
00023662  0200              add al,[eax]
00023664  7B26              jpo 0x2368c
00023666  0200              add al,[eax]
00023668  1426              adc al,0x26
0002366A  0200              add al,[eax]
0002366C  7B26              jpo 0x23694
0002366E  0200              add al,[eax]
00023670  7B26              jpo 0x23698
00023672  0200              add al,[eax]
00023674  7B26              jpo 0x2369c
00023676  0200              add al,[eax]
00023678  7B26              jpo 0x236a0
0002367A  0200              add al,[eax]
0002367C  7B26              jpo 0x236a4
0002367E  0200              add al,[eax]
00023680  7B26              jpo 0x236a8
00023682  0200              add al,[eax]
00023684  7B26              jpo 0x236ac
00023686  0200              add al,[eax]
00023688  7B26              jpo 0x236b0
0002368A  0200              add al,[eax]
0002368C  7B26              jpo 0x236b4
0002368E  0200              add al,[eax]
00023690  7B26              jpo 0x236b8
00023692  0200              add al,[eax]
00023694  7B26              jpo 0x236bc
00023696  0200              add al,[eax]
00023698  7B26              jpo 0x236c0
0002369A  0200              add al,[eax]
0002369C  7B26              jpo 0x236c4
0002369E  0200              add al,[eax]
000236A0  2826              sub [esi],ah
000236A2  0200              add al,[eax]
000236A4  7B26              jpo 0x236cc
000236A6  0200              add al,[eax]
000236A8  7B26              jpo 0x236d0
000236AA  0200              add al,[eax]
000236AC  7B26              jpo 0x236d4
000236AE  0200              add al,[eax]
000236B0  7B26              jpo 0x236d8
000236B2  0200              add al,[eax]
000236B4  7B26              jpo 0x236dc
000236B6  0200              add al,[eax]
000236B8  7B26              jpo 0x236e0
000236BA  0200              add al,[eax]
000236BC  7B26              jpo 0x236e4
000236BE  0200              add al,[eax]
000236C0  3226              xor ah,[esi]
000236C2  0200              add al,[eax]
000236C4  696E74006E6F3D    imul ebp,[esi+0x74],dword 0x3d6f6e00
000236CB  3130              xor [eax],esi
000236CD  6800001400        push dword 0x140000
000236D2  0000              add [eax],al
000236D4  0000              add [eax],al
000236D6  0000              add [eax],al
000236D8  017A52            add [edx+0x52],edi
000236DB  0001              add [ecx],al
000236DD  7C08              jl 0x236e7
000236DF  011B              add [ebx],ebx
000236E1  0C04              or al,0x4
000236E3  0488              add al,0x88
000236E5  0100              add [eax],eax
000236E7  001C00            add [eax+eax],bl
000236EA  0000              add [eax],al
000236EC  1C00              sbb al,0x0
000236EE  0000              add [eax],al
000236F0  58                pop eax
000236F1  CDFF              int 0xff
000236F3  FFD6              call esi
000236F5  0000              add [eax],al
000236F7  0000              add [eax],al
000236F9  41                inc ecx
000236FA  0E                push cs
000236FB  088502420D05      or [ebp+0x50d4202],al
00023701  02D2              add dl,dl
00023703  C50C04            lds ecx,[esp+eax]
00023706  0400              add al,0x0
00023708  1C00              sbb al,0x0
0002370A  0000              add [eax],al
0002370C  3C00              cmp al,0x0
0002370E  0000              add [eax],al
00023710  10CE              adc dh,cl
00023712  FF                db 0xff
00023713  FF                db 0xff
00023714  7901              jns 0x23717
00023716  0000              add [eax],al
00023718  00410E            add [ecx+0xe],al
0002371B  088502420D05      or [ebp+0x50d4202],al
00023721  037501            add esi,[ebp+0x1]
00023724  C50C04            lds ecx,[esp+eax]
00023727  041C              add al,0x1c
00023729  0000              add [eax],al
0002372B  005C0000          add [eax+eax+0x0],bl
0002372F  0069CF            add [ecx-0x31],ch
00023732  FF                db 0xff
00023733  FFA900000000      jmp dword far [ecx+0x0]
00023739  41                inc ecx
0002373A  0E                push cs
0002373B  088502420D05      or [ebp+0x50d4202],al
00023741  02A5C50C0404      add ah,[ebp+0x4040cc5]
00023747  001C00            add [eax+eax],bl
0002374A  0000              add [eax],al
0002374C  7C00              jl 0x2374e
0002374E  0000              add [eax],al
00023750  F2CF              repne iretd
00023752  FF                db 0xff
00023753  FF28              jmp dword far [eax]
00023755  0200              add al,[eax]
00023757  0000              add [eax],al
00023759  41                inc ecx
0002375A  0E                push cs
0002375B  088502420D05      or [ebp+0x50d4202],al
00023761  032402            add esp,[edx+eax]
00023764  C50C04            lds ecx,[esp+eax]
00023767  041C              add al,0x1c
00023769  0000              add [eax],al
0002376B  009C000000FAD1    add [eax+eax-0x2e060000],bl
00023772  FF                db 0xff
00023773  FF5F00            call dword far [edi+0x0]
00023776  0000              add [eax],al
00023778  00410E            add [ecx+0xe],al
0002377B  088502420D05      or [ebp+0x50d4202],al
00023781  025BC5            add bl,[ebx-0x3b]
00023784  0C04              or al,0x4
00023786  0400              add al,0x0
00023788  1C00              sbb al,0x0
0002378A  0000              add [eax],al
0002378C  BC00000039        mov esp,0x39000000
00023791  D2FF              sar bh,cl
00023793  FF5F00            call dword far [edi+0x0]
00023796  0000              add [eax],al
00023798  00410E            add [ecx+0xe],al
0002379B  088502420D05      or [ebp+0x50d4202],al
000237A1  025BC5            add bl,[ebx-0x3b]
000237A4  0C04              or al,0x4
000237A6  0400              add al,0x0
000237A8  1C00              sbb al,0x0
000237AA  0000              add [eax],al
000237AC  DC00              fadd qword [eax]
000237AE  0000              add [eax],al
000237B0  78D2              js 0x23784
000237B2  FF                db 0xff
000237B3  FF4804            dec dword [eax+0x4]
000237B6  0000              add [eax],al
000237B8  00410E            add [ecx+0xe],al
000237BB  088502420D05      or [ebp+0x50d4202],al
000237C1  034404C5          add eax,[esp+eax-0x3b]
000237C5  0C04              or al,0x4
000237C7  041C              add al,0x1c
000237C9  0000              add [eax],al
000237CB  00FC              add ah,bh
000237CD  0000              add [eax],al
000237CF  00A0D6FFFF4D      add [eax+0x4dffffd6],ah
000237D5  0000              add [eax],al
000237D7  0000              add [eax],al
000237D9  41                inc ecx
000237DA  0E                push cs
000237DB  088502420D05      or [ebp+0x50d4202],al
000237E1  0249C5            add cl,[ecx-0x3b]
000237E4  0C04              or al,0x4
000237E6  0400              add al,0x0
000237E8  1C00              sbb al,0x0
000237EA  0000              add [eax],al
000237EC  1C01              sbb al,0x1
000237EE  0000              add [eax],al
000237F0  CDD6              int 0xd6
000237F2  FF                db 0xff
000237F3  FF                db 0xff
000237F4  3900              cmp [eax],eax
000237F6  0000              add [eax],al
000237F8  00410E            add [ecx+0xe],al
000237FB  088502420D05      or [ebp+0x50d4202],al
00023801  75C5              jnz 0x237c8
00023803  0C04              or al,0x4
00023805  0400              add al,0x0
00023807  001C00            add [eax+eax],bl
0002380A  0000              add [eax],al
0002380C  3C01              cmp al,0x1
0002380E  0000              add [eax],al
00023810  E6D6              out 0xd6,al
00023812  FF                db 0xff
00023813  FF5D00            call dword far [ebp+0x0]
00023816  0000              add [eax],al
00023818  00410E            add [ecx+0xe],al
0002381B  088502420D05      or [ebp+0x50d4202],al
00023821  0259C5            add bl,[ecx-0x3b]
00023824  0C04              or al,0x4
00023826  0400              add al,0x0
00023828  1C00              sbb al,0x0
0002382A  0000              add [eax],al
0002382C  5C                pop esp
0002382D  0100              add [eax],eax
0002382F  0024D7            add [edi+edx*8],ah
00023832  FF                db 0xff
00023833  FF                db 0xff
00023834  7B00              jpo 0x23836
00023836  0000              add [eax],al
00023838  00410E            add [ecx+0xe],al
0002383B  088502420D05      or [ebp+0x50d4202],al
00023841  0277C5            add dh,[edi-0x3b]
00023844  0C04              or al,0x4
00023846  0400              add al,0x0
00023848  1C00              sbb al,0x0
0002384A  0000              add [eax],al
0002384C  7C01              jl 0x2384f
0002384E  0000              add [eax],al
00023850  7FD7              jg 0x23829
00023852  FF                db 0xff
00023853  FF0500000000      inc dword [dword 0x0]
00023859  41                inc ecx
0002385A  0E                push cs
0002385B  088502420D05      or [ebp+0x50d4202],al
00023861  41                inc ecx
00023862  0C04              or al,0x4
00023864  04C5              add al,0xc5
00023866  0000              add [eax],al
00023868  1C00              sbb al,0x0
0002386A  0000              add [eax],al
0002386C  9C                pushfd
0002386D  0100              add [eax],eax
0002386F  0064D7FF          add [edi+edx*8-0x1],ah
00023873  FF                db 0xff
00023874  EE                out dx,al
00023875  0400              add al,0x0
00023877  0000              add [eax],al
00023879  41                inc ecx
0002387A  0E                push cs
0002387B  088502420D05      or [ebp+0x50d4202],al
00023881  030501830300      add eax,[dword 0x38301]
00023887  001C00            add [eax+eax],bl
0002388A  0000              add [eax],al
0002388C  BC01000032        mov esp,0x32000001
00023891  DCFF              fdiv to st7
00023893  FF0500000000      inc dword [dword 0x0]
00023899  41                inc ecx
0002389A  0E                push cs
0002389B  088502420D05      or [ebp+0x50d4202],al
000238A1  41                inc ecx
000238A2  0C04              or al,0x4
000238A4  04C5              add al,0xc5
000238A6  0000              add [eax],al
000238A8  1C00              sbb al,0x0
000238AA  0000              add [eax],al
000238AC  DC01              fadd qword [ecx]
000238AE  0000              add [eax],al
000238B0  17                pop ss
000238B1  DCFF              fdiv to st7
000238B3  FF26              jmp dword near [esi]
000238B5  0000              add [eax],al
000238B7  0000              add [eax],al
000238B9  41                inc ecx
000238BA  0E                push cs
000238BB  088502420D05      or [ebp+0x50d4202],al
000238C1  62                db 0x62
000238C2  C50C04            lds ecx,[esp+eax]
000238C5  0400              add al,0x0
000238C7  001C00            add [eax+eax],bl
000238CA  0000              add [eax],al
000238CC  FC                cld
000238CD  0100              add [eax],eax
000238CF  001DDCFFFF05      add [dword 0x5ffffdc],bl
000238D5  0000              add [eax],al
000238D7  0000              add [eax],al
000238D9  41                inc ecx
000238DA  0E                push cs
000238DB  088502420D05      or [ebp+0x50d4202],al
000238E1  41                inc ecx
000238E2  0C04              or al,0x4
000238E4  04C5              add al,0xc5
000238E6  0000              add [eax],al
000238E8  1C00              sbb al,0x0
000238EA  0000              add [eax],al
000238EC  1C02              sbb al,0x2
000238EE  0000              add [eax],al
000238F0  04DC              add al,0xdc
000238F2  FF                db 0xff
000238F3  FFD0              call eax
000238F5  0000              add [eax],al
000238F7  0000              add [eax],al
000238F9  41                inc ecx
000238FA  0E                push cs
000238FB  088502420D05      or [ebp+0x50d4202],al
00023901  02CC              add cl,ah
00023903  C50C04            lds ecx,[esp+eax]
00023906  0400              add al,0x0
00023908  1C00              sbb al,0x0
0002390A  0000              add [eax],al
0002390C  3C02              cmp al,0x2
0002390E  0000              add [eax],al
00023910  B4DC              mov ah,0xdc
00023912  FF                db 0xff
00023913  FF0500000000      inc dword [dword 0x0]
00023919  41                inc ecx
0002391A  0E                push cs
0002391B  088502420D05      or [ebp+0x50d4202],al
00023921  41                inc ecx
00023922  0C04              or al,0x4
00023924  04C5              add al,0xc5
00023926  0000              add [eax],al
00023928  1C00              sbb al,0x0
0002392A  0000              add [eax],al
0002392C  5C                pop esp
0002392D  0200              add al,[eax]
0002392F  0099DCFFFF05      add [ecx+0x5ffffdc],bl
00023935  0000              add [eax],al
00023937  0000              add [eax],al
00023939  41                inc ecx
0002393A  0E                push cs
0002393B  088502420D05      or [ebp+0x50d4202],al
00023941  41                inc ecx
00023942  0C04              or al,0x4
00023944  04C5              add al,0xc5
00023946  0000              add [eax],al
00023948  2000              and [eax],al
0002394A  0000              add [eax],al
0002394C  7C02              jl 0x23950
0002394E  0000              add [eax],al
00023950  7EDC              jng 0x2392e
00023952  FF                db 0xff
00023953  FF9100000000      call dword near [ecx+0x0]
00023959  41                inc ecx
0002395A  0E                push cs
0002395B  088502420D05      or [ebp+0x50d4202],al
00023961  4A                dec edx
00023962  830302            add dword [ebx],byte +0x2
00023965  82                db 0x82
00023966  C3                ret
00023967  41                inc ecx
00023968  0C04              or al,0x4
0002396A  04C5              add al,0xc5
0002396C  2000              and [eax],al
0002396E  0000              add [eax],al
00023970  A0020000EB        mov al,[0xeb000002]
00023975  DCFF              fdiv to st7
00023977  FF8D00000000      dec dword [ebp+0x0]
0002397D  41                inc ecx
0002397E  0E                push cs
0002397F  088502420D05      or [ebp+0x50d4202],al
00023985  4A                dec edx
00023986  830302            add dword [ebx],byte +0x2
00023989  7EC3              jng 0x2394e
0002398B  41                inc ecx
0002398C  0C04              or al,0x4
0002398E  04C5              add al,0xc5
00023990  1C00              sbb al,0x0
00023992  0000              add [eax],al
00023994  C402              les eax,[edx]
00023996  0000              add [eax],al
00023998  54                push esp
00023999  DD                db 0xdd
0002399A  FF                db 0xff
0002399B  FF36              push dword [esi]
0002399D  0000              add [eax],al
0002399F  0000              add [eax],al
000239A1  41                inc ecx
000239A2  0E                push cs
000239A3  088502420D05      or [ebp+0x50d4202],al
000239A9  72C5              jc 0x23970
000239AB  0C04              or al,0x4
000239AD  0400              add al,0x0
000239AF  001C00            add [eax+eax],bl
000239B2  0000              add [eax],al
000239B4  E402              in al,0x2
000239B6  0000              add [eax],al
000239B8  AC                lodsb
000239B9  DEFF              fdivp st7
000239BB  FF0A              dec dword [edx]
000239BD  0000              add [eax],al
000239BF  0000              add [eax],al
000239C1  41                inc ecx
000239C2  0E                push cs
000239C3  088502420D05      or [ebp+0x50d4202],al
000239C9  46                inc esi
000239CA  0C04              or al,0x4
000239CC  04C5              add al,0xc5
000239CE  0000              add [eax],al
000239D0  1C00              sbb al,0x0
000239D2  0000              add [eax],al
000239D4  0403              add al,0x3
000239D6  0000              add [eax],al
000239D8  96                xchg eax,esi
000239D9  DEFF              fdivp st7
000239DB  FF11              call dword near [ecx]
000239DD  0000              add [eax],al
000239DF  0000              add [eax],al
000239E1  41                inc ecx
000239E2  0E                push cs
000239E3  088502420D05      or [ebp+0x50d4202],al
000239E9  4D                dec ebp
000239EA  0C04              or al,0x4
000239EC  04C5              add al,0xc5
000239EE  0000              add [eax],al
000239F0  1C00              sbb al,0x0
000239F2  0000              add [eax],al
000239F4  2403              and al,0x3
000239F6  0000              add [eax],al
000239F8  87DE              xchg ebx,esi
000239FA  FF                db 0xff
000239FB  FF2B              jmp dword far [ebx]
000239FD  0000              add [eax],al
000239FF  0000              add [eax],al
00023A01  41                inc ecx
00023A02  0E                push cs
00023A03  088502420D05      or [ebp+0x50d4202],al
00023A09  67C50C            lds ecx,[si]
00023A0C  0404              add al,0x4
00023A0E  0000              add [eax],al
00023A10  1C00              sbb al,0x0
00023A12  0000              add [eax],al
00023A14  44                inc esp
00023A15  0300              add eax,[eax]
00023A17  0092DEFFFFA1      add [edx-0x5e000022],dl
00023A1D  0000              add [eax],al
00023A1F  0000              add [eax],al
00023A21  41                inc ecx
00023A22  0E                push cs
00023A23  088502420D05      or [ebp+0x50d4202],al
00023A29  029DC50C0404      add bl,[ebp+0x4040cc5]
00023A2F  001C00            add [eax+eax],bl
00023A32  0000              add [eax],al
00023A34  640300            add eax,[fs:eax]
00023A37  0013              add [ebx],dl
00023A39  DF                db 0xdf
00023A3A  FF                db 0xff
00023A3B  FF                db 0xff
00023A3C  3B00              cmp eax,[eax]
00023A3E  0000              add [eax],al
00023A40  00410E            add [ecx+0xe],al
00023A43  088502420D05      or [ebp+0x50d4202],al
00023A49  77C5              ja 0x23a10
00023A4B  0C04              or al,0x4
00023A4D  0400              add al,0x0
00023A4F  001C00            add [eax+eax],bl
00023A52  0000              add [eax],al
00023A54  8403              test [ebx],al
00023A56  0000              add [eax],al
00023A58  2E                cs
00023A59  DF                db 0xdf
00023A5A  FF                db 0xff
00023A5B  FF2B              jmp dword far [ebx]
00023A5D  0000              add [eax],al
00023A5F  0000              add [eax],al
00023A61  41                inc ecx
00023A62  0E                push cs
00023A63  088502420D05      or [ebp+0x50d4202],al
00023A69  67C50C            lds ecx,[si]
00023A6C  0404              add al,0x4
00023A6E  0000              add [eax],al
00023A70  1C00              sbb al,0x0
00023A72  0000              add [eax],al
00023A74  A4                movsb
00023A75  0300              add eax,[eax]
00023A77  0039              add [ecx],bh
00023A79  DF                db 0xdf
00023A7A  FF                db 0xff
00023A7B  FF4100            inc dword [ecx+0x0]
00023A7E  0000              add [eax],al
00023A80  00410E            add [ecx+0xe],al
00023A83  088502420D05      or [ebp+0x50d4202],al
00023A89  7DC5              jnl 0x23a50
00023A8B  0C04              or al,0x4
00023A8D  0400              add al,0x0
00023A8F  001C00            add [eax+eax],bl
00023A92  0000              add [eax],al
00023A94  C403              les eax,[ebx]
00023A96  0000              add [eax],al
00023A98  5A                pop edx
00023A99  DF                db 0xdf
00023A9A  FF                db 0xff
00023A9B  FF4600            inc dword [esi+0x0]
00023A9E  0000              add [eax],al
00023AA0  00410E            add [ecx+0xe],al
00023AA3  088502420D05      or [ebp+0x50d4202],al
00023AA9  0242C5            add al,[edx-0x3b]
00023AAC  0C04              or al,0x4
00023AAE  0400              add al,0x0
00023AB0  1800              sbb [eax],al
00023AB2  0000              add [eax],al
00023AB4  E403              in al,0x3
00023AB6  0000              add [eax],al
00023AB8  80DFFF            sbb bh,0xff
00023ABB  FF0500000000      inc dword [dword 0x0]
00023AC1  41                inc ecx
00023AC2  0E                push cs
00023AC3  088502420D05      or [ebp+0x50d4202],al
00023AC9  0000              add [eax],al
00023ACB  0018              add [eax],bl
00023ACD  0000              add [eax],al
00023ACF  0000              add [eax],al
00023AD1  0400              add al,0x0
00023AD3  0069DF            add [ecx-0x21],ch
00023AD6  FF                db 0xff
00023AD7  FF31              push dword [ecx]
00023AD9  0000              add [eax],al
00023ADB  0000              add [eax],al
00023ADD  41                inc ecx
00023ADE  0E                push cs
00023ADF  088502420D05      or [ebp+0x50d4202],al
00023AE5  0000              add [eax],al
00023AE7  0018              add [eax],bl
00023AE9  0000              add [eax],al
00023AEB  001C04            add [esp+eax],bl
00023AEE  0000              add [eax],al
00023AF0  7EDF              jng 0x23ad1
00023AF2  FF                db 0xff
00023AF3  FF0500000000      inc dword [dword 0x0]
00023AF9  41                inc ecx
00023AFA  0E                push cs
00023AFB  088502420D05      or [ebp+0x50d4202],al
00023B01  0000              add [eax],al
00023B03  001C00            add [eax+eax],bl
00023B06  0000              add [eax],al
00023B08  380400            cmp [eax+eax],al
00023B0B  00C0              add al,al
00023B0D  E1FF              loope 0x23b0e
00023B0F  FF12              call dword near [edx]
00023B11  0000              add [eax],al
00023B13  0000              add [eax],al
00023B15  41                inc ecx
00023B16  0E                push cs
00023B17  088502420D05      or [ebp+0x50d4202],al
00023B1D  4E                dec esi
00023B1E  C50C04            lds ecx,[esp+eax]
00023B21  0400              add al,0x0
00023B23  001C00            add [eax+eax],bl
00023B26  0000              add [eax],al
00023B28  58                pop eax
00023B29  0400              add al,0x0
00023B2B  00B2E1FFFF7C      add [edx+0x7cffffe1],dh
00023B31  0000              add [eax],al
00023B33  0000              add [eax],al
00023B35  41                inc ecx
00023B36  0E                push cs
00023B37  088502420D05      or [ebp+0x50d4202],al
00023B3D  0278C5            add bh,[eax-0x3b]
00023B40  0C04              or al,0x4
00023B42  0400              add al,0x0
00023B44  2400              and al,0x0
00023B46  0000              add [eax],al
00023B48  7804              js 0x23b4e
00023B4A  0000              add [eax],al
00023B4C  0E                push cs
00023B4D  E2FF              loop 0x23b4e
00023B4F  FFCA              dec edx
00023B51  0200              add al,[eax]
00023B53  0000              add [eax],al
00023B55  41                inc ecx
00023B56  0E                push cs
00023B57  088502420D05      or [ebp+0x50d4202],al
00023B5D  53                push ebx
00023B5E  830303            add dword [ebx],byte +0x3
00023B61  B202              mov dl,0x2
00023B63  C3                ret
00023B64  41                inc ecx
00023B65  0C04              or al,0x4
00023B67  04C5              add al,0xc5
00023B69  0000              add [eax],al
00023B6B  001C00            add [eax+eax],bl
00023B6E  0000              add [eax],al
00023B70  A0040000B0        mov al,[0xb0000004]
00023B75  E4FF              in al,0xff
00023B77  FF9700000000      call dword near [edi+0x0]
00023B7D  41                inc ecx
00023B7E  0E                push cs
00023B7F  088502420D05      or [ebp+0x50d4202],al
00023B85  0293C50C0404      add dl,[ebx+0x4040cc5]
00023B8B  001C00            add [eax+eax],bl
00023B8E  0000              add [eax],al
00023B90  C0040000          rol byte [eax+eax],0x0
00023B94  28E5              sub ch,ah
00023B96  FF                db 0xff
00023B97  FF32              push dword [edx]
00023B99  0000              add [eax],al
00023B9B  0000              add [eax],al
00023B9D  41                inc ecx
00023B9E  0E                push cs
00023B9F  088502420D05      or [ebp+0x50d4202],al
00023BA5  6E                outsb
00023BA6  C50C04            lds ecx,[esp+eax]
00023BA9  0400              add al,0x0
00023BAB  001C00            add [eax+eax],bl
00023BAE  0000              add [eax],al
00023BB0  E004              loopne 0x23bb6
00023BB2  0000              add [eax],al
00023BB4  3AE5              cmp ah,ch
00023BB6  FF                db 0xff
00023BB7  FF31              push dword [ecx]
00023BB9  0000              add [eax],al
00023BBB  0000              add [eax],al
00023BBD  41                inc ecx
00023BBE  0E                push cs
00023BBF  088502420D05      or [ebp+0x50d4202],al
00023BC5  6D                insd
00023BC6  C50C04            lds ecx,[esp+eax]
00023BC9  0400              add al,0x0
00023BCB  001C00            add [eax+eax],bl
00023BCE  0000              add [eax],al
00023BD0  000500004CE5      add [dword 0xe54c0000],al
00023BD6  FF                db 0xff
00023BD7  FF27              jmp dword near [edi]
00023BD9  0000              add [eax],al
00023BDB  0000              add [eax],al
00023BDD  41                inc ecx
00023BDE  0E                push cs
00023BDF  088502420D05      or [ebp+0x50d4202],al
00023BE5  63C5              arpl bp,ax
00023BE7  0C04              or al,0x4
00023BE9  0400              add al,0x0
00023BEB  001C00            add [eax+eax],bl
00023BEE  0000              add [eax],al
00023BF0  2005000053E5      and [dword 0xe5530000],al
00023BF6  FF                db 0xff
00023BF7  FFC3              inc ebx
00023BF9  0000              add [eax],al
00023BFB  0000              add [eax],al
00023BFD  41                inc ecx
00023BFE  0E                push cs
00023BFF  088502420D05      or [ebp+0x50d4202],al
00023C05  02BFC50C0404      add bh,[edi+0x4040cc5]
00023C0B  001C00            add [eax+eax],bl
00023C0E  0000              add [eax],al
00023C10  40                inc eax
00023C11  050000F8E5        add eax,0xe5f80000
00023C16  FF                db 0xff
00023C17  FF12              call dword near [edx]
00023C19  0000              add [eax],al
00023C1B  0000              add [eax],al
00023C1D  41                inc ecx
00023C1E  0E                push cs
00023C1F  088502420D05      or [ebp+0x50d4202],al
00023C25  4E                dec esi
00023C26  C50C04            lds ecx,[esp+eax]
00023C29  0400              add al,0x0
00023C2B  001C00            add [eax+eax],bl
00023C2E  0000              add [eax],al
00023C30  60                pushad
00023C31  050000EAE5        add eax,0xe5ea0000
00023C36  FF                db 0xff
00023C37  FF0500000000      inc dword [dword 0x0]
00023C3D  41                inc ecx
00023C3E  0E                push cs
00023C3F  088502420D05      or [ebp+0x50d4202],al
00023C45  41                inc ecx
00023C46  0C04              or al,0x4
00023C48  04C5              add al,0xc5
00023C4A  0000              add [eax],al
00023C4C  1C00              sbb al,0x0
00023C4E  0000              add [eax],al
00023C50  80050000D0E5FF    add byte [dword 0xe5d00000],0xff
00023C57  FF7500            push dword [ebp+0x0]
00023C5A  0000              add [eax],al
00023C5C  00410E            add [ecx+0xe],al
00023C5F  088502420D05      or [ebp+0x50d4202],al
00023C65  0271C5            add dh,[ecx-0x3b]
00023C68  0C04              or al,0x4
00023C6A  0400              add al,0x0
00023C6C  1C00              sbb al,0x0
00023C6E  0000              add [eax],al
00023C70  A005000025        mov al,[0x25000005]
00023C75  E6FF              out 0xff,al
00023C77  FFCC              dec esp
00023C79  0000              add [eax],al
00023C7B  0000              add [eax],al
00023C7D  41                inc ecx
00023C7E  0E                push cs
00023C7F  088502420D05      or [ebp+0x50d4202],al
00023C85  02C8              add cl,al
00023C87  C50C04            lds ecx,[esp+eax]
00023C8A  0400              add al,0x0
00023C8C  1C00              sbb al,0x0
00023C8E  0000              add [eax],al
00023C90  C0050000D1E6FF    rol byte [dword 0xe6d10000],0xff
00023C97  FFC9              dec ecx
00023C99  0000              add [eax],al
00023C9B  0000              add [eax],al
00023C9D  41                inc ecx
00023C9E  0E                push cs
00023C9F  088502420D05      or [ebp+0x50d4202],al
00023CA5  02C5              add al,ch
00023CA7  C50C04            lds ecx,[esp+eax]
00023CAA  0400              add al,0x0
00023CAC  1C00              sbb al,0x0
00023CAE  0000              add [eax],al
00023CB0  E005              loopne 0x23cb7
00023CB2  0000              add [eax],al
00023CB4  7AE7              jpe 0x23c9d
00023CB6  FF                db 0xff
00023CB7  FF4100            inc dword [ecx+0x0]
00023CBA  0000              add [eax],al
00023CBC  00410E            add [ecx+0xe],al
00023CBF  088502420D05      or [ebp+0x50d4202],al
00023CC5  7DC5              jnl 0x23c8c
00023CC7  0C04              or al,0x4
00023CC9  0400              add al,0x0
00023CCB  001C00            add [eax+eax],bl
00023CCE  0000              add [eax],al
00023CD0  0006              add [esi],al
00023CD2  0000              add [eax],al
00023CD4  9BE7FF            wait out 0xff,eax
00023CD7  FF6A00            jmp dword far [edx+0x0]
00023CDA  0000              add [eax],al
00023CDC  00410E            add [ecx+0xe],al
00023CDF  088502420D05      or [ebp+0x50d4202],al
00023CE5  0266C5            add ah,[esi-0x3b]
00023CE8  0C04              or al,0x4
00023CEA  0400              add al,0x0
00023CEC  1C00              sbb al,0x0
00023CEE  0000              add [eax],al
00023CF0  2006              and [esi],al
00023CF2  0000              add [eax],al
00023CF4  E5E7              in eax,0xe7
00023CF6  FF                db 0xff
00023CF7  FF6A00            jmp dword far [edx+0x0]
00023CFA  0000              add [eax],al
00023CFC  00410E            add [ecx+0xe],al
00023CFF  088502420D05      or [ebp+0x50d4202],al
00023D05  0266C5            add ah,[esi-0x3b]
00023D08  0C04              or al,0x4
00023D0A  0400              add al,0x0
00023D0C  2000              and [eax],al
00023D0E  0000              add [eax],al
00023D10  40                inc eax
00023D11  06                push es
00023D12  0000              add [eax],al
00023D14  30E8              xor al,ch
00023D16  FF                db 0xff
00023D17  FF                db 0xff
00023D18  3F                aas
00023D19  0000              add [eax],al
00023D1B  0000              add [eax],al
00023D1D  41                inc ecx
00023D1E  0E                push cs
00023D1F  088502420D05      or [ebp+0x50d4202],al
00023D25  64830356          add dword [fs:ebx],byte +0x56
00023D29  C3                ret
00023D2A  41                inc ecx
00023D2B  0C04              or al,0x4
00023D2D  04C5              add al,0xc5
00023D2F  0018              add [eax],bl
00023D31  0000              add [eax],al
00023D33  00640600          add [esi+eax+0x0],ah
00023D37  004BE8            add [ebx-0x18],cl
00023D3A  FF                db 0xff
00023D3B  FF8301000000      inc dword [ebx+0x1]
00023D41  41                inc ecx
00023D42  0E                push cs
00023D43  088502420D05      or [ebp+0x50d4202],al
00023D49  51                push ecx
00023D4A  83031C            add dword [ebx],byte +0x1c
00023D4D  0000              add [eax],al
00023D4F  0080060000B2      add [eax-0x4dfffffa],al
00023D55  E9FFFF0D00        jmp dword 0x103d59
00023D5A  0000              add [eax],al
00023D5C  00410E            add [ecx+0xe],al
00023D5F  088502420D05      or [ebp+0x50d4202],al
00023D65  49                dec ecx
00023D66  C50C04            lds ecx,[esp+eax]
00023D69  0400              add al,0x0
00023D6B  001C00            add [eax+eax],bl
00023D6E  0000              add [eax],al
00023D70  A00600009F        mov al,[0x9f000006]
00023D75  E9FFFF5F00        jmp dword 0x623d79
00023D7A  0000              add [eax],al
00023D7C  00410E            add [ecx+0xe],al
00023D7F  088502420D05      or [ebp+0x50d4202],al
00023D85  025BC5            add bl,[ebx-0x3b]
00023D88  0C04              or al,0x4
00023D8A  0400              add al,0x0
00023D8C  1C00              sbb al,0x0
00023D8E  0000              add [eax],al
00023D90  C00600            rol byte [esi],0x0
00023D93  00DE              add dh,bl
00023D95  E9FFFF8E00        jmp dword 0x913d99
00023D9A  0000              add [eax],al
00023D9C  00410E            add [ecx+0xe],al
00023D9F  088502420D05      or [ebp+0x50d4202],al
00023DA5  028AC50C0404      add cl,[edx+0x4040cc5]
00023DAB  001C00            add [eax+eax],bl
00023DAE  0000              add [eax],al
00023DB0  E006              loopne 0x23db8
00023DB2  0000              add [eax],al
00023DB4  4C                dec esp
00023DB5  EAFFFF9C000000    jmp dword 0x0:0x9cffff
00023DBC  00410E            add [ecx+0xe],al
00023DBF  088502420D05      or [ebp+0x50d4202],al
00023DC5  0298C50C0404      add bl,[eax+0x4040cc5]
00023DCB  001C00            add [eax+eax],bl
00023DCE  0000              add [eax],al
00023DD0  0007              add [edi],al
00023DD2  0000              add [eax],al
00023DD4  C8EAFFFF          enter 0xffea,0xff
00023DD8  DF00              fild word [eax]
00023DDA  0000              add [eax],al
00023DDC  00410E            add [ecx+0xe],al
00023DDF  088502420D05      or [ebp+0x50d4202],al
00023DE5  02DB              add bl,bl
00023DE7  C50C04            lds ecx,[esp+eax]
00023DEA  0400              add al,0x0
00023DEC  1C00              sbb al,0x0
00023DEE  0000              add [eax],al
00023DF0  2007              and [edi],al
00023DF2  0000              add [eax],al
00023DF4  88EB              mov bl,ch
00023DF6  FF                db 0xff
00023DF7  FFE3              jmp ebx
00023DF9  0000              add [eax],al
00023DFB  0000              add [eax],al
00023DFD  41                inc ecx
00023DFE  0E                push cs
00023DFF  088502420D05      or [ebp+0x50d4202],al
00023E05  02DF              add bl,bh
00023E07  C50C04            lds ecx,[esp+eax]
00023E0A  0400              add al,0x0
00023E0C  1C00              sbb al,0x0
00023E0E  0000              add [eax],al
00023E10  40                inc eax
00023E11  07                pop es
00023E12  0000              add [eax],al
00023E14  4B                dec ebx
00023E15  EC                in al,dx
00023E16  FF                db 0xff
00023E17  FFC5              inc ebp
00023E19  0000              add [eax],al
00023E1B  0000              add [eax],al
00023E1D  41                inc ecx
00023E1E  0E                push cs
00023E1F  088502420D05      or [ebp+0x50d4202],al
00023E25  02C1              add al,cl
00023E27  C50C04            lds ecx,[esp+eax]
00023E2A  0400              add al,0x0
00023E2C  1C00              sbb al,0x0
00023E2E  0000              add [eax],al
00023E30  60                pushad
00023E31  07                pop es
00023E32  0000              add [eax],al
00023E34  84ED              test ch,ch
00023E36  FF                db 0xff
00023E37  FF33              push dword [ebx]
00023E39  0000              add [eax],al
00023E3B  0000              add [eax],al
00023E3D  41                inc ecx
00023E3E  0E                push cs
00023E3F  088502420D05      or [ebp+0x50d4202],al
00023E45  6F                outsd
00023E46  C50C04            lds ecx,[esp+eax]
00023E49  0400              add al,0x0
00023E4B  001C00            add [eax+eax],bl
00023E4E  0000              add [eax],al
00023E50  800700            add byte [edi],0x0
00023E53  0097EDFFFF05      add [edi+0x5ffffed],dl
00023E59  0000              add [eax],al
00023E5B  0000              add [eax],al
00023E5D  41                inc ecx
00023E5E  0E                push cs
00023E5F  088502420D05      or [ebp+0x50d4202],al
00023E65  41                inc ecx
00023E66  0C04              or al,0x4
00023E68  04C5              add al,0xc5
00023E6A  0000              add [eax],al
00023E6C  1C00              sbb al,0x0
00023E6E  0000              add [eax],al
00023E70  A00700007C        mov al,[0x7c000007]
00023E75  ED                in eax,dx
00023E76  FF                db 0xff
00023E77  FF0500000000      inc dword [dword 0x0]
00023E7D  41                inc ecx
00023E7E  0E                push cs
00023E7F  088502420D05      or [ebp+0x50d4202],al
00023E85  41                inc ecx
00023E86  0C04              or al,0x4
00023E88  04C5              add al,0xc5
00023E8A  0000              add [eax],al
00023E8C  1C00              sbb al,0x0
00023E8E  0000              add [eax],al
00023E90  C00700            rol byte [edi],0x0
00023E93  0061ED            add [ecx-0x13],ah
00023E96  FF                db 0xff
00023E97  FF1E              call dword far [esi]
00023E99  0100              add [eax],eax
00023E9B  0000              add [eax],al
00023E9D  41                inc ecx
00023E9E  0E                push cs
00023E9F  088502420D05      or [ebp+0x50d4202],al
00023EA5  031A              add ebx,[edx]
00023EA7  01C5              add ebp,eax
00023EA9  0C04              or al,0x4
00023EAB  041C              add al,0x1c
00023EAD  0000              add [eax],al
00023EAF  00E0              add al,ah
00023EB1  07                pop es
00023EB2  0000              add [eax],al
00023EB4  B4EE              mov ah,0xee
00023EB6  FF                db 0xff
00023EB7  FF2F              jmp dword far [edi]
00023EB9  0000              add [eax],al
00023EBB  0000              add [eax],al
00023EBD  41                inc ecx
00023EBE  0E                push cs
00023EBF  088502420D05      or [ebp+0x50d4202],al
00023EC5  6B0C0404          imul ecx,[esp+eax],byte +0x4
00023EC9  C500              lds eax,[eax]
00023ECB  001C00            add [eax+eax],bl
00023ECE  0000              add [eax],al
00023ED0  0008              add [eax],cl
00023ED2  0000              add [eax],al
00023ED4  C3                ret
00023ED5  EE                out dx,al
00023ED6  FF                db 0xff
00023ED7  FF                db 0xff
00023ED8  3A00              cmp al,[eax]
00023EDA  0000              add [eax],al
00023EDC  00410E            add [ecx+0xe],al
00023EDF  088502420D05      or [ebp+0x50d4202],al
00023EE5  76C5              jna 0x23eac
00023EE7  0C04              or al,0x4
00023EE9  0400              add al,0x0
00023EEB  002400            add [eax+eax],ah
00023EEE  0000              add [eax],al
00023EF0  2008              and [eax],cl
00023EF2  0000              add [eax],al
00023EF4  DDEE              fucomp st6
00023EF6  FF                db 0xff
00023EF7  FF6502            jmp dword near [ebp+0x2]
00023EFA  0000              add [eax],al
00023EFC  00410E            add [ecx+0xe],al
00023EFF  088502420D05      or [ebp+0x50d4202],al
00023F05  5A                pop edx
00023F06  830303            add dword [ebx],byte +0x3
00023F09  46                inc esi
00023F0A  02C3              add al,bl
00023F0C  41                inc ecx
00023F0D  0C04              or al,0x4
00023F0F  04C5              add al,0xc5
00023F11  0000              add [eax],al
00023F13  0020              add [eax],ah
00023F15  0000              add [eax],al
00023F17  004808            add [eax+0x8],cl
00023F1A  0000              add [eax],al
00023F1C  1AF1              sbb dh,cl
00023F1E  FF                db 0xff
00023F1F  FFD5              call ebp
00023F21  0000              add [eax],al
00023F23  0000              add [eax],al
00023F25  41                inc ecx
00023F26  0E                push cs
00023F27  088502420D05      or [ebp+0x50d4202],al
00023F2D  6B830302A5C341    imul eax,[ebx-0x3c5afdfd],byte +0x41
00023F34  0C04              or al,0x4
00023F36  04C5              add al,0xc5
00023F38  1C00              sbb al,0x0
00023F3A  0000              add [eax],al
00023F3C  6C                insb
00023F3D  0800              or [eax],al
00023F3F  00CB              add bl,cl
00023F41  F1                int1
00023F42  FF                db 0xff
00023F43  FF0500000000      inc dword [dword 0x0]
00023F49  41                inc ecx
00023F4A  0E                push cs
00023F4B  088502420D05      or [ebp+0x50d4202],al
00023F51  41                inc ecx
00023F52  0C04              or al,0x4
00023F54  04C5              add al,0xc5
00023F56  0000              add [eax],al
00023F58  1C00              sbb al,0x0
00023F5A  0000              add [eax],al
00023F5C  8C08              mov [eax],cs
00023F5E  0000              add [eax],al
00023F60  B0F1              mov al,0xf1
00023F62  FF                db 0xff
00023F63  FF                db 0xff
00023F64  7D00              jnl 0x23f66
00023F66  0000              add [eax],al
00023F68  00410E            add [ecx+0xe],al
00023F6B  088502420D05      or [ebp+0x50d4202],al
00023F71  0279C5            add bh,[ecx-0x3b]
00023F74  0C04              or al,0x4
00023F76  0400              add al,0x0
00023F78  1C00              sbb al,0x0
00023F7A  0000              add [eax],al
00023F7C  AC                lodsb
00023F7D  0800              or [eax],al
00023F7F  000DF2FFFF2C      add [dword 0x2cfffff2],cl
00023F85  0100              add [eax],eax
00023F87  0000              add [eax],al
00023F89  41                inc ecx
00023F8A  0E                push cs
00023F8B  088502420D05      or [ebp+0x50d4202],al
00023F91  0328              add ebp,[eax]
00023F93  01C5              add ebp,eax
00023F95  0C04              or al,0x4
00023F97  041C              add al,0x1c
00023F99  0000              add [eax],al
00023F9B  00CC              add ah,cl
00023F9D  0800              or [eax],al
00023F9F  0019              add [ecx],bl
00023FA1  F3                rep
00023FA2  FF                db 0xff
00023FA3  FF8000000000      inc dword [eax+0x0]
00023FA9  41                inc ecx
00023FAA  0E                push cs
00023FAB  088502420D05      or [ebp+0x50d4202],al
00023FB1  027CC50C          add bh,[ebp+eax*8+0xc]
00023FB5  0404              add al,0x4
00023FB7  001C00            add [eax+eax],bl
00023FBA  0000              add [eax],al
00023FBC  EC                in al,dx
00023FBD  0800              or [eax],al
00023FBF  007CF3FF          add [ebx+esi*8-0x1],bh
00023FC3  FF0D00000000      dec dword [dword 0x0]
00023FC9  41                inc ecx
00023FCA  0E                push cs
00023FCB  088502420D05      or [ebp+0x50d4202],al
00023FD1  49                dec ecx
00023FD2  C50C04            lds ecx,[esp+eax]
00023FD5  0400              add al,0x0
00023FD7  0000              add [eax],al
00023FD9  0000              add [eax],al
00023FDB  0000              add [eax],al
00023FDD  0000              add [eax],al
00023FDF  0000              add [eax],al
00023FE1  0000              add [eax],al
00023FE3  0000              add [eax],al
00023FE5  0000              add [eax],al
00023FE7  0000              add [eax],al
00023FE9  0000              add [eax],al
00023FEB  0000              add [eax],al
00023FED  0000              add [eax],al
00023FEF  0000              add [eax],al
00023FF1  0000              add [eax],al
00023FF3  0000              add [eax],al
00023FF5  0000              add [eax],al
00023FF7  0000              add [eax],al
00023FF9  0000              add [eax],al
00023FFB  0000              add [eax],al
00023FFD  0000              add [eax],al
00023FFF  007F03            add [edi+0x3],bh
00024002  0000              add [eax],al
00024004  0000              add [eax],al
00024006  0000              add [eax],al
00024008  0000              add [eax],al
0002400A  0000              add [eax],al
0002400C  0000              add [eax],al
0002400E  0000              add [eax],al
00024010  0000              add [eax],al
00024012  0000              add [eax],al
00024014  0000              add [eax],al
00024016  0000              add [eax],al
00024018  0000              add [eax],al
0002401A  0000              add [eax],al
0002401C  0000              add [eax],al
0002401E  0000              add [eax],al
00024020  0000              add [eax],al
00024022  0000              add [eax],al
00024024  0000              add [eax],al
00024026  0000              add [eax],al
00024028  0000              add [eax],al
0002402A  0000              add [eax],al
0002402C  0000              add [eax],al
0002402E  0000              add [eax],al
00024030  3100              xor [eax],eax
00024032  0000              add [eax],al
00024034  2100              and [eax],eax
00024036  0000              add [eax],al
00024038  3200              xor al,[eax]
0002403A  0000              add [eax],al
0002403C  40                inc eax
0002403D  0000              add [eax],al
0002403F  0033              add [ebx],dh
00024041  0000              add [eax],al
00024043  0023              add [ebx],ah
00024045  0000              add [eax],al
00024047  003400            add [eax+eax],dh
0002404A  0000              add [eax],al
0002404C  2400              and al,0x0
0002404E  0000              add [eax],al
00024050  3500000025        xor eax,0x25000000
00024055  0000              add [eax],al
00024057  0036              add [esi],dh
00024059  0000              add [eax],al
0002405B  005E00            add [esi+0x0],bl
0002405E  0000              add [eax],al
00024060  37                aaa
00024061  0000              add [eax],al
00024063  0026              add [esi],ah
00024065  0000              add [eax],al
00024067  0038              add [eax],bh
00024069  0000              add [eax],al
0002406B  002A              add [edx],ch
0002406D  0000              add [eax],al
0002406F  0039              add [ecx],bh
00024071  0000              add [eax],al
00024073  0028              add [eax],ch
00024075  0000              add [eax],al
00024077  0030              add [eax],dh
00024079  0000              add [eax],al
0002407B  0029              add [ecx],ch
0002407D  0000              add [eax],al
0002407F  002D0000005F      add [dword 0x5f000000],ch
00024085  0000              add [eax],al
00024087  003D0000002B      add [dword 0x2b000000],bh
0002408D  0000              add [eax],al
0002408F  000B              add [ebx],cl
00024091  0000              add [eax],al
00024093  000B              add [ebx],cl
00024095  0000              add [eax],al
00024097  000C00            add [eax+eax],cl
0002409A  0000              add [eax],al
0002409C  0C00              or al,0x0
0002409E  0000              add [eax],al
000240A0  7100              jno 0x240a2
000240A2  0000              add [eax],al
000240A4  51                push ecx
000240A5  0000              add [eax],al
000240A7  007700            add [edi+0x0],dh
000240AA  0000              add [eax],al
000240AC  57                push edi
000240AD  0000              add [eax],al
000240AF  006500            add [ebp+0x0],ah
000240B2  0000              add [eax],al
000240B4  45                inc ebp
000240B5  0000              add [eax],al
000240B7  007200            add [edx+0x0],dh
000240BA  0000              add [eax],al
000240BC  52                push edx
000240BD  0000              add [eax],al
000240BF  00740000          add [eax+eax+0x0],dh
000240C3  00540000          add [eax+eax+0x0],dl
000240C7  007900            add [ecx+0x0],bh
000240CA  0000              add [eax],al
000240CC  59                pop ecx
000240CD  0000              add [eax],al
000240CF  007500            add [ebp+0x0],dh
000240D2  0000              add [eax],al
000240D4  55                push ebp
000240D5  0000              add [eax],al
000240D7  006900            add [ecx+0x0],ch
000240DA  0000              add [eax],al
000240DC  49                dec ecx
000240DD  0000              add [eax],al
000240DF  006F00            add [edi+0x0],ch
000240E2  0000              add [eax],al
000240E4  4F                dec edi
000240E5  0000              add [eax],al
000240E7  007000            add [eax+0x0],dh
000240EA  0000              add [eax],al
000240EC  50                push eax
000240ED  0000              add [eax],al
000240EF  005B00            add [ebx+0x0],bl
000240F2  0000              add [eax],al
000240F4  7B00              jpo 0x240f6
000240F6  0000              add [eax],al
000240F8  5D                pop ebp
000240F9  0000              add [eax],al
000240FB  007D00            add [ebp+0x0],bh
000240FE  0000              add [eax],al
00024100  0D0000000D        or eax,0xd000000
00024105  0000              add [eax],al
00024107  000E              add [esi],cl
00024109  0000              add [eax],al
0002410B  000E              add [esi],cl
0002410D  0000              add [eax],al
0002410F  006100            add [ecx+0x0],ah
00024112  0000              add [eax],al
00024114  41                inc ecx
00024115  0000              add [eax],al
00024117  007300            add [ebx+0x0],dh
0002411A  0000              add [eax],al
0002411C  53                push ebx
0002411D  0000              add [eax],al
0002411F  00640000          add [eax+eax+0x0],ah
00024123  00440000          add [eax+eax+0x0],al
00024127  006600            add [esi+0x0],ah
0002412A  0000              add [eax],al
0002412C  46                inc esi
0002412D  0000              add [eax],al
0002412F  006700            add [edi+0x0],ah
00024132  0000              add [eax],al
00024134  47                inc edi
00024135  0000              add [eax],al
00024137  006800            add [eax+0x0],ch
0002413A  0000              add [eax],al
0002413C  48                dec eax
0002413D  0000              add [eax],al
0002413F  006A00            add [edx+0x0],ch
00024142  0000              add [eax],al
00024144  4A                dec edx
00024145  0000              add [eax],al
00024147  006B00            add [ebx+0x0],ch
0002414A  0000              add [eax],al
0002414C  4B                dec ebx
0002414D  0000              add [eax],al
0002414F  006C0000          add [eax+eax+0x0],ch
00024153  004C0000          add [eax+eax+0x0],cl
00024157  003B              add [ebx],bh
00024159  0000              add [eax],al
0002415B  003A              add [edx],bh
0002415D  0000              add [eax],al
0002415F  0027              add [edi],ah
00024161  0000              add [eax],al
00024163  0022              add [edx],ah
00024165  0000              add [eax],al
00024167  006000            add [eax+0x0],ah
0002416A  0000              add [eax],al
0002416C  7E00              jng 0x2416e
0002416E  0000              add [eax],al
00024170  0F0000            sldt [eax]
00024173  000F              add [edi],cl
00024175  0000              add [eax],al
00024177  005C0000          add [eax+eax+0x0],bl
0002417B  007C0000          add [eax+eax+0x0],bh
0002417F  007A00            add [edx+0x0],bh
00024182  0000              add [eax],al
00024184  5A                pop edx
00024185  0000              add [eax],al
00024187  007800            add [eax+0x0],bh
0002418A  0000              add [eax],al
0002418C  58                pop eax
0002418D  0000              add [eax],al
0002418F  006300            add [ebx+0x0],ah
00024192  0000              add [eax],al
00024194  43                inc ebx
00024195  0000              add [eax],al
00024197  007600            add [esi+0x0],dh
0002419A  0000              add [eax],al
0002419C  56                push esi
0002419D  0000              add [eax],al
0002419F  006200            add [edx+0x0],ah
000241A2  0000              add [eax],al
000241A4  42                inc edx
000241A5  0000              add [eax],al
000241A7  006E00            add [esi+0x0],ch
000241AA  0000              add [eax],al
000241AC  4E                dec esi
000241AD  0000              add [eax],al
000241AF  006D00            add [ebp+0x0],ch
000241B2  0000              add [eax],al
000241B4  4D                dec ebp
000241B5  0000              add [eax],al
000241B7  002C00            add [eax+eax],ch
000241BA  0000              add [eax],al
000241BC  3C00              cmp al,0x0
000241BE  0000              add [eax],al
000241C0  2E0000            add [cs:eax],al
000241C3  003E              add [esi],bh
000241C5  0000              add [eax],al
000241C7  002F              add [edi],ch
000241C9  0000              add [eax],al
000241CB  003F              add [edi],bh
000241CD  0000              add [eax],al
000241CF  0010              add [eax],dl
000241D1  0000              add [eax],al
000241D3  0010              add [eax],dl
000241D5  0000              add [eax],al
000241D7  002A              add [edx],ch
000241D9  0000              add [eax],al
000241DB  002A              add [edx],ch
000241DD  0000              add [eax],al
000241DF  0011              add [ecx],dl
000241E1  0000              add [eax],al
000241E3  0011              add [ecx],dl
000241E5  0000              add [eax],al
000241E7  0020              add [eax],ah
000241E9  0000              add [eax],al
000241EB  0020              add [eax],ah
000241ED  0000              add [eax],al
000241EF  0012              add [edx],dl
000241F1  0000              add [eax],al
000241F3  0012              add [edx],dl
000241F5  0000              add [eax],al
000241F7  0001              add [ecx],al
000241F9  0000              add [eax],al
000241FB  0001              add [ecx],al
000241FD  0000              add [eax],al
000241FF  0002              add [edx],al
00024201  0000              add [eax],al
00024203  0002              add [edx],al
00024205  0000              add [eax],al
00024207  0003              add [ebx],al
00024209  0000              add [eax],al
0002420B  0003              add [ebx],al
0002420D  0000              add [eax],al
0002420F  000400            add [eax+eax],al
00024212  0000              add [eax],al
00024214  0400              add al,0x0
00024216  0000              add [eax],al
00024218  0500000005        add eax,0x5000000
0002421D  0000              add [eax],al
0002421F  0006              add [esi],al
00024221  0000              add [eax],al
00024223  0006              add [esi],al
00024225  0000              add [eax],al
00024227  0007              add [edi],al
00024229  0000              add [eax],al
0002422B  0007              add [edi],al
0002422D  0000              add [eax],al
0002422F  0008              add [eax],cl
00024231  0000              add [eax],al
00024233  0008              add [eax],cl
00024235  0000              add [eax],al
00024237  0009              add [ecx],cl
00024239  0000              add [eax],al
0002423B  0009              add [ecx],cl
0002423D  0000              add [eax],al
0002423F  000A              add [edx],cl
00024241  0000              add [eax],al
00024243  000A              add [edx],cl
00024245  0000              add [eax],al
00024247  0000              add [eax],al
00024249  0000              add [eax],al
0002424B  0000              add [eax],al
0002424D  0000              add [eax],al
0002424F  0000              add [eax],al
00024251  0000              add [eax],al
00024253  0000              add [eax],al
00024255  0000              add [eax],al
00024257  0000              add [eax],al
00024259  0000              add [eax],al
0002425B  0037              add [edi],dh
0002425D  0000              add [eax],al
0002425F  0000              add [eax],al
00024261  0000              add [eax],al
00024263  0038              add [eax],bh
00024265  0000              add [eax],al
00024267  0000              add [eax],al
00024269  0000              add [eax],al
0002426B  0039              add [ecx],bh
0002426D  0000              add [eax],al
0002426F  0000              add [eax],al
00024271  0000              add [eax],al
00024273  002D00000000      add [dword 0x0],ch
00024279  0000              add [eax],al
0002427B  003400            add [eax+eax],dh
0002427E  0000              add [eax],al
00024280  0000              add [eax],al
00024282  0000              add [eax],al
00024284  3500000000        xor eax,0x0
00024289  0000              add [eax],al
0002428B  0036              add [esi],dh
0002428D  0000              add [eax],al
0002428F  0000              add [eax],al
00024291  0000              add [eax],al
00024293  002B              add [ebx],ch
00024295  0000              add [eax],al
00024297  0000              add [eax],al
00024299  0000              add [eax],al
0002429B  0031              add [ecx],dh
0002429D  0000              add [eax],al
0002429F  0000              add [eax],al
000242A1  0000              add [eax],al
000242A3  0032              add [edx],dh
000242A5  0000              add [eax],al
000242A7  0000              add [eax],al
000242A9  0000              add [eax],al
000242AB  0033              add [ebx],dh
000242AD  0000              add [eax],al
000242AF  0000              add [eax],al
000242B1  0000              add [eax],al
000242B3  0030              add [eax],dh
000242B5  0000              add [eax],al
000242B7  0000              add [eax],al
000242B9  0000              add [eax],al
000242BB  002E              add [esi],ch
000242BD  0000              add [eax],al
000242BF  0003              add [ebx],al
000242C1  0000              add [eax],al
000242C3  004743            add [edi+0x43],al
000242C6  43                inc ebx
000242C7  3A20              cmp ah,[eax]
000242C9  285562            sub [ebp+0x62],dl
000242CC  756E              jnz 0x2433c
000242CE  7475              jz 0x24345
000242D0  2F                das
000242D1  4C                dec esp
000242D2  696E61726F2034    imul ebp,[esi+0x61],dword 0x34206f72
000242D9  2E362E332D317562  xor ebp,[dword cs:0x75627531]
         -75
000242E2  6E                outsb
000242E3  7475              jz 0x2435a
000242E5  352920342E        xor eax,0x2e342029
000242EA  362E3300          xor eax,[cs:eax]
000242EE  002E              add [esi],ch
000242F0  7368              jnc 0x2435a
000242F2  7374              jnc 0x24368
000242F4  7274              jc 0x2436a
000242F6  61                popad
000242F7  6200              bound eax,[eax]
000242F9  2E7465            cs jz 0x24361
000242FC  7874              js 0x24372
000242FE  002E              add [esi],ch
00024300  726F              jc 0x24371
00024302  6461              fs popad
00024304  7461              jz 0x24367
00024306  002E              add [esi],ch
00024308  65685F667261      gs push dword 0x6172665f
0002430E  6D                insd
0002430F  65002E            add [gs:esi],ch
00024312  6461              fs popad
00024314  7461              jz 0x24377
00024316  002E              add [esi],ch
00024318  627373            bound esi,[ebx+0x73]
0002431B  002E              add [esi],ch
0002431D  636F6D            arpl [edi+0x6d],bp
00024320  6D                insd
00024321  656E              gs outsb
00024323  7400              jz 0x24325
00024325  0000              add [eax],al
00024327  0000              add [eax],al
00024329  0000              add [eax],al
0002432B  0000              add [eax],al
0002432D  0000              add [eax],al
0002432F  0000              add [eax],al
00024331  0000              add [eax],al
00024333  0000              add [eax],al
00024335  0000              add [eax],al
00024337  0000              add [eax],al
00024339  0000              add [eax],al
0002433B  0000              add [eax],al
0002433D  0000              add [eax],al
0002433F  0000              add [eax],al
00024341  0000              add [eax],al
00024343  0000              add [eax],al
00024345  0000              add [eax],al
00024347  0000              add [eax],al
00024349  0000              add [eax],al
0002434B  0000              add [eax],al
0002434D  0000              add [eax],al
0002434F  000B              add [ebx],cl
00024351  0000              add [eax],al
00024353  0001              add [ecx],al
00024355  0000              add [eax],al
00024357  0006              add [esi],al
00024359  0000              add [eax],al
0002435B  0000              add [eax],al
0002435D  0402              add al,0x2
0002435F  0000              add [eax],al
00024361  0400              add al,0x0
00024363  00492F            add [ecx+0x2f],cl
00024366  0000              add [eax],al
00024368  0000              add [eax],al
0002436A  0000              add [eax],al
0002436C  0000              add [eax],al
0002436E  0000              add [eax],al
00024370  1000              adc [eax],al
00024372  0000              add [eax],al
00024374  0000              add [eax],al
00024376  0000              add [eax],al
00024378  1100              adc [eax],eax
0002437A  0000              add [eax],al
0002437C  0100              add [eax],eax
0002437E  0000              add [eax],al
00024380  0200              add al,[eax]
00024382  0000              add [eax],al
00024384  4C                dec esp
00024385  3302              xor eax,[edx]
00024387  004C3300          add [ebx+esi+0x0],cl
0002438B  008303000000      add [ebx+0x3],al
00024391  0000              add [eax],al
00024393  0000              add [eax],al
00024395  0000              add [eax],al
00024397  000400            add [eax+eax],al
0002439A  0000              add [eax],al
0002439C  0000              add [eax],al
0002439E  0000              add [eax],al
000243A0  1900              sbb [eax],eax
000243A2  0000              add [eax],al
000243A4  0100              add [eax],eax
000243A6  0000              add [eax],al
000243A8  0200              add al,[eax]
000243AA  0000              add [eax],al
000243AC  D0                db 0xd0
000243AD  360200            add al,[ss:eax]
000243B0  D0                db 0xd0
000243B1  360000            add [ss:eax],al
000243B4  0809              or [ecx],cl
000243B6  0000              add [eax],al
000243B8  0000              add [eax],al
000243BA  0000              add [eax],al
000243BC  0000              add [eax],al
000243BE  0000              add [eax],al
000243C0  0400              add al,0x0
000243C2  0000              add [eax],al
000243C4  0000              add [eax],al
000243C6  0000              add [eax],al
000243C8  2300              and eax,[eax]
000243CA  0000              add [eax],al
000243CC  0100              add [eax],eax
000243CE  0000              add [eax],al
000243D0  0300              add eax,[eax]
000243D2  0000              add [eax],al
000243D4  004002            add [eax+0x2],al
000243D7  0000              add [eax],al
000243D9  40                inc eax
000243DA  0000              add [eax],al
000243DC  C402              les eax,[edx]
000243DE  0000              add [eax],al
000243E0  0000              add [eax],al
000243E2  0000              add [eax],al
000243E4  0000              add [eax],al
000243E6  0000              add [eax],al
000243E8  2000              and [eax],al
000243EA  0000              add [eax],al
000243EC  0000              add [eax],al
000243EE  0000              add [eax],al
000243F0  2900              sub [eax],eax
000243F2  0000              add [eax],al
000243F4  0800              or [eax],al
000243F6  0000              add [eax],al
000243F8  0300              add eax,[eax]
000243FA  0000              add [eax],al
000243FC  E042              loopne 0x24440
000243FE  0200              add al,[eax]
00024400  C44200            les eax,[edx+0x0]
00024403  002C50            add [eax+edx*2],ch
00024406  0100              add [eax],eax
00024408  0000              add [eax],al
0002440A  0000              add [eax],al
0002440C  0000              add [eax],al
0002440E  0000              add [eax],al
00024410  2000              and [eax],al
00024412  0000              add [eax],al
00024414  0000              add [eax],al
00024416  0000              add [eax],al
00024418  2E0000            add [cs:eax],al
0002441B  0001              add [ecx],al
0002441D  0000              add [eax],al
0002441F  0030              add [eax],dh
00024421  0000              add [eax],al
00024423  0000              add [eax],al
00024425  0000              add [eax],al
00024427  00C4              add ah,al
00024429  42                inc edx
0002442A  0000              add [eax],al
0002442C  2A00              sub al,[eax]
0002442E  0000              add [eax],al
00024430  0000              add [eax],al
00024432  0000              add [eax],al
00024434  0000              add [eax],al
00024436  0000              add [eax],al
00024438  0100              add [eax],eax
0002443A  0000              add [eax],al
0002443C  0100              add [eax],eax
0002443E  0000              add [eax],al
00024440  0100              add [eax],eax
00024442  0000              add [eax],al
00024444  0300              add eax,[eax]
00024446  0000              add [eax],al
00024448  0000              add [eax],al
0002444A  0000              add [eax],al
0002444C  0000              add [eax],al
0002444E  0000              add [eax],al
00024450  EE                out dx,al
00024451  42                inc edx
00024452  0000              add [eax],al
00024454  37                aaa
00024455  0000              add [eax],al
00024457  0000              add [eax],al
00024459  0000              add [eax],al
0002445B  0000              add [eax],al
0002445D  0000              add [eax],al
0002445F  0001              add [ecx],al
00024461  0000              add [eax],al
00024463  0000              add [eax],al
00024465  0000              add [eax],al
00024467  00                db 0x00
