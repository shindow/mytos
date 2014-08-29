00020400  668CD8            mov ax,ds
00020403  8ED0              mov ss,ax
00020405  8EE0              mov fs,ax
00020407  8EE8              mov gs,ax
00020409  BC006A0200        mov esp,0x26a00
0002040E  0F0105D87C0300    sgdt [dword 0x37cd8]
00020415  E82E000000        call dword 0x20448
0002041A  0F0115D87C0300    lgdt [dword 0x37cd8]
00020421  0F011D00820200    lidt [dword 0x28200]
00020428  8B2508850300      mov esp,[dword 0x38508]
0002042E  0FA9              pop gs
00020430  0FA1              pop fs
00020432  07                pop es
00020433  1F                pop ds
00020434  61                popad
00020435  CF                iretd
00020436  0F20E0            mov eax,cr4
00020439  0D00020000        or eax,0x200
0002043E  0F22E0            mov cr4,eax
00020441  D92D20470200      fldcw [dword 0x24720]
00020447  C3                ret
00020448  55                push ebp
00020449  89E5              mov ebp,esp
0002044B  83EC18            sub esp,byte +0x18
0002044E  C705008503000000  mov dword [dword 0x38500],0x0
         -0000
00020458  C705207A03002003  mov dword [dword 0x37a20],0x320
         -0000
00020462  C705249A03000000  mov dword [dword 0x39a24],0x0
         -0000
0002046C  C6050682020000    mov byte [dword 0x28206],0x0
00020473  C6050585030000    mov byte [dword 0x38505],0x0
0002047A  C6050485030000    mov byte [dword 0x38504],0x0
00020481  C705108202000000  mov dword [dword 0x28210],0x0
         -0000
0002048B  C705E07C03000000  mov dword [dword 0x37ce0],0x0
         -0000
00020495  E876180000        call dword 0x21d10
0002049A  E8CD1D0000        call dword 0x2226c
0002049F  C704249C330200    mov dword [esp],0x2339c
000204A6  E8CB120000        call dword 0x21776
000204AB  E860100000        call dword 0x21510
000204B0  C70424B9330200    mov dword [esp],0x233b9
000204B7  E8BA120000        call dword 0x21776
000204BC  E86B050000        call dword 0x20a2c
000204C1  C70424CD330200    mov dword [esp],0x233cd
000204C8  E8A9120000        call dword 0x21776
000204CD  E8F2240000        call dword 0x229c4
000204D2  E82D1C0000        call dword 0x22104
000204D7  C70424E8330200    mov dword [esp],0x233e8
000204DE  E893120000        call dword 0x21776
000204E3  E838000000        call dword 0x20520
000204E8  C7042401340200    mov dword [esp],0x23401
000204EF  E882120000        call dword 0x21776
000204F4  E85F0A0000        call dword 0x20f58
000204F9  C704241F340200    mov dword [esp],0x2341f
00020500  E871120000        call dword 0x21776
00020505  E8822E0000        call dword 0x2338c
0002050A  A1207A0300        mov eax,[0x37a20]
0002050F  890424            mov [esp],eax
00020512  E841220000        call dword 0x22758
00020517  E821270000        call dword 0x22c3d
0002051C  C9                leave
0002051D  C3                ret
0002051E  90                nop
0002051F  90                nop
00020520  55                push ebp
00020521  89E5              mov ebp,esp
00020523  83EC28            sub esp,byte +0x28
00020526  C745F420850300    mov dword [ebp-0xc],0x38520
0002052D  C705088503002085  mov dword [dword 0x38508],0x38520
         -0300
00020537  BA4B270200        mov edx,0x2274b
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
0002058E  E81B1E0000        call dword 0x223ae
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
000205D3  A1E07C0300        mov eax,[0x37ce0]
000205D8  83C001            add eax,byte +0x1
000205DB  A3E07C0300        mov [0x37ce0],eax
000205E0  8345F470          add dword [ebp-0xc],byte +0x70
000205E4  BA751A0200        mov edx,0x21a75
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
0002063B  E86E1D0000        call dword 0x223ae
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
00020680  A110820200        mov eax,[0x28210]
00020685  83C001            add eax,byte +0x1
00020688  A310820200        mov [0x28210],eax
0002068D  C705209A03000000  mov dword [dword 0x39a20],0x0
         -0000
00020697  C9                leave
00020698  C3                ret
00020699  55                push ebp
0002069A  89E5              mov ebp,esp
0002069C  83EC08            sub esp,byte +0x8
0002069F  A108850300        mov eax,[0x38508]
000206A4  C7404401000000    mov dword [eax+0x44],0x1
000206AB  A108850300        mov eax,[0x38508]
000206B0  8B4064            mov eax,[eax+0x64]
000206B3  83F801            cmp eax,byte +0x1
000206B6  0F8484000000      jz dword 0x20740
000206BC  A108850300        mov eax,[0x38508]
000206C1  A3CC7C0300        mov [0x37ccc],eax
000206C6  A108850300        mov eax,[0x38508]
000206CB  89C2              mov edx,eax
000206CD  B820850300        mov eax,0x38520
000206D2  89D1              mov ecx,edx
000206D4  29C1              sub ecx,eax
000206D6  89C8              mov eax,ecx
000206D8  C1F804            sar eax,0x4
000206DB  69C0B76DDBB6      imul eax,eax,dword 0xb6db6db7
000206E1  8B0D10820200      mov ecx,[dword 0x28210]
000206E7  8B15E07C0300      mov edx,[dword 0x37ce0]
000206ED  8D1411            lea edx,[ecx+edx]
000206F0  83EA01            sub edx,byte +0x1
000206F3  39D0              cmp eax,edx
000206F5  750C              jnz 0x20703
000206F7  C705088503002085  mov dword [dword 0x38508],0x38520
         -0300
00020701  EB0D              jmp short 0x20710
00020703  A108850300        mov eax,[0x38508]
00020708  83C070            add eax,byte +0x70
0002070B  A308850300        mov [0x38508],eax
00020710  A108850300        mov eax,[0x38508]
00020715  8B4060            mov eax,[eax+0x60]
00020718  83F801            cmp eax,byte +0x1
0002071B  7505              jnz 0x20722
0002071D  E877FFFFFF        call dword 0x20699
00020722  A108850300        mov eax,[0x38508]
00020727  8B4068            mov eax,[eax+0x68]
0002072A  83F801            cmp eax,byte +0x1
0002072D  7505              jnz 0x20734
0002072F  E865FFFFFF        call dword 0x20699
00020734  C705209A03000100  mov dword [dword 0x39a20],0x1
         -0000
0002073E  EB01              jmp short 0x20741
00020740  90                nop
00020741  C9                leave
00020742  C3                ret
00020743  55                push ebp
00020744  89E5              mov ebp,esp
00020746  83EC28            sub esp,byte +0x28
00020749  C745F000000000    mov dword [ebp-0x10],0x0
00020750  C745F420850300    mov dword [ebp-0xc],0x38520
00020757  EB17              jmp short 0x20770
00020759  8B45F4            mov eax,[ebp-0xc]
0002075C  8B4068            mov eax,[eax+0x68]
0002075F  85C0              test eax,eax
00020761  7409              jz 0x2076c
00020763  C745F001000000    mov dword [ebp-0x10],0x1
0002076A  EB31              jmp short 0x2079d
0002076C  8345F470          add dword [ebp-0xc],byte +0x70
00020770  8B55F4            mov edx,[ebp-0xc]
00020773  B820850300        mov eax,0x38520
00020778  89D1              mov ecx,edx
0002077A  29C1              sub ecx,eax
0002077C  89C8              mov eax,ecx
0002077E  C1F804            sar eax,0x4
00020781  69C0B76DDBB6      imul eax,eax,dword 0xb6db6db7
00020787  8B0DE07C0300      mov ecx,[dword 0x37ce0]
0002078D  8B1510820200      mov edx,[dword 0x28210]
00020793  8D1411            lea edx,[ecx+edx]
00020796  83EA01            sub edx,byte +0x1
00020799  39D0              cmp eax,edx
0002079B  72BC              jc 0x20759
0002079D  837DF000          cmp dword [ebp-0x10],byte +0x0
000207A1  753E              jnz 0x207e1
000207A3  8345F470          add dword [ebp-0xc],byte +0x70
000207A7  837D0C01          cmp dword [ebp+0xc],byte +0x1
000207AB  7406              jz 0x207b3
000207AD  837D0C00          cmp dword [ebp+0xc],byte +0x0
000207B1  750F              jnz 0x207c2
000207B3  A1E07C0300        mov eax,[0x37ce0]
000207B8  83C001            add eax,byte +0x1
000207BB  A3E07C0300        mov [0x37ce0],eax
000207C0  EB1F              jmp short 0x207e1
000207C2  837D0C03          cmp dword [ebp+0xc],byte +0x3
000207C6  750F              jnz 0x207d7
000207C8  A110820200        mov eax,[0x28210]
000207CD  83C001            add eax,byte +0x1
000207D0  A310820200        mov [0x28210],eax
000207D5  EB0A              jmp short 0x207e1
000207D7  B800000000        mov eax,0x0
000207DC  E989010000        jmp dword 0x2096a
000207E1  837D0C01          cmp dword [ebp+0xc],byte +0x1
000207E5  756E              jnz 0x20855
000207E7  8B45F4            mov eax,[ebp-0xc]
000207EA  C7403431000000    mov dword [eax+0x34],0x31
000207F1  8B45F4            mov eax,[ebp-0xc]
000207F4  C7400C39000000    mov dword [eax+0xc],0x39
000207FB  8B45F4            mov eax,[ebp-0xc]
000207FE  C7400839000000    mov dword [eax+0x8],0x39
00020805  8B45F4            mov eax,[ebp-0xc]
00020808  C70039000000      mov dword [eax],0x39
0002080E  8B45F4            mov eax,[ebp-0xc]
00020811  C7400439000000    mov dword [eax+0x4],0x39
00020818  8B45F4            mov eax,[ebp-0xc]
0002081B  C7404039000000    mov dword [eax+0x40],0x39
00020822  8B45F4            mov eax,[ebp-0xc]
00020825  C7403802120000    mov dword [eax+0x38],0x1202
0002082C  C7042400040000    mov dword [esp],0x400
00020833  E8761B0000        call dword 0x223ae
00020838  8D9000040000      lea edx,[eax+0x400]
0002083E  8B45F4            mov eax,[ebp-0xc]
00020841  89501C            mov [eax+0x1c],edx
00020844  8B45F4            mov eax,[ebp-0xc]
00020847  8B501C            mov edx,[eax+0x1c]
0002084A  8B45F4            mov eax,[ebp-0xc]
0002084D  89503C            mov [eax+0x3c],edx
00020850  E9DF000000        jmp dword 0x20934
00020855  837D0C03          cmp dword [ebp+0xc],byte +0x3
00020859  756B              jnz 0x208c6
0002085B  8B45F4            mov eax,[ebp-0xc]
0002085E  C740341B000000    mov dword [eax+0x34],0x1b
00020865  8B45F4            mov eax,[ebp-0xc]
00020868  C7400C23000000    mov dword [eax+0xc],0x23
0002086F  8B45F4            mov eax,[ebp-0xc]
00020872  C7400823000000    mov dword [eax+0x8],0x23
00020879  8B45F4            mov eax,[ebp-0xc]
0002087C  C70023000000      mov dword [eax],0x23
00020882  8B45F4            mov eax,[ebp-0xc]
00020885  C7400423000000    mov dword [eax+0x4],0x23
0002088C  8B45F4            mov eax,[ebp-0xc]
0002088F  C7404023000000    mov dword [eax+0x40],0x23
00020896  8B45F4            mov eax,[ebp-0xc]
00020899  C7403802020000    mov dword [eax+0x38],0x202
000208A0  C7042400100000    mov dword [esp],0x1000
000208A7  E8351A0000        call dword 0x222e1
000208AC  8D9000100000      lea edx,[eax+0x1000]
000208B2  8B45F4            mov eax,[ebp-0xc]
000208B5  89501C            mov [eax+0x1c],edx
000208B8  8B45F4            mov eax,[ebp-0xc]
000208BB  8B501C            mov edx,[eax+0x1c]
000208BE  8B45F4            mov eax,[ebp-0xc]
000208C1  89503C            mov [eax+0x3c],edx
000208C4  EB6E              jmp short 0x20934
000208C6  837D0C00          cmp dword [ebp+0xc],byte +0x0
000208CA  7561              jnz 0x2092d
000208CC  8B45F4            mov eax,[ebp-0xc]
000208CF  C7403408000000    mov dword [eax+0x34],0x8
000208D6  8B45F4            mov eax,[ebp-0xc]
000208D9  C7400C10000000    mov dword [eax+0xc],0x10
000208E0  8B45F4            mov eax,[ebp-0xc]
000208E3  C7400810000000    mov dword [eax+0x8],0x10
000208EA  8B45F4            mov eax,[ebp-0xc]
000208ED  C70010000000      mov dword [eax],0x10
000208F3  8B45F4            mov eax,[ebp-0xc]
000208F6  C7400410000000    mov dword [eax+0x4],0x10
000208FD  8B45F4            mov eax,[ebp-0xc]
00020900  C7404010000000    mov dword [eax+0x40],0x10
00020907  C7042400040000    mov dword [esp],0x400
0002090E  E89B1A0000        call dword 0x223ae
00020913  8D9000040000      lea edx,[eax+0x400]
00020919  8B45F4            mov eax,[ebp-0xc]
0002091C  89501C            mov [eax+0x1c],edx
0002091F  8B45F4            mov eax,[ebp-0xc]
00020922  8B501C            mov edx,[eax+0x1c]
00020925  8B45F4            mov eax,[ebp-0xc]
00020928  89503C            mov [eax+0x3c],edx
0002092B  EB07              jmp short 0x20934
0002092D  B800000000        mov eax,0x0
00020932  EB36              jmp short 0x2096a
00020934  8B45F4            mov eax,[ebp-0xc]
00020937  8B5508            mov edx,[ebp+0x8]
0002093A  895030            mov [eax+0x30],edx
0002093D  8B45F4            mov eax,[ebp-0xc]
00020940  C7404400000000    mov dword [eax+0x44],0x0
00020947  8B45F4            mov eax,[ebp-0xc]
0002094A  C7406000000000    mov dword [eax+0x60],0x0
00020951  8B45F4            mov eax,[ebp-0xc]
00020954  C7406800000000    mov dword [eax+0x68],0x0
0002095B  8B45F4            mov eax,[ebp-0xc]
0002095E  C7406400000000    mov dword [eax+0x64],0x0
00020965  B801000000        mov eax,0x1
0002096A  C9                leave
0002096B  C3                ret
0002096C  55                push ebp
0002096D  89E5              mov ebp,esp
0002096F  83EC10            sub esp,byte +0x10
00020972  C745FC20850300    mov dword [ebp-0x4],0x38520
00020979  EB1D              jmp short 0x20998
0002097B  8B45FC            mov eax,[ebp-0x4]
0002097E  3B4508            cmp eax,[ebp+0x8]
00020981  7511              jnz 0x20994
00020983  8B4508            mov eax,[ebp+0x8]
00020986  C7406801000000    mov dword [eax+0x68],0x1
0002098D  B801000000        mov eax,0x1
00020992  EB36              jmp short 0x209ca
00020994  8345FC70          add dword [ebp-0x4],byte +0x70
00020998  8B55FC            mov edx,[ebp-0x4]
0002099B  B820850300        mov eax,0x38520
000209A0  89D1              mov ecx,edx
000209A2  29C1              sub ecx,eax
000209A4  89C8              mov eax,ecx
000209A6  C1F804            sar eax,0x4
000209A9  69C0B76DDBB6      imul eax,eax,dword 0xb6db6db7
000209AF  8B0DE07C0300      mov ecx,[dword 0x37ce0]
000209B5  8B1510820200      mov edx,[dword 0x28210]
000209BB  8D1411            lea edx,[ecx+edx]
000209BE  83EA01            sub edx,byte +0x1
000209C1  39D0              cmp eax,edx
000209C3  72B6              jc 0x2097b
000209C5  B800000000        mov eax,0x0
000209CA  C9                leave
000209CB  C3                ret
000209CC  55                push ebp
000209CD  89E5              mov ebp,esp
000209CF  83EC10            sub esp,byte +0x10
000209D2  C745FC20850300    mov dword [ebp-0x4],0x38520
000209D9  EB1D              jmp short 0x209f8
000209DB  8B45FC            mov eax,[ebp-0x4]
000209DE  3B4508            cmp eax,[ebp+0x8]
000209E1  7511              jnz 0x209f4
000209E3  8B4508            mov eax,[ebp+0x8]
000209E6  C7406001000000    mov dword [eax+0x60],0x1
000209ED  B801000000        mov eax,0x1
000209F2  EB36              jmp short 0x20a2a
000209F4  8345FC70          add dword [ebp-0x4],byte +0x70
000209F8  8B55FC            mov edx,[ebp-0x4]
000209FB  B820850300        mov eax,0x38520
00020A00  89D1              mov ecx,edx
00020A02  29C1              sub ecx,eax
00020A04  89C8              mov eax,ecx
00020A06  C1F804            sar eax,0x4
00020A09  69C0B76DDBB6      imul eax,eax,dword 0xb6db6db7
00020A0F  8B0DE07C0300      mov ecx,[dword 0x37ce0]
00020A15  8B1510820200      mov edx,[dword 0x28210]
00020A1B  8D1411            lea edx,[ecx+edx]
00020A1E  83EA01            sub edx,byte +0x1
00020A21  39D0              cmp eax,edx
00020A23  72B6              jc 0x209db
00020A25  B800000000        mov eax,0x0
00020A2A  C9                leave
00020A2B  C3                ret
00020A2C  55                push ebp
00020A2D  89E5              mov ebp,esp
00020A2F  83EC28            sub esp,byte +0x28
00020A32  B8D87C0300        mov eax,0x37cd8
00020A37  0FB700            movzx eax,word [eax]
00020A3A  0FB7C0            movzx eax,ax
00020A3D  83C001            add eax,byte +0x1
00020A40  89C1              mov ecx,eax
00020A42  B8DA7C0300        mov eax,0x37cda
00020A47  8B10              mov edx,[eax]
00020A49  B820720300        mov eax,0x37220
00020A4E  894C2408          mov [esp+0x8],ecx
00020A52  89542404          mov [esp+0x4],edx
00020A56  890424            mov [esp],eax
00020A59  E87C0D0000        call dword 0x217da
00020A5E  C745F0DA7C0300    mov dword [ebp-0x10],0x37cda
00020A65  C745F4D87C0300    mov dword [ebp-0xc],0x37cd8
00020A6C  BA20720300        mov edx,0x37220
00020A71  8B45F0            mov eax,[ebp-0x10]
00020A74  8910              mov [eax],edx
00020A76  8B45F4            mov eax,[ebp-0xc]
00020A79  66C700FF07        mov word [eax],0x7ff
00020A7E  C745F002820200    mov dword [ebp-0x10],0x28202
00020A85  C745F400820200    mov dword [ebp-0xc],0x28200
00020A8C  BA007D0300        mov edx,0x37d00
00020A91  8B45F0            mov eax,[ebp-0x10]
00020A94  8910              mov [eax],edx
00020A96  8B45F4            mov eax,[ebp-0xc]
00020A99  66C700FF07        mov word [eax],0x7ff
00020A9E  C7442408D01B0200  mov dword [esp+0x8],0x21bd0
00020AA6  C74424048F000000  mov dword [esp+0x4],0x8f
00020AAE  C7042400000000    mov dword [esp],0x0
00020AB5  E840040000        call dword 0x20efa
00020ABA  C7442408E01B0200  mov dword [esp+0x8],0x21be0
00020AC2  C74424048F000000  mov dword [esp+0x4],0x8f
00020ACA  C7042401000000    mov dword [esp],0x1
00020AD1  E824040000        call dword 0x20efa
00020AD6  C7442408F01B0200  mov dword [esp+0x8],0x21bf0
00020ADE  C74424048F000000  mov dword [esp+0x4],0x8f
00020AE6  C7042402000000    mov dword [esp],0x2
00020AED  E808040000        call dword 0x20efa
00020AF2  C7442408001C0200  mov dword [esp+0x8],0x21c00
00020AFA  C74424048F000000  mov dword [esp+0x4],0x8f
00020B02  C7042403000000    mov dword [esp],0x3
00020B09  E8EC030000        call dword 0x20efa
00020B0E  C7442408101C0200  mov dword [esp+0x8],0x21c10
00020B16  C74424048F000000  mov dword [esp+0x4],0x8f
00020B1E  C7042404000000    mov dword [esp],0x4
00020B25  E8D0030000        call dword 0x20efa
00020B2A  C7442408201C0200  mov dword [esp+0x8],0x21c20
00020B32  C74424048F000000  mov dword [esp+0x4],0x8f
00020B3A  C7042405000000    mov dword [esp],0x5
00020B41  E8B4030000        call dword 0x20efa
00020B46  C7442408301C0200  mov dword [esp+0x8],0x21c30
00020B4E  C74424048F000000  mov dword [esp+0x4],0x8f
00020B56  C7042406000000    mov dword [esp],0x6
00020B5D  E898030000        call dword 0x20efa
00020B62  C7442408401C0200  mov dword [esp+0x8],0x21c40
00020B6A  C74424048F000000  mov dword [esp+0x4],0x8f
00020B72  C7042407000000    mov dword [esp],0x7
00020B79  E87C030000        call dword 0x20efa
00020B7E  C7442408501C0200  mov dword [esp+0x8],0x21c50
00020B86  C74424048F000000  mov dword [esp+0x4],0x8f
00020B8E  C7042408000000    mov dword [esp],0x8
00020B95  E860030000        call dword 0x20efa
00020B9A  C7442408601C0200  mov dword [esp+0x8],0x21c60
00020BA2  C74424048F000000  mov dword [esp+0x4],0x8f
00020BAA  C7042409000000    mov dword [esp],0x9
00020BB1  E844030000        call dword 0x20efa
00020BB6  C7442408701C0200  mov dword [esp+0x8],0x21c70
00020BBE  C74424048F000000  mov dword [esp+0x4],0x8f
00020BC6  C704240A000000    mov dword [esp],0xa
00020BCD  E828030000        call dword 0x20efa
00020BD2  C7442408801C0200  mov dword [esp+0x8],0x21c80
00020BDA  C74424048F000000  mov dword [esp+0x4],0x8f
00020BE2  C704240B000000    mov dword [esp],0xb
00020BE9  E80C030000        call dword 0x20efa
00020BEE  C7442408901C0200  mov dword [esp+0x8],0x21c90
00020BF6  C74424048F000000  mov dword [esp+0x4],0x8f
00020BFE  C704240C000000    mov dword [esp],0xc
00020C05  E8F0020000        call dword 0x20efa
00020C0A  C7442408A01C0200  mov dword [esp+0x8],0x21ca0
00020C12  C74424048F000000  mov dword [esp+0x4],0x8f
00020C1A  C704240D000000    mov dword [esp],0xd
00020C21  E8D4020000        call dword 0x20efa
00020C26  C7442408C01C0200  mov dword [esp+0x8],0x21cc0
00020C2E  C74424048F000000  mov dword [esp+0x4],0x8f
00020C36  C704240E000000    mov dword [esp],0xe
00020C3D  E8B8020000        call dword 0x20efa
00020C42  C7442408D01C0200  mov dword [esp+0x8],0x21cd0
00020C4A  C74424048F000000  mov dword [esp+0x4],0x8f
00020C52  C7042410000000    mov dword [esp],0x10
00020C59  E89C020000        call dword 0x20efa
00020C5E  C7442408E01C0200  mov dword [esp+0x8],0x21ce0
00020C66  C74424048F000000  mov dword [esp+0x4],0x8f
00020C6E  C7042411000000    mov dword [esp],0x11
00020C75  E880020000        call dword 0x20efa
00020C7A  C7442408F01C0200  mov dword [esp+0x8],0x21cf0
00020C82  C74424048F000000  mov dword [esp+0x4],0x8f
00020C8A  C7042412000000    mov dword [esp],0x12
00020C91  E864020000        call dword 0x20efa
00020C96  C7442408001D0200  mov dword [esp+0x8],0x21d00
00020C9E  C74424048F000000  mov dword [esp+0x4],0x8f
00020CA6  C7042413000000    mov dword [esp],0x13
00020CAD  E848020000        call dword 0x20efa
00020CB2  C7442408C01A0200  mov dword [esp+0x8],0x21ac0
00020CBA  C74424048E000000  mov dword [esp+0x4],0x8e
00020CC2  C7042420000000    mov dword [esp],0x20
00020CC9  E82C020000        call dword 0x20efa
00020CCE  C7442408501B0200  mov dword [esp+0x8],0x21b50
00020CD6  C74424048E000000  mov dword [esp+0x4],0x8e
00020CDE  C7042421000000    mov dword [esp],0x21
00020CE5  E810020000        call dword 0x20efa
00020CEA  C7442408801B0200  mov dword [esp+0x8],0x21b80
00020CF2  C74424048E000000  mov dword [esp+0x4],0x8e
00020CFA  C7042422000000    mov dword [esp],0x22
00020D01  E8F4010000        call dword 0x20efa
00020D06  C7442408801B0200  mov dword [esp+0x8],0x21b80
00020D0E  C74424048E000000  mov dword [esp+0x4],0x8e
00020D16  C7042423000000    mov dword [esp],0x23
00020D1D  E8D8010000        call dword 0x20efa
00020D22  C7442408801B0200  mov dword [esp+0x8],0x21b80
00020D2A  C74424048E000000  mov dword [esp+0x4],0x8e
00020D32  C7042424000000    mov dword [esp],0x24
00020D39  E8BC010000        call dword 0x20efa
00020D3E  C7442408801B0200  mov dword [esp+0x8],0x21b80
00020D46  C74424048E000000  mov dword [esp+0x4],0x8e
00020D4E  C7042425000000    mov dword [esp],0x25
00020D55  E8A0010000        call dword 0x20efa
00020D5A  C7442408801B0200  mov dword [esp+0x8],0x21b80
00020D62  C74424048E000000  mov dword [esp+0x4],0x8e
00020D6A  C7042426000000    mov dword [esp],0x26
00020D71  E884010000        call dword 0x20efa
00020D76  C7442408801B0200  mov dword [esp+0x8],0x21b80
00020D7E  C74424048E000000  mov dword [esp+0x4],0x8e
00020D86  C7042427000000    mov dword [esp],0x27
00020D8D  E868010000        call dword 0x20efa
00020D92  C7442408801B0200  mov dword [esp+0x8],0x21b80
00020D9A  C74424048E000000  mov dword [esp+0x4],0x8e
00020DA2  C7042428000000    mov dword [esp],0x28
00020DA9  E84C010000        call dword 0x20efa
00020DAE  C7442408A01B0200  mov dword [esp+0x8],0x21ba0
00020DB6  C74424048E000000  mov dword [esp+0x4],0x8e
00020DBE  C7042429000000    mov dword [esp],0x29
00020DC5  E830010000        call dword 0x20efa
00020DCA  C7442408A01B0200  mov dword [esp+0x8],0x21ba0
00020DD2  C74424048E000000  mov dword [esp+0x4],0x8e
00020DDA  C704242A000000    mov dword [esp],0x2a
00020DE1  E814010000        call dword 0x20efa
00020DE6  C7442408A01B0200  mov dword [esp+0x8],0x21ba0
00020DEE  C74424048E000000  mov dword [esp+0x4],0x8e
00020DF6  C704242B000000    mov dword [esp],0x2b
00020DFD  E8F8000000        call dword 0x20efa
00020E02  C7442408A01B0200  mov dword [esp+0x8],0x21ba0
00020E0A  C74424048E000000  mov dword [esp+0x4],0x8e
00020E12  C704242C000000    mov dword [esp],0x2c
00020E19  E8DC000000        call dword 0x20efa
00020E1E  C7442408D01B0200  mov dword [esp+0x8],0x21bd0
00020E26  C74424048E000000  mov dword [esp+0x4],0x8e
00020E2E  C704242D000000    mov dword [esp],0x2d
00020E35  E8C0000000        call dword 0x20efa
00020E3A  C7442408D01B0200  mov dword [esp+0x8],0x21bd0
00020E42  C74424048E000000  mov dword [esp+0x4],0x8e
00020E4A  C704242E000000    mov dword [esp],0x2e
00020E51  E8A4000000        call dword 0x20efa
00020E56  C7442408D01B0200  mov dword [esp+0x8],0x21bd0
00020E5E  C74424048E000000  mov dword [esp+0x4],0x8e
00020E66  C704242F000000    mov dword [esp],0x2f
00020E6D  E888000000        call dword 0x20efa
00020E72  C9                leave
00020E73  C3                ret
00020E74  55                push ebp
00020E75  89E5              mov ebp,esp
00020E77  83EC10            sub esp,byte +0x10
00020E7A  8B4508            mov eax,[ebp+0x8]
00020E7D  C1E003            shl eax,0x3
00020E80  05007D0300        add eax,0x37d00
00020E85  8945FC            mov [ebp-0x4],eax
00020E88  837D0800          cmp dword [ebp+0x8],byte +0x0
00020E8C  7907              jns 0x20e95
00020E8E  B8FFFFFFFF        mov eax,0xffffffff
00020E93  EB2A              jmp short 0x20ebf
00020E95  8B45FC            mov eax,[ebp-0x4]
00020E98  66C740020800      mov word [eax+0x2],0x8
00020E9E  8B450C            mov eax,[ebp+0xc]
00020EA1  0FB6D0            movzx edx,al
00020EA4  8B45FC            mov eax,[ebp-0x4]
00020EA7  668910            mov [eax],dx
00020EAA  8B450C            mov eax,[ebp+0xc]
00020EAD  C1E810            shr eax,0x10
00020EB0  0FB6D0            movzx edx,al
00020EB3  8B45FC            mov eax,[ebp-0x4]
00020EB6  66895006          mov [eax+0x6],dx
00020EBA  B800000000        mov eax,0x0
00020EBF  C9                leave
00020EC0  C3                ret
00020EC1  55                push ebp
00020EC2  89E5              mov ebp,esp
00020EC4  83EC10            sub esp,byte +0x10
00020EC7  8B4508            mov eax,[ebp+0x8]
00020ECA  C1E003            shl eax,0x3
00020ECD  05007D0300        add eax,0x37d00
00020ED2  8945FC            mov [ebp-0x4],eax
00020ED5  837D0800          cmp dword [ebp+0x8],byte +0x0
00020ED9  781C              js 0x20ef7
00020EDB  8B45FC            mov eax,[ebp-0x4]
00020EDE  66C740020000      mov word [eax+0x2],0x0
00020EE4  8B45FC            mov eax,[ebp-0x4]
00020EE7  66C7000000        mov word [eax],0x0
00020EEC  8B45FC            mov eax,[ebp-0x4]
00020EEF  66C740060000      mov word [eax+0x6],0x0
00020EF5  EB01              jmp short 0x20ef8
00020EF7  90                nop
00020EF8  C9                leave
00020EF9  C3                ret
00020EFA  55                push ebp
00020EFB  89E5              mov ebp,esp
00020EFD  83EC18            sub esp,byte +0x18
00020F00  8B5508            mov edx,[ebp+0x8]
00020F03  8B450C            mov eax,[ebp+0xc]
00020F06  8855EC            mov [ebp-0x14],dl
00020F09  8845E8            mov [ebp-0x18],al
00020F0C  0FB645EC          movzx eax,byte [ebp-0x14]
00020F10  C1E003            shl eax,0x3
00020F13  05007D0300        add eax,0x37d00
00020F18  8945F8            mov [ebp-0x8],eax
00020F1B  8B4510            mov eax,[ebp+0x10]
00020F1E  8945FC            mov [ebp-0x4],eax
00020F21  8B45FC            mov eax,[ebp-0x4]
00020F24  89C2              mov edx,eax
00020F26  8B45F8            mov eax,[ebp-0x8]
00020F29  668910            mov [eax],dx
00020F2C  8B45F8            mov eax,[ebp-0x8]
00020F2F  66C740020800      mov word [eax+0x2],0x8
00020F35  8B45F8            mov eax,[ebp-0x8]
00020F38  C6400400          mov byte [eax+0x4],0x0
00020F3C  8B45F8            mov eax,[ebp-0x8]
00020F3F  0FB655E8          movzx edx,byte [ebp-0x18]
00020F43  885005            mov [eax+0x5],dl
00020F46  8B45FC            mov eax,[ebp-0x4]
00020F49  C1E810            shr eax,0x10
00020F4C  89C2              mov edx,eax
00020F4E  8B45F8            mov eax,[ebp-0x8]
00020F51  66895006          mov [eax+0x6],dx
00020F55  C9                leave
00020F56  C3                ret
00020F57  90                nop
00020F58  55                push ebp
00020F59  89E5              mov ebp,esp
00020F5B  83EC28            sub esp,byte +0x28
00020F5E  E80F080000        call dword 0x21772
00020F63  C74424040B000000  mov dword [esp+0x4],0xb
00020F6B  C7042470000000    mov dword [esp],0x70
00020F72  E8D9070000        call dword 0x21750
00020F77  C7042471000000    mov dword [esp],0x71
00020F7E  E8DF070000        call dword 0x21762
00020F83  8845F7            mov [ebp-0x9],al
00020F86  C74424040B000000  mov dword [esp+0x4],0xb
00020F8E  C7042470000000    mov dword [esp],0x70
00020F95  E8B6070000        call dword 0x21750
00020F9A  0FB645F7          movzx eax,byte [ebp-0x9]
00020F9E  83C840            or eax,byte +0x40
00020FA1  0FB6C0            movzx eax,al
00020FA4  89442404          mov [esp+0x4],eax
00020FA8  C7042471000000    mov dword [esp],0x71
00020FAF  E89C070000        call dword 0x21750
00020FB4  E8BB070000        call dword 0x21774
00020FB9  C7042409000000    mov dword [esp],0x9
00020FC0  E825060000        call dword 0x215ea
00020FC5  C7042400000000    mov dword [esp],0x0
00020FCC  E819060000        call dword 0x215ea
00020FD1  C9                leave
00020FD2  C3                ret
00020FD3  55                push ebp
00020FD4  89E5              mov ebp,esp
00020FD6  5D                pop ebp
00020FD7  C3                ret
00020FD8  55                push ebp
00020FD9  89E5              mov ebp,esp
00020FDB  53                push ebx
00020FDC  83EC54            sub esp,byte +0x54
00020FDF  A100850300        mov eax,[0x38500]
00020FE4  8945D8            mov [ebp-0x28],eax
00020FE7  8B4DD8            mov ecx,[ebp-0x28]
00020FEA  BA89888888        mov edx,0x88888889
00020FEF  89C8              mov eax,ecx
00020FF1  F7E2              mul edx
00020FF3  89D0              mov eax,edx
00020FF5  C1E805            shr eax,0x5
00020FF8  8D148500000000    lea edx,[eax*4+0x0]
00020FFF  89D0              mov eax,edx
00021001  C1E004            shl eax,0x4
00021004  29D0              sub eax,edx
00021006  89CA              mov edx,ecx
00021008  29C2              sub edx,eax
0002100A  89D0              mov eax,edx
0002100C  8945DC            mov [ebp-0x24],eax
0002100F  8B45D8            mov eax,[ebp-0x28]
00021012  8945C4            mov [ebp-0x3c],eax
00021015  BA89888888        mov edx,0x88888889
0002101A  8B45C4            mov eax,[ebp-0x3c]
0002101D  F7E2              mul edx
0002101F  89D0              mov eax,edx
00021021  C1E805            shr eax,0x5
00021024  8945D8            mov [ebp-0x28],eax
00021027  8B4DD8            mov ecx,[ebp-0x28]
0002102A  BA89888888        mov edx,0x88888889
0002102F  89C8              mov eax,ecx
00021031  F7E2              mul edx
00021033  89D0              mov eax,edx
00021035  C1E805            shr eax,0x5
00021038  8D148500000000    lea edx,[eax*4+0x0]
0002103F  89D0              mov eax,edx
00021041  C1E004            shl eax,0x4
00021044  29D0              sub eax,edx
00021046  89CA              mov edx,ecx
00021048  29C2              sub edx,eax
0002104A  89D0              mov eax,edx
0002104C  8945E0            mov [ebp-0x20],eax
0002104F  8B45D8            mov eax,[ebp-0x28]
00021052  8945C4            mov [ebp-0x3c],eax
00021055  BA89888888        mov edx,0x88888889
0002105A  8B45C4            mov eax,[ebp-0x3c]
0002105D  F7E2              mul edx
0002105F  89D0              mov eax,edx
00021061  C1E805            shr eax,0x5
00021064  8945D8            mov [ebp-0x28],eax
00021067  8B4DD8            mov ecx,[ebp-0x28]
0002106A  BA89888888        mov edx,0x88888889
0002106F  89C8              mov eax,ecx
00021071  F7E2              mul edx
00021073  89D0              mov eax,edx
00021075  C1E805            shr eax,0x5
00021078  8D148500000000    lea edx,[eax*4+0x0]
0002107F  89D0              mov eax,edx
00021081  C1E004            shl eax,0x4
00021084  29D0              sub eax,edx
00021086  89CA              mov edx,ecx
00021088  29C2              sub edx,eax
0002108A  89D0              mov eax,edx
0002108C  8945E4            mov [ebp-0x1c],eax
0002108F  8B45D8            mov eax,[ebp-0x28]
00021092  8945C4            mov [ebp-0x3c],eax
00021095  BA89888888        mov edx,0x88888889
0002109A  8B45C4            mov eax,[ebp-0x3c]
0002109D  F7E2              mul edx
0002109F  89D0              mov eax,edx
000210A1  C1E805            shr eax,0x5
000210A4  8945D8            mov [ebp-0x28],eax
000210A7  8B4DD8            mov ecx,[ebp-0x28]
000210AA  BAABAAAAAA        mov edx,0xaaaaaaab
000210AF  89C8              mov eax,ecx
000210B1  F7E2              mul edx
000210B3  C1EA04            shr edx,0x4
000210B6  89D0              mov eax,edx
000210B8  01C0              add eax,eax
000210BA  01D0              add eax,edx
000210BC  C1E003            shl eax,0x3
000210BF  89CA              mov edx,ecx
000210C1  29C2              sub edx,eax
000210C3  8955E8            mov [ebp-0x18],edx
000210C6  8B45E0            mov eax,[ebp-0x20]
000210C9  8945EC            mov [ebp-0x14],eax
000210CC  0FB60509820200    movzx eax,byte [dword 0x28209]
000210D3  0FB6C0            movzx eax,al
000210D6  0345E4            add eax,[ebp-0x1c]
000210D9  8945F0            mov [ebp-0x10],eax
000210DC  0FB6050A820200    movzx eax,byte [dword 0x2820a]
000210E3  0FB6C0            movzx eax,al
000210E6  0345E8            add eax,[ebp-0x18]
000210E9  8945F4            mov [ebp-0xc],eax
000210EC  837DEC3B          cmp dword [ebp-0x14],byte +0x3b
000210F0  7E0B              jng 0x210fd
000210F2  8345F001          add dword [ebp-0x10],byte +0x1
000210F6  C745EC00000000    mov dword [ebp-0x14],0x0
000210FD  837DF03B          cmp dword [ebp-0x10],byte +0x3b
00021101  0F8E12020000      jng dword 0x21319
00021107  C744240409000000  mov dword [esp+0x4],0x9
0002110F  C7042470000000    mov dword [esp],0x70
00021116  E835060000        call dword 0x21750
0002111B  C7042471000000    mov dword [esp],0x71
00021122  E83B060000        call dword 0x21762
00021127  89C2              mov edx,eax
00021129  C0EA04            shr dl,0x4
0002112C  89D0              mov eax,edx
0002112E  C1E002            shl eax,0x2
00021131  01D0              add eax,edx
00021133  01C0              add eax,eax
00021135  89C3              mov ebx,eax
00021137  C7042471000000    mov dword [esp],0x71
0002113E  E81F060000        call dword 0x21762
00021143  83E00F            and eax,byte +0xf
00021146  8D0403            lea eax,[ebx+eax]
00021149  A20E820200        mov [0x2820e],al
0002114E  C744240408000000  mov dword [esp+0x4],0x8
00021156  C7042470000000    mov dword [esp],0x70
0002115D  E8EE050000        call dword 0x21750
00021162  C7042471000000    mov dword [esp],0x71
00021169  E8F4050000        call dword 0x21762
0002116E  89C2              mov edx,eax
00021170  C0EA04            shr dl,0x4
00021173  89D0              mov eax,edx
00021175  C1E002            shl eax,0x2
00021178  01D0              add eax,edx
0002117A  01C0              add eax,eax
0002117C  89C3              mov ebx,eax
0002117E  C7042471000000    mov dword [esp],0x71
00021185  E8D8050000        call dword 0x21762
0002118A  83E00F            and eax,byte +0xf
0002118D  8D0403            lea eax,[ebx+eax]
00021190  A20D820200        mov [0x2820d],al
00021195  C744240407000000  mov dword [esp+0x4],0x7
0002119D  C7042470000000    mov dword [esp],0x70
000211A4  E8A7050000        call dword 0x21750
000211A9  C7042471000000    mov dword [esp],0x71
000211B0  E8AD050000        call dword 0x21762
000211B5  89C2              mov edx,eax
000211B7  C0EA04            shr dl,0x4
000211BA  89D0              mov eax,edx
000211BC  C1E002            shl eax,0x2
000211BF  01D0              add eax,edx
000211C1  01C0              add eax,eax
000211C3  89C3              mov ebx,eax
000211C5  C7042471000000    mov dword [esp],0x71
000211CC  E891050000        call dword 0x21762
000211D1  83E00F            and eax,byte +0xf
000211D4  8D0403            lea eax,[ebx+eax]
000211D7  A20C820200        mov [0x2820c],al
000211DC  C744240406000000  mov dword [esp+0x4],0x6
000211E4  C7042470000000    mov dword [esp],0x70
000211EB  E860050000        call dword 0x21750
000211F0  C7042471000000    mov dword [esp],0x71
000211F7  E866050000        call dword 0x21762
000211FC  89C2              mov edx,eax
000211FE  C0EA04            shr dl,0x4
00021201  89D0              mov eax,edx
00021203  C1E002            shl eax,0x2
00021206  01D0              add eax,edx
00021208  01C0              add eax,eax
0002120A  89C3              mov ebx,eax
0002120C  C7042471000000    mov dword [esp],0x71
00021213  E84A050000        call dword 0x21762
00021218  83E00F            and eax,byte +0xf
0002121B  8D0403            lea eax,[ebx+eax]
0002121E  A20B820200        mov [0x2820b],al
00021223  C744240404000000  mov dword [esp+0x4],0x4
0002122B  C7042470000000    mov dword [esp],0x70
00021232  E819050000        call dword 0x21750
00021237  C7042471000000    mov dword [esp],0x71
0002123E  E81F050000        call dword 0x21762
00021243  89C2              mov edx,eax
00021245  C0EA04            shr dl,0x4
00021248  89D0              mov eax,edx
0002124A  C1E002            shl eax,0x2
0002124D  01D0              add eax,edx
0002124F  01C0              add eax,eax
00021251  89C3              mov ebx,eax
00021253  C7042471000000    mov dword [esp],0x71
0002125A  E803050000        call dword 0x21762
0002125F  83E00F            and eax,byte +0xf
00021262  8D0403            lea eax,[ebx+eax]
00021265  A20A820200        mov [0x2820a],al
0002126A  C744240402000000  mov dword [esp+0x4],0x2
00021272  C7042470000000    mov dword [esp],0x70
00021279  E8D2040000        call dword 0x21750
0002127E  C7042471000000    mov dword [esp],0x71
00021285  E8D8040000        call dword 0x21762
0002128A  89C2              mov edx,eax
0002128C  C0EA04            shr dl,0x4
0002128F  89D0              mov eax,edx
00021291  C1E002            shl eax,0x2
00021294  01D0              add eax,edx
00021296  01C0              add eax,eax
00021298  89C3              mov ebx,eax
0002129A  C7042471000000    mov dword [esp],0x71
000212A1  E8BC040000        call dword 0x21762
000212A6  83E00F            and eax,byte +0xf
000212A9  8D0403            lea eax,[ebx+eax]
000212AC  A209820200        mov [0x28209],al
000212B1  C744240400000000  mov dword [esp+0x4],0x0
000212B9  C7042470000000    mov dword [esp],0x70
000212C0  E88B040000        call dword 0x21750
000212C5  C7042471000000    mov dword [esp],0x71
000212CC  E891040000        call dword 0x21762
000212D1  89C2              mov edx,eax
000212D3  C0EA04            shr dl,0x4
000212D6  89D0              mov eax,edx
000212D8  C1E002            shl eax,0x2
000212DB  01D0              add eax,edx
000212DD  01C0              add eax,eax
000212DF  89C3              mov ebx,eax
000212E1  C7042471000000    mov dword [esp],0x71
000212E8  E875040000        call dword 0x21762
000212ED  83E00F            and eax,byte +0xf
000212F0  8D0403            lea eax,[ebx+eax]
000212F3  A208820200        mov [0x28208],al
000212F8  C745EC00000000    mov dword [ebp-0x14],0x0
000212FF  0FB60509820200    movzx eax,byte [dword 0x28209]
00021306  0FB6C0            movzx eax,al
00021309  8945F0            mov [ebp-0x10],eax
0002130C  0FB6050A820200    movzx eax,byte [dword 0x2820a]
00021313  0FB6C0            movzx eax,al
00021316  8945F4            mov [ebp-0xc],eax
00021319  A108850300        mov eax,[0x38508]
0002131E  C7406401000000    mov dword [eax+0x64],0x1
00021325  A1207A0300        mov eax,[0x37a20]
0002132A  8945D4            mov [ebp-0x2c],eax
0002132D  A1249A0300        mov eax,[0x39a24]
00021332  059E070000        add eax,0x79e
00021337  A3207A0300        mov [0x37a20],eax
0002133C  C7042434340200    mov dword [esp],0x23434
00021343  E82E040000        call dword 0x21776
00021348  0FB60506820200    movzx eax,byte [dword 0x28206]
0002134F  0FB6C0            movzx eax,al
00021352  890424            mov [esp],eax
00021355  E85D050000        call dword 0x218b7
0002135A  C7042436340200    mov dword [esp],0x23436
00021361  E810040000        call dword 0x21776
00021366  0FB60505850300    movzx eax,byte [dword 0x38505]
0002136D  0FB6C0            movzx eax,al
00021370  890424            mov [esp],eax
00021373  E83F050000        call dword 0x218b7
00021378  C7042436340200    mov dword [esp],0x23436
0002137F  E8F2030000        call dword 0x21776
00021384  0FB60504850300    movzx eax,byte [dword 0x38504]
0002138B  0FB6C0            movzx eax,al
0002138E  890424            mov [esp],eax
00021391  E821050000        call dword 0x218b7
00021396  C7042438340200    mov dword [esp],0x23438
0002139D  E8D4030000        call dword 0x21776
000213A2  8B45F4            mov eax,[ebp-0xc]
000213A5  890424            mov [esp],eax
000213A8  E80A050000        call dword 0x218b7
000213AD  C704243A340200    mov dword [esp],0x2343a
000213B4  E8BD030000        call dword 0x21776
000213B9  8B45F0            mov eax,[ebp-0x10]
000213BC  890424            mov [esp],eax
000213BF  E8F3040000        call dword 0x218b7
000213C4  C704243A340200    mov dword [esp],0x2343a
000213CB  E8A6030000        call dword 0x21776
000213D0  8B45EC            mov eax,[ebp-0x14]
000213D3  890424            mov [esp],eax
000213D6  E8DC040000        call dword 0x218b7
000213DB  C704243C340200    mov dword [esp],0x2343c
000213E2  E88F030000        call dword 0x21776
000213E7  0FB6050B820200    movzx eax,byte [dword 0x2820b]
000213EE  0FB6C0            movzx eax,al
000213F1  83F807            cmp eax,byte +0x7
000213F4  7769              ja 0x2145f
000213F6  8B048588340200    mov eax,[eax*4+0x23488]
000213FD  FFE0              jmp eax
000213FF  C704243F340200    mov dword [esp],0x2343f
00021406  E86B030000        call dword 0x21776
0002140B  EB52              jmp short 0x2145f
0002140D  C7042446340200    mov dword [esp],0x23446
00021414  E85D030000        call dword 0x21776
00021419  EB44              jmp short 0x2145f
0002141B  C704244D340200    mov dword [esp],0x2344d
00021422  E84F030000        call dword 0x21776
00021427  EB36              jmp short 0x2145f
00021429  C7042455340200    mov dword [esp],0x23455
00021430  E841030000        call dword 0x21776
00021435  EB28              jmp short 0x2145f
00021437  C704245F340200    mov dword [esp],0x2345f
0002143E  E833030000        call dword 0x21776
00021443  EB1A              jmp short 0x2145f
00021445  C7042468340200    mov dword [esp],0x23468
0002144C  E825030000        call dword 0x21776
00021451  EB0C              jmp short 0x2145f
00021453  C704246F340200    mov dword [esp],0x2346f
0002145A  E817030000        call dword 0x21776
0002145F  C7042478340200    mov dword [esp],0x23478
00021466  E80B030000        call dword 0x21776
0002146B  0FB6050E820200    movzx eax,byte [dword 0x2820e]
00021472  0FB6C0            movzx eax,al
00021475  890424            mov [esp],eax
00021478  E83A040000        call dword 0x218b7
0002147D  C704247D340200    mov dword [esp],0x2347d
00021484  E8ED020000        call dword 0x21776
00021489  0FB6050D820200    movzx eax,byte [dword 0x2820d]
00021490  0FB6C0            movzx eax,al
00021493  890424            mov [esp],eax
00021496  E81C040000        call dword 0x218b7
0002149B  C704247D340200    mov dword [esp],0x2347d
000214A2  E8CF020000        call dword 0x21776
000214A7  0FB6050C820200    movzx eax,byte [dword 0x2820c]
000214AE  0FB6C0            movzx eax,al
000214B1  890424            mov [esp],eax
000214B4  E8FE030000        call dword 0x218b7
000214B9  C704247F340200    mov dword [esp],0x2347f
000214C0  E8B1020000        call dword 0x21776
000214C5  8B45D4            mov eax,[ebp-0x2c]
000214C8  A3207A0300        mov [0x37a20],eax
000214CD  A108850300        mov eax,[0x38508]
000214D2  C7406400000000    mov dword [eax+0x64],0x0
000214D9  E901FBFFFF        jmp dword 0x20fdf
000214DE  55                push ebp
000214DF  89E5              mov ebp,esp
000214E1  5D                pop ebp
000214E2  C3                ret
000214E3  55                push ebp
000214E4  89E5              mov ebp,esp
000214E6  83EC18            sub esp,byte +0x18
000214E9  A100850300        mov eax,[0x38500]
000214EE  83C001            add eax,byte +0x1
000214F1  A300850300        mov [0x38500],eax
000214F6  E89EF1FFFF        call dword 0x20699
000214FB  C7042400000000    mov dword [esp],0x0
00021502  E807020000        call dword 0x2170e
00021507  C9                leave
00021508  C3                ret
00021509  55                push ebp
0002150A  89E5              mov ebp,esp
0002150C  5D                pop ebp
0002150D  C3                ret
0002150E  90                nop
0002150F  90                nop
00021510  55                push ebp
00021511  89E5              mov ebp,esp
00021513  83EC18            sub esp,byte +0x18
00021516  C744240411000000  mov dword [esp+0x4],0x11
0002151E  C7042420000000    mov dword [esp],0x20
00021525  E826020000        call dword 0x21750
0002152A  C744240411000000  mov dword [esp+0x4],0x11
00021532  C70424A0000000    mov dword [esp],0xa0
00021539  E812020000        call dword 0x21750
0002153E  C744240420000000  mov dword [esp+0x4],0x20
00021546  C7042421000000    mov dword [esp],0x21
0002154D  E8FE010000        call dword 0x21750
00021552  C744240428000000  mov dword [esp+0x4],0x28
0002155A  C70424A1000000    mov dword [esp],0xa1
00021561  E8EA010000        call dword 0x21750
00021566  C744240404000000  mov dword [esp+0x4],0x4
0002156E  C7042421000000    mov dword [esp],0x21
00021575  E8D6010000        call dword 0x21750
0002157A  C744240402000000  mov dword [esp+0x4],0x2
00021582  C70424A1000000    mov dword [esp],0xa1
00021589  E8C2010000        call dword 0x21750
0002158E  C744240401000000  mov dword [esp+0x4],0x1
00021596  C7042421000000    mov dword [esp],0x21
0002159D  E8AE010000        call dword 0x21750
000215A2  C744240401000000  mov dword [esp+0x4],0x1
000215AA  C70424A1000000    mov dword [esp],0xa1
000215B1  E89A010000        call dword 0x21750
000215B6  C7442404FB000000  mov dword [esp+0x4],0xfb
000215BE  C7042421000000    mov dword [esp],0x21
000215C5  E886010000        call dword 0x21750
000215CA  C7442404FF000000  mov dword [esp+0x4],0xff
000215D2  C70424A1000000    mov dword [esp],0xa1
000215D9  E872010000        call dword 0x21750
000215DE  C9                leave
000215DF  C3                ret
000215E0  55                push ebp
000215E1  89E5              mov ebp,esp
000215E3  5D                pop ebp
000215E4  C3                ret
000215E5  55                push ebp
000215E6  89E5              mov ebp,esp
000215E8  5D                pop ebp
000215E9  C3                ret
000215EA  55                push ebp
000215EB  89E5              mov ebp,esp
000215ED  53                push ebx
000215EE  83EC14            sub esp,byte +0x14
000215F1  837D0800          cmp dword [ebp+0x8],byte +0x0
000215F5  787D              js 0x21674
000215F7  837D080F          cmp dword [ebp+0x8],byte +0xf
000215FB  7F7A              jg 0x21677
000215FD  837D0807          cmp dword [ebp+0x8],byte +0x7
00021601  7E3A              jng 0x2163d
00021603  8B4508            mov eax,[ebp+0x8]
00021606  83E808            sub eax,byte +0x8
00021609  BA01000000        mov edx,0x1
0002160E  89D3              mov ebx,edx
00021610  89C1              mov ecx,eax
00021612  D3E3              shl ebx,cl
00021614  89D8              mov eax,ebx
00021616  89C3              mov ebx,eax
00021618  F7D3              not ebx
0002161A  C70424A1000000    mov dword [esp],0xa1
00021621  E83C010000        call dword 0x21762
00021626  21D8              and eax,ebx
00021628  0FB6C0            movzx eax,al
0002162B  89442404          mov [esp+0x4],eax
0002162F  C70424A1000000    mov dword [esp],0xa1
00021636  E815010000        call dword 0x21750
0002163B  EB3B              jmp short 0x21678
0002163D  8B4508            mov eax,[ebp+0x8]
00021640  BA01000000        mov edx,0x1
00021645  89D3              mov ebx,edx
00021647  89C1              mov ecx,eax
00021649  D3E3              shl ebx,cl
0002164B  89D8              mov eax,ebx
0002164D  89C3              mov ebx,eax
0002164F  F7D3              not ebx
00021651  C7042421000000    mov dword [esp],0x21
00021658  E805010000        call dword 0x21762
0002165D  21D8              and eax,ebx
0002165F  0FB6C0            movzx eax,al
00021662  89442404          mov [esp+0x4],eax
00021666  C7042421000000    mov dword [esp],0x21
0002166D  E8DE000000        call dword 0x21750
00021672  EB04              jmp short 0x21678
00021674  90                nop
00021675  EB01              jmp short 0x21678
00021677  90                nop
00021678  83C414            add esp,byte +0x14
0002167B  5B                pop ebx
0002167C  5D                pop ebp
0002167D  C3                ret
0002167E  55                push ebp
0002167F  89E5              mov ebp,esp
00021681  53                push ebx
00021682  83EC14            sub esp,byte +0x14
00021685  837D0800          cmp dword [ebp+0x8],byte +0x0
00021689  7879              js 0x21704
0002168B  837D080F          cmp dword [ebp+0x8],byte +0xf
0002168F  7F76              jg 0x21707
00021691  837D0807          cmp dword [ebp+0x8],byte +0x7
00021695  7E38              jng 0x216cf
00021697  8B4508            mov eax,[ebp+0x8]
0002169A  83E808            sub eax,byte +0x8
0002169D  BA01000000        mov edx,0x1
000216A2  89D3              mov ebx,edx
000216A4  89C1              mov ecx,eax
000216A6  D3E3              shl ebx,cl
000216A8  89D8              mov eax,ebx
000216AA  89C3              mov ebx,eax
000216AC  C70424A1000000    mov dword [esp],0xa1
000216B3  E8AA000000        call dword 0x21762
000216B8  09D8              or eax,ebx
000216BA  0FB6C0            movzx eax,al
000216BD  89442404          mov [esp+0x4],eax
000216C1  C70424A1000000    mov dword [esp],0xa1
000216C8  E883000000        call dword 0x21750
000216CD  EB39              jmp short 0x21708
000216CF  8B4508            mov eax,[ebp+0x8]
000216D2  BA01000000        mov edx,0x1
000216D7  89D3              mov ebx,edx
000216D9  89C1              mov ecx,eax
000216DB  D3E3              shl ebx,cl
000216DD  89D8              mov eax,ebx
000216DF  89C3              mov ebx,eax
000216E1  C7042421000000    mov dword [esp],0x21
000216E8  E875000000        call dword 0x21762
000216ED  09D8              or eax,ebx
000216EF  0FB6C0            movzx eax,al
000216F2  89442404          mov [esp+0x4],eax
000216F6  C7042421000000    mov dword [esp],0x21
000216FD  E84E000000        call dword 0x21750
00021702  EB04              jmp short 0x21708
00021704  90                nop
00021705  EB01              jmp short 0x21708
00021707  90                nop
00021708  83C414            add esp,byte +0x14
0002170B  5B                pop ebx
0002170C  5D                pop ebp
0002170D  C3                ret
0002170E  55                push ebp
0002170F  89E5              mov ebp,esp
00021711  83EC18            sub esp,byte +0x18
00021714  837D0807          cmp dword [ebp+0x8],byte +0x7
00021718  7E14              jng 0x2172e
0002171A  C744240420000000  mov dword [esp+0x4],0x20
00021722  C70424A0000000    mov dword [esp],0xa0
00021729  E822000000        call dword 0x21750
0002172E  C744240420000000  mov dword [esp+0x4],0x20
00021736  C7042420000000    mov dword [esp],0x20
0002173D  E80E000000        call dword 0x21750
00021742  C9                leave
00021743  C3                ret
00021744  90                nop
00021745  90                nop
00021746  90                nop
00021747  90                nop
00021748  90                nop
00021749  90                nop
0002174A  90                nop
0002174B  90                nop
0002174C  90                nop
0002174D  90                nop
0002174E  90                nop
0002174F  90                nop
00021750  55                push ebp
00021751  89E5              mov ebp,esp
00021753  8A44240C          mov al,[esp+0xc]
00021757  668B542408        mov dx,[esp+0x8]
0002175C  EE                out dx,al
0002175D  90                nop
0002175E  90                nop
0002175F  90                nop
00021760  5D                pop ebp
00021761  C3                ret
00021762  55                push ebp
00021763  89E5              mov ebp,esp
00021765  668B542408        mov dx,[esp+0x8]
0002176A  31C0              xor eax,eax
0002176C  EC                in al,dx
0002176D  90                nop
0002176E  90                nop
0002176F  90                nop
00021770  5D                pop ebp
00021771  C3                ret
00021772  FA                cli
00021773  C3                ret
00021774  FB                sti
00021775  C3                ret
00021776  55                push ebp
00021777  89E5              mov ebp,esp
00021779  31C0              xor eax,eax
0002177B  31DB              xor ebx,ebx
0002177D  31C9              xor ecx,ecx
0002177F  8B742408          mov esi,[esp+0x8]
00021783  4E                dec esi
00021784  BF00800B00        mov edi,0xb8000
00021789  B1A0              mov cl,0xa0
0002178B  668B1D207A0300    mov bx,[dword 0x37a20]
00021792  66D1E3            shl bx,1
00021795  01DF              add edi,ebx
00021797  46                inc esi
00021798  8A16              mov dl,[esi]
0002179A  80FA00            cmp dl,0x0
0002179D  742A              jz 0x217c9
0002179F  80FA0A            cmp dl,0xa
000217A2  7518              jnz 0x217bc
000217A4  89F8              mov eax,edi
000217A6  2D00800B00        sub eax,0xb8000
000217AB  88CD              mov ch,cl
000217AD  F6F1              div cl
000217AF  28E5              sub ch,ah
000217B1  31C0              xor eax,eax
000217B3  88E8              mov al,ch
000217B5  01C7              add edi,eax
000217B7  E9DBFFFFFF        jmp dword 0x21797
000217BC  8817              mov [edi],dl
000217BE  81C702000000      add edi,0x2
000217C4  E9CEFFFFFF        jmp dword 0x21797
000217C9  81EF00800B00      sub edi,0xb8000
000217CF  D1EF              shr edi,1
000217D1  66893D207A0300    mov [dword 0x37a20],di
000217D8  5D                pop ebp
000217D9  C3                ret
000217DA  55                push ebp
000217DB  31C9              xor ecx,ecx
000217DD  89E5              mov ebp,esp
000217DF  8B4C2410          mov ecx,[esp+0x10]
000217E3  8B74240C          mov esi,[esp+0xc]
000217E7  8B7C2408          mov edi,[esp+0x8]
000217EB  FC                cld
000217EC  F3A4              rep movsb
000217EE  5D                pop ebp
000217EF  C3                ret
000217F0  55                push ebp
000217F1  89E5              mov ebp,esp
000217F3  31C9              xor ecx,ecx
000217F5  31DB              xor ebx,ebx
000217F7  31C0              xor eax,eax
000217F9  8B442410          mov eax,[esp+0x10]
000217FD  8B4C240C          mov ecx,[esp+0xc]
00021801  8B5C2408          mov ebx,[esp+0x8]
00021805  8903              mov [ebx],eax
00021807  81C304000000      add ebx,0x4
0002180D  49                dec ecx
0002180E  75F5              jnz 0x21805
00021810  5D                pop ebp
00021811  C3                ret
00021812  90                nop
00021813  90                nop
00021814  90                nop
00021815  90                nop
00021816  90                nop
00021817  90                nop
00021818  90                nop
00021819  90                nop
0002181A  90                nop
0002181B  90                nop
0002181C  90                nop
0002181D  90                nop
0002181E  90                nop
0002181F  90                nop
00021820  55                push ebp
00021821  89E5              mov ebp,esp
00021823  E815000000        call dword 0x2183d
00021828  BB00000000        mov ebx,0x0
0002182D  0F22DB            mov cr3,ebx
00021830  0F20C0            mov eax,cr0
00021833  0D00000080        or eax,0x80000000
00021838  0F22C0            mov cr0,eax
0002183B  5D                pop ebp
0002183C  C3                ret
0002183D  55                push ebp
0002183E  89E5              mov ebp,esp
00021840  31C9              xor ecx,ecx
00021842  B800000000        mov eax,0x0
00021847  BB00000000        mov ebx,0x0
0002184C  66B90014          mov cx,0x1400
00021850  8903              mov [ebx],eax
00021852  81C304000000      add ebx,0x4
00021858  6649              dec cx
0002185A  6681F90000        cmp cx,0x0
0002185F  75EF              jnz 0x21850
00021861  BB00000000        mov ebx,0x0
00021866  B807100000        mov eax,0x1007
0002186B  66B90400          mov cx,0x4
0002186F  8903              mov [ebx],eax
00021871  81C304000000      add ebx,0x4
00021877  0500100000        add eax,0x1000
0002187C  6649              dec cx
0002187E  6681F90000        cmp cx,0x0
00021883  75EA              jnz 0x2186f
00021885  FD                std
00021886  B807F0FF00        mov eax,0xfff007
0002188B  BFFC4F0000        mov edi,0x4ffc
00021890  FD                std
00021891  AB                stosd
00021892  2D00100000        sub eax,0x1000
00021897  7DF8              jnl 0x21891
00021899  5D                pop ebp
0002189A  C3                ret
0002189B  90                nop
0002189C  55                push ebp
0002189D  89E5              mov ebp,esp
0002189F  8B4508            mov eax,[ebp+0x8]
000218A2  F7D8              neg eax
000218A4  5D                pop ebp
000218A5  C3                ret
000218A6  55                push ebp
000218A7  89E5              mov ebp,esp
000218A9  837D0800          cmp dword [ebp+0x8],byte +0x0
000218AD  7903              jns 0x218b2
000218AF  F75D08            neg dword [ebp+0x8]
000218B2  8B4508            mov eax,[ebp+0x8]
000218B5  5D                pop ebp
000218B6  C3                ret
000218B7  55                push ebp
000218B8  89E5              mov ebp,esp
000218BA  83EC28            sub esp,byte +0x28
000218BD  8D45EA            lea eax,[ebp-0x16]
000218C0  8945F4            mov [ebp-0xc],eax
000218C3  8B45F4            mov eax,[ebp-0xc]
000218C6  89442404          mov [esp+0x4],eax
000218CA  8B4508            mov eax,[ebp+0x8]
000218CD  890424            mov [esp],eax
000218D0  E80D000000        call dword 0x218e2
000218D5  8B45F4            mov eax,[ebp-0xc]
000218D8  890424            mov [esp],eax
000218DB  E896FEFFFF        call dword 0x21776
000218E0  C9                leave
000218E1  C3                ret
000218E2  55                push ebp
000218E3  89E5              mov ebp,esp
000218E5  83EC28            sub esp,byte +0x28
000218E8  8B4508            mov eax,[ebp+0x8]
000218EB  890424            mov [esp],eax
000218EE  E890000000        call dword 0x21983
000218F3  8945F0            mov [ebp-0x10],eax
000218F6  8B450C            mov eax,[ebp+0xc]
000218F9  8945EC            mov [ebp-0x14],eax
000218FC  837DF000          cmp dword [ebp-0x10],byte +0x0
00021900  7512              jnz 0x21914
00021902  8B45EC            mov eax,[ebp-0x14]
00021905  C60030            mov byte [eax],0x30
00021908  8345EC01          add dword [ebp-0x14],byte +0x1
0002190C  8B45EC            mov eax,[ebp-0x14]
0002190F  C60000            mov byte [eax],0x0
00021912  EB6D              jmp short 0x21981
00021914  8B45F0            mov eax,[ebp-0x10]
00021917  0345EC            add eax,[ebp-0x14]
0002191A  C60000            mov byte [eax],0x0
0002191D  EB53              jmp short 0x21972
0002191F  8B4D08            mov ecx,[ebp+0x8]
00021922  BA67666666        mov edx,0x66666667
00021927  89C8              mov eax,ecx
00021929  F7EA              imul edx
0002192B  C1FA02            sar edx,0x2
0002192E  89C8              mov eax,ecx
00021930  C1F81F            sar eax,0x1f
00021933  29C2              sub edx,eax
00021935  89D0              mov eax,edx
00021937  C1E002            shl eax,0x2
0002193A  01D0              add eax,edx
0002193C  01C0              add eax,eax
0002193E  89CA              mov edx,ecx
00021940  29C2              sub edx,eax
00021942  89D0              mov eax,edx
00021944  8945F4            mov [ebp-0xc],eax
00021947  8B4D08            mov ecx,[ebp+0x8]
0002194A  BA67666666        mov edx,0x66666667
0002194F  89C8              mov eax,ecx
00021951  F7EA              imul edx
00021953  C1FA02            sar edx,0x2
00021956  89C8              mov eax,ecx
00021958  C1F81F            sar eax,0x1f
0002195B  89D1              mov ecx,edx
0002195D  29C1              sub ecx,eax
0002195F  89C8              mov eax,ecx
00021961  894508            mov [ebp+0x8],eax
00021964  8B45F0            mov eax,[ebp-0x10]
00021967  0345EC            add eax,[ebp-0x14]
0002196A  8B55F4            mov edx,[ebp-0xc]
0002196D  83C230            add edx,byte +0x30
00021970  8810              mov [eax],dl
00021972  837DF000          cmp dword [ebp-0x10],byte +0x0
00021976  0F95C0            setnz al
00021979  836DF001          sub dword [ebp-0x10],byte +0x1
0002197D  84C0              test al,al
0002197F  759E              jnz 0x2191f
00021981  C9                leave
00021982  C3                ret
00021983  55                push ebp
00021984  89E5              mov ebp,esp
00021986  83EC10            sub esp,byte +0x10
00021989  C745FC00000000    mov dword [ebp-0x4],0x0
00021990  EB21              jmp short 0x219b3
00021992  8B4D08            mov ecx,[ebp+0x8]
00021995  BA67666666        mov edx,0x66666667
0002199A  89C8              mov eax,ecx
0002199C  F7EA              imul edx
0002199E  C1FA02            sar edx,0x2
000219A1  89C8              mov eax,ecx
000219A3  C1F81F            sar eax,0x1f
000219A6  89D1              mov ecx,edx
000219A8  29C1              sub ecx,eax
000219AA  89C8              mov eax,ecx
000219AC  894508            mov [ebp+0x8],eax
000219AF  8345FC01          add dword [ebp-0x4],byte +0x1
000219B3  837D0800          cmp dword [ebp+0x8],byte +0x0
000219B7  75D9              jnz 0x21992
000219B9  8B45FC            mov eax,[ebp-0x4]
000219BC  C9                leave
000219BD  C3                ret
000219BE  55                push ebp
000219BF  89E5              mov ebp,esp
000219C1  83EC10            sub esp,byte +0x10
000219C4  C745FC00000000    mov dword [ebp-0x4],0x0
000219CB  EB04              jmp short 0x219d1
000219CD  8345FC01          add dword [ebp-0x4],byte +0x1
000219D1  8B4508            mov eax,[ebp+0x8]
000219D4  0FB600            movzx eax,byte [eax]
000219D7  84C0              test al,al
000219D9  0F95C0            setnz al
000219DC  83450801          add dword [ebp+0x8],byte +0x1
000219E0  84C0              test al,al
000219E2  75E9              jnz 0x219cd
000219E4  8B45FC            mov eax,[ebp-0x4]
000219E7  C9                leave
000219E8  C3                ret
000219E9  55                push ebp
000219EA  89E5              mov ebp,esp
000219EC  83EC10            sub esp,byte +0x10
000219EF  C745F400000000    mov dword [ebp-0xc],0x0
000219F6  EB2A              jmp short 0x21a22
000219F8  C745F800000000    mov dword [ebp-0x8],0x0
000219FF  EB17              jmp short 0x21a18
00021A01  C745FC00000000    mov dword [ebp-0x4],0x0
00021A08  EB04              jmp short 0x21a0e
00021A0A  8345FC01          add dword [ebp-0x4],byte +0x1
00021A0E  837DFC63          cmp dword [ebp-0x4],byte +0x63
00021A12  7EF6              jng 0x21a0a
00021A14  8345F801          add dword [ebp-0x8],byte +0x1
00021A18  837DF863          cmp dword [ebp-0x8],byte +0x63
00021A1C  7EE3              jng 0x21a01
00021A1E  8345F401          add dword [ebp-0xc],byte +0x1
00021A22  837DF463          cmp dword [ebp-0xc],byte +0x63
00021A26  7ED0              jng 0x219f8
00021A28  C9                leave
00021A29  C3                ret
00021A2A  55                push ebp
00021A2B  89E5              mov ebp,esp
00021A2D  83EC28            sub esp,byte +0x28
00021A30  A1207A0300        mov eax,[0x37a20]
00021A35  8945F4            mov [ebp-0xc],eax
00021A38  A1249A0300        mov eax,[0x39a24]
00021A3D  034508            add eax,[ebp+0x8]
00021A40  A3207A0300        mov [0x37a20],eax
00021A45  C745F000000000    mov dword [ebp-0x10],0x0
00021A4C  EB10              jmp short 0x21a5e
00021A4E  C70424A8340200    mov dword [esp],0x234a8
00021A55  E81CFDFFFF        call dword 0x21776
00021A5A  8345F001          add dword [ebp-0x10],byte +0x1
00021A5E  8B45F0            mov eax,[ebp-0x10]
00021A61  3B450C            cmp eax,[ebp+0xc]
00021A64  7CE8              jl 0x21a4e
00021A66  8B45F4            mov eax,[ebp-0xc]
00021A69  A3207A0300        mov [0x37a20],eax
00021A6E  C9                leave
00021A6F  C3                ret
00021A70  55                push ebp
00021A71  89E5              mov ebp,esp
00021A73  EBFE              jmp short 0x21a73
00021A75  55                push ebp
00021A76  89E5              mov ebp,esp
00021A78  83EC28            sub esp,byte +0x28
00021A7B  E869FFFFFF        call dword 0x219e9
00021A80  E864FFFFFF        call dword 0x219e9
00021A85  E85FFFFFFF        call dword 0x219e9
00021A8A  E85AFFFFFF        call dword 0x219e9
00021A8F  B8D80F0200        mov eax,0x20fd8
00021A94  C744240403000000  mov dword [esp+0x4],0x3
00021A9C  890424            mov [esp],eax
00021A9F  E89FECFFFF        call dword 0x20743
00021AA4  EBFE              jmp short 0x21aa4
00021AA6  55                push ebp
00021AA7  89E5              mov ebp,esp
00021AA9  EBFE              jmp short 0x21aa9
00021AAB  90                nop
00021AAC  90                nop
00021AAD  90                nop
00021AAE  90                nop
00021AAF  90                nop
00021AB0  0000              add [eax],al
00021AB2  0000              add [eax],al
00021AB4  E8AF060000        call dword 0x22168
00021AB9  81C408000000      add esp,0x8
00021ABF  F4                hlt
00021AC0  60                pushad
00021AC1  1E                push ds
00021AC2  06                push es
00021AC3  0FA0              push fs
00021AC5  0FA8              push gs
00021AC7  668CD0            mov ax,ss
00021ACA  8EC0              mov es,ax
00021ACC  8ED8              mov ds,ax
00021ACE  89E0              mov eax,esp
00021AD0  A3D07C0300        mov [0x37cd0],eax
00021AD5  BC00820200        mov esp,0x28200
00021ADA  E804FAFFFF        call dword 0x214e3
00021ADF  A1D07C0300        mov eax,[0x37cd0]
00021AE4  89C4              mov esp,eax
00021AE6  A1209A0300        mov eax,[0x39a20]
00021AEB  3D00000000        cmp eax,0x0
00021AF0  7452              jz 0x21b44
00021AF2  B800000000        mov eax,0x0
00021AF7  A3209A0300        mov [0x39a20],eax
00021AFC  FC                cld
00021AFD  B944000000        mov ecx,0x44
00021B02  89E6              mov esi,esp
00021B04  8B3DCC7C0300      mov edi,[dword 0x37ccc]
00021B0A  F3A4              rep movsb
00021B0C  8B3DCC7C0300      mov edi,[dword 0x37ccc]
00021B12  81C73C000000      add edi,0x3c
00021B18  8B07              mov eax,[edi]
00021B1A  81EF20000000      sub edi,0x20
00021B20  8907              mov [edi],eax
00021B22  8B2508850300      mov esp,[dword 0x38508]
00021B28  81C444000000      add esp,0x44
00021B2E  58                pop eax
00021B2F  3D01000000        cmp eax,0x1
00021B34  7400              jz 0x21b36
00021B36  81EC48000000      sub esp,0x48
00021B3C  0FA9              pop gs
00021B3E  0FA1              pop fs
00021B40  07                pop es
00021B41  1F                pop ds
00021B42  61                popad
00021B43  CF                iretd
00021B44  0FA9              pop gs
00021B46  0FA1              pop fs
00021B48  07                pop es
00021B49  1F                pop ds
00021B4A  61                popad
00021B4B  CF                iretd
00021B4C  90                nop
00021B4D  90                nop
00021B4E  90                nop
00021B4F  90                nop
00021B50  60                pushad
00021B51  1E                push ds
00021B52  06                push es
00021B53  0FA0              push fs
00021B55  0FA8              push gs
00021B57  668CD0            mov ax,ss
00021B5A  8EC0              mov es,ax
00021B5C  8ED8              mov ds,ax
00021B5E  89E0              mov eax,esp
00021B60  A3B01A0200        mov [0x21ab0],eax
00021B65  BC007A0200        mov esp,0x27a00
00021B6A  E8C7050000        call dword 0x22136
00021B6F  A1B01A0200        mov eax,[0x21ab0]
00021B74  89C4              mov esp,eax
00021B76  0FA9              pop gs
00021B78  0FA1              pop fs
00021B7A  07                pop es
00021B7B  1F                pop ds
00021B7C  61                popad
00021B7D  CF                iretd
00021B7E  90                nop
00021B7F  90                nop
00021B80  60                pushad
00021B81  B020              mov al,0x20
00021B83  E620              out 0x20,al
00021B85  E6A0              out 0xa0,al
00021B87  BE04800B00        mov esi,0xb8004
00021B8C  FE06              inc byte [esi]
00021B8E  B020              mov al,0x20
00021B90  E620              out 0x20,al
00021B92  E6A0              out 0xa0,al
00021B94  61                popad
00021B95  CF                iretd
00021B96  90                nop
00021B97  90                nop
00021B98  90                nop
00021B99  90                nop
00021B9A  90                nop
00021B9B  90                nop
00021B9C  90                nop
00021B9D  90                nop
00021B9E  90                nop
00021B9F  90                nop
00021BA0  60                pushad
00021BA1  1E                push ds
00021BA2  06                push es
00021BA3  0FA0              push fs
00021BA5  0FA8              push gs
00021BA7  89E0              mov eax,esp
00021BA9  A3B01A0200        mov [0x21ab0],eax
00021BAE  BC007A0200        mov esp,0x27a00
00021BB3  E8EF0E0000        call dword 0x22aa7
00021BB8  A1B01A0200        mov eax,[0x21ab0]
00021BBD  89C4              mov esp,eax
00021BBF  0FA9              pop gs
00021BC1  0FA1              pop fs
00021BC3  07                pop es
00021BC4  1F                pop ds
00021BC5  61                popad
00021BC6  CF                iretd
00021BC7  90                nop
00021BC8  90                nop
00021BC9  90                nop
00021BCA  90                nop
00021BCB  90                nop
00021BCC  90                nop
00021BCD  90                nop
00021BCE  90                nop
00021BCF  90                nop
00021BD0  68FFFFFFFF        push dword 0xffffffff
00021BD5  6800000000        push dword 0x0
00021BDA  E9D5FEFFFF        jmp dword 0x21ab4
00021BDF  90                nop
00021BE0  68FFFFFFFF        push dword 0xffffffff
00021BE5  6801000000        push dword 0x1
00021BEA  E9C5FEFFFF        jmp dword 0x21ab4
00021BEF  90                nop
00021BF0  68FFFFFFFF        push dword 0xffffffff
00021BF5  6802000000        push dword 0x2
00021BFA  E9B5FEFFFF        jmp dword 0x21ab4
00021BFF  90                nop
00021C00  68FFFFFFFF        push dword 0xffffffff
00021C05  6803000000        push dword 0x3
00021C0A  E9A5FEFFFF        jmp dword 0x21ab4
00021C0F  90                nop
00021C10  68FFFFFFFF        push dword 0xffffffff
00021C15  6804000000        push dword 0x4
00021C1A  E995FEFFFF        jmp dword 0x21ab4
00021C1F  90                nop
00021C20  68FFFFFFFF        push dword 0xffffffff
00021C25  6805000000        push dword 0x5
00021C2A  E985FEFFFF        jmp dword 0x21ab4
00021C2F  90                nop
00021C30  68FFFFFFFF        push dword 0xffffffff
00021C35  6806000000        push dword 0x6
00021C3A  E975FEFFFF        jmp dword 0x21ab4
00021C3F  90                nop
00021C40  68FFFFFFFF        push dword 0xffffffff
00021C45  6807000000        push dword 0x7
00021C4A  E965FEFFFF        jmp dword 0x21ab4
00021C4F  90                nop
00021C50  6808000000        push dword 0x8
00021C55  E95AFEFFFF        jmp dword 0x21ab4
00021C5A  90                nop
00021C5B  90                nop
00021C5C  90                nop
00021C5D  90                nop
00021C5E  90                nop
00021C5F  90                nop
00021C60  68FFFFFFFF        push dword 0xffffffff
00021C65  6809000000        push dword 0x9
00021C6A  E945FEFFFF        jmp dword 0x21ab4
00021C6F  90                nop
00021C70  680A000000        push dword 0xa
00021C75  E93AFEFFFF        jmp dword 0x21ab4
00021C7A  90                nop
00021C7B  90                nop
00021C7C  90                nop
00021C7D  90                nop
00021C7E  90                nop
00021C7F  90                nop
00021C80  680B000000        push dword 0xb
00021C85  E92AFEFFFF        jmp dword 0x21ab4
00021C8A  90                nop
00021C8B  90                nop
00021C8C  90                nop
00021C8D  90                nop
00021C8E  90                nop
00021C8F  90                nop
00021C90  680C000000        push dword 0xc
00021C95  E91AFEFFFF        jmp dword 0x21ab4
00021C9A  90                nop
00021C9B  90                nop
00021C9C  90                nop
00021C9D  90                nop
00021C9E  90                nop
00021C9F  90                nop
00021CA0  66B81000          mov ax,0x10
00021CA4  8ED8              mov ds,ax
00021CA6  8EC0              mov es,ax
00021CA8  E8950F0000        call dword 0x22c42
00021CAD  81C404000000      add esp,0x4
00021CB3  CF                iretd
00021CB4  90                nop
00021CB5  90                nop
00021CB6  90                nop
00021CB7  90                nop
00021CB8  90                nop
00021CB9  90                nop
00021CBA  90                nop
00021CBB  90                nop
00021CBC  90                nop
00021CBD  90                nop
00021CBE  90                nop
00021CBF  90                nop
00021CC0  680E000000        push dword 0xe
00021CC5  E9EAFDFFFF        jmp dword 0x21ab4
00021CCA  90                nop
00021CCB  90                nop
00021CCC  90                nop
00021CCD  90                nop
00021CCE  90                nop
00021CCF  90                nop
00021CD0  68FFFFFFFF        push dword 0xffffffff
00021CD5  6810000000        push dword 0x10
00021CDA  E9D5FDFFFF        jmp dword 0x21ab4
00021CDF  90                nop
00021CE0  6811000000        push dword 0x11
00021CE5  E9CAFDFFFF        jmp dword 0x21ab4
00021CEA  90                nop
00021CEB  90                nop
00021CEC  90                nop
00021CED  90                nop
00021CEE  90                nop
00021CEF  90                nop
00021CF0  68FFFFFFFF        push dword 0xffffffff
00021CF5  6812000000        push dword 0x12
00021CFA  E9B5FDFFFF        jmp dword 0x21ab4
00021CFF  90                nop
00021D00  68FFFFFFFF        push dword 0xffffffff
00021D05  6813000000        push dword 0x13
00021D0A  E9A5FDFFFF        jmp dword 0x21ab4
00021D0F  90                nop
00021D10  55                push ebp
00021D11  89E5              mov ebp,esp
00021D13  83EC08            sub esp,byte +0x8
00021D16  E854030000        call dword 0x2206f
00021D1B  E87E000000        call dword 0x21d9e
00021D20  C9                leave
00021D21  C3                ret
00021D22  55                push ebp
00021D23  89E5              mov ebp,esp
00021D25  83EC28            sub esp,byte +0x28
00021D28  E845FAFFFF        call dword 0x21772
00021D2D  C744240415000000  mov dword [esp+0x4],0x15
00021D35  C7042470000000    mov dword [esp],0x70
00021D3C  E80FFAFFFF        call dword 0x21750
00021D41  C7042471000000    mov dword [esp],0x71
00021D48  E815FAFFFF        call dword 0x21762
00021D4D  8845F7            mov [ebp-0x9],al
00021D50  0FB645F7          movzx eax,byte [ebp-0x9]
00021D54  890424            mov [esp],eax
00021D57  E85BFBFFFF        call dword 0x218b7
00021D5C  C70424AC340200    mov dword [esp],0x234ac
00021D63  E80EFAFFFF        call dword 0x21776
00021D68  C744240410000000  mov dword [esp+0x4],0x10
00021D70  C7042470000000    mov dword [esp],0x70
00021D77  E8D4F9FFFF        call dword 0x21750
00021D7C  C7042471000000    mov dword [esp],0x71
00021D83  E8DAF9FFFF        call dword 0x21762
00021D88  8845F7            mov [ebp-0x9],al
00021D8B  0FB645F7          movzx eax,byte [ebp-0x9]
00021D8F  890424            mov [esp],eax
00021D92  E820FBFFFF        call dword 0x218b7
00021D97  E8D8F9FFFF        call dword 0x21774
00021D9C  C9                leave
00021D9D  C3                ret
00021D9E  55                push ebp
00021D9F  89E5              mov ebp,esp
00021DA1  53                push ebx
00021DA2  83EC14            sub esp,byte +0x14
00021DA5  C744240409000000  mov dword [esp+0x4],0x9
00021DAD  C7042470000000    mov dword [esp],0x70
00021DB4  E897F9FFFF        call dword 0x21750
00021DB9  C7042471000000    mov dword [esp],0x71
00021DC0  E89DF9FFFF        call dword 0x21762
00021DC5  89C2              mov edx,eax
00021DC7  C0EA04            shr dl,0x4
00021DCA  89D0              mov eax,edx
00021DCC  C1E002            shl eax,0x2
00021DCF  01D0              add eax,edx
00021DD1  01C0              add eax,eax
00021DD3  89C3              mov ebx,eax
00021DD5  C7042471000000    mov dword [esp],0x71
00021DDC  E881F9FFFF        call dword 0x21762
00021DE1  83E00F            and eax,byte +0xf
00021DE4  8D0403            lea eax,[ebx+eax]
00021DE7  A20E820200        mov [0x2820e],al
00021DEC  C744240408000000  mov dword [esp+0x4],0x8
00021DF4  C7042470000000    mov dword [esp],0x70
00021DFB  E850F9FFFF        call dword 0x21750
00021E00  C7042471000000    mov dword [esp],0x71
00021E07  E856F9FFFF        call dword 0x21762
00021E0C  89C2              mov edx,eax
00021E0E  C0EA04            shr dl,0x4
00021E11  89D0              mov eax,edx
00021E13  C1E002            shl eax,0x2
00021E16  01D0              add eax,edx
00021E18  01C0              add eax,eax
00021E1A  89C3              mov ebx,eax
00021E1C  C7042471000000    mov dword [esp],0x71
00021E23  E83AF9FFFF        call dword 0x21762
00021E28  83E00F            and eax,byte +0xf
00021E2B  8D0403            lea eax,[ebx+eax]
00021E2E  A20D820200        mov [0x2820d],al
00021E33  C744240407000000  mov dword [esp+0x4],0x7
00021E3B  C7042470000000    mov dword [esp],0x70
00021E42  E809F9FFFF        call dword 0x21750
00021E47  C7042471000000    mov dword [esp],0x71
00021E4E  E80FF9FFFF        call dword 0x21762
00021E53  89C2              mov edx,eax
00021E55  C0EA04            shr dl,0x4
00021E58  89D0              mov eax,edx
00021E5A  C1E002            shl eax,0x2
00021E5D  01D0              add eax,edx
00021E5F  01C0              add eax,eax
00021E61  89C3              mov ebx,eax
00021E63  C7042471000000    mov dword [esp],0x71
00021E6A  E8F3F8FFFF        call dword 0x21762
00021E6F  83E00F            and eax,byte +0xf
00021E72  8D0403            lea eax,[ebx+eax]
00021E75  A20C820200        mov [0x2820c],al
00021E7A  C744240406000000  mov dword [esp+0x4],0x6
00021E82  C7042470000000    mov dword [esp],0x70
00021E89  E8C2F8FFFF        call dword 0x21750
00021E8E  C7042471000000    mov dword [esp],0x71
00021E95  E8C8F8FFFF        call dword 0x21762
00021E9A  89C2              mov edx,eax
00021E9C  C0EA04            shr dl,0x4
00021E9F  89D0              mov eax,edx
00021EA1  C1E002            shl eax,0x2
00021EA4  01D0              add eax,edx
00021EA6  01C0              add eax,eax
00021EA8  89C3              mov ebx,eax
00021EAA  C7042471000000    mov dword [esp],0x71
00021EB1  E8ACF8FFFF        call dword 0x21762
00021EB6  83E00F            and eax,byte +0xf
00021EB9  8D0403            lea eax,[ebx+eax]
00021EBC  A20B820200        mov [0x2820b],al
00021EC1  C744240404000000  mov dword [esp+0x4],0x4
00021EC9  C7042470000000    mov dword [esp],0x70
00021ED0  E87BF8FFFF        call dword 0x21750
00021ED5  C7042471000000    mov dword [esp],0x71
00021EDC  E881F8FFFF        call dword 0x21762
00021EE1  89C2              mov edx,eax
00021EE3  C0EA04            shr dl,0x4
00021EE6  89D0              mov eax,edx
00021EE8  C1E002            shl eax,0x2
00021EEB  01D0              add eax,edx
00021EED  01C0              add eax,eax
00021EEF  89C3              mov ebx,eax
00021EF1  C7042471000000    mov dword [esp],0x71
00021EF8  E865F8FFFF        call dword 0x21762
00021EFD  83E00F            and eax,byte +0xf
00021F00  8D0403            lea eax,[ebx+eax]
00021F03  A20A820200        mov [0x2820a],al
00021F08  C744240402000000  mov dword [esp+0x4],0x2
00021F10  C7042470000000    mov dword [esp],0x70
00021F17  E834F8FFFF        call dword 0x21750
00021F1C  C7042471000000    mov dword [esp],0x71
00021F23  E83AF8FFFF        call dword 0x21762
00021F28  89C2              mov edx,eax
00021F2A  C0EA04            shr dl,0x4
00021F2D  89D0              mov eax,edx
00021F2F  C1E002            shl eax,0x2
00021F32  01D0              add eax,edx
00021F34  01C0              add eax,eax
00021F36  89C3              mov ebx,eax
00021F38  C7042471000000    mov dword [esp],0x71
00021F3F  E81EF8FFFF        call dword 0x21762
00021F44  83E00F            and eax,byte +0xf
00021F47  8D0403            lea eax,[ebx+eax]
00021F4A  A209820200        mov [0x28209],al
00021F4F  C744240400000000  mov dword [esp+0x4],0x0
00021F57  C7042470000000    mov dword [esp],0x70
00021F5E  E8EDF7FFFF        call dword 0x21750
00021F63  C7042471000000    mov dword [esp],0x71
00021F6A  E8F3F7FFFF        call dword 0x21762
00021F6F  89C2              mov edx,eax
00021F71  C0EA04            shr dl,0x4
00021F74  89D0              mov eax,edx
00021F76  C1E002            shl eax,0x2
00021F79  01D0              add eax,edx
00021F7B  01C0              add eax,eax
00021F7D  89C3              mov ebx,eax
00021F7F  C7042471000000    mov dword [esp],0x71
00021F86  E8D7F7FFFF        call dword 0x21762
00021F8B  83E00F            and eax,byte +0xf
00021F8E  8D0403            lea eax,[ebx+eax]
00021F91  A208820200        mov [0x28208],al
00021F96  C6050782020000    mov byte [dword 0x28207],0x0
00021F9D  C70424AE340200    mov dword [esp],0x234ae
00021FA4  E8CDF7FFFF        call dword 0x21776
00021FA9  0FB6050A820200    movzx eax,byte [dword 0x2820a]
00021FB0  0FB6C0            movzx eax,al
00021FB3  890424            mov [esp],eax
00021FB6  E8FCF8FFFF        call dword 0x218b7
00021FBB  C70424B9340200    mov dword [esp],0x234b9
00021FC2  E8AFF7FFFF        call dword 0x21776
00021FC7  0FB60509820200    movzx eax,byte [dword 0x28209]
00021FCE  0FB6C0            movzx eax,al
00021FD1  890424            mov [esp],eax
00021FD4  E8DEF8FFFF        call dword 0x218b7
00021FD9  C70424B9340200    mov dword [esp],0x234b9
00021FE0  E891F7FFFF        call dword 0x21776
00021FE5  0FB60508820200    movzx eax,byte [dword 0x28208]
00021FEC  0FB6C0            movzx eax,al
00021FEF  890424            mov [esp],eax
00021FF2  E8C0F8FFFF        call dword 0x218b7
00021FF7  C70424BB340200    mov dword [esp],0x234bb
00021FFE  E873F7FFFF        call dword 0x21776
00022003  C70424BE340200    mov dword [esp],0x234be
0002200A  E867F7FFFF        call dword 0x21776
0002200F  0FB6050E820200    movzx eax,byte [dword 0x2820e]
00022016  0FB6C0            movzx eax,al
00022019  890424            mov [esp],eax
0002201C  E896F8FFFF        call dword 0x218b7
00022021  C70424C1340200    mov dword [esp],0x234c1
00022028  E849F7FFFF        call dword 0x21776
0002202D  0FB6050D820200    movzx eax,byte [dword 0x2820d]
00022034  0FB6C0            movzx eax,al
00022037  890424            mov [esp],eax
0002203A  E878F8FFFF        call dword 0x218b7
0002203F  C70424C1340200    mov dword [esp],0x234c1
00022046  E82BF7FFFF        call dword 0x21776
0002204B  0FB6050C820200    movzx eax,byte [dword 0x2820c]
00022052  0FB6C0            movzx eax,al
00022055  890424            mov [esp],eax
00022058  E85AF8FFFF        call dword 0x218b7
0002205D  C70424AC340200    mov dword [esp],0x234ac
00022064  E80DF7FFFF        call dword 0x21776
00022069  83C414            add esp,byte +0x14
0002206C  5B                pop ebx
0002206D  5D                pop ebp
0002206E  C3                ret
0002206F  55                push ebp
00022070  89E5              mov ebp,esp
00022072  83EC28            sub esp,byte +0x28
00022075  C70424C3340200    mov dword [esp],0x234c3
0002207C  E8F5F6FFFF        call dword 0x21776
00022081  C744240410000000  mov dword [esp+0x4],0x10
00022089  C7042470000000    mov dword [esp],0x70
00022090  E8BBF6FFFF        call dword 0x21750
00022095  C7042471000000    mov dword [esp],0x71
0002209C  E8C1F6FFFF        call dword 0x21762
000220A1  8845F7            mov [ebp-0x9],al
000220A4  0FB645F7          movzx eax,byte [ebp-0x9]
000220A8  C0E804            shr al,0x4
000220AB  0FB6C0            movzx eax,al
000220AE  83F804            cmp eax,byte +0x4
000220B1  774D              ja 0x22100
000220B3  8B048514350200    mov eax,[eax*4+0x23514]
000220BA  FFE0              jmp eax
000220BC  C70424D7340200    mov dword [esp],0x234d7
000220C3  E8AEF6FFFF        call dword 0x21776
000220C8  EB36              jmp short 0x22100
000220CA  C70424E2340200    mov dword [esp],0x234e2
000220D1  E8A0F6FFFF        call dword 0x21776
000220D6  EB28              jmp short 0x22100
000220D8  C70424EE340200    mov dword [esp],0x234ee
000220DF  E892F6FFFF        call dword 0x21776
000220E4  EB1A              jmp short 0x22100
000220E6  C70424FA340200    mov dword [esp],0x234fa
000220ED  E884F6FFFF        call dword 0x21776
000220F2  EB0C              jmp short 0x22100
000220F4  C7042406350200    mov dword [esp],0x23506
000220FB  E876F6FFFF        call dword 0x21776
00022100  C9                leave
00022101  C3                ret
00022102  90                nop
00022103  90                nop
00022104  55                push ebp
00022105  89E5              mov ebp,esp
00022107  83EC18            sub esp,byte +0x18
0002210A  C705407C03000000  mov dword [dword 0x37c40],0x0
         -0000
00022114  C705447C03004C7C  mov dword [dword 0x37c44],0x37c4c
         -0300
0002211E  A1447C0300        mov eax,[0x37c44]
00022123  A3487C0300        mov [0x37c48],eax
00022128  C7042401000000    mov dword [esp],0x1
0002212F  E8B6F4FFFF        call dword 0x215ea
00022134  C9                leave
00022135  C3                ret
00022136  55                push ebp
00022137  89E5              mov ebp,esp
00022139  83EC28            sub esp,byte +0x28
0002213C  C7042460000000    mov dword [esp],0x60
00022143  E81AF6FFFF        call dword 0x21762
00022148  0FB6C0            movzx eax,al
0002214B  8945F4            mov [ebp-0xc],eax
0002214E  8B45F4            mov eax,[ebp-0xc]
00022151  890424            mov [esp],eax
00022154  E837040000        call dword 0x22590
00022159  C7042401000000    mov dword [esp],0x1
00022160  E8A9F5FFFF        call dword 0x2170e
00022165  C9                leave
00022166  C3                ret
00022167  90                nop
00022168  55                push ebp
00022169  89E5              mov ebp,esp
0002216B  83EC18            sub esp,byte +0x18
0002216E  837D0810          cmp dword [ebp+0x8],byte +0x10
00022172  7E0E              jng 0x22182
00022174  C7042428350200    mov dword [esp],0x23528
0002217B  E8F6F5FFFF        call dword 0x21776
00022180  EB0B              jmp short 0x2218d
00022182  8B4508            mov eax,[ebp+0x8]
00022185  890424            mov [esp],eax
00022188  E802000000        call dword 0x2218f
0002218D  C9                leave
0002218E  C3                ret
0002218F  55                push ebp
00022190  89E5              mov ebp,esp
00022192  83EC68            sub esp,byte +0x68
00022195  A1207A0300        mov eax,[0x37a20]
0002219A  8945F4            mov [ebp-0xc],eax
0002219D  C745B435350200    mov dword [ebp-0x4c],0x23535
000221A4  C745B841350200    mov dword [ebp-0x48],0x23541
000221AB  C745BC4D350200    mov dword [ebp-0x44],0x2354d
000221B2  C745C059350200    mov dword [ebp-0x40],0x23559
000221B9  C745C465350200    mov dword [ebp-0x3c],0x23565
000221C0  C745C871350200    mov dword [ebp-0x38],0x23571
000221C7  C745CC7D350200    mov dword [ebp-0x34],0x2357d
000221CE  C745D089350200    mov dword [ebp-0x30],0x23589
000221D5  C745D495350200    mov dword [ebp-0x2c],0x23595
000221DC  C745D8A1350200    mov dword [ebp-0x28],0x235a1
000221E3  C745DCAD350200    mov dword [ebp-0x24],0x235ad
000221EA  C745E0BA350200    mov dword [ebp-0x20],0x235ba
000221F1  C745E4C7350200    mov dword [ebp-0x1c],0x235c7
000221F8  C745E8D4350200    mov dword [ebp-0x18],0x235d4
000221FF  C745ECE1350200    mov dword [ebp-0x14],0x235e1
00022206  C745F0EE350200    mov dword [ebp-0x10],0x235ee
0002220D  C705207A0300DA03  mov dword [dword 0x37a20],0x3da
         -0000
00022217  C70424FB350200    mov dword [esp],0x235fb
0002221E  E853F5FFFF        call dword 0x21776
00022223  8B4508            mov eax,[ebp+0x8]
00022226  8D148500000000    lea edx,[eax*4+0x0]
0002222D  8D45B4            lea eax,[ebp-0x4c]
00022230  01D0              add eax,edx
00022232  8B00              mov eax,[eax]
00022234  890424            mov [esp],eax
00022237  E83AF5FFFF        call dword 0x21776
0002223C  C70424FB350200    mov dword [esp],0x235fb
00022243  E82EF5FFFF        call dword 0x21776
00022248  8B45F4            mov eax,[ebp-0xc]
0002224B  A3207A0300        mov [0x37a20],eax
00022250  C9                leave
00022251  C3                ret
00022252  90                nop
00022253  90                nop
00022254  55                push ebp
00022255  89E5              mov ebp,esp
00022257  83EC08            sub esp,byte +0x8
0002225A  E8C1F5FFFF        call dword 0x21820
0002225F  E802000000        call dword 0x22266
00022264  C9                leave
00022265  C3                ret
00022266  55                push ebp
00022267  89E5              mov ebp,esp
00022269  5D                pop ebp
0002226A  C3                ret
0002226B  90                nop
0002226C  55                push ebp
0002226D  89E5              mov ebp,esp
0002226F  83EC10            sub esp,byte +0x10
00022272  C745FC00000000    mov dword [ebp-0x4],0x0
00022279  EB12              jmp short 0x2228d
0002227B  8B45FC            mov eax,[ebp-0x4]
0002227E  C70485407A030000  mov dword [eax*4+0x37a40],0x0
         -000000
00022289  8345FC01          add dword [ebp-0x4],byte +0x1
0002228D  837DFC7F          cmp dword [ebp-0x4],byte +0x7f
00022291  7EE8              jng 0x2227b
00022293  C745FC00000000    mov dword [ebp-0x4],0x0
0002229A  EB12              jmp short 0x222ae
0002229C  8B45FC            mov eax,[ebp-0x4]
0002229F  C704852082020000  mov dword [eax*4+0x28220],0x0
         -000000
000222AA  8345FC01          add dword [ebp-0x4],byte +0x1
000222AE  817DFCFF3B0000    cmp dword [ebp-0x4],0x3bff
000222B5  7EE5              jng 0x2229c
000222B7  C705407A03000100  mov dword [dword 0x37a40],0x1
         -0000
000222C1  C705447A03000100  mov dword [dword 0x37a44],0x1
         -0000
000222CB  C705487A03000100  mov dword [dword 0x37a48],0x1
         -0000
000222D5  C7054C7A03000100  mov dword [dword 0x37a4c],0x1
         -0000
000222DF  C9                leave
000222E0  C3                ret
000222E1  55                push ebp
000222E2  89E5              mov ebp,esp
000222E4  83EC28            sub esp,byte +0x28
000222E7  817D08FF030000    cmp dword [ebp+0x8],0x3ff
000222EE  7709              ja 0x222f9
000222F0  C745E801000000    mov dword [ebp-0x18],0x1
000222F7  EB23              jmp short 0x2231c
000222F9  8B4508            mov eax,[ebp+0x8]
000222FC  25FF030000        and eax,0x3ff
00022301  85C0              test eax,eax
00022303  740E              jz 0x22313
00022305  8B4508            mov eax,[ebp+0x8]
00022308  C1E80A            shr eax,0xa
0002230B  83C001            add eax,byte +0x1
0002230E  8945E8            mov [ebp-0x18],eax
00022311  EB09              jmp short 0x2231c
00022313  8B4508            mov eax,[ebp+0x8]
00022316  C1E80A            shr eax,0xa
00022319  8945E8            mov [ebp-0x18],eax
0002231C  C745EC00000000    mov dword [ebp-0x14],0x0
00022323  EB72              jmp short 0x22397
00022325  8B45EC            mov eax,[ebp-0x14]
00022328  8B048520820200    mov eax,[eax*4+0x28220]
0002232F  85C0              test eax,eax
00022331  7560              jnz 0x22393
00022333  837DE801          cmp dword [ebp-0x18],byte +0x1
00022337  7510              jnz 0x22349
00022339  8B45EC            mov eax,[ebp-0x14]
0002233C  C704852082020001  mov dword [eax*4+0x28220],0x1
         -000000
00022347  EB57              jmp short 0x223a0
00022349  8B45E8            mov eax,[ebp-0x18]
0002234C  89442404          mov [esp+0x4],eax
00022350  8B45EC            mov eax,[ebp-0x14]
00022353  890424            mov [esp],eax
00022356  E81D010000        call dword 0x22478
0002235B  8945F0            mov [ebp-0x10],eax
0002235E  8B45F0            mov eax,[ebp-0x10]
00022361  3B45E8            cmp eax,[ebp-0x18]
00022364  7527              jnz 0x2238d
00022366  EB14              jmp short 0x2237c
00022368  8B45F0            mov eax,[ebp-0x10]
0002236B  8B55EC            mov edx,[ebp-0x14]
0002236E  8D0402            lea eax,[edx+eax]
00022371  C704852082020001  mov dword [eax*4+0x28220],0x1
         -000000
0002237C  837DF000          cmp dword [ebp-0x10],byte +0x0
00022380  0F95C0            setnz al
00022383  836DF001          sub dword [ebp-0x10],byte +0x1
00022387  84C0              test al,al
00022389  75DD              jnz 0x22368
0002238B  EB13              jmp short 0x223a0
0002238D  8B45F0            mov eax,[ebp-0x10]
00022390  0145EC            add [ebp-0x14],eax
00022393  8345EC01          add dword [ebp-0x14],byte +0x1
00022397  817DECFF3B0000    cmp dword [ebp-0x14],0x3bff
0002239E  7E85              jng 0x22325
000223A0  8B45EC            mov eax,[ebp-0x14]
000223A3  C1E00A            shl eax,0xa
000223A6  8945F4            mov [ebp-0xc],eax
000223A9  8B45F4            mov eax,[ebp-0xc]
000223AC  C9                leave
000223AD  C3                ret
000223AE  55                push ebp
000223AF  89E5              mov ebp,esp
000223B1  83EC28            sub esp,byte +0x28
000223B4  817D08FF030000    cmp dword [ebp+0x8],0x3ff
000223BB  7709              ja 0x223c6
000223BD  C745E801000000    mov dword [ebp-0x18],0x1
000223C4  EB23              jmp short 0x223e9
000223C6  8B4508            mov eax,[ebp+0x8]
000223C9  25FF030000        and eax,0x3ff
000223CE  85C0              test eax,eax
000223D0  740E              jz 0x223e0
000223D2  8B4508            mov eax,[ebp+0x8]
000223D5  C1E80A            shr eax,0xa
000223D8  83C001            add eax,byte +0x1
000223DB  8945E8            mov [ebp-0x18],eax
000223DE  EB09              jmp short 0x223e9
000223E0  8B4508            mov eax,[ebp+0x8]
000223E3  C1E80A            shr eax,0xa
000223E6  8945E8            mov [ebp-0x18],eax
000223E9  C745EC00000000    mov dword [ebp-0x14],0x0
000223F0  EB72              jmp short 0x22464
000223F2  8B45EC            mov eax,[ebp-0x14]
000223F5  8B0485407A0300    mov eax,[eax*4+0x37a40]
000223FC  85C0              test eax,eax
000223FE  7560              jnz 0x22460
00022400  837DE801          cmp dword [ebp-0x18],byte +0x1
00022404  7510              jnz 0x22416
00022406  8B45EC            mov eax,[ebp-0x14]
00022409  C70485407A030001  mov dword [eax*4+0x37a40],0x1
         -000000
00022414  EB54              jmp short 0x2246a
00022416  8B45E8            mov eax,[ebp-0x18]
00022419  89442404          mov [esp+0x4],eax
0002241D  8B45EC            mov eax,[ebp-0x14]
00022420  890424            mov [esp],eax
00022423  E850000000        call dword 0x22478
00022428  8945F0            mov [ebp-0x10],eax
0002242B  8B45F0            mov eax,[ebp-0x10]
0002242E  3B45E8            cmp eax,[ebp-0x18]
00022431  7527              jnz 0x2245a
00022433  EB14              jmp short 0x22449
00022435  8B45F0            mov eax,[ebp-0x10]
00022438  8B55EC            mov edx,[ebp-0x14]
0002243B  8D0402            lea eax,[edx+eax]
0002243E  C70485407A030001  mov dword [eax*4+0x37a40],0x1
         -000000
00022449  837DF000          cmp dword [ebp-0x10],byte +0x0
0002244D  0F95C0            setnz al
00022450  836DF001          sub dword [ebp-0x10],byte +0x1
00022454  84C0              test al,al
00022456  75DD              jnz 0x22435
00022458  EB10              jmp short 0x2246a
0002245A  8B45F0            mov eax,[ebp-0x10]
0002245D  0145EC            add [ebp-0x14],eax
00022460  8345EC01          add dword [ebp-0x14],byte +0x1
00022464  837DEC7F          cmp dword [ebp-0x14],byte +0x7f
00022468  7E88              jng 0x223f2
0002246A  8B45EC            mov eax,[ebp-0x14]
0002246D  C1E00A            shl eax,0xa
00022470  8945F4            mov [ebp-0xc],eax
00022473  8B45F4            mov eax,[ebp-0xc]
00022476  C9                leave
00022477  C3                ret
00022478  55                push ebp
00022479  89E5              mov ebp,esp
0002247B  83EC10            sub esp,byte +0x10
0002247E  C745FC01000000    mov dword [ebp-0x4],0x1
00022485  8B4508            mov eax,[ebp+0x8]
00022488  83C001            add eax,byte +0x1
0002248B  8945F8            mov [ebp-0x8],eax
0002248E  EB1E              jmp short 0x224ae
00022490  8B45F8            mov eax,[ebp-0x8]
00022493  8B0485407A0300    mov eax,[eax*4+0x37a40]
0002249A  85C0              test eax,eax
0002249C  7516              jnz 0x224b4
0002249E  8B45FC            mov eax,[ebp-0x4]
000224A1  3B450C            cmp eax,[ebp+0xc]
000224A4  740E              jz 0x224b4
000224A6  8345FC01          add dword [ebp-0x4],byte +0x1
000224AA  8345F801          add dword [ebp-0x8],byte +0x1
000224AE  837DF87F          cmp dword [ebp-0x8],byte +0x7f
000224B2  7EDC              jng 0x22490
000224B4  8B45FC            mov eax,[ebp-0x4]
000224B7  C9                leave
000224B8  C3                ret
000224B9  55                push ebp
000224BA  89E5              mov ebp,esp
000224BC  83EC10            sub esp,byte +0x10
000224BF  817D0CFF030000    cmp dword [ebp+0xc],0x3ff
000224C6  7709              ja 0x224d1
000224C8  C745FC01000000    mov dword [ebp-0x4],0x1
000224CF  EB23              jmp short 0x224f4
000224D1  8B450C            mov eax,[ebp+0xc]
000224D4  25FF030000        and eax,0x3ff
000224D9  85C0              test eax,eax
000224DB  740E              jz 0x224eb
000224DD  8B450C            mov eax,[ebp+0xc]
000224E0  C1E80A            shr eax,0xa
000224E3  83C001            add eax,byte +0x1
000224E6  8945FC            mov [ebp-0x4],eax
000224E9  EB09              jmp short 0x224f4
000224EB  8B450C            mov eax,[ebp+0xc]
000224EE  C1E80A            shr eax,0xa
000224F1  8945FC            mov [ebp-0x4],eax
000224F4  8B4508            mov eax,[ebp+0x8]
000224F7  C1E80A            shr eax,0xa
000224FA  8945F8            mov [ebp-0x8],eax
000224FD  EB14              jmp short 0x22513
000224FF  8B45FC            mov eax,[ebp-0x4]
00022502  8B55F8            mov edx,[ebp-0x8]
00022505  8D0402            lea eax,[edx+eax]
00022508  C70485407A030000  mov dword [eax*4+0x37a40],0x0
         -000000
00022513  837DFC00          cmp dword [ebp-0x4],byte +0x0
00022517  0F95C0            setnz al
0002251A  836DFC01          sub dword [ebp-0x4],byte +0x1
0002251E  84C0              test al,al
00022520  75DD              jnz 0x224ff
00022522  C9                leave
00022523  C3                ret
00022524  55                push ebp
00022525  89E5              mov ebp,esp
00022527  83EC10            sub esp,byte +0x10
0002252A  817D0CFF030000    cmp dword [ebp+0xc],0x3ff
00022531  7709              ja 0x2253c
00022533  C745FC01000000    mov dword [ebp-0x4],0x1
0002253A  EB23              jmp short 0x2255f
0002253C  8B450C            mov eax,[ebp+0xc]
0002253F  25FF030000        and eax,0x3ff
00022544  85C0              test eax,eax
00022546  740E              jz 0x22556
00022548  8B450C            mov eax,[ebp+0xc]
0002254B  C1E80A            shr eax,0xa
0002254E  83C001            add eax,byte +0x1
00022551  8945FC            mov [ebp-0x4],eax
00022554  EB09              jmp short 0x2255f
00022556  8B450C            mov eax,[ebp+0xc]
00022559  C1E80A            shr eax,0xa
0002255C  8945FC            mov [ebp-0x4],eax
0002255F  8B4508            mov eax,[ebp+0x8]
00022562  C1E80A            shr eax,0xa
00022565  8945F8            mov [ebp-0x8],eax
00022568  EB14              jmp short 0x2257e
0002256A  8B45FC            mov eax,[ebp-0x4]
0002256D  8B55F8            mov edx,[ebp-0x8]
00022570  8D0402            lea eax,[edx+eax]
00022573  C704852082020000  mov dword [eax*4+0x28220],0x0
         -000000
0002257E  837DFC00          cmp dword [ebp-0x4],byte +0x0
00022582  0F95C0            setnz al
00022585  836DFC01          sub dword [ebp-0x4],byte +0x1
00022589  84C0              test al,al
0002258B  75DD              jnz 0x2256a
0002258D  C9                leave
0002258E  C3                ret
0002258F  90                nop
00022590  55                push ebp
00022591  89E5              mov ebp,esp
00022593  53                push ebx
00022594  A1447C0300        mov eax,[0x37c44]
00022599  8B5508            mov edx,[ebp+0x8]
0002259C  8910              mov [eax],edx
0002259E  83C004            add eax,byte +0x4
000225A1  A3447C0300        mov [0x37c44],eax
000225A6  A1447C0300        mov eax,[0x37c44]
000225AB  BA4C7C0300        mov edx,0x37c4c
000225B0  B980FFFFFF        mov ecx,0xffffff80
000225B5  89CB              mov ebx,ecx
000225B7  29D3              sub ebx,edx
000225B9  89DA              mov edx,ebx
000225BB  01D0              add eax,edx
000225BD  83F803            cmp eax,byte +0x3
000225C0  770A              ja 0x225cc
000225C2  C705447C03004C7C  mov dword [dword 0x37c44],0x37c4c
         -0300
000225CC  5B                pop ebx
000225CD  5D                pop ebp
000225CE  C3                ret
000225CF  55                push ebp
000225D0  89E5              mov ebp,esp
000225D2  53                push ebx
000225D3  83EC24            sub esp,byte +0x24
000225D6  C645F300          mov byte [ebp-0xd],0x0
000225DA  C645F200          mov byte [ebp-0xe],0x0
000225DE  E952010000        jmp dword 0x22735
000225E3  A1487C0300        mov eax,[0x37c48]
000225E8  8B10              mov edx,[eax]
000225EA  8955F4            mov [ebp-0xc],edx
000225ED  83C004            add eax,byte +0x4
000225F0  A3487C0300        mov [0x37c48],eax
000225F5  A1487C0300        mov eax,[0x37c48]
000225FA  BA4C7C0300        mov edx,0x37c4c
000225FF  B980FFFFFF        mov ecx,0xffffff80
00022604  89CB              mov ebx,ecx
00022606  29D3              sub ebx,edx
00022608  89DA              mov edx,ebx
0002260A  01D0              add eax,edx
0002260C  83F803            cmp eax,byte +0x3
0002260F  770A              ja 0x2261b
00022611  C705487C03004C7C  mov dword [dword 0x37c48],0x37c4c
         -0300
0002261B  8B45F4            mov eax,[ebp-0xc]
0002261E  83E80E            sub eax,byte +0xe
00022621  83F842            cmp eax,byte +0x42
00022624  0F8798000000      ja dword 0x226c2
0002262A  8B048508360200    mov eax,[eax*4+0x23608]
00022631  FFE0              jmp eax
00022633  0FB645F3          movzx eax,byte [ebp-0xd]
00022637  83E001            and eax,byte +0x1
0002263A  85C0              test eax,eax
0002263C  0F94C0            setz al
0002263F  8845F3            mov [ebp-0xd],al
00022642  E9EE000000        jmp dword 0x22735
00022647  0FB645F3          movzx eax,byte [ebp-0xd]
0002264B  83E001            and eax,byte +0x1
0002264E  85C0              test eax,eax
00022650  0F94C0            setz al
00022653  8845F3            mov [ebp-0xd],al
00022656  E9DA000000        jmp dword 0x22735
0002265B  0FB645F3          movzx eax,byte [ebp-0xd]
0002265F  83E001            and eax,byte +0x1
00022662  85C0              test eax,eax
00022664  0F94C0            setz al
00022667  8845F3            mov [ebp-0xd],al
0002266A  E9C6000000        jmp dword 0x22735
0002266F  E8D1010000        call dword 0x22845
00022674  E9BC000000        jmp dword 0x22735
00022679  E839010000        call dword 0x227b7
0002267E  E9B2000000        jmp dword 0x22735
00022683  E859020000        call dword 0x228e1
00022688  E9A8000000        jmp dword 0x22735
0002268D  A1207A0300        mov eax,[0x37a20]
00022692  83E801            sub eax,byte +0x1
00022695  A3207A0300        mov [0x37a20],eax
0002269A  A1207A0300        mov eax,[0x37a20]
0002269F  890424            mov [esp],eax
000226A2  E8B1000000        call dword 0x22758
000226A7  C7042404360200    mov dword [esp],0x23604
000226AE  E8C3F0FFFF        call dword 0x21776
000226B3  A1207A0300        mov eax,[0x37a20]
000226B8  83E801            sub eax,byte +0x1
000226BB  A3207A0300        mov [0x37a20],eax
000226C0  EB73              jmp short 0x22735
000226C2  8B45F4            mov eax,[ebp-0xc]
000226C5  2580000000        and eax,0x80
000226CA  85C0              test eax,eax
000226CC  7423              jz 0x226f1
000226CE  817DF4AA000000    cmp dword [ebp-0xc],0xaa
000226D5  7409              jz 0x226e0
000226D7  817DF4B6000000    cmp dword [ebp-0xc],0xb6
000226DE  7554              jnz 0x22734
000226E0  0FB645F3          movzx eax,byte [ebp-0xd]
000226E4  83E001            and eax,byte +0x1
000226E7  85C0              test eax,eax
000226E9  0F94C0            setz al
000226EC  8845F3            mov [ebp-0xd],al
000226EF  EB44              jmp short 0x22735
000226F1  807DF301          cmp byte [ebp-0xd],0x1
000226F5  7514              jnz 0x2270b
000226F7  8B45F4            mov eax,[ebp-0xc]
000226FA  01C0              add eax,eax
000226FC  83C001            add eax,byte +0x1
000226FF  8B048540470200    mov eax,[eax*4+0x24740]
00022706  8845F1            mov [ebp-0xf],al
00022709  EB0F              jmp short 0x2271a
0002270B  8B45F4            mov eax,[ebp-0xc]
0002270E  01C0              add eax,eax
00022710  8B048540470200    mov eax,[eax*4+0x24740]
00022717  8845F1            mov [ebp-0xf],al
0002271A  8D45F1            lea eax,[ebp-0xf]
0002271D  890424            mov [esp],eax
00022720  E851F0FFFF        call dword 0x21776
00022725  A1207A0300        mov eax,[0x37a20]
0002272A  890424            mov [esp],eax
0002272D  E826000000        call dword 0x22758
00022732  EB01              jmp short 0x22735
00022734  90                nop
00022735  8B15487C0300      mov edx,[dword 0x37c48]
0002273B  A1447C0300        mov eax,[0x37c44]
00022740  39C2              cmp edx,eax
00022742  0F859BFEFFFF      jnz dword 0x225e3
00022748  90                nop
00022749  EBEA              jmp short 0x22735
0002274B  55                push ebp
0002274C  89E5              mov ebp,esp
0002274E  83EC08            sub esp,byte +0x8
00022751  E879FEFFFF        call dword 0x225cf
00022756  C9                leave
00022757  C3                ret
00022758  55                push ebp
00022759  89E5              mov ebp,esp
0002275B  83EC18            sub esp,byte +0x18
0002275E  C74424040F000000  mov dword [esp+0x4],0xf
00022766  C70424D4030000    mov dword [esp],0x3d4
0002276D  E8DEEFFFFF        call dword 0x21750
00022772  8B4508            mov eax,[ebp+0x8]
00022775  0FB6C0            movzx eax,al
00022778  89442404          mov [esp+0x4],eax
0002277C  C70424D5030000    mov dword [esp],0x3d5
00022783  E8C8EFFFFF        call dword 0x21750
00022788  C74424040E000000  mov dword [esp+0x4],0xe
00022790  C70424D4030000    mov dword [esp],0x3d4
00022797  E8B4EFFFFF        call dword 0x21750
0002279C  8B4508            mov eax,[ebp+0x8]
0002279F  C1F808            sar eax,0x8
000227A2  0FB6C0            movzx eax,al
000227A5  89442404          mov [esp+0x4],eax
000227A9  C70424D5030000    mov dword [esp],0x3d5
000227B0  E89BEFFFFF        call dword 0x21750
000227B5  C9                leave
000227B6  C3                ret
000227B7  55                push ebp
000227B8  89E5              mov ebp,esp
000227BA  83EC18            sub esp,byte +0x18
000227BD  E8B0EFFFFF        call dword 0x21772
000227C2  C744240450000000  mov dword [esp+0x4],0x50
000227CA  C7042480070000    mov dword [esp],0x780
000227D1  E854F2FFFF        call dword 0x21a2a
000227D6  A1249A0300        mov eax,[0x39a24]
000227DB  83C050            add eax,byte +0x50
000227DE  A3249A0300        mov [0x39a24],eax
000227E3  C74424040C000000  mov dword [esp+0x4],0xc
000227EB  C70424D4030000    mov dword [esp],0x3d4
000227F2  E859EFFFFF        call dword 0x21750
000227F7  A1249A0300        mov eax,[0x39a24]
000227FC  C1F808            sar eax,0x8
000227FF  0FB6C0            movzx eax,al
00022802  89442404          mov [esp+0x4],eax
00022806  C70424D5030000    mov dword [esp],0x3d5
0002280D  E83EEFFFFF        call dword 0x21750
00022812  C74424040D000000  mov dword [esp+0x4],0xd
0002281A  C70424D4030000    mov dword [esp],0x3d4
00022821  E82AEFFFFF        call dword 0x21750
00022826  A1249A0300        mov eax,[0x39a24]
0002282B  0FB6C0            movzx eax,al
0002282E  89442404          mov [esp+0x4],eax
00022832  C70424D5030000    mov dword [esp],0x3d5
00022839  E812EFFFFF        call dword 0x21750
0002283E  E831EFFFFF        call dword 0x21774
00022843  C9                leave
00022844  C3                ret
00022845  55                push ebp
00022846  89E5              mov ebp,esp
00022848  83EC18            sub esp,byte +0x18
0002284B  A1249A0300        mov eax,[0x39a24]
00022850  83F84F            cmp eax,byte +0x4f
00022853  0F8E86000000      jng dword 0x228df
00022859  E814EFFFFF        call dword 0x21772
0002285E  C744240450000000  mov dword [esp+0x4],0x50
00022866  C7042480070000    mov dword [esp],0x780
0002286D  E8B8F1FFFF        call dword 0x21a2a
00022872  A1249A0300        mov eax,[0x39a24]
00022877  83E850            sub eax,byte +0x50
0002287A  A3249A0300        mov [0x39a24],eax
0002287F  C74424040C000000  mov dword [esp+0x4],0xc
00022887  C70424D4030000    mov dword [esp],0x3d4
0002288E  E8BDEEFFFF        call dword 0x21750
00022893  A1249A0300        mov eax,[0x39a24]
00022898  C1F808            sar eax,0x8
0002289B  0FB6C0            movzx eax,al
0002289E  89442404          mov [esp+0x4],eax
000228A2  C70424D5030000    mov dword [esp],0x3d5
000228A9  E8A2EEFFFF        call dword 0x21750
000228AE  C74424040D000000  mov dword [esp+0x4],0xd
000228B6  C70424D4030000    mov dword [esp],0x3d4
000228BD  E88EEEFFFF        call dword 0x21750
000228C2  A1249A0300        mov eax,[0x39a24]
000228C7  0FB6C0            movzx eax,al
000228CA  89442404          mov [esp+0x4],eax
000228CE  C70424D5030000    mov dword [esp],0x3d5
000228D5  E876EEFFFF        call dword 0x21750
000228DA  E895EEFFFF        call dword 0x21774
000228DF  C9                leave
000228E0  C3                ret
000228E1  55                push ebp
000228E2  89E5              mov ebp,esp
000228E4  83EC28            sub esp,byte +0x28
000228E7  8B15207A0300      mov edx,[dword 0x37a20]
000228ED  A1249A0300        mov eax,[0x39a24]
000228F2  89D1              mov ecx,edx
000228F4  29C1              sub ecx,eax
000228F6  89C8              mov eax,ecx
000228F8  8945F4            mov [ebp-0xc],eax
000228FB  837DF400          cmp dword [ebp-0xc],byte +0x0
000228FF  751F              jnz 0x22920
00022901  A1207A0300        mov eax,[0x37a20]
00022906  83C050            add eax,byte +0x50
00022909  A3207A0300        mov [0x37a20],eax
0002290E  A1207A0300        mov eax,[0x37a20]
00022913  890424            mov [esp],eax
00022916  E83DFEFFFF        call dword 0x22758
0002291B  E98D000000        jmp dword 0x229ad
00022920  8B4DF4            mov ecx,[ebp-0xc]
00022923  BA67666666        mov edx,0x66666667
00022928  89C8              mov eax,ecx
0002292A  F7EA              imul edx
0002292C  C1FA05            sar edx,0x5
0002292F  89C8              mov eax,ecx
00022931  C1F81F            sar eax,0x1f
00022934  29C2              sub edx,eax
00022936  89D0              mov eax,edx
00022938  C1E002            shl eax,0x2
0002293B  01D0              add eax,edx
0002293D  C1E004            shl eax,0x4
00022940  89CA              mov edx,ecx
00022942  29C2              sub edx,eax
00022944  85D2              test edx,edx
00022946  744B              jz 0x22993
00022948  8B4DF4            mov ecx,[ebp-0xc]
0002294B  BA67666666        mov edx,0x66666667
00022950  89C8              mov eax,ecx
00022952  F7EA              imul edx
00022954  C1FA05            sar edx,0x5
00022957  89C8              mov eax,ecx
00022959  C1F81F            sar eax,0x1f
0002295C  29C2              sub edx,eax
0002295E  89D0              mov eax,edx
00022960  C1E002            shl eax,0x2
00022963  01D0              add eax,edx
00022965  C1E004            shl eax,0x4
00022968  89CA              mov edx,ecx
0002296A  29C2              sub edx,eax
0002296C  B850000000        mov eax,0x50
00022971  89C1              mov ecx,eax
00022973  29D1              sub ecx,edx
00022975  89CA              mov edx,ecx
00022977  A1207A0300        mov eax,[0x37a20]
0002297C  8D0402            lea eax,[edx+eax]
0002297F  A3207A0300        mov [0x37a20],eax
00022984  A1207A0300        mov eax,[0x37a20]
00022989  890424            mov [esp],eax
0002298C  E8C7FDFFFF        call dword 0x22758
00022991  EB1A              jmp short 0x229ad
00022993  A1207A0300        mov eax,[0x37a20]
00022998  83C050            add eax,byte +0x50
0002299B  A3207A0300        mov [0x37a20],eax
000229A0  A1207A0300        mov eax,[0x37a20]
000229A5  890424            mov [esp],eax
000229A8  E8ABFDFFFF        call dword 0x22758
000229AD  8B45F4            mov eax,[ebp-0xc]
000229B0  2D30070000        sub eax,0x730
000229B5  83F84F            cmp eax,byte +0x4f
000229B8  7705              ja 0x229bf
000229BA  E8F8FDFFFF        call dword 0x227b7
000229BF  C9                leave
000229C0  C3                ret
000229C1  90                nop
000229C2  90                nop
000229C3  90                nop
000229C4  55                push ebp
000229C5  89E5              mov ebp,esp
000229C7  83EC28            sub esp,byte +0x28
000229CA  C7442404A8000000  mov dword [esp+0x4],0xa8
000229D2  C7042464000000    mov dword [esp],0x64
000229D9  E872EDFFFF        call dword 0x21750
000229DE  C744240420000000  mov dword [esp+0x4],0x20
000229E6  C7042464000000    mov dword [esp],0x64
000229ED  E85EEDFFFF        call dword 0x21750
000229F2  C7042460000000    mov dword [esp],0x60
000229F9  E864EDFFFF        call dword 0x21762
000229FE  83C802            or eax,byte +0x2
00022A01  0FB6C0            movzx eax,al
00022A04  8945F4            mov [ebp-0xc],eax
00022A07  C744240460000000  mov dword [esp+0x4],0x60
00022A0F  C7042464000000    mov dword [esp],0x64
00022A16  E835EDFFFF        call dword 0x21750
00022A1B  8B45F4            mov eax,[ebp-0xc]
00022A1E  0FB6C0            movzx eax,al
00022A21  89442404          mov [esp+0x4],eax
00022A25  C7042460000000    mov dword [esp],0x60
00022A2C  E81FEDFFFF        call dword 0x21750
00022A31  C7442404D4000000  mov dword [esp+0x4],0xd4
00022A39  C7042464000000    mov dword [esp],0x64
00022A40  E80BEDFFFF        call dword 0x21750
00022A45  C7442404F6000000  mov dword [esp+0x4],0xf6
00022A4D  C7042460000000    mov dword [esp],0x60
00022A54  E8F7ECFFFF        call dword 0x21750
00022A59  C7042460000000    mov dword [esp],0x60
00022A60  E8FDECFFFF        call dword 0x21762
00022A65  C7442404D4000000  mov dword [esp+0x4],0xd4
00022A6D  C7042464000000    mov dword [esp],0x64
00022A74  E8D7ECFFFF        call dword 0x21750
00022A79  C7442404F4000000  mov dword [esp+0x4],0xf4
00022A81  C7042460000000    mov dword [esp],0x60
00022A88  E8C3ECFFFF        call dword 0x21750
00022A8D  C7042460000000    mov dword [esp],0x60
00022A94  E8C9ECFFFF        call dword 0x21762
00022A99  C704240C000000    mov dword [esp],0xc
00022AA0  E845EBFFFF        call dword 0x215ea
00022AA5  C9                leave
00022AA6  C3                ret
00022AA7  55                push ebp
00022AA8  89E5              mov ebp,esp
00022AAA  83EC28            sub esp,byte +0x28
00022AAD  C7042460000000    mov dword [esp],0x60
00022AB4  E8A9ECFFFF        call dword 0x21762
00022AB9  8845F7            mov [ebp-0x9],al
00022ABC  0FB605E0490200    movzx eax,byte [dword 0x249e0]
00022AC3  84C0              test al,al
00022AC5  0F95C2            setnz dl
00022AC8  83E801            sub eax,byte +0x1
00022ACB  A2E0490200        mov [0x249e0],al
00022AD0  84D2              test dl,dl
00022AD2  0F8488000000      jz dword 0x22b60
00022AD8  0FB605E0490200    movzx eax,byte [dword 0x249e0]
00022ADF  0FB6C0            movzx eax,al
00022AE2  83F801            cmp eax,byte +0x1
00022AE5  744A              jz 0x22b31
00022AE7  83F802            cmp eax,byte +0x2
00022AEA  745B              jz 0x22b47
00022AEC  85C0              test eax,eax
00022AEE  756F              jnz 0x22b5f
00022AF0  0FB605E0490200    movzx eax,byte [dword 0x249e0]
00022AF7  0FB6C0            movzx eax,al
00022AFA  0FB655F7          movzx edx,byte [ebp-0x9]
00022AFE  8890289A0300      mov [eax+0x39a28],dl
00022B04  0FB605299A0300    movzx eax,byte [dword 0x39a29]
00022B0B  A206820200        mov [0x28206],al
00022B10  0FB605289A0300    movzx eax,byte [dword 0x39a28]
00022B17  A205850300        mov [0x38505],al
00022B1C  0FB6052A9A0300    movzx eax,byte [dword 0x39a2a]
00022B23  A204850300        mov [0x38504],al
00022B28  C605E049020003    mov byte [dword 0x249e0],0x3
00022B2F  EB2C              jmp short 0x22b5d
00022B31  0FB605E0490200    movzx eax,byte [dword 0x249e0]
00022B38  0FB6C0            movzx eax,al
00022B3B  0FB655F7          movzx edx,byte [ebp-0x9]
00022B3F  8890289A0300      mov [eax+0x39a28],dl
00022B45  EB16              jmp short 0x22b5d
00022B47  0FB605E0490200    movzx eax,byte [dword 0x249e0]
00022B4E  0FB6C0            movzx eax,al
00022B51  0FB655F7          movzx edx,byte [ebp-0x9]
00022B55  8890289A0300      mov [eax+0x39a28],dl
00022B5B  EB03              jmp short 0x22b60
00022B5D  EB01              jmp short 0x22b60
00022B5F  90                nop
00022B60  C704240C000000    mov dword [esp],0xc
00022B67  E8A2EBFFFF        call dword 0x2170e
00022B6C  C9                leave
00022B6D  C3                ret
00022B6E  90                nop
00022B6F  90                nop
00022B70  0F20E0            mov eax,cr4
00022B73  0D01000000        or eax,0x1
00022B78  0F22E0            mov cr4,eax
00022B7B  B902020200        mov ecx,0x20202
00022B80  B8DD2B0200        mov eax,0x22bdd
00022B85  89C3              mov ebx,eax
00022B87  C1EB04            shr ebx,0x4
00022B8A  250F000000        and eax,0xf
00022B8F  51                push ecx
00022B90  53                push ebx
00022B91  50                push eax
00022B92  CF                iretd
00022B93  0F20E0            mov eax,cr4
00022B96  0D01000000        or eax,0x1
00022B9B  0F22E0            mov cr4,eax
00022B9E  B902020200        mov ecx,0x20202
00022BA3  B8BF2B0200        mov eax,0x22bbf
00022BA8  89C3              mov ebx,eax
00022BAA  C1EB04            shr ebx,0x4
00022BAD  250F000000        and eax,0xf
00022BB2  51                push ecx
00022BB3  53                push ebx
00022BB4  50                push eax
00022BB5  CF                iretd
00022BB6  66B81000          mov ax,0x10
00022BBA  8ED8              mov ds,ax
00022BBC  8EC0              mov es,ax
00022BBE  C3                ret
00022BBF  8CC8              mov eax,cs
00022BC1  8ED8              mov ds,ax
00022BC3  B820108EE0        mov eax,0xe08e1020
00022BC8  B400              mov ah,0x0
00022BCA  B003              mov al,0x3
00022BCC  CD10              int 0x10
00022BCE  E9FDFF3333        jmp dword 0x33362bd0
00022BD3  3333              xor esi,[ebx]
00022BD5  B40B              mov ah,0xb
00022BD7  B700              mov bh,0x0
00022BD9  B304              mov bl,0x4
00022BDB  CD10              int 0x10
00022BDD  8CC8              mov eax,cs
00022BDF  8ED8              mov ds,ax
00022BE1  8ED0              mov ss,ax
00022BE3  8EE8              mov gs,ax
00022BE5  8EE0              mov fs,ax
00022BE7  B800A08EC0        mov eax,0xc08ea000
00022BEC  BC0020B400        mov esp,0xb42000
00022BF1  B013              mov al,0x13
00022BF3  CD10              int 0x10
00022BF5  B410              mov ah,0x10
00022BF7  B003              mov al,0x3
00022BF9  B300              mov bl,0x0
00022BFB  B704              mov bh,0x4
00022BFD  CD10              int 0x10
00022BFF  E9FDFF9090        jmp dword 0x90932c01
00022C04  55                push ebp
00022C05  89E5              mov ebp,esp
00022C07  83EC10            sub esp,byte +0x10
00022C0A  8B4508            mov eax,[ebp+0x8]
00022C0D  83E00F            and eax,byte +0xf
00022C10  668945FE          mov [ebp-0x2],ax
00022C14  8B4508            mov eax,[ebp+0x8]
00022C17  8B5508            mov edx,[ebp+0x8]
00022C1A  83E20F            and edx,byte +0xf
00022C1D  29D0              sub eax,edx
00022C1F  C1E804            shr eax,0x4
00022C22  668945FC          mov [ebp-0x4],ax
00022C26  0FB745FC          movzx eax,word [ebp-0x4]
00022C2A  89C2              mov edx,eax
00022C2C  C1E204            shl edx,0x4
00022C2F  0FB745FE          movzx eax,word [ebp-0x2]
00022C33  8D0402            lea eax,[edx+eax]
00022C36  C9                leave
00022C37  C3                ret
00022C38  55                push ebp
00022C39  89E5              mov ebp,esp
00022C3B  5D                pop ebp
00022C3C  C3                ret
00022C3D  55                push ebp
00022C3E  89E5              mov ebp,esp
00022C40  5D                pop ebp
00022C41  C3                ret
00022C42  55                push ebp
00022C43  89E5              mov ebp,esp
00022C45  83EC38            sub esp,byte +0x38
00022C48  8D4508            lea eax,[ebp+0x8]
00022C4B  8945E0            mov [ebp-0x20],eax
00022C4E  C745F400000000    mov dword [ebp-0xc],0x0
00022C55  8B45E0            mov eax,[ebp-0x20]
00022C58  83C008            add eax,byte +0x8
00022C5B  8B00              mov eax,[eax]
00022C5D  89C2              mov edx,eax
00022C5F  C1E204            shl edx,0x4
00022C62  8B45E0            mov eax,[ebp-0x20]
00022C65  83C004            add eax,byte +0x4
00022C68  8B00              mov eax,[eax]
00022C6A  0FB7C0            movzx eax,ax
00022C6D  8D0402            lea eax,[edx+eax]
00022C70  8945E4            mov [ebp-0x1c],eax
00022C73  8B45E0            mov eax,[ebp-0x20]
00022C76  83C014            add eax,byte +0x14
00022C79  8B00              mov eax,[eax]
00022C7B  89C2              mov edx,eax
00022C7D  C1E204            shl edx,0x4
00022C80  8B45E0            mov eax,[ebp-0x20]
00022C83  83C010            add eax,byte +0x10
00022C86  8B00              mov eax,[eax]
00022C88  0FB7C0            movzx eax,ax
00022C8B  8D0402            lea eax,[edx+eax]
00022C8E  8945E8            mov [ebp-0x18],eax
00022C91  8B45E8            mov eax,[ebp-0x18]
00022C94  8945F0            mov [ebp-0x10],eax
00022C97  8B45E4            mov eax,[ebp-0x1c]
00022C9A  8B00              mov eax,[eax]
00022C9C  0FB6C0            movzx eax,al
00022C9F  3DCD000000        cmp eax,0xcd
00022CA4  0F85BA000000      jnz dword 0x22d64
00022CAA  C7042414370200    mov dword [esp],0x23714
00022CB1  E8C0EAFFFF        call dword 0x21776
00022CB6  C7042418370200    mov dword [esp],0x23718
00022CBD  E8B4EAFFFF        call dword 0x21776
00022CC2  8B45E0            mov eax,[ebp-0x20]
00022CC5  83C010            add eax,byte +0x10
00022CC8  8B55E0            mov edx,[ebp-0x20]
00022CCB  83C210            add edx,byte +0x10
00022CCE  8B12              mov edx,[edx]
00022CD0  83EA06            sub edx,byte +0x6
00022CD3  81E2FFFF0000      and edx,0xffff
00022CD9  8910              mov [eax],edx
00022CDB  836DF006          sub dword [ebp-0x10],byte +0x6
00022CDF  8B45E0            mov eax,[ebp-0x20]
00022CE2  8B00              mov eax,[eax]
00022CE4  8D5002            lea edx,[eax+0x2]
00022CE7  8B45F0            mov eax,[ebp-0x10]
00022CEA  668910            mov [eax],dx
00022CED  8B45F0            mov eax,[ebp-0x10]
00022CF0  8D5002            lea edx,[eax+0x2]
00022CF3  8B45E0            mov eax,[ebp-0x20]
00022CF6  83C004            add eax,byte +0x4
00022CF9  8B00              mov eax,[eax]
00022CFB  668902            mov [edx],ax
00022CFE  8B45F0            mov eax,[ebp-0x10]
00022D01  8D5004            lea edx,[eax+0x4]
00022D04  8B45E0            mov eax,[ebp-0x20]
00022D07  83C008            add eax,byte +0x8
00022D0A  8B00              mov eax,[eax]
00022D0C  668902            mov [edx],ax
00022D0F  8B45E4            mov eax,[ebp-0x1c]
00022D12  8945DC            mov [ebp-0x24],eax
00022D15  8B45E0            mov eax,[ebp-0x20]
00022D18  8D5008            lea edx,[eax+0x8]
00022D1B  8B45DC            mov eax,[ebp-0x24]
00022D1E  83C001            add eax,byte +0x1
00022D21  0FB600            movzx eax,byte [eax]
00022D24  0FB6C0            movzx eax,al
00022D27  01C0              add eax,eax
00022D29  83C001            add eax,byte +0x1
00022D2C  01C0              add eax,eax
00022D2E  0345F4            add eax,[ebp-0xc]
00022D31  0FB700            movzx eax,word [eax]
00022D34  0FB7C0            movzx eax,ax
00022D37  8902              mov [edx],eax
00022D39  8B45E0            mov eax,[ebp-0x20]
00022D3C  8D5004            lea edx,[eax+0x4]
00022D3F  8B45DC            mov eax,[ebp-0x24]
00022D42  83C001            add eax,byte +0x1
00022D45  0FB600            movzx eax,byte [eax]
00022D48  0FB6C0            movzx eax,al
00022D4B  C1E002            shl eax,0x2
00022D4E  0345F4            add eax,[ebp-0xc]
00022D51  0FB700            movzx eax,word [eax]
00022D54  0FB7C0            movzx eax,ax
00022D57  8902              mov [edx],eax
00022D59  B801000000        mov eax,0x1
00022D5E  89C2              mov edx,eax
00022D60  89D0              mov eax,edx
00022D62  EB00              jmp short 0x22d64
00022D64  C9                leave
00022D65  C3                ret
00022D66  90                nop
00022D67  90                nop
00022D68  90                nop
00022D69  90                nop
00022D6A  90                nop
00022D6B  90                nop
00022D6C  90                nop
00022D6D  90                nop
00022D6E  90                nop
00022D6F  90                nop
00022D70  55                push ebp
00022D71  89E5              mov ebp,esp
00022D73  BE00000A00        mov esi,0xa0000
00022D78  8B5C2408          mov ebx,[esp+0x8]
00022D7C  668B44240C        mov ax,[esp+0xc]
00022D81  66B94001          mov cx,0x140
00022D85  66F7E1            mul cx
00022D88  01C6              add esi,eax
00022D8A  01DE              add esi,ebx
00022D8C  8A4C2410          mov cl,[esp+0x10]
00022D90  880E              mov [esi],cl
00022D92  5D                pop ebp
00022D93  C3                ret
00022D94  55                push ebp
00022D95  89E5              mov ebp,esp
00022D97  BE00000A00        mov esi,0xa0000
00022D9C  8B5C2408          mov ebx,[esp+0x8]
00022DA0  668B44240C        mov ax,[esp+0xc]
00022DA5  66B94001          mov cx,0x140
00022DA9  66F7E1            mul cx
00022DAC  01C6              add esi,eax
00022DAE  01DE              add esi,ebx
00022DB0  66C7060000        mov word [esi],0x0
00022DB5  5D                pop ebp
00022DB6  C3                ret
00022DB7  90                nop
00022DB8  55                push ebp
00022DB9  89E5              mov ebp,esp
00022DBB  837D0800          cmp dword [ebp+0x8],byte +0x0
00022DBF  7818              js 0x22dd9
00022DC1  837D0C00          cmp dword [ebp+0xc],byte +0x0
00022DC5  7812              js 0x22dd9
00022DC7  817D0840010000    cmp dword [ebp+0x8],0x140
00022DCE  7F09              jg 0x22dd9
00022DD0  817D0CC8000000    cmp dword [ebp+0xc],0xc8
00022DD7  7E07              jng 0x22de0
00022DD9  B800000000        mov eax,0x0
00022DDE  EB05              jmp short 0x22de5
00022DE0  B801000000        mov eax,0x1
00022DE5  5D                pop ebp
00022DE6  C3                ret
00022DE7  55                push ebp
00022DE8  89E5              mov ebp,esp
00022DEA  83EC18            sub esp,byte +0x18
00022DED  8B450C            mov eax,[ebp+0xc]
00022DF0  89442404          mov [esp+0x4],eax
00022DF4  8B4508            mov eax,[ebp+0x8]
00022DF7  890424            mov [esp],eax
00022DFA  E8B9FFFFFF        call dword 0x22db8
00022DFF  85C0              test eax,eax
00022E01  741B              jz 0x22e1e
00022E03  8B4510            mov eax,[ebp+0x10]
00022E06  89442408          mov [esp+0x8],eax
00022E0A  8B450C            mov eax,[ebp+0xc]
00022E0D  89442404          mov [esp+0x4],eax
00022E11  8B4508            mov eax,[ebp+0x8]
00022E14  890424            mov [esp],eax
00022E17  E854FFFFFF        call dword 0x22d70
00022E1C  EB01              jmp short 0x22e1f
00022E1E  90                nop
00022E1F  C9                leave
00022E20  C3                ret
00022E21  55                push ebp
00022E22  89E5              mov ebp,esp
00022E24  53                push ebx
00022E25  83EC44            sub esp,byte +0x44
00022E28  C745EC00000000    mov dword [ebp-0x14],0x0
00022E2F  C745F000000000    mov dword [ebp-0x10],0x0
00022E36  8B4508            mov eax,[ebp+0x8]
00022E39  3B4510            cmp eax,[ebp+0x10]
00022E3C  7E26              jng 0x22e64
00022E3E  8B4508            mov eax,[ebp+0x8]
00022E41  8945F4            mov [ebp-0xc],eax
00022E44  8B4510            mov eax,[ebp+0x10]
00022E47  894508            mov [ebp+0x8],eax
00022E4A  8B45F4            mov eax,[ebp-0xc]
00022E4D  894510            mov [ebp+0x10],eax
00022E50  8B450C            mov eax,[ebp+0xc]
00022E53  8945F4            mov [ebp-0xc],eax
00022E56  8B4514            mov eax,[ebp+0x14]
00022E59  89450C            mov [ebp+0xc],eax
00022E5C  8B45F4            mov eax,[ebp-0xc]
00022E5F  894514            mov [ebp+0x14],eax
00022E62  EB50              jmp short 0x22eb4
00022E64  8B4508            mov eax,[ebp+0x8]
00022E67  3B4510            cmp eax,[ebp+0x10]
00022E6A  7548              jnz 0x22eb4
00022E6C  8B450C            mov eax,[ebp+0xc]
00022E6F  3B4514            cmp eax,[ebp+0x14]
00022E72  7D08              jnl 0x22e7c
00022E74  8B450C            mov eax,[ebp+0xc]
00022E77  8945D4            mov [ebp-0x2c],eax
00022E7A  EB2B              jmp short 0x22ea7
00022E7C  8B4514            mov eax,[ebp+0x14]
00022E7F  8945D4            mov [ebp-0x2c],eax
00022E82  8B450C            mov eax,[ebp+0xc]
00022E85  894514            mov [ebp+0x14],eax
00022E88  EB1D              jmp short 0x22ea7
00022E8A  8B4518            mov eax,[ebp+0x18]
00022E8D  89442408          mov [esp+0x8],eax
00022E91  8B45D4            mov eax,[ebp-0x2c]
00022E94  89442404          mov [esp+0x4],eax
00022E98  8B4508            mov eax,[ebp+0x8]
00022E9B  890424            mov [esp],eax
00022E9E  E844FFFFFF        call dword 0x22de7
00022EA3  8345D401          add dword [ebp-0x2c],byte +0x1
00022EA7  8B45D4            mov eax,[ebp-0x2c]
00022EAA  3B4514            cmp eax,[ebp+0x14]
00022EAD  7CDB              jl 0x22e8a
00022EAF  E9CE010000        jmp dword 0x23082
00022EB4  8B4510            mov eax,[ebp+0x10]
00022EB7  8B5508            mov edx,[ebp+0x8]
00022EBA  89D1              mov ecx,edx
00022EBC  29C1              sub ecx,eax
00022EBE  89C8              mov eax,ecx
00022EC0  890424            mov [esp],eax
00022EC3  E8DEE9FFFF        call dword 0x218a6
00022EC8  89C3              mov ebx,eax
00022ECA  8B4514            mov eax,[ebp+0x14]
00022ECD  8B550C            mov edx,[ebp+0xc]
00022ED0  89D1              mov ecx,edx
00022ED2  29C1              sub ecx,eax
00022ED4  89C8              mov eax,ecx
00022ED6  890424            mov [esp],eax
00022ED9  E8C8E9FFFF        call dword 0x218a6
00022EDE  39C3              cmp ebx,eax
00022EE0  7D07              jnl 0x22ee9
00022EE2  C745F001000000    mov dword [ebp-0x10],0x1
00022EE9  8B450C            mov eax,[ebp+0xc]
00022EEC  3B4514            cmp eax,[ebp+0x14]
00022EEF  7E07              jng 0x22ef8
00022EF1  C745EC01000000    mov dword [ebp-0x14],0x1
00022EF8  8B4508            mov eax,[ebp+0x8]
00022EFB  8945D8            mov [ebp-0x28],eax
00022EFE  8B450C            mov eax,[ebp+0xc]
00022F01  8945DC            mov [ebp-0x24],eax
00022F04  8B4518            mov eax,[ebp+0x18]
00022F07  89442408          mov [esp+0x8],eax
00022F0B  8B45DC            mov eax,[ebp-0x24]
00022F0E  89442404          mov [esp+0x4],eax
00022F12  8B45D8            mov eax,[ebp-0x28]
00022F15  890424            mov [esp],eax
00022F18  E8CAFEFFFF        call dword 0x22de7
00022F1D  837DF000          cmp dword [ebp-0x10],byte +0x0
00022F21  0F85AA000000      jnz dword 0x22fd1
00022F27  837DEC00          cmp dword [ebp-0x14],byte +0x0
00022F2B  7511              jnz 0x22f3e
00022F2D  8B4514            mov eax,[ebp+0x14]
00022F30  8B550C            mov edx,[ebp+0xc]
00022F33  89D1              mov ecx,edx
00022F35  29C1              sub ecx,eax
00022F37  89C8              mov eax,ecx
00022F39  8945D0            mov [ebp-0x30],eax
00022F3C  EB0F              jmp short 0x22f4d
00022F3E  8B450C            mov eax,[ebp+0xc]
00022F41  8B5514            mov edx,[ebp+0x14]
00022F44  89D1              mov ecx,edx
00022F46  29C1              sub ecx,eax
00022F48  89C8              mov eax,ecx
00022F4A  8945D0            mov [ebp-0x30],eax
00022F4D  8B4508            mov eax,[ebp+0x8]
00022F50  8B5510            mov edx,[ebp+0x10]
00022F53  89D1              mov ecx,edx
00022F55  29C1              sub ecx,eax
00022F57  89C8              mov eax,ecx
00022F59  8945D4            mov [ebp-0x2c],eax
00022F5C  8B45D0            mov eax,[ebp-0x30]
00022F5F  01C0              add eax,eax
00022F61  0345D4            add eax,[ebp-0x2c]
00022F64  8945E0            mov [ebp-0x20],eax
00022F67  8B45D0            mov eax,[ebp-0x30]
00022F6A  01C0              add eax,eax
00022F6C  8945E4            mov [ebp-0x1c],eax
00022F6F  8B45D4            mov eax,[ebp-0x2c]
00022F72  8B55D0            mov edx,[ebp-0x30]
00022F75  8D0402            lea eax,[edx+eax]
00022F78  01C0              add eax,eax
00022F7A  8945E8            mov [ebp-0x18],eax
00022F7D  EB45              jmp short 0x22fc4
00022F7F  837DE000          cmp dword [ebp-0x20],byte +0x0
00022F83  791C              jns 0x22fa1
00022F85  8345D801          add dword [ebp-0x28],byte +0x1
00022F89  837DEC00          cmp dword [ebp-0x14],byte +0x0
00022F8D  7506              jnz 0x22f95
00022F8F  8345DC01          add dword [ebp-0x24],byte +0x1
00022F93  EB04              jmp short 0x22f99
00022F95  836DDC01          sub dword [ebp-0x24],byte +0x1
00022F99  8B45E8            mov eax,[ebp-0x18]
00022F9C  0145E0            add [ebp-0x20],eax
00022F9F  EB0A              jmp short 0x22fab
00022FA1  8345D801          add dword [ebp-0x28],byte +0x1
00022FA5  8B45E4            mov eax,[ebp-0x1c]
00022FA8  0145E0            add [ebp-0x20],eax
00022FAB  8B4518            mov eax,[ebp+0x18]
00022FAE  89442408          mov [esp+0x8],eax
00022FB2  8B45DC            mov eax,[ebp-0x24]
00022FB5  89442404          mov [esp+0x4],eax
00022FB9  8B45D8            mov eax,[ebp-0x28]
00022FBC  890424            mov [esp],eax
00022FBF  E823FEFFFF        call dword 0x22de7
00022FC4  8B45D8            mov eax,[ebp-0x28]
00022FC7  3B4510            cmp eax,[ebp+0x10]
00022FCA  7CB3              jl 0x22f7f
00022FCC  E9B1000000        jmp dword 0x23082
00022FD1  8B4510            mov eax,[ebp+0x10]
00022FD4  8B5508            mov edx,[ebp+0x8]
00022FD7  89D1              mov ecx,edx
00022FD9  29C1              sub ecx,eax
00022FDB  89C8              mov eax,ecx
00022FDD  8945D0            mov [ebp-0x30],eax
00022FE0  837DEC00          cmp dword [ebp-0x14],byte +0x0
00022FE4  7511              jnz 0x22ff7
00022FE6  8B450C            mov eax,[ebp+0xc]
00022FE9  8B5514            mov edx,[ebp+0x14]
00022FEC  89D1              mov ecx,edx
00022FEE  29C1              sub ecx,eax
00022FF0  89C8              mov eax,ecx
00022FF2  8945D4            mov [ebp-0x2c],eax
00022FF5  EB0F              jmp short 0x23006
00022FF7  8B4514            mov eax,[ebp+0x14]
00022FFA  8B550C            mov edx,[ebp+0xc]
00022FFD  89D1              mov ecx,edx
00022FFF  29C1              sub ecx,eax
00023001  89C8              mov eax,ecx
00023003  8945D4            mov [ebp-0x2c],eax
00023006  8B45D0            mov eax,[ebp-0x30]
00023009  01C0              add eax,eax
0002300B  0345D4            add eax,[ebp-0x2c]
0002300E  8945E0            mov [ebp-0x20],eax
00023011  8B45D0            mov eax,[ebp-0x30]
00023014  01C0              add eax,eax
00023016  8945E4            mov [ebp-0x1c],eax
00023019  8B45D4            mov eax,[ebp-0x2c]
0002301C  8B55D0            mov edx,[ebp-0x30]
0002301F  8D0402            lea eax,[edx+eax]
00023022  01C0              add eax,eax
00023024  8945E8            mov [ebp-0x18],eax
00023027  EB51              jmp short 0x2307a
00023029  837DE000          cmp dword [ebp-0x20],byte +0x0
0002302D  791C              jns 0x2304b
0002302F  8345D801          add dword [ebp-0x28],byte +0x1
00023033  837DEC00          cmp dword [ebp-0x14],byte +0x0
00023037  7506              jnz 0x2303f
00023039  8345DC01          add dword [ebp-0x24],byte +0x1
0002303D  EB04              jmp short 0x23043
0002303F  836DDC01          sub dword [ebp-0x24],byte +0x1
00023043  8B45E8            mov eax,[ebp-0x18]
00023046  0145E0            add [ebp-0x20],eax
00023049  EB16              jmp short 0x23061
0002304B  837DEC00          cmp dword [ebp-0x14],byte +0x0
0002304F  7506              jnz 0x23057
00023051  8345DC01          add dword [ebp-0x24],byte +0x1
00023055  EB04              jmp short 0x2305b
00023057  836DDC01          sub dword [ebp-0x24],byte +0x1
0002305B  8B45E4            mov eax,[ebp-0x1c]
0002305E  0145E0            add [ebp-0x20],eax
00023061  8B4518            mov eax,[ebp+0x18]
00023064  89442408          mov [esp+0x8],eax
00023068  8B45DC            mov eax,[ebp-0x24]
0002306B  89442404          mov [esp+0x4],eax
0002306F  8B45D8            mov eax,[ebp-0x28]
00023072  890424            mov [esp],eax
00023075  E86DFDFFFF        call dword 0x22de7
0002307A  8B45D8            mov eax,[ebp-0x28]
0002307D  3B4510            cmp eax,[ebp+0x10]
00023080  7CA7              jl 0x23029
00023082  83C444            add esp,byte +0x44
00023085  5B                pop ebx
00023086  5D                pop ebp
00023087  C3                ret
00023088  55                push ebp
00023089  89E5              mov ebp,esp
0002308B  53                push ebx
0002308C  83EC24            sub esp,byte +0x24
0002308F  8B4514            mov eax,[ebp+0x14]
00023092  8B550C            mov edx,[ebp+0xc]
00023095  01C2              add edx,eax
00023097  8B4518            mov eax,[ebp+0x18]
0002309A  89442410          mov [esp+0x10],eax
0002309E  8954240C          mov [esp+0xc],edx
000230A2  8B4508            mov eax,[ebp+0x8]
000230A5  89442408          mov [esp+0x8],eax
000230A9  8B450C            mov eax,[ebp+0xc]
000230AC  89442404          mov [esp+0x4],eax
000230B0  8B4508            mov eax,[ebp+0x8]
000230B3  890424            mov [esp],eax
000230B6  E866FDFFFF        call dword 0x22e21
000230BB  8B4510            mov eax,[ebp+0x10]
000230BE  8B5508            mov edx,[ebp+0x8]
000230C1  01C2              add edx,eax
000230C3  8B4518            mov eax,[ebp+0x18]
000230C6  89442410          mov [esp+0x10],eax
000230CA  8B450C            mov eax,[ebp+0xc]
000230CD  8944240C          mov [esp+0xc],eax
000230D1  89542408          mov [esp+0x8],edx
000230D5  8B450C            mov eax,[ebp+0xc]
000230D8  89442404          mov [esp+0x4],eax
000230DC  8B4508            mov eax,[ebp+0x8]
000230DF  890424            mov [esp],eax
000230E2  E83AFDFFFF        call dword 0x22e21
000230E7  8B4514            mov eax,[ebp+0x14]
000230EA  8B550C            mov edx,[ebp+0xc]
000230ED  8D1C02            lea ebx,[edx+eax]
000230F0  8B4510            mov eax,[ebp+0x10]
000230F3  8B5508            mov edx,[ebp+0x8]
000230F6  8D0C02            lea ecx,[edx+eax]
000230F9  8B4514            mov eax,[ebp+0x14]
000230FC  8B550C            mov edx,[ebp+0xc]
000230FF  01C2              add edx,eax
00023101  8B4518            mov eax,[ebp+0x18]
00023104  89442410          mov [esp+0x10],eax
00023108  895C240C          mov [esp+0xc],ebx
0002310C  894C2408          mov [esp+0x8],ecx
00023110  89542404          mov [esp+0x4],edx
00023114  8B4508            mov eax,[ebp+0x8]
00023117  890424            mov [esp],eax
0002311A  E802FDFFFF        call dword 0x22e21
0002311F  8B4514            mov eax,[ebp+0x14]
00023122  8B550C            mov edx,[ebp+0xc]
00023125  8D1C02            lea ebx,[edx+eax]
00023128  8B4510            mov eax,[ebp+0x10]
0002312B  8B5508            mov edx,[ebp+0x8]
0002312E  8D0C02            lea ecx,[edx+eax]
00023131  8B4510            mov eax,[ebp+0x10]
00023134  8B5508            mov edx,[ebp+0x8]
00023137  01C2              add edx,eax
00023139  8B4518            mov eax,[ebp+0x18]
0002313C  89442410          mov [esp+0x10],eax
00023140  895C240C          mov [esp+0xc],ebx
00023144  894C2408          mov [esp+0x8],ecx
00023148  8B450C            mov eax,[ebp+0xc]
0002314B  89442404          mov [esp+0x4],eax
0002314F  891424            mov [esp],edx
00023152  E8CAFCFFFF        call dword 0x22e21
00023157  83C424            add esp,byte +0x24
0002315A  5B                pop ebx
0002315B  5D                pop ebp
0002315C  C3                ret
0002315D  55                push ebp
0002315E  89E5              mov ebp,esp
00023160  5D                pop ebp
00023161  C3                ret
00023162  55                push ebp
00023163  89E5              mov ebp,esp
00023165  83EC28            sub esp,byte +0x28
00023168  8B4520            mov eax,[ebp+0x20]
0002316B  89442410          mov [esp+0x10],eax
0002316F  8B4514            mov eax,[ebp+0x14]
00023172  8944240C          mov [esp+0xc],eax
00023176  8B4510            mov eax,[ebp+0x10]
00023179  89442408          mov [esp+0x8],eax
0002317D  8B450C            mov eax,[ebp+0xc]
00023180  89442404          mov [esp+0x4],eax
00023184  8B4508            mov eax,[ebp+0x8]
00023187  890424            mov [esp],eax
0002318A  E892FCFFFF        call dword 0x22e21
0002318F  8B4520            mov eax,[ebp+0x20]
00023192  89442410          mov [esp+0x10],eax
00023196  8B451C            mov eax,[ebp+0x1c]
00023199  8944240C          mov [esp+0xc],eax
0002319D  8B4518            mov eax,[ebp+0x18]
000231A0  89442408          mov [esp+0x8],eax
000231A4  8B450C            mov eax,[ebp+0xc]
000231A7  89442404          mov [esp+0x4],eax
000231AB  8B4508            mov eax,[ebp+0x8]
000231AE  890424            mov [esp],eax
000231B1  E86BFCFFFF        call dword 0x22e21
000231B6  8B4520            mov eax,[ebp+0x20]
000231B9  89442410          mov [esp+0x10],eax
000231BD  8B451C            mov eax,[ebp+0x1c]
000231C0  8944240C          mov [esp+0xc],eax
000231C4  8B4518            mov eax,[ebp+0x18]
000231C7  89442408          mov [esp+0x8],eax
000231CB  8B4514            mov eax,[ebp+0x14]
000231CE  89442404          mov [esp+0x4],eax
000231D2  8B4510            mov eax,[ebp+0x10]
000231D5  890424            mov [esp],eax
000231D8  E844FCFFFF        call dword 0x22e21
000231DD  C9                leave
000231DE  C3                ret
000231DF  55                push ebp
000231E0  89E5              mov ebp,esp
000231E2  83EC18            sub esp,byte +0x18
000231E5  8B4514            mov eax,[ebp+0x14]
000231E8  8B550C            mov edx,[ebp+0xc]
000231EB  8D0C02            lea ecx,[edx+eax]
000231EE  8B4508            mov eax,[ebp+0x8]
000231F1  8B5510            mov edx,[ebp+0x10]
000231F4  29C2              sub edx,eax
000231F6  8B4518            mov eax,[ebp+0x18]
000231F9  89442408          mov [esp+0x8],eax
000231FD  894C2404          mov [esp+0x4],ecx
00023201  891424            mov [esp],edx
00023204  E8DEFBFFFF        call dword 0x22de7
00023209  8B4514            mov eax,[ebp+0x14]
0002320C  8B550C            mov edx,[ebp+0xc]
0002320F  8D0C02            lea ecx,[edx+eax]
00023212  8B4510            mov eax,[ebp+0x10]
00023215  8B5508            mov edx,[ebp+0x8]
00023218  01C2              add edx,eax
0002321A  8B4518            mov eax,[ebp+0x18]
0002321D  89442408          mov [esp+0x8],eax
00023221  894C2404          mov [esp+0x4],ecx
00023225  891424            mov [esp],edx
00023228  E8BAFBFFFF        call dword 0x22de7
0002322D  8B450C            mov eax,[ebp+0xc]
00023230  8B5514            mov edx,[ebp+0x14]
00023233  89D1              mov ecx,edx
00023235  29C1              sub ecx,eax
00023237  8B4510            mov eax,[ebp+0x10]
0002323A  8B5508            mov edx,[ebp+0x8]
0002323D  01C2              add edx,eax
0002323F  8B4518            mov eax,[ebp+0x18]
00023242  89442408          mov [esp+0x8],eax
00023246  894C2404          mov [esp+0x4],ecx
0002324A  891424            mov [esp],edx
0002324D  E895FBFFFF        call dword 0x22de7
00023252  8B450C            mov eax,[ebp+0xc]
00023255  8B5514            mov edx,[ebp+0x14]
00023258  89D1              mov ecx,edx
0002325A  29C1              sub ecx,eax
0002325C  8B4508            mov eax,[ebp+0x8]
0002325F  8B5510            mov edx,[ebp+0x10]
00023262  29C2              sub edx,eax
00023264  8B4518            mov eax,[ebp+0x18]
00023267  89442408          mov [esp+0x8],eax
0002326B  894C2404          mov [esp+0x4],ecx
0002326F  891424            mov [esp],edx
00023272  E870FBFFFF        call dword 0x22de7
00023277  8B4514            mov eax,[ebp+0x14]
0002327A  8B5508            mov edx,[ebp+0x8]
0002327D  8D0C02            lea ecx,[edx+eax]
00023280  8B4510            mov eax,[ebp+0x10]
00023283  8B550C            mov edx,[ebp+0xc]
00023286  01C2              add edx,eax
00023288  8B4518            mov eax,[ebp+0x18]
0002328B  89442408          mov [esp+0x8],eax
0002328F  894C2404          mov [esp+0x4],ecx
00023293  891424            mov [esp],edx
00023296  E84CFBFFFF        call dword 0x22de7
0002329B  8B4508            mov eax,[ebp+0x8]
0002329E  8B5514            mov edx,[ebp+0x14]
000232A1  89D1              mov ecx,edx
000232A3  29C1              sub ecx,eax
000232A5  8B4510            mov eax,[ebp+0x10]
000232A8  8B550C            mov edx,[ebp+0xc]
000232AB  01C2              add edx,eax
000232AD  8B4518            mov eax,[ebp+0x18]
000232B0  89442408          mov [esp+0x8],eax
000232B4  894C2404          mov [esp+0x4],ecx
000232B8  891424            mov [esp],edx
000232BB  E827FBFFFF        call dword 0x22de7
000232C0  8B4514            mov eax,[ebp+0x14]
000232C3  8B5508            mov edx,[ebp+0x8]
000232C6  8D0C02            lea ecx,[edx+eax]
000232C9  8B450C            mov eax,[ebp+0xc]
000232CC  8B5510            mov edx,[ebp+0x10]
000232CF  29C2              sub edx,eax
000232D1  8B4518            mov eax,[ebp+0x18]
000232D4  89442408          mov [esp+0x8],eax
000232D8  894C2404          mov [esp+0x4],ecx
000232DC  891424            mov [esp],edx
000232DF  E803FBFFFF        call dword 0x22de7
000232E4  8B4508            mov eax,[ebp+0x8]
000232E7  8B5514            mov edx,[ebp+0x14]
000232EA  89D1              mov ecx,edx
000232EC  29C1              sub ecx,eax
000232EE  8B450C            mov eax,[ebp+0xc]
000232F1  8B5510            mov edx,[ebp+0x10]
000232F4  29C2              sub edx,eax
000232F6  8B4518            mov eax,[ebp+0x18]
000232F9  89442408          mov [esp+0x8],eax
000232FD  894C2404          mov [esp+0x4],ecx
00023301  891424            mov [esp],edx
00023304  E8DEFAFFFF        call dword 0x22de7
00023309  C9                leave
0002330A  C3                ret
0002330B  55                push ebp
0002330C  89E5              mov ebp,esp
0002330E  83EC38            sub esp,byte +0x38
00023311  C745EC00000000    mov dword [ebp-0x14],0x0
00023318  8B4510            mov eax,[ebp+0x10]
0002331B  8945F0            mov [ebp-0x10],eax
0002331E  B801000000        mov eax,0x1
00023323  2B4510            sub eax,[ebp+0x10]
00023326  8945F4            mov [ebp-0xc],eax
00023329  EB56              jmp short 0x23381
0002332B  8B4514            mov eax,[ebp+0x14]
0002332E  89442410          mov [esp+0x10],eax
00023332  8B450C            mov eax,[ebp+0xc]
00023335  8944240C          mov [esp+0xc],eax
00023339  8B4508            mov eax,[ebp+0x8]
0002333C  89442408          mov [esp+0x8],eax
00023340  8B45F0            mov eax,[ebp-0x10]
00023343  89442404          mov [esp+0x4],eax
00023347  8B45EC            mov eax,[ebp-0x14]
0002334A  890424            mov [esp],eax
0002334D  E88DFEFFFF        call dword 0x231df
00023352  837DF400          cmp dword [ebp-0xc],byte +0x0
00023356  790D              jns 0x23365
00023358  8B45EC            mov eax,[ebp-0x14]
0002335B  01C0              add eax,eax
0002335D  83C003            add eax,byte +0x3
00023360  0145F4            add [ebp-0xc],eax
00023363  EB18              jmp short 0x2337d
00023365  8B45F0            mov eax,[ebp-0x10]
00023368  8B55EC            mov edx,[ebp-0x14]
0002336B  89D1              mov ecx,edx
0002336D  29C1              sub ecx,eax
0002336F  89C8              mov eax,ecx
00023371  01C0              add eax,eax
00023373  83C005            add eax,byte +0x5
00023376  0145F4            add [ebp-0xc],eax
00023379  836DF001          sub dword [ebp-0x10],byte +0x1
0002337D  8345EC01          add dword [ebp-0x14],byte +0x1
00023381  8B45EC            mov eax,[ebp-0x14]
00023384  3B45F0            cmp eax,[ebp-0x10]
00023387  7EA2              jng 0x2332b
00023389  C9                leave
0002338A  C3                ret
0002338B  90                nop
0002338C  55                push ebp
0002338D  89E5              mov ebp,esp
0002338F  83EC08            sub esp,byte +0x8
00023392  E89FD0FFFF        call dword 0x20436
00023397  C9                leave
00023398  C3                ret
00023399  0000              add [eax],al
0002339B  00496E            add [ecx+0x6e],cl
0002339E  697469616C697A69  imul esi,[ecx+ebp*2+0x61],dword 0x697a696c
000233A6  6E                outsb
000233A7  67204D65          and [di+0x65],cl
000233AB  6D                insd
000233AC  6F                outsd
000233AD  7279              jc 0x23428
000233AF  2E2E2E2E2E2E2E2E  or al,[cs:eax]
         -0A00
000233B9  45                inc ebp
000233BA  6E                outsb
000233BB  61                popad
000233BC  626C6520          bound ebp,[ebp+0x20]
000233C0  49                dec ecx
000233C1  52                push edx
000233C2  51                push ecx
000233C3  2E2E2E2E2E2E2E2E  or al,[cs:eax]
         -0A00
000233CD  45                inc ebp
000233CE  6E                outsb
000233CF  61                popad
000233D0  626C6520          bound ebp,[ebp+0x20]
000233D4  7072              jo 0x23448
000233D6  6F                outsd
000233D7  7465              jz 0x2343e
000233D9  6374696F          arpl [ecx+ebp*2+0x6f],si
000233DD  6E                outsb
000233DE  2E2E2E2E2E2E2E2E  or al,[cs:eax]
         -0A00
000233E8  45                inc ebp
000233E9  6E                outsb
000233EA  61                popad
000233EB  626C6520          bound ebp,[ebp+0x20]
000233EF  4B                dec ebx
000233F0  657962            gs jns 0x23455
000233F3  6F                outsd
000233F4  61                popad
000233F5  7264              jc 0x2345b
000233F7  2E2E2E2E2E2E2E2E  or al,[cs:eax]
         -0A00
00023401  49                dec ecx
00023402  6E                outsb
00023403  697469616C697A69  imul esi,[ecx+ebp*2+0x61],dword 0x697a696c
0002340B  6E                outsb
0002340C  67205072          and [bx+si+0x72],dl
00023410  6F                outsd
00023411  636573            arpl [ebp+0x73],sp
00023414  732E              jnc 0x23444
00023416  2E2E2E2E2E2E2E0A  or al,[cs:eax]
         -00
0002341F  45                inc ebp
00023420  6E                outsb
00023421  61                popad
00023422  626C6520          bound ebp,[ebp+0x20]
00023426  50                push eax
00023427  49                dec ecx
00023428  54                push esp
00023429  2E2E2E2E2E2E2E2E  or al,[cs:eax]
         -0A00
00023433  0028              add [eax],ch
00023435  002C00            add [eax+eax],ch
00023438  2900              sub [eax],eax
0002343A  3A00              cmp al,[eax]
0002343C  2020              and [eax],ah
0002343E  005375            add [ebx+0x75],dl
00023441  6E                outsb
00023442  6461              fs popad
00023444  7900              jns 0x23446
00023446  4D                dec ebp
00023447  6F                outsd
00023448  6E                outsb
00023449  6461              fs popad
0002344B  7900              jns 0x2344d
0002344D  54                push esp
0002344E  7565              jnz 0x234b5
00023450  7364              jnc 0x234b6
00023452  61                popad
00023453  7900              jns 0x23455
00023455  57                push edi
00023456  65646E            fs outsb
00023459  657364            gs jnc 0x234c0
0002345C  61                popad
0002345D  7900              jns 0x2345f
0002345F  54                push esp
00023460  6875727364        push dword 0x64737275
00023465  61                popad
00023466  7900              jns 0x23468
00023468  46                inc esi
00023469  7269              jc 0x234d4
0002346B  6461              fs popad
0002346D  7900              jns 0x2346f
0002346F  53                push ebx
00023470  61                popad
00023471  7475              jz 0x234e8
00023473  7264              jc 0x234d9
00023475  61                popad
00023476  7900              jns 0x23478
00023478  2020              and [eax],ah
0002347A  3230              xor dh,[eax]
0002347C  002E              add [esi],ch
0002347E  0020              add [eax],ah
00023480  2020              and [eax],ah
00023482  2020              and [eax],ah
00023484  0000              add [eax],al
00023486  0000              add [eax],al
00023488  5F                pop edi
00023489  1402              adc al,0x2
0002348B  00FF              add bh,bh
0002348D  1302              adc eax,[edx]
0002348F  000D1402001B      add [dword 0x1b000214],cl
00023495  1402              adc al,0x2
00023497  0029              add [ecx],ch
00023499  1402              adc al,0x2
0002349B  0037              add [edi],dh
0002349D  1402              adc al,0x2
0002349F  004514            add [ebp+0x14],al
000234A2  0200              add al,[eax]
000234A4  53                push ebx
000234A5  1402              adc al,0x2
000234A7  0020              add [eax],ah
000234A9  0000              add [eax],al
000234AB  000A              add [edx],cl
000234AD  004E6F            add [esi+0x6f],cl
000234B0  7720              ja 0x234d2
000234B2  69742069733A003A  imul esi,[eax+0x69],dword 0x3a003a73
000234BA  0020              add [eax],ah
000234BC  2000              and [eax],al
000234BE  3230              xor dh,[eax]
000234C0  002E              add [esi],ch
000234C2  00466C            add [esi+0x6c],al
000234C5  6F                outsd
000234C6  7070              jo 0x23538
000234C8  7920              jns 0x234ea
000234CA  696E666F726D61    imul ebp,[esi+0x66],dword 0x616d726f
000234D1  7469              jz 0x2353c
000234D3  6F                outsd
000234D4  6E                outsb
000234D5  3A00              cmp al,[eax]
000234D7  4E                dec esi
000234D8  6F                outsd
000234D9  20647269          and [edx+esi*2+0x69],ah
000234DD  7665              jna 0x23544
000234DF  210A              and [edx],ecx
000234E1  007369            add [ebx+0x69],dh
000234E4  7A65              jpe 0x2354b
000234E6  2D2D333630        sub eax,0x3036332d
000234EB  6B0A00            imul ecx,[edx],byte +0x0
000234EE  7369              jnc 0x23559
000234F0  7A65              jpe 0x23557
000234F2  2D2D313230        sub eax,0x3032312d
000234F7  6B0A00            imul ecx,[edx],byte +0x0
000234FA  7369              jnc 0x23565
000234FC  7A65              jpe 0x23563
000234FE  2D2D373230        sub eax,0x3032372d
00023503  4B                dec ebx
00023504  0A00              or al,[eax]
00023506  7369              jnc 0x23571
00023508  7A65              jpe 0x2356f
0002350A  2D2D312E34        sub eax,0x342e312d
0002350F  344D              xor al,0x4d
00023511  0A00              or al,[eax]
00023513  00BC200200CA20    add [eax+0x20ca0002],bh
0002351A  0200              add al,[eax]
0002351C  D820              fsub dword [eax]
0002351E  0200              add al,[eax]
00023520  E620              out 0x20,al
00023522  0200              add al,[eax]
00023524  F4                hlt
00023525  2002              and [edx],al
00023527  0021              add [ecx],ah
00023529  40                inc eax
0002352A  2324255E262A28    and esp,[0x282a265e]
00023531  295F2B            sub [edi+0x2b],ebx
00023534  004578            add [ebp+0x78],al
00023537  636570            arpl [ebp+0x70],sp
0002353A  7469              jz 0x235a5
0002353C  6F                outsd
0002353D  6E                outsb
0002353E  3A30              cmp dh,[eax]
00023540  004578            add [ebp+0x78],al
00023543  636570            arpl [ebp+0x70],sp
00023546  7469              jz 0x235b1
00023548  6F                outsd
00023549  6E                outsb
0002354A  3A31              cmp dh,[ecx]
0002354C  004578            add [ebp+0x78],al
0002354F  636570            arpl [ebp+0x70],sp
00023552  7469              jz 0x235bd
00023554  6F                outsd
00023555  6E                outsb
00023556  3A32              cmp dh,[edx]
00023558  004578            add [ebp+0x78],al
0002355B  636570            arpl [ebp+0x70],sp
0002355E  7469              jz 0x235c9
00023560  6F                outsd
00023561  6E                outsb
00023562  3A33              cmp dh,[ebx]
00023564  004578            add [ebp+0x78],al
00023567  636570            arpl [ebp+0x70],sp
0002356A  7469              jz 0x235d5
0002356C  6F                outsd
0002356D  6E                outsb
0002356E  3A3400            cmp dh,[eax+eax]
00023571  45                inc ebp
00023572  7863              js 0x235d7
00023574  657074            gs jo 0x235eb
00023577  696F6E3A350045    imul ebp,[edi+0x6e],dword 0x4500353a
0002357E  7863              js 0x235e3
00023580  657074            gs jo 0x235f7
00023583  696F6E3A360045    imul ebp,[edi+0x6e],dword 0x4500363a
0002358A  7863              js 0x235ef
0002358C  657074            gs jo 0x23603
0002358F  696F6E3A370045    imul ebp,[edi+0x6e],dword 0x4500373a
00023596  7863              js 0x235fb
00023598  657074            gs jo 0x2360f
0002359B  696F6E3A380045    imul ebp,[edi+0x6e],dword 0x4500383a
000235A2  7863              js 0x23607
000235A4  657074            gs jo 0x2361b
000235A7  696F6E3A390045    imul ebp,[edi+0x6e],dword 0x4500393a
000235AE  7863              js 0x23613
000235B0  657074            gs jo 0x23627
000235B3  696F6E3A313000    imul ebp,[edi+0x6e],dword 0x30313a
000235BA  45                inc ebp
000235BB  7863              js 0x23620
000235BD  657074            gs jo 0x23634
000235C0  696F6E3A313100    imul ebp,[edi+0x6e],dword 0x31313a
000235C7  45                inc ebp
000235C8  7863              js 0x2362d
000235CA  657074            gs jo 0x23641
000235CD  696F6E3A313200    imul ebp,[edi+0x6e],dword 0x32313a
000235D4  45                inc ebp
000235D5  7863              js 0x2363a
000235D7  657074            gs jo 0x2364e
000235DA  696F6E3A313300    imul ebp,[edi+0x6e],dword 0x33313a
000235E1  45                inc ebp
000235E2  7863              js 0x23647
000235E4  657074            gs jo 0x2365b
000235E7  696F6E3A313400    imul ebp,[edi+0x6e],dword 0x34313a
000235EE  45                inc ebp
000235EF  7863              js 0x23654
000235F1  657074            gs jo 0x23668
000235F4  696F6E3A313600    imul ebp,[edi+0x6e],dword 0x36313a
000235FB  2A2A              sub ch,[edx]
000235FD  2A2A              sub ch,[edx]
000235FF  2A2A              sub ch,[edx]
00023601  0000              add [eax],al
00023603  0020              add [eax],ah
00023605  0000              add [eax],al
00023607  008D260200C2      add [ebp-0x3dfffdda],cl
0002360D  260200            add al,[es:eax]
00023610  C22602            ret 0x226
00023613  00C2              add dl,al
00023615  260200            add al,[es:eax]
00023618  C22602            ret 0x226
0002361B  00C2              add dl,al
0002361D  260200            add al,[es:eax]
00023620  C22602            ret 0x226
00023623  00C2              add dl,al
00023625  260200            add al,[es:eax]
00023628  C22602            ret 0x226
0002362B  00C2              add dl,al
0002362D  260200            add al,[es:eax]
00023630  C22602            ret 0x226
00023633  00C2              add dl,al
00023635  260200            add al,[es:eax]
00023638  C22602            ret 0x226
0002363B  00C2              add dl,al
0002363D  260200            add al,[es:eax]
00023640  832602            and dword [esi],byte +0x2
00023643  00C2              add dl,al
00023645  260200            add al,[es:eax]
00023648  C22602            ret 0x226
0002364B  00C2              add dl,al
0002364D  260200            add al,[es:eax]
00023650  C22602            ret 0x226
00023653  00C2              add dl,al
00023655  260200            add al,[es:eax]
00023658  C22602            ret 0x226
0002365B  00C2              add dl,al
0002365D  260200            add al,[es:eax]
00023660  C22602            ret 0x226
00023663  00C2              add dl,al
00023665  260200            add al,[es:eax]
00023668  C22602            ret 0x226
0002366B  00C2              add dl,al
0002366D  260200            add al,[es:eax]
00023670  C22602            ret 0x226
00023673  00C2              add dl,al
00023675  260200            add al,[es:eax]
00023678  3326              xor esp,[esi]
0002367A  0200              add al,[eax]
0002367C  C22602            ret 0x226
0002367F  00C2              add dl,al
00023681  260200            add al,[es:eax]
00023684  C22602            ret 0x226
00023687  00C2              add dl,al
00023689  260200            add al,[es:eax]
0002368C  C22602            ret 0x226
0002368F  00C2              add dl,al
00023691  260200            add al,[es:eax]
00023694  C22602            ret 0x226
00023697  00C2              add dl,al
00023699  260200            add al,[es:eax]
0002369C  C22602            ret 0x226
0002369F  00C2              add dl,al
000236A1  260200            add al,[es:eax]
000236A4  C22602            ret 0x226
000236A7  004726            add [edi+0x26],al
000236AA  0200              add al,[eax]
000236AC  C22602            ret 0x226
000236AF  00C2              add dl,al
000236B1  260200            add al,[es:eax]
000236B4  C22602            ret 0x226
000236B7  005B26            add [ebx+0x26],bl
000236BA  0200              add al,[eax]
000236BC  C22602            ret 0x226
000236BF  00C2              add dl,al
000236C1  260200            add al,[es:eax]
000236C4  C22602            ret 0x226
000236C7  00C2              add dl,al
000236C9  260200            add al,[es:eax]
000236CC  C22602            ret 0x226
000236CF  00C2              add dl,al
000236D1  260200            add al,[es:eax]
000236D4  C22602            ret 0x226
000236D7  00C2              add dl,al
000236D9  260200            add al,[es:eax]
000236DC  C22602            ret 0x226
000236DF  00C2              add dl,al
000236E1  260200            add al,[es:eax]
000236E4  C22602            ret 0x226
000236E7  00C2              add dl,al
000236E9  260200            add al,[es:eax]
000236EC  C22602            ret 0x226
000236EF  006F26            add [edi+0x26],ch
000236F2  0200              add al,[eax]
000236F4  C22602            ret 0x226
000236F7  00C2              add dl,al
000236F9  260200            add al,[es:eax]
000236FC  C22602            ret 0x226
000236FF  00C2              add dl,al
00023701  260200            add al,[es:eax]
00023704  C22602            ret 0x226
00023707  00C2              add dl,al
00023709  260200            add al,[es:eax]
0002370C  C22602            ret 0x226
0002370F  007926            add [ecx+0x26],bh
00023712  0200              add al,[eax]
00023714  696E74006E6F3D    imul ebp,[esi+0x74],dword 0x3d6f6e00
0002371B  3130              xor [eax],esi
0002371D  6800007F03        push dword 0x37f0000
00023722  0000              add [eax],al
00023724  0000              add [eax],al
00023726  0000              add [eax],al
00023728  0000              add [eax],al
0002372A  0000              add [eax],al
0002372C  0000              add [eax],al
0002372E  0000              add [eax],al
00023730  0000              add [eax],al
00023732  0000              add [eax],al
00023734  0000              add [eax],al
00023736  0000              add [eax],al
00023738  0000              add [eax],al
0002373A  0000              add [eax],al
0002373C  0000              add [eax],al
0002373E  0000              add [eax],al
00023740  0000              add [eax],al
00023742  0000              add [eax],al
00023744  0000              add [eax],al
00023746  0000              add [eax],al
00023748  0000              add [eax],al
0002374A  0000              add [eax],al
0002374C  0000              add [eax],al
0002374E  0000              add [eax],al
00023750  3100              xor [eax],eax
00023752  0000              add [eax],al
00023754  2100              and [eax],eax
00023756  0000              add [eax],al
00023758  3200              xor al,[eax]
0002375A  0000              add [eax],al
0002375C  40                inc eax
0002375D  0000              add [eax],al
0002375F  0033              add [ebx],dh
00023761  0000              add [eax],al
00023763  0023              add [ebx],ah
00023765  0000              add [eax],al
00023767  003400            add [eax+eax],dh
0002376A  0000              add [eax],al
0002376C  2400              and al,0x0
0002376E  0000              add [eax],al
00023770  3500000025        xor eax,0x25000000
00023775  0000              add [eax],al
00023777  0036              add [esi],dh
00023779  0000              add [eax],al
0002377B  005E00            add [esi+0x0],bl
0002377E  0000              add [eax],al
00023780  37                aaa
00023781  0000              add [eax],al
00023783  0026              add [esi],ah
00023785  0000              add [eax],al
00023787  0038              add [eax],bh
00023789  0000              add [eax],al
0002378B  002A              add [edx],ch
0002378D  0000              add [eax],al
0002378F  0039              add [ecx],bh
00023791  0000              add [eax],al
00023793  0028              add [eax],ch
00023795  0000              add [eax],al
00023797  0030              add [eax],dh
00023799  0000              add [eax],al
0002379B  0029              add [ecx],ch
0002379D  0000              add [eax],al
0002379F  002D0000005F      add [dword 0x5f000000],ch
000237A5  0000              add [eax],al
000237A7  003D0000002B      add [dword 0x2b000000],bh
000237AD  0000              add [eax],al
000237AF  000B              add [ebx],cl
000237B1  0000              add [eax],al
000237B3  000B              add [ebx],cl
000237B5  0000              add [eax],al
000237B7  000C00            add [eax+eax],cl
000237BA  0000              add [eax],al
000237BC  0C00              or al,0x0
000237BE  0000              add [eax],al
000237C0  7100              jno 0x237c2
000237C2  0000              add [eax],al
000237C4  51                push ecx
000237C5  0000              add [eax],al
000237C7  007700            add [edi+0x0],dh
000237CA  0000              add [eax],al
000237CC  57                push edi
000237CD  0000              add [eax],al
000237CF  006500            add [ebp+0x0],ah
000237D2  0000              add [eax],al
000237D4  45                inc ebp
000237D5  0000              add [eax],al
000237D7  007200            add [edx+0x0],dh
000237DA  0000              add [eax],al
000237DC  52                push edx
000237DD  0000              add [eax],al
000237DF  00740000          add [eax+eax+0x0],dh
000237E3  00540000          add [eax+eax+0x0],dl
000237E7  007900            add [ecx+0x0],bh
000237EA  0000              add [eax],al
000237EC  59                pop ecx
000237ED  0000              add [eax],al
000237EF  007500            add [ebp+0x0],dh
000237F2  0000              add [eax],al
000237F4  55                push ebp
000237F5  0000              add [eax],al
000237F7  006900            add [ecx+0x0],ch
000237FA  0000              add [eax],al
000237FC  49                dec ecx
000237FD  0000              add [eax],al
000237FF  006F00            add [edi+0x0],ch
00023802  0000              add [eax],al
00023804  4F                dec edi
00023805  0000              add [eax],al
00023807  007000            add [eax+0x0],dh
0002380A  0000              add [eax],al
0002380C  50                push eax
0002380D  0000              add [eax],al
0002380F  005B00            add [ebx+0x0],bl
00023812  0000              add [eax],al
00023814  7B00              jpo 0x23816
00023816  0000              add [eax],al
00023818  5D                pop ebp
00023819  0000              add [eax],al
0002381B  007D00            add [ebp+0x0],bh
0002381E  0000              add [eax],al
00023820  0D0000000D        or eax,0xd000000
00023825  0000              add [eax],al
00023827  000E              add [esi],cl
00023829  0000              add [eax],al
0002382B  000E              add [esi],cl
0002382D  0000              add [eax],al
0002382F  006100            add [ecx+0x0],ah
00023832  0000              add [eax],al
00023834  41                inc ecx
00023835  0000              add [eax],al
00023837  007300            add [ebx+0x0],dh
0002383A  0000              add [eax],al
0002383C  53                push ebx
0002383D  0000              add [eax],al
0002383F  00640000          add [eax+eax+0x0],ah
00023843  00440000          add [eax+eax+0x0],al
00023847  006600            add [esi+0x0],ah
0002384A  0000              add [eax],al
0002384C  46                inc esi
0002384D  0000              add [eax],al
0002384F  006700            add [edi+0x0],ah
00023852  0000              add [eax],al
00023854  47                inc edi
00023855  0000              add [eax],al
00023857  006800            add [eax+0x0],ch
0002385A  0000              add [eax],al
0002385C  48                dec eax
0002385D  0000              add [eax],al
0002385F  006A00            add [edx+0x0],ch
00023862  0000              add [eax],al
00023864  4A                dec edx
00023865  0000              add [eax],al
00023867  006B00            add [ebx+0x0],ch
0002386A  0000              add [eax],al
0002386C  4B                dec ebx
0002386D  0000              add [eax],al
0002386F  006C0000          add [eax+eax+0x0],ch
00023873  004C0000          add [eax+eax+0x0],cl
00023877  003B              add [ebx],bh
00023879  0000              add [eax],al
0002387B  003A              add [edx],bh
0002387D  0000              add [eax],al
0002387F  0027              add [edi],ah
00023881  0000              add [eax],al
00023883  0022              add [edx],ah
00023885  0000              add [eax],al
00023887  006000            add [eax+0x0],ah
0002388A  0000              add [eax],al
0002388C  7E00              jng 0x2388e
0002388E  0000              add [eax],al
00023890  0F0000            sldt [eax]
00023893  000F              add [edi],cl
00023895  0000              add [eax],al
00023897  005C0000          add [eax+eax+0x0],bl
0002389B  007C0000          add [eax+eax+0x0],bh
0002389F  007A00            add [edx+0x0],bh
000238A2  0000              add [eax],al
000238A4  5A                pop edx
000238A5  0000              add [eax],al
000238A7  007800            add [eax+0x0],bh
000238AA  0000              add [eax],al
000238AC  58                pop eax
000238AD  0000              add [eax],al
000238AF  006300            add [ebx+0x0],ah
000238B2  0000              add [eax],al
000238B4  43                inc ebx
000238B5  0000              add [eax],al
000238B7  007600            add [esi+0x0],dh
000238BA  0000              add [eax],al
000238BC  56                push esi
000238BD  0000              add [eax],al
000238BF  006200            add [edx+0x0],ah
000238C2  0000              add [eax],al
000238C4  42                inc edx
000238C5  0000              add [eax],al
000238C7  006E00            add [esi+0x0],ch
000238CA  0000              add [eax],al
000238CC  4E                dec esi
000238CD  0000              add [eax],al
000238CF  006D00            add [ebp+0x0],ch
000238D2  0000              add [eax],al
000238D4  4D                dec ebp
000238D5  0000              add [eax],al
000238D7  002C00            add [eax+eax],ch
000238DA  0000              add [eax],al
000238DC  3C00              cmp al,0x0
000238DE  0000              add [eax],al
000238E0  2E0000            add [cs:eax],al
000238E3  003E              add [esi],bh
000238E5  0000              add [eax],al
000238E7  002F              add [edi],ch
000238E9  0000              add [eax],al
000238EB  003F              add [edi],bh
000238ED  0000              add [eax],al
000238EF  0010              add [eax],dl
000238F1  0000              add [eax],al
000238F3  0010              add [eax],dl
000238F5  0000              add [eax],al
000238F7  002A              add [edx],ch
000238F9  0000              add [eax],al
000238FB  002A              add [edx],ch
000238FD  0000              add [eax],al
000238FF  0011              add [ecx],dl
00023901  0000              add [eax],al
00023903  0011              add [ecx],dl
00023905  0000              add [eax],al
00023907  0020              add [eax],ah
00023909  0000              add [eax],al
0002390B  0020              add [eax],ah
0002390D  0000              add [eax],al
0002390F  0012              add [edx],dl
00023911  0000              add [eax],al
00023913  0012              add [edx],dl
00023915  0000              add [eax],al
00023917  0001              add [ecx],al
00023919  0000              add [eax],al
0002391B  0001              add [ecx],al
0002391D  0000              add [eax],al
0002391F  0002              add [edx],al
00023921  0000              add [eax],al
00023923  0002              add [edx],al
00023925  0000              add [eax],al
00023927  0003              add [ebx],al
00023929  0000              add [eax],al
0002392B  0003              add [ebx],al
0002392D  0000              add [eax],al
0002392F  000400            add [eax+eax],al
00023932  0000              add [eax],al
00023934  0400              add al,0x0
00023936  0000              add [eax],al
00023938  0500000005        add eax,0x5000000
0002393D  0000              add [eax],al
0002393F  0006              add [esi],al
00023941  0000              add [eax],al
00023943  0006              add [esi],al
00023945  0000              add [eax],al
00023947  0007              add [edi],al
00023949  0000              add [eax],al
0002394B  0007              add [edi],al
0002394D  0000              add [eax],al
0002394F  0008              add [eax],cl
00023951  0000              add [eax],al
00023953  0008              add [eax],cl
00023955  0000              add [eax],al
00023957  0009              add [ecx],cl
00023959  0000              add [eax],al
0002395B  0009              add [ecx],cl
0002395D  0000              add [eax],al
0002395F  000A              add [edx],cl
00023961  0000              add [eax],al
00023963  000A              add [edx],cl
00023965  0000              add [eax],al
00023967  0000              add [eax],al
00023969  0000              add [eax],al
0002396B  0000              add [eax],al
0002396D  0000              add [eax],al
0002396F  0000              add [eax],al
00023971  0000              add [eax],al
00023973  0000              add [eax],al
00023975  0000              add [eax],al
00023977  0000              add [eax],al
00023979  0000              add [eax],al
0002397B  0037              add [edi],dh
0002397D  0000              add [eax],al
0002397F  0000              add [eax],al
00023981  0000              add [eax],al
00023983  0038              add [eax],bh
00023985  0000              add [eax],al
00023987  0000              add [eax],al
00023989  0000              add [eax],al
0002398B  0039              add [ecx],bh
0002398D  0000              add [eax],al
0002398F  0000              add [eax],al
00023991  0000              add [eax],al
00023993  002D00000000      add [dword 0x0],ch
00023999  0000              add [eax],al
0002399B  003400            add [eax+eax],dh
0002399E  0000              add [eax],al
000239A0  0000              add [eax],al
000239A2  0000              add [eax],al
000239A4  3500000000        xor eax,0x0
000239A9  0000              add [eax],al
000239AB  0036              add [esi],dh
000239AD  0000              add [eax],al
000239AF  0000              add [eax],al
000239B1  0000              add [eax],al
000239B3  002B              add [ebx],ch
000239B5  0000              add [eax],al
000239B7  0000              add [eax],al
000239B9  0000              add [eax],al
000239BB  0031              add [ecx],dh
000239BD  0000              add [eax],al
000239BF  0000              add [eax],al
000239C1  0000              add [eax],al
000239C3  0032              add [edx],dh
000239C5  0000              add [eax],al
000239C7  0000              add [eax],al
000239C9  0000              add [eax],al
000239CB  0033              add [ebx],dh
000239CD  0000              add [eax],al
000239CF  0000              add [eax],al
000239D1  0000              add [eax],al
000239D3  0030              add [eax],dh
000239D5  0000              add [eax],al
000239D7  0000              add [eax],al
000239D9  0000              add [eax],al
000239DB  002E              add [esi],ch
000239DD  0000              add [eax],al
000239DF  0003              add [ebx],al
000239E1  0000              add [eax],al
000239E3  004743            add [edi+0x43],al
000239E6  43                inc ebx
000239E7  3A20              cmp ah,[eax]
000239E9  285562            sub [ebp+0x62],dl
000239EC  756E              jnz 0x23a5c
000239EE  7475              jz 0x23a65
000239F0  20342E            and [esi+ebp],dh
000239F3  342E              xor al,0x2e
000239F5  332D34756275      xor ebp,[dword 0x75627534]
000239FB  6E                outsb
000239FC  7475              jz 0x23a73
000239FE  352920342E        xor eax,0x2e342029
00023A03  342E              xor al,0x2e
00023A05  3300              xor eax,[eax]
00023A07  002E              add [esi],ch
00023A09  7368              jnc 0x23a73
00023A0B  7374              jnc 0x23a81
00023A0D  7274              jc 0x23a83
00023A0F  61                popad
00023A10  6200              bound eax,[eax]
00023A12  2E7465            cs jz 0x23a7a
00023A15  7874              js 0x23a8b
00023A17  002E              add [esi],ch
00023A19  726F              jc 0x23a8a
00023A1B  6461              fs popad
00023A1D  7461              jz 0x23a80
00023A1F  002E              add [esi],ch
00023A21  6461              fs popad
00023A23  7461              jz 0x23a86
00023A25  002E              add [esi],ch
00023A27  627373            bound esi,[ebx+0x73]
00023A2A  002E              add [esi],ch
00023A2C  636F6D            arpl [edi+0x6d],bp
00023A2F  6D                insd
00023A30  656E              gs outsb
00023A32  7400              jz 0x23a34
00023A34  0000              add [eax],al
00023A36  0000              add [eax],al
00023A38  0000              add [eax],al
00023A3A  0000              add [eax],al
00023A3C  0000              add [eax],al
00023A3E  0000              add [eax],al
00023A40  0000              add [eax],al
00023A42  0000              add [eax],al
00023A44  0000              add [eax],al
00023A46  0000              add [eax],al
00023A48  0000              add [eax],al
00023A4A  0000              add [eax],al
00023A4C  0000              add [eax],al
00023A4E  0000              add [eax],al
00023A50  0000              add [eax],al
00023A52  0000              add [eax],al
00023A54  0000              add [eax],al
00023A56  0000              add [eax],al
00023A58  0000              add [eax],al
00023A5A  0000              add [eax],al
00023A5C  0B00              or eax,[eax]
00023A5E  0000              add [eax],al
00023A60  0100              add [eax],eax
00023A62  0000              add [eax],al
00023A64  06                push es
00023A65  0000              add [eax],al
00023A67  0000              add [eax],al
00023A69  0402              add al,0x2
00023A6B  0000              add [eax],al
00023A6D  0400              add al,0x0
00023A6F  00992F000000      add [ecx+0x2f],bl
00023A75  0000              add [eax],al
00023A77  0000              add [eax],al
00023A79  0000              add [eax],al
00023A7B  0010              add [eax],dl
00023A7D  0000              add [eax],al
00023A7F  0000              add [eax],al
00023A81  0000              add [eax],al
00023A83  0011              add [ecx],dl
00023A85  0000              add [eax],al
00023A87  0001              add [ecx],al
00023A89  0000              add [eax],al
00023A8B  0002              add [edx],al
00023A8D  0000              add [eax],al
00023A8F  009C3302009C33    add [ebx+esi+0x339c0002],bl
00023A96  0000              add [eax],al
00023A98  830300            add dword [ebx],byte +0x0
00023A9B  0000              add [eax],al
00023A9D  0000              add [eax],al
00023A9F  0000              add [eax],al
00023AA1  0000              add [eax],al
00023AA3  000400            add [eax+eax],al
00023AA6  0000              add [eax],al
00023AA8  0000              add [eax],al
00023AAA  0000              add [eax],al
00023AAC  1900              sbb [eax],eax
00023AAE  0000              add [eax],al
00023AB0  0100              add [eax],eax
00023AB2  0000              add [eax],al
00023AB4  0300              add eax,[eax]
00023AB6  0000              add [eax],al
00023AB8  204702            and [edi+0x2],al
00023ABB  0020              add [eax],ah
00023ABD  37                aaa
00023ABE  0000              add [eax],al
00023AC0  C402              les eax,[edx]
00023AC2  0000              add [eax],al
00023AC4  0000              add [eax],al
00023AC6  0000              add [eax],al
00023AC8  0000              add [eax],al
00023ACA  0000              add [eax],al
00023ACC  2000              and [eax],al
00023ACE  0000              add [eax],al
00023AD0  0000              add [eax],al
00023AD2  0000              add [eax],al
00023AD4  1F                pop ds
00023AD5  0000              add [eax],al
00023AD7  0008              add [eax],cl
00023AD9  0000              add [eax],al
00023ADB  0003              add [ebx],al
00023ADD  0000              add [eax],al
00023ADF  0000              add [eax],al
00023AE1  4A                dec edx
00023AE2  0200              add al,[eax]
00023AE4  E439              in al,0x39
00023AE6  0000              add [eax],al
00023AE8  2C50              sub al,0x50
00023AEA  0100              add [eax],eax
00023AEC  0000              add [eax],al
00023AEE  0000              add [eax],al
00023AF0  0000              add [eax],al
00023AF2  0000              add [eax],al
00023AF4  2000              and [eax],al
00023AF6  0000              add [eax],al
00023AF8  0000              add [eax],al
00023AFA  0000              add [eax],al
00023AFC  2400              and al,0x0
00023AFE  0000              add [eax],al
00023B00  0100              add [eax],eax
00023B02  0000              add [eax],al
00023B04  3000              xor [eax],al
00023B06  0000              add [eax],al
00023B08  0000              add [eax],al
00023B0A  0000              add [eax],al
00023B0C  E439              in al,0x39
00023B0E  0000              add [eax],al
00023B10  2300              and eax,[eax]
00023B12  0000              add [eax],al
00023B14  0000              add [eax],al
00023B16  0000              add [eax],al
00023B18  0000              add [eax],al
00023B1A  0000              add [eax],al
00023B1C  0100              add [eax],eax
00023B1E  0000              add [eax],al
00023B20  0100              add [eax],eax
00023B22  0000              add [eax],al
00023B24  0100              add [eax],eax
00023B26  0000              add [eax],al
00023B28  0300              add eax,[eax]
00023B2A  0000              add [eax],al
00023B2C  0000              add [eax],al
00023B2E  0000              add [eax],al
00023B30  0000              add [eax],al
00023B32  0000              add [eax],al
00023B34  07                pop es
00023B35  3A00              cmp al,[eax]
00023B37  002D00000000      add [dword 0x0],ch
00023B3D  0000              add [eax],al
00023B3F  0000              add [eax],al
00023B41  0000              add [eax],al
00023B43  0001              add [ecx],al
00023B45  0000              add [eax],al
00023B47  0000              add [eax],al
00023B49  0000              add [eax],al
00023B4B  00                db 0x00
