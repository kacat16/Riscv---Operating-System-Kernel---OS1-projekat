
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	a3013103          	ld	sp,-1488(sp) # 8000ba30 <_GLOBAL_OFFSET_TABLE_+0x38>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	471060ef          	jal	ra,80006c8c <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv13pushRegistersEv>:
.global _ZN5Riscv13pushRegistersEv
.type _ZN5Riscv13pushRegistersEv, @function
_ZN5Riscv13pushRegistersEv:
    addi sp,sp,-256
    80001000:	f0010113          	addi	sp,sp,-256
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index,\index * 8(sp)
    .endr
    80001004:	00313c23          	sd	gp,24(sp)
    80001008:	02413023          	sd	tp,32(sp)
    8000100c:	02513423          	sd	t0,40(sp)
    80001010:	02613823          	sd	t1,48(sp)
    80001014:	02713c23          	sd	t2,56(sp)
    80001018:	04813023          	sd	s0,64(sp)
    8000101c:	04913423          	sd	s1,72(sp)
    80001020:	04a13823          	sd	a0,80(sp)
    80001024:	04b13c23          	sd	a1,88(sp)
    80001028:	06c13023          	sd	a2,96(sp)
    8000102c:	06d13423          	sd	a3,104(sp)
    80001030:	06e13823          	sd	a4,112(sp)
    80001034:	06f13c23          	sd	a5,120(sp)
    80001038:	09013023          	sd	a6,128(sp)
    8000103c:	09113423          	sd	a7,136(sp)
    80001040:	09213823          	sd	s2,144(sp)
    80001044:	09313c23          	sd	s3,152(sp)
    80001048:	0b413023          	sd	s4,160(sp)
    8000104c:	0b513423          	sd	s5,168(sp)
    80001050:	0b613823          	sd	s6,176(sp)
    80001054:	0b713c23          	sd	s7,184(sp)
    80001058:	0d813023          	sd	s8,192(sp)
    8000105c:	0d913423          	sd	s9,200(sp)
    80001060:	0da13823          	sd	s10,208(sp)
    80001064:	0db13c23          	sd	s11,216(sp)
    80001068:	0fc13023          	sd	t3,224(sp)
    8000106c:	0fd13423          	sd	t4,232(sp)
    80001070:	0fe13823          	sd	t5,240(sp)
    80001074:	0ff13c23          	sd	t6,248(sp)
    ret
    80001078:	00008067          	ret

000000008000107c <_ZN5Riscv12popRegistersEv>:
.type _ZN5Riscv12popRegistersEv, @function
_ZN5Riscv12popRegistersEv:

    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index,\index * 8(sp)
    .endr
    8000107c:	00013003          	ld	zero,0(sp)
    80001080:	00813083          	ld	ra,8(sp)
    80001084:	01013103          	ld	sp,16(sp)
    80001088:	01813183          	ld	gp,24(sp)
    8000108c:	02013203          	ld	tp,32(sp)
    80001090:	02813283          	ld	t0,40(sp)
    80001094:	03013303          	ld	t1,48(sp)
    80001098:	03813383          	ld	t2,56(sp)
    8000109c:	04013403          	ld	s0,64(sp)
    800010a0:	04813483          	ld	s1,72(sp)
    800010a4:	05013503          	ld	a0,80(sp)
    800010a8:	05813583          	ld	a1,88(sp)
    800010ac:	06013603          	ld	a2,96(sp)
    800010b0:	06813683          	ld	a3,104(sp)
    800010b4:	07013703          	ld	a4,112(sp)
    800010b8:	07813783          	ld	a5,120(sp)
    800010bc:	08013803          	ld	a6,128(sp)
    800010c0:	08813883          	ld	a7,136(sp)
    800010c4:	09013903          	ld	s2,144(sp)
    800010c8:	09813983          	ld	s3,152(sp)
    800010cc:	0a013a03          	ld	s4,160(sp)
    800010d0:	0a813a83          	ld	s5,168(sp)
    800010d4:	0b013b03          	ld	s6,176(sp)
    800010d8:	0b813b83          	ld	s7,184(sp)
    800010dc:	0c013c03          	ld	s8,192(sp)
    800010e0:	0c813c83          	ld	s9,200(sp)
    800010e4:	0d013d03          	ld	s10,208(sp)
    800010e8:	0d813d83          	ld	s11,216(sp)
    800010ec:	0e013e03          	ld	t3,224(sp)
    800010f0:	0e813e83          	ld	t4,232(sp)
    800010f4:	0f013f03          	ld	t5,240(sp)
    800010f8:	0f813f83          	ld	t6,248(sp)
    add sp,sp,256
    800010fc:	10010113          	addi	sp,sp,256
    80001100:	00008067          	ret
	...

0000000080001110 <_ZN5Riscv14supervisorTrapEv>:

.align 4
.global _ZN5Riscv14supervisorTrapEv
.type _ZN5Riscv14supervisorTrapEv, @function
_ZN5Riscv14supervisorTrapEv:
    j supervisorTrapBasic
    80001110:	0280006f          	j	80001138 <supervisorTrapBasic>
    j supervisorTrapTimer
    80001114:	1340006f          	j	80001248 <supervisorTrapTimer>
    mv s11,s11
    80001118:	000d8d93          	mv	s11,s11
    mv s11,s11
    8000111c:	000d8d93          	mv	s11,s11
    mv s11,s11
    80001120:	000d8d93          	mv	s11,s11
    mv s11,s11
    80001124:	000d8d93          	mv	s11,s11
    mv s11,s11
    80001128:	000d8d93          	mv	s11,s11
    mv s11,s11
    8000112c:	000d8d93          	mv	s11,s11
    mv s11,s11
    80001130:	000d8d93          	mv	s11,s11
    j supervisorTrapConsole
    80001134:	2240006f          	j	80001358 <supervisorTrapConsole>

0000000080001138 <supervisorTrapBasic>:

supervisorTrapBasic:
    addi sp,sp,-256
    80001138:	f0010113          	addi	sp,sp,-256
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index,\index * 8(sp)
    .endr
    8000113c:	00013023          	sd	zero,0(sp)
    80001140:	00113423          	sd	ra,8(sp)
    80001144:	00213823          	sd	sp,16(sp)
    80001148:	00313c23          	sd	gp,24(sp)
    8000114c:	02413023          	sd	tp,32(sp)
    80001150:	02513423          	sd	t0,40(sp)
    80001154:	02613823          	sd	t1,48(sp)
    80001158:	02713c23          	sd	t2,56(sp)
    8000115c:	04813023          	sd	s0,64(sp)
    80001160:	04913423          	sd	s1,72(sp)
    80001164:	04a13823          	sd	a0,80(sp)
    80001168:	04b13c23          	sd	a1,88(sp)
    8000116c:	06c13023          	sd	a2,96(sp)
    80001170:	06d13423          	sd	a3,104(sp)
    80001174:	06e13823          	sd	a4,112(sp)
    80001178:	06f13c23          	sd	a5,120(sp)
    8000117c:	09013023          	sd	a6,128(sp)
    80001180:	09113423          	sd	a7,136(sp)
    80001184:	09213823          	sd	s2,144(sp)
    80001188:	09313c23          	sd	s3,152(sp)
    8000118c:	0b413023          	sd	s4,160(sp)
    80001190:	0b513423          	sd	s5,168(sp)
    80001194:	0b613823          	sd	s6,176(sp)
    80001198:	0b713c23          	sd	s7,184(sp)
    8000119c:	0d813023          	sd	s8,192(sp)
    800011a0:	0d913423          	sd	s9,200(sp)
    800011a4:	0da13823          	sd	s10,208(sp)
    800011a8:	0db13c23          	sd	s11,216(sp)
    800011ac:	0fc13023          	sd	t3,224(sp)
    800011b0:	0fd13423          	sd	t4,232(sp)
    800011b4:	0fe13823          	sd	t5,240(sp)
    800011b8:	0ff13c23          	sd	t6,248(sp)



    call _ZN5Riscv25handleSupervisorTrapBasicEv
    800011bc:	26d010ef          	jal	ra,80002c28 <_ZN5Riscv25handleSupervisorTrapBasicEv>



    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
     ld x\index,\index * 8(sp)
     .endr
    800011c0:	00013003          	ld	zero,0(sp)
    800011c4:	00813083          	ld	ra,8(sp)
    800011c8:	01013103          	ld	sp,16(sp)
    800011cc:	01813183          	ld	gp,24(sp)
    800011d0:	02013203          	ld	tp,32(sp)
    800011d4:	02813283          	ld	t0,40(sp)
    800011d8:	03013303          	ld	t1,48(sp)
    800011dc:	03813383          	ld	t2,56(sp)
    800011e0:	04013403          	ld	s0,64(sp)
    800011e4:	04813483          	ld	s1,72(sp)
    800011e8:	05013503          	ld	a0,80(sp)
    800011ec:	05813583          	ld	a1,88(sp)
    800011f0:	06013603          	ld	a2,96(sp)
    800011f4:	06813683          	ld	a3,104(sp)
    800011f8:	07013703          	ld	a4,112(sp)
    800011fc:	07813783          	ld	a5,120(sp)
    80001200:	08013803          	ld	a6,128(sp)
    80001204:	08813883          	ld	a7,136(sp)
    80001208:	09013903          	ld	s2,144(sp)
    8000120c:	09813983          	ld	s3,152(sp)
    80001210:	0a013a03          	ld	s4,160(sp)
    80001214:	0a813a83          	ld	s5,168(sp)
    80001218:	0b013b03          	ld	s6,176(sp)
    8000121c:	0b813b83          	ld	s7,184(sp)
    80001220:	0c013c03          	ld	s8,192(sp)
    80001224:	0c813c83          	ld	s9,200(sp)
    80001228:	0d013d03          	ld	s10,208(sp)
    8000122c:	0d813d83          	ld	s11,216(sp)
    80001230:	0e013e03          	ld	t3,224(sp)
    80001234:	0e813e83          	ld	t4,232(sp)
    80001238:	0f013f03          	ld	t5,240(sp)
    8000123c:	0f813f83          	ld	t6,248(sp)
     add sp,sp,256
    80001240:	10010113          	addi	sp,sp,256

     sret
    80001244:	10200073          	sret

0000000080001248 <supervisorTrapTimer>:


supervisorTrapTimer:
    addi sp,sp,-256
    80001248:	f0010113          	addi	sp,sp,-256
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index,\index * 8(sp)
    .endr
    8000124c:	00013023          	sd	zero,0(sp)
    80001250:	00113423          	sd	ra,8(sp)
    80001254:	00213823          	sd	sp,16(sp)
    80001258:	00313c23          	sd	gp,24(sp)
    8000125c:	02413023          	sd	tp,32(sp)
    80001260:	02513423          	sd	t0,40(sp)
    80001264:	02613823          	sd	t1,48(sp)
    80001268:	02713c23          	sd	t2,56(sp)
    8000126c:	04813023          	sd	s0,64(sp)
    80001270:	04913423          	sd	s1,72(sp)
    80001274:	04a13823          	sd	a0,80(sp)
    80001278:	04b13c23          	sd	a1,88(sp)
    8000127c:	06c13023          	sd	a2,96(sp)
    80001280:	06d13423          	sd	a3,104(sp)
    80001284:	06e13823          	sd	a4,112(sp)
    80001288:	06f13c23          	sd	a5,120(sp)
    8000128c:	09013023          	sd	a6,128(sp)
    80001290:	09113423          	sd	a7,136(sp)
    80001294:	09213823          	sd	s2,144(sp)
    80001298:	09313c23          	sd	s3,152(sp)
    8000129c:	0b413023          	sd	s4,160(sp)
    800012a0:	0b513423          	sd	s5,168(sp)
    800012a4:	0b613823          	sd	s6,176(sp)
    800012a8:	0b713c23          	sd	s7,184(sp)
    800012ac:	0d813023          	sd	s8,192(sp)
    800012b0:	0d913423          	sd	s9,200(sp)
    800012b4:	0da13823          	sd	s10,208(sp)
    800012b8:	0db13c23          	sd	s11,216(sp)
    800012bc:	0fc13023          	sd	t3,224(sp)
    800012c0:	0fd13423          	sd	t4,232(sp)
    800012c4:	0fe13823          	sd	t5,240(sp)
    800012c8:	0ff13c23          	sd	t6,248(sp)



    call _ZN5Riscv25handleSupervisorTrapTimerEv
    800012cc:	2b5010ef          	jal	ra,80002d80 <_ZN5Riscv25handleSupervisorTrapTimerEv>



    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
     ld x\index,\index * 8(sp)
     .endr
    800012d0:	00013003          	ld	zero,0(sp)
    800012d4:	00813083          	ld	ra,8(sp)
    800012d8:	01013103          	ld	sp,16(sp)
    800012dc:	01813183          	ld	gp,24(sp)
    800012e0:	02013203          	ld	tp,32(sp)
    800012e4:	02813283          	ld	t0,40(sp)
    800012e8:	03013303          	ld	t1,48(sp)
    800012ec:	03813383          	ld	t2,56(sp)
    800012f0:	04013403          	ld	s0,64(sp)
    800012f4:	04813483          	ld	s1,72(sp)
    800012f8:	05013503          	ld	a0,80(sp)
    800012fc:	05813583          	ld	a1,88(sp)
    80001300:	06013603          	ld	a2,96(sp)
    80001304:	06813683          	ld	a3,104(sp)
    80001308:	07013703          	ld	a4,112(sp)
    8000130c:	07813783          	ld	a5,120(sp)
    80001310:	08013803          	ld	a6,128(sp)
    80001314:	08813883          	ld	a7,136(sp)
    80001318:	09013903          	ld	s2,144(sp)
    8000131c:	09813983          	ld	s3,152(sp)
    80001320:	0a013a03          	ld	s4,160(sp)
    80001324:	0a813a83          	ld	s5,168(sp)
    80001328:	0b013b03          	ld	s6,176(sp)
    8000132c:	0b813b83          	ld	s7,184(sp)
    80001330:	0c013c03          	ld	s8,192(sp)
    80001334:	0c813c83          	ld	s9,200(sp)
    80001338:	0d013d03          	ld	s10,208(sp)
    8000133c:	0d813d83          	ld	s11,216(sp)
    80001340:	0e013e03          	ld	t3,224(sp)
    80001344:	0e813e83          	ld	t4,232(sp)
    80001348:	0f013f03          	ld	t5,240(sp)
    8000134c:	0f813f83          	ld	t6,248(sp)
     add sp,sp,256
    80001350:	10010113          	addi	sp,sp,256

     sret
    80001354:	10200073          	sret

0000000080001358 <supervisorTrapConsole>:


supervisorTrapConsole:
     addi sp,sp,-256
    80001358:	f0010113          	addi	sp,sp,-256
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index,\index * 8(sp)
    .endr
    8000135c:	00013023          	sd	zero,0(sp)
    80001360:	00113423          	sd	ra,8(sp)
    80001364:	00213823          	sd	sp,16(sp)
    80001368:	00313c23          	sd	gp,24(sp)
    8000136c:	02413023          	sd	tp,32(sp)
    80001370:	02513423          	sd	t0,40(sp)
    80001374:	02613823          	sd	t1,48(sp)
    80001378:	02713c23          	sd	t2,56(sp)
    8000137c:	04813023          	sd	s0,64(sp)
    80001380:	04913423          	sd	s1,72(sp)
    80001384:	04a13823          	sd	a0,80(sp)
    80001388:	04b13c23          	sd	a1,88(sp)
    8000138c:	06c13023          	sd	a2,96(sp)
    80001390:	06d13423          	sd	a3,104(sp)
    80001394:	06e13823          	sd	a4,112(sp)
    80001398:	06f13c23          	sd	a5,120(sp)
    8000139c:	09013023          	sd	a6,128(sp)
    800013a0:	09113423          	sd	a7,136(sp)
    800013a4:	09213823          	sd	s2,144(sp)
    800013a8:	09313c23          	sd	s3,152(sp)
    800013ac:	0b413023          	sd	s4,160(sp)
    800013b0:	0b513423          	sd	s5,168(sp)
    800013b4:	0b613823          	sd	s6,176(sp)
    800013b8:	0b713c23          	sd	s7,184(sp)
    800013bc:	0d813023          	sd	s8,192(sp)
    800013c0:	0d913423          	sd	s9,200(sp)
    800013c4:	0da13823          	sd	s10,208(sp)
    800013c8:	0db13c23          	sd	s11,216(sp)
    800013cc:	0fc13023          	sd	t3,224(sp)
    800013d0:	0fd13423          	sd	t4,232(sp)
    800013d4:	0fe13823          	sd	t5,240(sp)
    800013d8:	0ff13c23          	sd	t6,248(sp)



    call _ZN5Riscv27handleSupervisorTrapConsoleEv
    800013dc:	2d5010ef          	jal	ra,80002eb0 <_ZN5Riscv27handleSupervisorTrapConsoleEv>



    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
     ld x\index,\index * 8(sp)
     .endr
    800013e0:	00013003          	ld	zero,0(sp)
    800013e4:	00813083          	ld	ra,8(sp)
    800013e8:	01013103          	ld	sp,16(sp)
    800013ec:	01813183          	ld	gp,24(sp)
    800013f0:	02013203          	ld	tp,32(sp)
    800013f4:	02813283          	ld	t0,40(sp)
    800013f8:	03013303          	ld	t1,48(sp)
    800013fc:	03813383          	ld	t2,56(sp)
    80001400:	04013403          	ld	s0,64(sp)
    80001404:	04813483          	ld	s1,72(sp)
    80001408:	05013503          	ld	a0,80(sp)
    8000140c:	05813583          	ld	a1,88(sp)
    80001410:	06013603          	ld	a2,96(sp)
    80001414:	06813683          	ld	a3,104(sp)
    80001418:	07013703          	ld	a4,112(sp)
    8000141c:	07813783          	ld	a5,120(sp)
    80001420:	08013803          	ld	a6,128(sp)
    80001424:	08813883          	ld	a7,136(sp)
    80001428:	09013903          	ld	s2,144(sp)
    8000142c:	09813983          	ld	s3,152(sp)
    80001430:	0a013a03          	ld	s4,160(sp)
    80001434:	0a813a83          	ld	s5,168(sp)
    80001438:	0b013b03          	ld	s6,176(sp)
    8000143c:	0b813b83          	ld	s7,184(sp)
    80001440:	0c013c03          	ld	s8,192(sp)
    80001444:	0c813c83          	ld	s9,200(sp)
    80001448:	0d013d03          	ld	s10,208(sp)
    8000144c:	0d813d83          	ld	s11,216(sp)
    80001450:	0e013e03          	ld	t3,224(sp)
    80001454:	0e813e83          	ld	t4,232(sp)
    80001458:	0f013f03          	ld	t5,240(sp)
    8000145c:	0f813f83          	ld	t6,248(sp)
     add sp,sp,256
    80001460:	10010113          	addi	sp,sp,256

    80001464:	10200073          	sret
	...

0000000080001470 <_ZN8Thread_k13switchContextEPNS_7ContextES1_>:
.align 4
.global _ZN8Thread_k13switchContextEPNS_7ContextES1_
.type _ZN8Thread_k13switchContextEPNS_7ContextES1_, @function
_ZN8Thread_k13switchContextEPNS_7ContextES1_:

    sd sp, 0 * 8(a0)
    80001470:	00253023          	sd	sp,0(a0) # 1000 <_entry-0x7ffff000>
    sd ra, 1 * 8(a0)
    80001474:	00153423          	sd	ra,8(a0)

    ld sp, 0 * 8(a1)
    80001478:	0005b103          	ld	sp,0(a1)
    ld ra, 1 * 8(a1)
    8000147c:	0085b083          	ld	ra,8(a1)

    80001480:	00008067          	ret

0000000080001484 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001484:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80001488:	00b29a63          	bne	t0,a1,8000149c <fail>
    sc.w t0, a2, (a0)      # Try to update.
    8000148c:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001490:	fe029ae3          	bnez	t0,80001484 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001494:	00000513          	li	a0,0
    jr ra                  # Return.
    80001498:	00008067          	ret

000000008000149c <fail>:
    fail:
    li a0, 1               # Set return to failure.
    8000149c:	00100513          	li	a0,1
    800014a0:	00008067          	ret

00000000800014a4 <_Z9returnValv>:
#include "../h/syscall_c.hpp"
#include "../lib/mem.h"

#include "../test/printing.hpp"

uint64 returnVal() {
    800014a4:	ff010113          	addi	sp,sp,-16
    800014a8:	00813423          	sd	s0,8(sp)
    800014ac:	01010413          	addi	s0,sp,16
    uint64 ret;
    __asm__ volatile("mv %0,a0":"=r"(ret));
    800014b0:	00050513          	mv	a0,a0
    return ret;
}
    800014b4:	00813403          	ld	s0,8(sp)
    800014b8:	01010113          	addi	sp,sp,16
    800014bc:	00008067          	ret

00000000800014c0 <_Z9mem_allocm>:
void* mem_alloc(size_t size) {
    800014c0:	ff010113          	addi	sp,sp,-16
    800014c4:	00113423          	sd	ra,8(sp)
    800014c8:	00813023          	sd	s0,0(sp)
    800014cc:	01010413          	addi	s0,sp,16
    uint64 numOfBlocks = (size % MEM_BLOCK_SIZE) ? (1 + size / MEM_BLOCK_SIZE) : size / MEM_BLOCK_SIZE;
    800014d0:	03f57793          	andi	a5,a0,63
    800014d4:	02078a63          	beqz	a5,80001508 <_Z9mem_allocm+0x48>
    800014d8:	00655513          	srli	a0,a0,0x6
    800014dc:	00150513          	addi	a0,a0,1
    uint64 code = 0x01;
    __asm__ volatile("mv a1,%[numOfBlocks]"::[numOfBlocks]"r"(numOfBlocks));
    800014e0:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0,%0"::"r"(code));
    800014e4:	00100793          	li	a5,1
    800014e8:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800014ec:	00000073          	ecall
    void *ret = (void *) returnVal();
    800014f0:	00000097          	auipc	ra,0x0
    800014f4:	fb4080e7          	jalr	-76(ra) # 800014a4 <_Z9returnValv>
    return ret;
}
    800014f8:	00813083          	ld	ra,8(sp)
    800014fc:	00013403          	ld	s0,0(sp)
    80001500:	01010113          	addi	sp,sp,16
    80001504:	00008067          	ret
    uint64 numOfBlocks = (size % MEM_BLOCK_SIZE) ? (1 + size / MEM_BLOCK_SIZE) : size / MEM_BLOCK_SIZE;
    80001508:	00655513          	srli	a0,a0,0x6
    8000150c:	fd5ff06f          	j	800014e0 <_Z9mem_allocm+0x20>

0000000080001510 <_Z8mem_freePv>:

int mem_free(void* ptr) {
    80001510:	ff010113          	addi	sp,sp,-16
    80001514:	00113423          	sd	ra,8(sp)
    80001518:	00813023          	sd	s0,0(sp)
    8000151c:	01010413          	addi	s0,sp,16
    uint64 code=0x02;
    __asm__ volatile("mv a1,%0"::"r"(ptr));
    80001520:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0,%0"::"r"(code));
    80001524:	00200793          	li	a5,2
    80001528:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    8000152c:	00000073          	ecall
    int ret=(int)returnVal();
    80001530:	00000097          	auipc	ra,0x0
    80001534:	f74080e7          	jalr	-140(ra) # 800014a4 <_Z9returnValv>
    return ret;
}
    80001538:	0005051b          	sext.w	a0,a0
    8000153c:	00813083          	ld	ra,8(sp)
    80001540:	00013403          	ld	s0,0(sp)
    80001544:	01010113          	addi	sp,sp,16
    80001548:	00008067          	ret

000000008000154c <_Z13thread_createPP8Thread_kPFvPvES2_>:

int thread_create(thread_t* handle,void (*start_routine) (void*),void* arg) {
    8000154c:	ff010113          	addi	sp,sp,-16
    80001550:	00113423          	sd	ra,8(sp)
    80001554:	00813023          	sd	s0,0(sp)
    80001558:	01010413          	addi	s0,sp,16
    uint64 code=0x11;
    //void* stack=__mem_alloc(8*DEFAULT_STACK_SIZE* sizeof(uint64));
    __asm__ volatile("mv a3,%[arg]"::[arg]"r"(arg));
    8000155c:	00060693          	mv	a3,a2
    __asm__ volatile("mv a2,%[start_routine]"::[start_routine]"r"(start_routine));
    80001560:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1,%[handle]"::[handle]"r"(handle));
    80001564:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0,%[code]"::[code]"r"(code));
    80001568:	01100793          	li	a5,17
    8000156c:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001570:	00000073          	ecall
    int ret=(int)returnVal();
    80001574:	00000097          	auipc	ra,0x0
    80001578:	f30080e7          	jalr	-208(ra) # 800014a4 <_Z9returnValv>
    return ret;
}
    8000157c:	0005051b          	sext.w	a0,a0
    80001580:	00813083          	ld	ra,8(sp)
    80001584:	00013403          	ld	s0,0(sp)
    80001588:	01010113          	addi	sp,sp,16
    8000158c:	00008067          	ret

0000000080001590 <_Z11thread_exitv>:


int thread_exit(){
    80001590:	ff010113          	addi	sp,sp,-16
    80001594:	00113423          	sd	ra,8(sp)
    80001598:	00813023          	sd	s0,0(sp)
    8000159c:	01010413          	addi	s0,sp,16
    uint64 code=0x12;
    __asm__ volatile("mv a0,%0"::"r"(code));
    800015a0:	01200793          	li	a5,18
    800015a4:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800015a8:	00000073          	ecall
    int ret=(int)returnVal();
    800015ac:	00000097          	auipc	ra,0x0
    800015b0:	ef8080e7          	jalr	-264(ra) # 800014a4 <_Z9returnValv>
    return ret;
}
    800015b4:	0005051b          	sext.w	a0,a0
    800015b8:	00813083          	ld	ra,8(sp)
    800015bc:	00013403          	ld	s0,0(sp)
    800015c0:	01010113          	addi	sp,sp,16
    800015c4:	00008067          	ret

00000000800015c8 <_Z15thread_dispatchv>:


void thread_dispatch() {
    800015c8:	ff010113          	addi	sp,sp,-16
    800015cc:	00813423          	sd	s0,8(sp)
    800015d0:	01010413          	addi	s0,sp,16
    uint64 code = 0x13;
    __asm__ volatile("mv a0,%0"::"r"(code));
    800015d4:	01300793          	li	a5,19
    800015d8:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800015dc:	00000073          	ecall
}
    800015e0:	00813403          	ld	s0,8(sp)
    800015e4:	01010113          	addi	sp,sp,16
    800015e8:	00008067          	ret

00000000800015ec <_Z11thread_joinP8Thread_k>:

void thread_join(thread_t handle) {
    800015ec:	ff010113          	addi	sp,sp,-16
    800015f0:	00813423          	sd	s0,8(sp)
    800015f4:	01010413          	addi	s0,sp,16
    uint64 code=0x14;
    __asm__ volatile("mv a1,%0"::"r"(handle));
    800015f8:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0,%0"::"r"(code));
    800015fc:	01400793          	li	a5,20
    80001600:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    80001604:	00000073          	ecall
}
    80001608:	00813403          	ld	s0,8(sp)
    8000160c:	01010113          	addi	sp,sp,16
    80001610:	00008067          	ret

0000000080001614 <_Z8sem_openPP11Semaphore_kj>:

int sem_open(sem_t* handle, unsigned init){
    80001614:	ff010113          	addi	sp,sp,-16
    80001618:	00113423          	sd	ra,8(sp)
    8000161c:	00813023          	sd	s0,0(sp)
    80001620:	01010413          	addi	s0,sp,16
    uint64 code=0x21;
    __asm__ volatile("mv a2,%0"::"r"(init));
    80001624:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1,%0"::"r"(handle));
    80001628:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0,%0"::"r"(code));
    8000162c:	02100793          	li	a5,33
    80001630:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001634:	00000073          	ecall
    int ret=(int)returnVal();
    80001638:	00000097          	auipc	ra,0x0
    8000163c:	e6c080e7          	jalr	-404(ra) # 800014a4 <_Z9returnValv>
    return ret;
}
    80001640:	0005051b          	sext.w	a0,a0
    80001644:	00813083          	ld	ra,8(sp)
    80001648:	00013403          	ld	s0,0(sp)
    8000164c:	01010113          	addi	sp,sp,16
    80001650:	00008067          	ret

0000000080001654 <_Z9sem_closeP11Semaphore_k>:

int sem_close(sem_t handle) {
    80001654:	ff010113          	addi	sp,sp,-16
    80001658:	00113423          	sd	ra,8(sp)
    8000165c:	00813023          	sd	s0,0(sp)
    80001660:	01010413          	addi	s0,sp,16
    uint64 code=0x22;
    __asm__ volatile("mv a1,%0"::"r"(handle));
    80001664:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0,%0"::"r"(code));
    80001668:	02200793          	li	a5,34
    8000166c:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001670:	00000073          	ecall
    int ret=(int)returnVal();
    80001674:	00000097          	auipc	ra,0x0
    80001678:	e30080e7          	jalr	-464(ra) # 800014a4 <_Z9returnValv>
    return ret;
}
    8000167c:	0005051b          	sext.w	a0,a0
    80001680:	00813083          	ld	ra,8(sp)
    80001684:	00013403          	ld	s0,0(sp)
    80001688:	01010113          	addi	sp,sp,16
    8000168c:	00008067          	ret

0000000080001690 <_Z8sem_waitP11Semaphore_k>:

int sem_wait(sem_t id) {
    80001690:	ff010113          	addi	sp,sp,-16
    80001694:	00113423          	sd	ra,8(sp)
    80001698:	00813023          	sd	s0,0(sp)
    8000169c:	01010413          	addi	s0,sp,16
    uint64 code=0x23;
    __asm__ volatile("mv a1,%0"::"r"(id));
    800016a0:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0,%0"::"r"(code));
    800016a4:	02300793          	li	a5,35
    800016a8:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800016ac:	00000073          	ecall
    int ret=(int)returnVal();
    800016b0:	00000097          	auipc	ra,0x0
    800016b4:	df4080e7          	jalr	-524(ra) # 800014a4 <_Z9returnValv>
    return ret;
}
    800016b8:	0005051b          	sext.w	a0,a0
    800016bc:	00813083          	ld	ra,8(sp)
    800016c0:	00013403          	ld	s0,0(sp)
    800016c4:	01010113          	addi	sp,sp,16
    800016c8:	00008067          	ret

00000000800016cc <_Z10sem_signalP11Semaphore_k>:

int sem_signal(sem_t id) {
    800016cc:	ff010113          	addi	sp,sp,-16
    800016d0:	00113423          	sd	ra,8(sp)
    800016d4:	00813023          	sd	s0,0(sp)
    800016d8:	01010413          	addi	s0,sp,16
    uint64 code=0x24;
    __asm__ volatile("mv a1,%0"::"r"(id));
    800016dc:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0,%0"::"r"(code));
    800016e0:	02400793          	li	a5,36
    800016e4:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800016e8:	00000073          	ecall
    int ret=(int)returnVal();
    800016ec:	00000097          	auipc	ra,0x0
    800016f0:	db8080e7          	jalr	-584(ra) # 800014a4 <_Z9returnValv>
    return ret;
}
    800016f4:	0005051b          	sext.w	a0,a0
    800016f8:	00813083          	ld	ra,8(sp)
    800016fc:	00013403          	ld	s0,0(sp)
    80001700:	01010113          	addi	sp,sp,16
    80001704:	00008067          	ret

0000000080001708 <_Z10time_sleepm>:

int time_sleep(time_t time) {
    80001708:	ff010113          	addi	sp,sp,-16
    8000170c:	00113423          	sd	ra,8(sp)
    80001710:	00813023          	sd	s0,0(sp)
    80001714:	01010413          	addi	s0,sp,16
    uint64 code=0x31;
    __asm__ volatile("mv a1,%0"::"r"(time));
    80001718:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0,%0"::"r"(code));
    8000171c:	03100793          	li	a5,49
    80001720:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001724:	00000073          	ecall
    int ret=(int)returnVal();
    80001728:	00000097          	auipc	ra,0x0
    8000172c:	d7c080e7          	jalr	-644(ra) # 800014a4 <_Z9returnValv>
    return ret;
}
    80001730:	0005051b          	sext.w	a0,a0
    80001734:	00813083          	ld	ra,8(sp)
    80001738:	00013403          	ld	s0,0(sp)
    8000173c:	01010113          	addi	sp,sp,16
    80001740:	00008067          	ret

0000000080001744 <_Z4getcv>:

char getc() {
    80001744:	ff010113          	addi	sp,sp,-16
    80001748:	00113423          	sd	ra,8(sp)
    8000174c:	00813023          	sd	s0,0(sp)
    80001750:	01010413          	addi	s0,sp,16
    uint64 code=0x41;
    __asm__ volatile("mv a0,%0"::"r"(code));
    80001754:	04100793          	li	a5,65
    80001758:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    8000175c:	00000073          	ecall
    //printString("kaoo\n");
    char ret=(char)returnVal();
    80001760:	00000097          	auipc	ra,0x0
    80001764:	d44080e7          	jalr	-700(ra) # 800014a4 <_Z9returnValv>
    return ret;
}
    80001768:	0ff57513          	andi	a0,a0,255
    8000176c:	00813083          	ld	ra,8(sp)
    80001770:	00013403          	ld	s0,0(sp)
    80001774:	01010113          	addi	sp,sp,16
    80001778:	00008067          	ret

000000008000177c <_Z4putcc>:

void putc(char c) {
    8000177c:	ff010113          	addi	sp,sp,-16
    80001780:	00813423          	sd	s0,8(sp)
    80001784:	01010413          	addi	s0,sp,16
    uint64 code=0x42;
    __asm__ volatile("mv a1,%0"::"r"(c));
    80001788:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0,%0"::"r"(code));
    8000178c:	04200793          	li	a5,66
    80001790:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001794:	00000073          	ecall
}
    80001798:	00813403          	ld	s0,8(sp)
    8000179c:	01010113          	addi	sp,sp,16
    800017a0:	00008067          	ret

00000000800017a4 <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore(unsigned int init) {
    sem_open(&myHandle,init);
}

Semaphore::~Semaphore() {
    800017a4:	fe010113          	addi	sp,sp,-32
    800017a8:	00113c23          	sd	ra,24(sp)
    800017ac:	00813823          	sd	s0,16(sp)
    800017b0:	00913423          	sd	s1,8(sp)
    800017b4:	02010413          	addi	s0,sp,32
    800017b8:	00050493          	mv	s1,a0
    800017bc:	0000a797          	auipc	a5,0xa
    800017c0:	02478793          	addi	a5,a5,36 # 8000b7e0 <_ZTV9Semaphore+0x10>
    800017c4:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    800017c8:	00853503          	ld	a0,8(a0)
    800017cc:	00000097          	auipc	ra,0x0
    800017d0:	e88080e7          	jalr	-376(ra) # 80001654 <_Z9sem_closeP11Semaphore_k>
    mem_free(myHandle);
    800017d4:	0084b503          	ld	a0,8(s1)
    800017d8:	00000097          	auipc	ra,0x0
    800017dc:	d38080e7          	jalr	-712(ra) # 80001510 <_Z8mem_freePv>
}
    800017e0:	01813083          	ld	ra,24(sp)
    800017e4:	01013403          	ld	s0,16(sp)
    800017e8:	00813483          	ld	s1,8(sp)
    800017ec:	02010113          	addi	sp,sp,32
    800017f0:	00008067          	ret

00000000800017f4 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    800017f4:	fe010113          	addi	sp,sp,-32
    800017f8:	00113c23          	sd	ra,24(sp)
    800017fc:	00813823          	sd	s0,16(sp)
    80001800:	00913423          	sd	s1,8(sp)
    80001804:	02010413          	addi	s0,sp,32
    80001808:	00050493          	mv	s1,a0
}
    8000180c:	00000097          	auipc	ra,0x0
    80001810:	f98080e7          	jalr	-104(ra) # 800017a4 <_ZN9SemaphoreD1Ev>
    80001814:	00048513          	mv	a0,s1
    80001818:	00001097          	auipc	ra,0x1
    8000181c:	918080e7          	jalr	-1768(ra) # 80002130 <_ZdlPv>
    80001820:	01813083          	ld	ra,24(sp)
    80001824:	01013403          	ld	s0,16(sp)
    80001828:	00813483          	ld	s1,8(sp)
    8000182c:	02010113          	addi	sp,sp,32
    80001830:	00008067          	ret

0000000080001834 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    80001834:	ff010113          	addi	sp,sp,-16
    80001838:	00113423          	sd	ra,8(sp)
    8000183c:	00813023          	sd	s0,0(sp)
    80001840:	01010413          	addi	s0,sp,16
    80001844:	0000a797          	auipc	a5,0xa
    80001848:	f9c78793          	addi	a5,a5,-100 # 8000b7e0 <_ZTV9Semaphore+0x10>
    8000184c:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle,init);
    80001850:	00850513          	addi	a0,a0,8
    80001854:	00000097          	auipc	ra,0x0
    80001858:	dc0080e7          	jalr	-576(ra) # 80001614 <_Z8sem_openPP11Semaphore_kj>
}
    8000185c:	00813083          	ld	ra,8(sp)
    80001860:	00013403          	ld	s0,0(sp)
    80001864:	01010113          	addi	sp,sp,16
    80001868:	00008067          	ret

000000008000186c <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    8000186c:	ff010113          	addi	sp,sp,-16
    80001870:	00113423          	sd	ra,8(sp)
    80001874:	00813023          	sd	s0,0(sp)
    80001878:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    8000187c:	00853503          	ld	a0,8(a0)
    80001880:	00000097          	auipc	ra,0x0
    80001884:	e10080e7          	jalr	-496(ra) # 80001690 <_Z8sem_waitP11Semaphore_k>
}
    80001888:	00813083          	ld	ra,8(sp)
    8000188c:	00013403          	ld	s0,0(sp)
    80001890:	01010113          	addi	sp,sp,16
    80001894:	00008067          	ret

0000000080001898 <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    80001898:	ff010113          	addi	sp,sp,-16
    8000189c:	00113423          	sd	ra,8(sp)
    800018a0:	00813023          	sd	s0,0(sp)
    800018a4:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    800018a8:	00853503          	ld	a0,8(a0)
    800018ac:	00000097          	auipc	ra,0x0
    800018b0:	e20080e7          	jalr	-480(ra) # 800016cc <_Z10sem_signalP11Semaphore_k>
}
    800018b4:	00813083          	ld	ra,8(sp)
    800018b8:	00013403          	ld	s0,0(sp)
    800018bc:	01010113          	addi	sp,sp,16
    800018c0:	00008067          	ret

00000000800018c4 <_ZN6Thread6trwrapEPv>:

int Thread::sleep(time_t time) {
    return time_sleep(time);
}

void Thread::trwrap(void* tr) {
    800018c4:	ff010113          	addi	sp,sp,-16
    800018c8:	00113423          	sd	ra,8(sp)
    800018cc:	00813023          	sd	s0,0(sp)
    800018d0:	01010413          	addi	s0,sp,16
    ((Thread*)tr)->run();
    800018d4:	00053783          	ld	a5,0(a0)
    800018d8:	0107b783          	ld	a5,16(a5)
    800018dc:	000780e7          	jalr	a5
}
    800018e0:	00813083          	ld	ra,8(sp)
    800018e4:	00013403          	ld	s0,0(sp)
    800018e8:	01010113          	addi	sp,sp,16
    800018ec:	00008067          	ret

00000000800018f0 <_ZN6ThreadD1Ev>:

Thread::Thread(void (*body)(void *), void *arg) : body(body), arg(arg){
    myHandle=nullptr;
}

Thread::~Thread() {
    800018f0:	ff010113          	addi	sp,sp,-16
    800018f4:	00113423          	sd	ra,8(sp)
    800018f8:	00813023          	sd	s0,0(sp)
    800018fc:	01010413          	addi	s0,sp,16
    80001900:	0000a797          	auipc	a5,0xa
    80001904:	f0878793          	addi	a5,a5,-248 # 8000b808 <_ZTV6Thread+0x10>
    80001908:	00f53023          	sd	a5,0(a0)
    myHandle->zavrsi(true);
    8000190c:	00853783          	ld	a5,8(a0)

    uint64 dohvatiTimeSlice() const {
        return timeSlice;
    }
    void zavrsi(bool value) {
        zavrsena=value;
    80001910:	00100713          	li	a4,1
    80001914:	00e78423          	sb	a4,8(a5)
    mem_free(myHandle);
    80001918:	00853503          	ld	a0,8(a0)
    8000191c:	00000097          	auipc	ra,0x0
    80001920:	bf4080e7          	jalr	-1036(ra) # 80001510 <_Z8mem_freePv>
    //thread_exit();
}
    80001924:	00813083          	ld	ra,8(sp)
    80001928:	00013403          	ld	s0,0(sp)
    8000192c:	01010113          	addi	sp,sp,16
    80001930:	00008067          	ret

0000000080001934 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80001934:	fe010113          	addi	sp,sp,-32
    80001938:	00113c23          	sd	ra,24(sp)
    8000193c:	00813823          	sd	s0,16(sp)
    80001940:	00913423          	sd	s1,8(sp)
    80001944:	02010413          	addi	s0,sp,32
    80001948:	00050493          	mv	s1,a0
}
    8000194c:	00000097          	auipc	ra,0x0
    80001950:	fa4080e7          	jalr	-92(ra) # 800018f0 <_ZN6ThreadD1Ev>
    80001954:	00048513          	mv	a0,s1
    80001958:	00000097          	auipc	ra,0x0
    8000195c:	7d8080e7          	jalr	2008(ra) # 80002130 <_ZdlPv>
    80001960:	01813083          	ld	ra,24(sp)
    80001964:	01013403          	ld	s0,16(sp)
    80001968:	00813483          	ld	s1,8(sp)
    8000196c:	02010113          	addi	sp,sp,32
    80001970:	00008067          	ret

0000000080001974 <_ZN6Thread5startEv>:
    if (myHandle==nullptr) {
    80001974:	00853783          	ld	a5,8(a0)
    80001978:	02079e63          	bnez	a5,800019b4 <_ZN6Thread5startEv+0x40>
int Thread::start() {
    8000197c:	ff010113          	addi	sp,sp,-16
    80001980:	00113423          	sd	ra,8(sp)
    80001984:	00813023          	sd	s0,0(sp)
    80001988:	01010413          	addi	s0,sp,16
        thread_create(&myHandle,body,arg);
    8000198c:	01853603          	ld	a2,24(a0)
    80001990:	01053583          	ld	a1,16(a0)
    80001994:	00850513          	addi	a0,a0,8
    80001998:	00000097          	auipc	ra,0x0
    8000199c:	bb4080e7          	jalr	-1100(ra) # 8000154c <_Z13thread_createPP8Thread_kPFvPvES2_>
        return 0;
    800019a0:	00000513          	li	a0,0
}
    800019a4:	00813083          	ld	ra,8(sp)
    800019a8:	00013403          	ld	s0,0(sp)
    800019ac:	01010113          	addi	sp,sp,16
    800019b0:	00008067          	ret
    else return -1;
    800019b4:	fff00513          	li	a0,-1
}
    800019b8:	00008067          	ret

00000000800019bc <_ZN6Thread4joinEv>:
void Thread::join() {
    800019bc:	ff010113          	addi	sp,sp,-16
    800019c0:	00113423          	sd	ra,8(sp)
    800019c4:	00813023          	sd	s0,0(sp)
    800019c8:	01010413          	addi	s0,sp,16
    thread_join(myHandle);
    800019cc:	00853503          	ld	a0,8(a0)
    800019d0:	00000097          	auipc	ra,0x0
    800019d4:	c1c080e7          	jalr	-996(ra) # 800015ec <_Z11thread_joinP8Thread_k>
}
    800019d8:	00813083          	ld	ra,8(sp)
    800019dc:	00013403          	ld	s0,0(sp)
    800019e0:	01010113          	addi	sp,sp,16
    800019e4:	00008067          	ret

00000000800019e8 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    800019e8:	ff010113          	addi	sp,sp,-16
    800019ec:	00113423          	sd	ra,8(sp)
    800019f0:	00813023          	sd	s0,0(sp)
    800019f4:	01010413          	addi	s0,sp,16
    thread_dispatch();
    800019f8:	00000097          	auipc	ra,0x0
    800019fc:	bd0080e7          	jalr	-1072(ra) # 800015c8 <_Z15thread_dispatchv>
}
    80001a00:	00813083          	ld	ra,8(sp)
    80001a04:	00013403          	ld	s0,0(sp)
    80001a08:	01010113          	addi	sp,sp,16
    80001a0c:	00008067          	ret

0000000080001a10 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t time) {
    80001a10:	ff010113          	addi	sp,sp,-16
    80001a14:	00113423          	sd	ra,8(sp)
    80001a18:	00813023          	sd	s0,0(sp)
    80001a1c:	01010413          	addi	s0,sp,16
    return time_sleep(time);
    80001a20:	00000097          	auipc	ra,0x0
    80001a24:	ce8080e7          	jalr	-792(ra) # 80001708 <_Z10time_sleepm>
}
    80001a28:	00813083          	ld	ra,8(sp)
    80001a2c:	00013403          	ld	s0,0(sp)
    80001a30:	01010113          	addi	sp,sp,16
    80001a34:	00008067          	ret

0000000080001a38 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) : body(body), arg(arg){
    80001a38:	ff010113          	addi	sp,sp,-16
    80001a3c:	00813423          	sd	s0,8(sp)
    80001a40:	01010413          	addi	s0,sp,16
    80001a44:	0000a797          	auipc	a5,0xa
    80001a48:	dc478793          	addi	a5,a5,-572 # 8000b808 <_ZTV6Thread+0x10>
    80001a4c:	00f53023          	sd	a5,0(a0)
    80001a50:	00b53823          	sd	a1,16(a0)
    80001a54:	00c53c23          	sd	a2,24(a0)
    myHandle=nullptr;
    80001a58:	00053423          	sd	zero,8(a0)
}
    80001a5c:	00813403          	ld	s0,8(sp)
    80001a60:	01010113          	addi	sp,sp,16
    80001a64:	00008067          	ret

0000000080001a68 <_ZN6ThreadC1Ev>:

Thread::Thread() : Thread(&trwrap,this){
    80001a68:	ff010113          	addi	sp,sp,-16
    80001a6c:	00113423          	sd	ra,8(sp)
    80001a70:	00813023          	sd	s0,0(sp)
    80001a74:	01010413          	addi	s0,sp,16
    80001a78:	00050613          	mv	a2,a0
    80001a7c:	00000597          	auipc	a1,0x0
    80001a80:	e4858593          	addi	a1,a1,-440 # 800018c4 <_ZN6Thread6trwrapEPv>
    80001a84:	00000097          	auipc	ra,0x0
    80001a88:	fb4080e7          	jalr	-76(ra) # 80001a38 <_ZN6ThreadC1EPFvPvES0_>

}
    80001a8c:	00813083          	ld	ra,8(sp)
    80001a90:	00013403          	ld	s0,0(sp)
    80001a94:	01010113          	addi	sp,sp,16
    80001a98:	00008067          	ret

0000000080001a9c <_ZN6Thread3runEv>:
    static int sleep(time_t);

protected:
    Thread();
    thread_t myHandle;
    virtual void run(){
    80001a9c:	ff010113          	addi	sp,sp,-16
    80001aa0:	00813423          	sd	s0,8(sp)
    80001aa4:	01010413          	addi	s0,sp,16
    }
    80001aa8:	00813403          	ld	s0,8(sp)
    80001aac:	01010113          	addi	sp,sp,16
    80001ab0:	00008067          	ret

0000000080001ab4 <_ZN5BaferC1Ei>:
// Created by os on 9/10/23.
//

#include "../h/Bafer.hpp"

Bafer::Bafer(int l): head(0), tail(0) {
    80001ab4:	fe010113          	addi	sp,sp,-32
    80001ab8:	00113c23          	sd	ra,24(sp)
    80001abc:	00813823          	sd	s0,16(sp)
    80001ac0:	00913423          	sd	s1,8(sp)
    80001ac4:	01213023          	sd	s2,0(sp)
    80001ac8:	02010413          	addi	s0,sp,32
    80001acc:	00050493          	mv	s1,a0
    80001ad0:	00058913          	mv	s2,a1
    80001ad4:	00053423          	sd	zero,8(a0)
    80001ad8:	00053823          	sd	zero,16(a0)
    len=l;
    80001adc:	00b53c23          	sd	a1,24(a0)
    buf=(char*)MemoryAllocator::_mem_alloc(l*sizeof(char));
    80001ae0:	00058513          	mv	a0,a1
    80001ae4:	00001097          	auipc	ra,0x1
    80001ae8:	588080e7          	jalr	1416(ra) # 8000306c <_ZN15MemoryAllocator10_mem_allocEm>
    80001aec:	00a4b023          	sd	a0,0(s1)
    Semaphore_k::createSemaphore(&zauzeto,0);
    80001af0:	00000593          	li	a1,0
    80001af4:	02048513          	addi	a0,s1,32
    80001af8:	00001097          	auipc	ra,0x1
    80001afc:	d20080e7          	jalr	-736(ra) # 80002818 <_ZN11Semaphore_k15createSemaphoreEPPS_i>
    Semaphore_k::createSemaphore(&slobodno,l);
    80001b00:	00090593          	mv	a1,s2
    80001b04:	02848513          	addi	a0,s1,40
    80001b08:	00001097          	auipc	ra,0x1
    80001b0c:	d10080e7          	jalr	-752(ra) # 80002818 <_ZN11Semaphore_k15createSemaphoreEPPS_i>
}
    80001b10:	01813083          	ld	ra,24(sp)
    80001b14:	01013403          	ld	s0,16(sp)
    80001b18:	00813483          	ld	s1,8(sp)
    80001b1c:	00013903          	ld	s2,0(sp)
    80001b20:	02010113          	addi	sp,sp,32
    80001b24:	00008067          	ret

0000000080001b28 <_ZN5Bafer7putCharEc>:

void Bafer::putChar(char c) {
    80001b28:	fe010113          	addi	sp,sp,-32
    80001b2c:	00113c23          	sd	ra,24(sp)
    80001b30:	00813823          	sd	s0,16(sp)
    80001b34:	00913423          	sd	s1,8(sp)
    80001b38:	01213023          	sd	s2,0(sp)
    80001b3c:	02010413          	addi	s0,sp,32
    80001b40:	00050493          	mv	s1,a0
    80001b44:	00058913          	mv	s2,a1
    slobodno->wait();
    80001b48:	02853503          	ld	a0,40(a0)
    80001b4c:	00001097          	auipc	ra,0x1
    80001b50:	d2c080e7          	jalr	-724(ra) # 80002878 <_ZN11Semaphore_k4waitEv>
    buf[tail]=c;
    80001b54:	0004b783          	ld	a5,0(s1)
    80001b58:	0104b703          	ld	a4,16(s1)
    80001b5c:	00e787b3          	add	a5,a5,a4
    80001b60:	01278023          	sb	s2,0(a5)
    tail++;
    80001b64:	0104b783          	ld	a5,16(s1)
    80001b68:	00178793          	addi	a5,a5,1
    80001b6c:	00f4b823          	sd	a5,16(s1)
    if (tail>=len) tail%=len;
    80001b70:	0184b703          	ld	a4,24(s1)
    80001b74:	00e7e663          	bltu	a5,a4,80001b80 <_ZN5Bafer7putCharEc+0x58>
    80001b78:	02e7f7b3          	remu	a5,a5,a4
    80001b7c:	00f4b823          	sd	a5,16(s1)
    zauzeto->signal();
    80001b80:	0204b503          	ld	a0,32(s1)
    80001b84:	00001097          	auipc	ra,0x1
    80001b88:	d3c080e7          	jalr	-708(ra) # 800028c0 <_ZN11Semaphore_k6signalEv>

}
    80001b8c:	01813083          	ld	ra,24(sp)
    80001b90:	01013403          	ld	s0,16(sp)
    80001b94:	00813483          	ld	s1,8(sp)
    80001b98:	00013903          	ld	s2,0(sp)
    80001b9c:	02010113          	addi	sp,sp,32
    80001ba0:	00008067          	ret

0000000080001ba4 <_ZN5Bafer7getCharEv>:

char Bafer::getChar() {
    80001ba4:	fe010113          	addi	sp,sp,-32
    80001ba8:	00113c23          	sd	ra,24(sp)
    80001bac:	00813823          	sd	s0,16(sp)
    80001bb0:	00913423          	sd	s1,8(sp)
    80001bb4:	01213023          	sd	s2,0(sp)
    80001bb8:	02010413          	addi	s0,sp,32
    80001bbc:	00050493          	mv	s1,a0
    zauzeto->wait();
    80001bc0:	02053503          	ld	a0,32(a0)
    80001bc4:	00001097          	auipc	ra,0x1
    80001bc8:	cb4080e7          	jalr	-844(ra) # 80002878 <_ZN11Semaphore_k4waitEv>
    char c=buf[head];
    80001bcc:	0004b703          	ld	a4,0(s1)
    80001bd0:	0084b783          	ld	a5,8(s1)
    80001bd4:	00f70733          	add	a4,a4,a5
    80001bd8:	00074903          	lbu	s2,0(a4)
    head++;
    80001bdc:	00178793          	addi	a5,a5,1
    80001be0:	00f4b423          	sd	a5,8(s1)
    if(head>=len) head%=len;
    80001be4:	0184b703          	ld	a4,24(s1)
    80001be8:	00e7e663          	bltu	a5,a4,80001bf4 <_ZN5Bafer7getCharEv+0x50>
    80001bec:	02e7f7b3          	remu	a5,a5,a4
    80001bf0:	00f4b423          	sd	a5,8(s1)
    slobodno->signal();
    80001bf4:	0284b503          	ld	a0,40(s1)
    80001bf8:	00001097          	auipc	ra,0x1
    80001bfc:	cc8080e7          	jalr	-824(ra) # 800028c0 <_ZN11Semaphore_k6signalEv>
    return c;
    80001c00:	00090513          	mv	a0,s2
    80001c04:	01813083          	ld	ra,24(sp)
    80001c08:	01013403          	ld	s0,16(sp)
    80001c0c:	00813483          	ld	s1,8(sp)
    80001c10:	00013903          	ld	s2,0(sp)
    80001c14:	02010113          	addi	sp,sp,32
    80001c18:	00008067          	ret

0000000080001c1c <_Z8userMainPv>:
#include "../test/printing.hpp"
#include "../h/syscall_c.hpp"
#include "../test/testJoin.h"
#endif

void userMain(void*) {
    80001c1c:	fe010113          	addi	sp,sp,-32
    80001c20:	00113c23          	sd	ra,24(sp)
    80001c24:	00813823          	sd	s0,16(sp)
    80001c28:	00913423          	sd	s1,8(sp)
    80001c2c:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80001c30:	00007517          	auipc	a0,0x7
    80001c34:	3f050513          	addi	a0,a0,1008 # 80009020 <CONSOLE_STATUS+0x10>
    80001c38:	00004097          	auipc	ra,0x4
    80001c3c:	f58080e7          	jalr	-168(ra) # 80005b90 <_Z11printStringPKc>
    int test = getc() - '0';
    80001c40:	00000097          	auipc	ra,0x0
    80001c44:	b04080e7          	jalr	-1276(ra) # 80001744 <_Z4getcv>
    80001c48:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80001c4c:	00000097          	auipc	ra,0x0
    80001c50:	af8080e7          	jalr	-1288(ra) # 80001744 <_Z4getcv>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80001c54:	00800793          	li	a5,8
    80001c58:	1297e863          	bltu	a5,s1,80001d88 <_Z8userMainPv+0x16c>
    80001c5c:	00249493          	slli	s1,s1,0x2
    80001c60:	00007717          	auipc	a4,0x7
    80001c64:	68070713          	addi	a4,a4,1664 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80001c68:	00e484b3          	add	s1,s1,a4
    80001c6c:	0004a783          	lw	a5,0(s1)
    80001c70:	00e787b3          	add	a5,a5,a4
    80001c74:	00078067          	jr	a5
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            printString("test br1\n");
    80001c78:	00007517          	auipc	a0,0x7
    80001c7c:	3c850513          	addi	a0,a0,968 # 80009040 <CONSOLE_STATUS+0x30>
    80001c80:	00004097          	auipc	ra,0x4
    80001c84:	f10080e7          	jalr	-240(ra) # 80005b90 <_Z11printStringPKc>
            Threads_C_API_test();
    80001c88:	00003097          	auipc	ra,0x3
    80001c8c:	580080e7          	jalr	1408(ra) # 80005208 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80001c90:	00007517          	auipc	a0,0x7
    80001c94:	3c050513          	addi	a0,a0,960 # 80009050 <CONSOLE_STATUS+0x40>
    80001c98:	00004097          	auipc	ra,0x4
    80001c9c:	ef8080e7          	jalr	-264(ra) # 80005b90 <_Z11printStringPKc>
            printString("TEST 8 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80001ca0:	01813083          	ld	ra,24(sp)
    80001ca4:	01013403          	ld	s0,16(sp)
    80001ca8:	00813483          	ld	s1,8(sp)
    80001cac:	02010113          	addi	sp,sp,32
    80001cb0:	00008067          	ret
            Threads_CPP_API_test();
    80001cb4:	00002097          	auipc	ra,0x2
    80001cb8:	58c080e7          	jalr	1420(ra) # 80004240 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80001cbc:	00007517          	auipc	a0,0x7
    80001cc0:	3d450513          	addi	a0,a0,980 # 80009090 <CONSOLE_STATUS+0x80>
    80001cc4:	00004097          	auipc	ra,0x4
    80001cc8:	ecc080e7          	jalr	-308(ra) # 80005b90 <_Z11printStringPKc>
            break;
    80001ccc:	fd5ff06f          	j	80001ca0 <_Z8userMainPv+0x84>
            producerConsumer_C_API();
    80001cd0:	00002097          	auipc	ra,0x2
    80001cd4:	968080e7          	jalr	-1688(ra) # 80003638 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80001cd8:	00007517          	auipc	a0,0x7
    80001cdc:	3f850513          	addi	a0,a0,1016 # 800090d0 <CONSOLE_STATUS+0xc0>
    80001ce0:	00004097          	auipc	ra,0x4
    80001ce4:	eb0080e7          	jalr	-336(ra) # 80005b90 <_Z11printStringPKc>
            break;
    80001ce8:	fb9ff06f          	j	80001ca0 <_Z8userMainPv+0x84>
            producerConsumer_CPP_Sync_API();
    80001cec:	00004097          	auipc	ra,0x4
    80001cf0:	860080e7          	jalr	-1952(ra) # 8000554c <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80001cf4:	00007517          	auipc	a0,0x7
    80001cf8:	42c50513          	addi	a0,a0,1068 # 80009120 <CONSOLE_STATUS+0x110>
    80001cfc:	00004097          	auipc	ra,0x4
    80001d00:	e94080e7          	jalr	-364(ra) # 80005b90 <_Z11printStringPKc>
            break;
    80001d04:	f9dff06f          	j	80001ca0 <_Z8userMainPv+0x84>
            testSleeping();
    80001d08:	00004097          	auipc	ra,0x4
    80001d0c:	5f4080e7          	jalr	1524(ra) # 800062fc <_Z12testSleepingv>
            printString("TEST 5 (zadatak 4., thread_sleep test C API)\n");
    80001d10:	00007517          	auipc	a0,0x7
    80001d14:	46850513          	addi	a0,a0,1128 # 80009178 <CONSOLE_STATUS+0x168>
    80001d18:	00004097          	auipc	ra,0x4
    80001d1c:	e78080e7          	jalr	-392(ra) # 80005b90 <_Z11printStringPKc>
            break;
    80001d20:	f81ff06f          	j	80001ca0 <_Z8userMainPv+0x84>
            testConsumerProducer();
    80001d24:	00003097          	auipc	ra,0x3
    80001d28:	884080e7          	jalr	-1916(ra) # 800045a8 <_Z20testConsumerProducerv>
            printString("TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)\n");
    80001d2c:	00007517          	auipc	a0,0x7
    80001d30:	47c50513          	addi	a0,a0,1148 # 800091a8 <CONSOLE_STATUS+0x198>
    80001d34:	00004097          	auipc	ra,0x4
    80001d38:	e5c080e7          	jalr	-420(ra) # 80005b90 <_Z11printStringPKc>
            break;
    80001d3c:	f65ff06f          	j	80001ca0 <_Z8userMainPv+0x84>
            System_Mode_test();
    80001d40:	00005097          	auipc	ra,0x5
    80001d44:	b30080e7          	jalr	-1232(ra) # 80006870 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80001d48:	00007517          	auipc	a0,0x7
    80001d4c:	4a050513          	addi	a0,a0,1184 # 800091e8 <CONSOLE_STATUS+0x1d8>
    80001d50:	00004097          	auipc	ra,0x4
    80001d54:	e40080e7          	jalr	-448(ra) # 80005b90 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80001d58:	00007517          	auipc	a0,0x7
    80001d5c:	4b050513          	addi	a0,a0,1200 # 80009208 <CONSOLE_STATUS+0x1f8>
    80001d60:	00004097          	auipc	ra,0x4
    80001d64:	e30080e7          	jalr	-464(ra) # 80005b90 <_Z11printStringPKc>
            break;
    80001d68:	f39ff06f          	j	80001ca0 <_Z8userMainPv+0x84>
            testJoin();
    80001d6c:	00002097          	auipc	ra,0x2
    80001d70:	d3c080e7          	jalr	-708(ra) # 80003aa8 <_Z8testJoinv>
            printString("TEST 8 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80001d74:	00007517          	auipc	a0,0x7
    80001d78:	4ec50513          	addi	a0,a0,1260 # 80009260 <CONSOLE_STATUS+0x250>
    80001d7c:	00004097          	auipc	ra,0x4
    80001d80:	e14080e7          	jalr	-492(ra) # 80005b90 <_Z11printStringPKc>
            break;
    80001d84:	f1dff06f          	j	80001ca0 <_Z8userMainPv+0x84>
            printString("Niste uneli odgovarajuci broj za test\n");
    80001d88:	00007517          	auipc	a0,0x7
    80001d8c:	53050513          	addi	a0,a0,1328 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80001d90:	00004097          	auipc	ra,0x4
    80001d94:	e00080e7          	jalr	-512(ra) # 80005b90 <_Z11printStringPKc>
    80001d98:	f09ff06f          	j	80001ca0 <_Z8userMainPv+0x84>

0000000080001d9c <_Z41__static_initialization_and_destruction_0ii>:
    return listaSpremnih.ukloniPrvi();
}

void Scheduler::put(Thread_k* nit){
    listaSpremnih.dodajNaKraj(nit);
    80001d9c:	ff010113          	addi	sp,sp,-16
    80001da0:	00813423          	sd	s0,8(sp)
    80001da4:	01010413          	addi	s0,sp,16
    80001da8:	00100793          	li	a5,1
    80001dac:	00f50863          	beq	a0,a5,80001dbc <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001db0:	00813403          	ld	s0,8(sp)
    80001db4:	01010113          	addi	sp,sp,16
    80001db8:	00008067          	ret
    80001dbc:	000107b7          	lui	a5,0x10
    80001dc0:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001dc4:	fef596e3          	bne	a1,a5,80001db0 <_Z41__static_initialization_and_destruction_0ii+0x14>
private:
    Element* head, *tail;
    int len;
public:

    Lista(): head(nullptr),tail(nullptr), len(0){}
    80001dc8:	0000a797          	auipc	a5,0xa
    80001dcc:	cd878793          	addi	a5,a5,-808 # 8000baa0 <_ZN9Scheduler13listaSpremnihE>
    80001dd0:	0007b023          	sd	zero,0(a5)
    80001dd4:	0007b423          	sd	zero,8(a5)
    80001dd8:	0007a823          	sw	zero,16(a5)
    80001ddc:	fd5ff06f          	j	80001db0 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001de0 <_ZN9Scheduler3getEv>:
Thread_k* Scheduler::get(){
    80001de0:	fe010113          	addi	sp,sp,-32
    80001de4:	00113c23          	sd	ra,24(sp)
    80001de8:	00813823          	sd	s0,16(sp)
    80001dec:	00913423          	sd	s1,8(sp)
    80001df0:	02010413          	addi	s0,sp,32



    T* ukloniPrvi(){

        if (head==nullptr) return nullptr;
    80001df4:	0000a517          	auipc	a0,0xa
    80001df8:	cac53503          	ld	a0,-852(a0) # 8000baa0 <_ZN9Scheduler13listaSpremnihE>
    80001dfc:	04050c63          	beqz	a0,80001e54 <_ZN9Scheduler3getEv+0x74>
        Element* elem=head;
        head = head->next;
    80001e00:	00853783          	ld	a5,8(a0)
    80001e04:	0000a717          	auipc	a4,0xa
    80001e08:	c8f73e23          	sd	a5,-868(a4) # 8000baa0 <_ZN9Scheduler13listaSpremnihE>
        if (head==nullptr){
    80001e0c:	02078e63          	beqz	a5,80001e48 <_ZN9Scheduler3getEv+0x68>
            tail=nullptr;
        }
        T* podatak=elem->el;
    80001e10:	00053483          	ld	s1,0(a0)
        MemoryAllocator::_mem_free(elem);
    80001e14:	00001097          	auipc	ra,0x1
    80001e18:	35c080e7          	jalr	860(ra) # 80003170 <_ZN15MemoryAllocator9_mem_freeEPv>
        len--;
    80001e1c:	0000a717          	auipc	a4,0xa
    80001e20:	c8470713          	addi	a4,a4,-892 # 8000baa0 <_ZN9Scheduler13listaSpremnihE>
    80001e24:	01072783          	lw	a5,16(a4)
    80001e28:	fff7879b          	addiw	a5,a5,-1
    80001e2c:	00f72823          	sw	a5,16(a4)
}
    80001e30:	00048513          	mv	a0,s1
    80001e34:	01813083          	ld	ra,24(sp)
    80001e38:	01013403          	ld	s0,16(sp)
    80001e3c:	00813483          	ld	s1,8(sp)
    80001e40:	02010113          	addi	sp,sp,32
    80001e44:	00008067          	ret
            tail=nullptr;
    80001e48:	0000a797          	auipc	a5,0xa
    80001e4c:	c607b023          	sd	zero,-928(a5) # 8000baa8 <_ZN9Scheduler13listaSpremnihE+0x8>
    80001e50:	fc1ff06f          	j	80001e10 <_ZN9Scheduler3getEv+0x30>
        if (head==nullptr) return nullptr;
    80001e54:	00050493          	mv	s1,a0
    return listaSpremnih.ukloniPrvi();
    80001e58:	fd9ff06f          	j	80001e30 <_ZN9Scheduler3getEv+0x50>

0000000080001e5c <_ZN9Scheduler3putEP8Thread_k>:
void Scheduler::put(Thread_k* nit){
    80001e5c:	fe010113          	addi	sp,sp,-32
    80001e60:	00113c23          	sd	ra,24(sp)
    80001e64:	00813823          	sd	s0,16(sp)
    80001e68:	00913423          	sd	s1,8(sp)
    80001e6c:	02010413          	addi	s0,sp,32
    80001e70:	00050493          	mv	s1,a0
        Element* novi=(Element*)MemoryAllocator::_mem_alloc(sizeof(Element));
    80001e74:	01000513          	li	a0,16
    80001e78:	00001097          	auipc	ra,0x1
    80001e7c:	1f4080e7          	jalr	500(ra) # 8000306c <_ZN15MemoryAllocator10_mem_allocEm>
        novi->el=pod;
    80001e80:	00953023          	sd	s1,0(a0)
        novi->next= nullptr;
    80001e84:	00053423          	sd	zero,8(a0)
        if (head==nullptr){
    80001e88:	0000a797          	auipc	a5,0xa
    80001e8c:	c187b783          	ld	a5,-1000(a5) # 8000baa0 <_ZN9Scheduler13listaSpremnihE>
    80001e90:	02078e63          	beqz	a5,80001ecc <_ZN9Scheduler3putEP8Thread_k+0x70>
            tail->next=novi;
    80001e94:	0000a797          	auipc	a5,0xa
    80001e98:	c147b783          	ld	a5,-1004(a5) # 8000baa8 <_ZN9Scheduler13listaSpremnihE+0x8>
    80001e9c:	00a7b423          	sd	a0,8(a5)
        tail=novi;
    80001ea0:	0000a797          	auipc	a5,0xa
    80001ea4:	c0078793          	addi	a5,a5,-1024 # 8000baa0 <_ZN9Scheduler13listaSpremnihE>
    80001ea8:	00a7b423          	sd	a0,8(a5)
        len++;
    80001eac:	0107a703          	lw	a4,16(a5)
    80001eb0:	0017071b          	addiw	a4,a4,1
    80001eb4:	00e7a823          	sw	a4,16(a5)
    80001eb8:	01813083          	ld	ra,24(sp)
    80001ebc:	01013403          	ld	s0,16(sp)
    80001ec0:	00813483          	ld	s1,8(sp)
    80001ec4:	02010113          	addi	sp,sp,32
    80001ec8:	00008067          	ret
            head=novi;
    80001ecc:	0000a797          	auipc	a5,0xa
    80001ed0:	bca7ba23          	sd	a0,-1068(a5) # 8000baa0 <_ZN9Scheduler13listaSpremnihE>
    80001ed4:	fcdff06f          	j	80001ea0 <_ZN9Scheduler3putEP8Thread_k+0x44>

0000000080001ed8 <_GLOBAL__sub_I__ZN9Scheduler13listaSpremnihE>:
    80001ed8:	ff010113          	addi	sp,sp,-16
    80001edc:	00113423          	sd	ra,8(sp)
    80001ee0:	00813023          	sd	s0,0(sp)
    80001ee4:	01010413          	addi	s0,sp,16
    80001ee8:	000105b7          	lui	a1,0x10
    80001eec:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001ef0:	00100513          	li	a0,1
    80001ef4:	00000097          	auipc	ra,0x0
    80001ef8:	ea8080e7          	jalr	-344(ra) # 80001d9c <_Z41__static_initialization_and_destruction_0ii>
    80001efc:	00813083          	ld	ra,8(sp)
    80001f00:	00013403          	ld	s0,0(sp)
    80001f04:	01010113          	addi	sp,sp,16
    80001f08:	00008067          	ret

0000000080001f0c <_ZN7Console4getcEv>:

#include "../h/syscall_cpp.hpp"
#include "../h/syscall_c.hpp"


char Console::getc() {
    80001f0c:	ff010113          	addi	sp,sp,-16
    80001f10:	00113423          	sd	ra,8(sp)
    80001f14:	00813023          	sd	s0,0(sp)
    80001f18:	01010413          	addi	s0,sp,16
    return ::getc();
    80001f1c:	00000097          	auipc	ra,0x0
    80001f20:	828080e7          	jalr	-2008(ra) # 80001744 <_Z4getcv>
}
    80001f24:	00813083          	ld	ra,8(sp)
    80001f28:	00013403          	ld	s0,0(sp)
    80001f2c:	01010113          	addi	sp,sp,16
    80001f30:	00008067          	ret

0000000080001f34 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    80001f34:	ff010113          	addi	sp,sp,-16
    80001f38:	00113423          	sd	ra,8(sp)
    80001f3c:	00813023          	sd	s0,0(sp)
    80001f40:	01010413          	addi	s0,sp,16
    ::putc(c);
    80001f44:	00000097          	auipc	ra,0x0
    80001f48:	838080e7          	jalr	-1992(ra) # 8000177c <_Z4putcc>
    80001f4c:	00813083          	ld	ra,8(sp)
    80001f50:	00013403          	ld	s0,0(sp)
    80001f54:	01010113          	addi	sp,sp,16
    80001f58:	00008067          	ret

0000000080001f5c <_Z11console_outPv>:



extern void userMain(void*);
void console_out(void*)
{
    80001f5c:	fd010113          	addi	sp,sp,-48
    80001f60:	02113423          	sd	ra,40(sp)
    80001f64:	02813023          	sd	s0,32(sp)
    80001f68:	00913c23          	sd	s1,24(sp)
    80001f6c:	03010413          	addi	s0,sp,48
    while (true) {
        volatile char status = *((char*)CONSOLE_STATUS);
    80001f70:	0000a797          	auipc	a5,0xa
    80001f74:	a987b783          	ld	a5,-1384(a5) # 8000ba08 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001f78:	0007b483          	ld	s1,0(a5)
    80001f7c:	0004c783          	lbu	a5,0(s1)
    80001f80:	fcf40fa3          	sb	a5,-33(s0)
        while ((status & CONSOLE_TX_STATUS_BIT)) {
    80001f84:	fdf44783          	lbu	a5,-33(s0)
    80001f88:	0ff7f793          	andi	a5,a5,255
    80001f8c:	0207f793          	andi	a5,a5,32
    80001f90:	fe0780e3          	beqz	a5,80001f70 <_Z11console_outPv+0x14>
            char c = Konzola::getCharOut();
    80001f94:	00001097          	auipc	ra,0x1
    80001f98:	3e8080e7          	jalr	1000(ra) # 8000337c <_ZN7Konzola10getCharOutEv>
            *((char*)CONSOLE_TX_DATA) = c;
    80001f9c:	0000a797          	auipc	a5,0xa
    80001fa0:	a847b783          	ld	a5,-1404(a5) # 8000ba20 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001fa4:	0007b783          	ld	a5,0(a5)
    80001fa8:	00a78023          	sb	a0,0(a5)
            status = *((char*)CONSOLE_STATUS);
    80001fac:	0004c783          	lbu	a5,0(s1)
    80001fb0:	fcf40fa3          	sb	a5,-33(s0)
        while ((status & CONSOLE_TX_STATUS_BIT)) {
    80001fb4:	fd1ff06f          	j	80001f84 <_Z11console_outPv+0x28>

0000000080001fb8 <_Z11idleWrapperPv>:
        }
    }
}

void idleWrapper(void*)
{
    80001fb8:	ff010113          	addi	sp,sp,-16
    80001fbc:	00113423          	sd	ra,8(sp)
    80001fc0:	00813023          	sd	s0,0(sp)
    80001fc4:	01010413          	addi	s0,sp,16
    while (true) { thread_dispatch(); }
    80001fc8:	fffff097          	auipc	ra,0xfffff
    80001fcc:	600080e7          	jalr	1536(ra) # 800015c8 <_Z15thread_dispatchv>
    80001fd0:	ff9ff06f          	j	80001fc8 <_Z11idleWrapperPv+0x10>

0000000080001fd4 <main>:
}

int main(){
    80001fd4:	fc010113          	addi	sp,sp,-64
    80001fd8:	02113c23          	sd	ra,56(sp)
    80001fdc:	02813823          	sd	s0,48(sp)
    80001fe0:	02913423          	sd	s1,40(sp)
    80001fe4:	04010413          	addi	s0,sp,64
    MemoryAllocator::_init();
    80001fe8:	00001097          	auipc	ra,0x1
    80001fec:	028080e7          	jalr	40(ra) # 80003010 <_ZN15MemoryAllocator5_initEv>
    Konzola::init();
    80001ff0:	00001097          	auipc	ra,0x1
    80001ff4:	2ac080e7          	jalr	684(ra) # 8000329c <_ZN7Konzola4initEv>
    Riscv::stvec_w((uint64)(&Riscv::supervisorTrap)|1);
    80001ff8:	0000a797          	auipc	a5,0xa
    80001ffc:	a207b783          	ld	a5,-1504(a5) # 8000ba18 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002000:	0017e793          	ori	a5,a5,1
    __asm__ volatile("csrr %[sip], sip":[sip] "=r"(sip));
    return sip;
}

inline void Riscv::stvec_w(uint64 stvec) {
    __asm__ volatile("csrw stvec, %[stvec]"::[stvec]"r"(stvec));
    80002004:	10579073          	csrw	stvec,a5


    Thread_k *thr;
    Thread_k::_createThread(nullptr,&thr, nullptr,2, nullptr);
    80002008:	00000713          	li	a4,0
    8000200c:	00200693          	li	a3,2
    80002010:	00000613          	li	a2,0
    80002014:	fd840593          	addi	a1,s0,-40
    80002018:	00000513          	li	a0,0
    8000201c:	00000097          	auipc	ra,0x0
    80002020:	2a8080e7          	jalr	680(ra) # 800022c4 <_ZN8Thread_k13_createThreadEPFvPvEPPS_S0_mS0_>
    thr->postaviSistemsku();
    80002024:	fd843783          	ld	a5,-40(s0)
    bool sistemskaNit() const {
        return sys;
    }

    void postaviSistemsku() {
        sys=true;
    80002028:	00100493          	li	s1,1
    8000202c:	049784a3          	sb	s1,73(a5)
    Thread_k::runningThread = thr;
    80002030:	0000a717          	auipc	a4,0xa
    80002034:	a1073703          	ld	a4,-1520(a4) # 8000ba40 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002038:	00f73023          	sd	a5,0(a4)

    uint64 *stack1 = (uint64*)mem_alloc(sizeof(uint64) * 8* DEFAULT_STACK_SIZE);
    8000203c:	00040537          	lui	a0,0x40
    80002040:	fffff097          	auipc	ra,0xfffff
    80002044:	480080e7          	jalr	1152(ra) # 800014c0 <_Z9mem_allocm>
    80002048:	00050713          	mv	a4,a0
    Thread_k* output;
    Thread_k::_createThread(console_out,&output, nullptr,2, stack1);
    8000204c:	00200693          	li	a3,2
    80002050:	00000613          	li	a2,0
    80002054:	fd040593          	addi	a1,s0,-48
    80002058:	00000517          	auipc	a0,0x0
    8000205c:	f0450513          	addi	a0,a0,-252 # 80001f5c <_Z11console_outPv>
    80002060:	00000097          	auipc	ra,0x0
    80002064:	264080e7          	jalr	612(ra) # 800022c4 <_ZN8Thread_k13_createThreadEPFvPvEPPS_S0_mS0_>
    output->postaviSistemsku();
    80002068:	fd043783          	ld	a5,-48(s0)
    8000206c:	049784a3          	sb	s1,73(a5)

    Thread_k* idle;
    uint64 *stack = (uint64*)mem_alloc(sizeof(uint64) * 8* DEFAULT_STACK_SIZE);
    80002070:	00040537          	lui	a0,0x40
    80002074:	fffff097          	auipc	ra,0xfffff
    80002078:	44c080e7          	jalr	1100(ra) # 800014c0 <_Z9mem_allocm>
    8000207c:	00050713          	mv	a4,a0
    Thread_k::_createThread(idleWrapper, &idle,nullptr,2, stack);
    80002080:	00200693          	li	a3,2
    80002084:	00000613          	li	a2,0
    80002088:	fc840593          	addi	a1,s0,-56
    8000208c:	00000517          	auipc	a0,0x0
    80002090:	f2c50513          	addi	a0,a0,-212 # 80001fb8 <_Z11idleWrapperPv>
    80002094:	00000097          	auipc	ra,0x0
    80002098:	230080e7          	jalr	560(ra) # 800022c4 <_ZN8Thread_k13_createThreadEPFvPvEPPS_S0_mS0_>
inline void Riscv::sstatus_w(uint64 sstatus) {
    __asm__ volatile("csrw sstatus,%[sstatus]"::[sstatus] "r"(sstatus));
}

inline void Riscv::sstatus_ms(uint64 maska) {
    __asm__ volatile("csrs sstatus,%[maska]"::[maska] "r"(maska));
    8000209c:	00200793          	li	a5,2
    800020a0:	1007a073          	csrs	sstatus,a5
/*

*/
    Riscv::sstatus_ms(Riscv::SSTATUS_SIE);

    uint64 *stack2 = (uint64*)mem_alloc(sizeof(uint64) * DEFAULT_STACK_SIZE);
    800020a4:	00008537          	lui	a0,0x8
    800020a8:	fffff097          	auipc	ra,0xfffff
    800020ac:	418080e7          	jalr	1048(ra) # 800014c0 <_Z9mem_allocm>
    800020b0:	00050713          	mv	a4,a0
    Thread_k* userMainThread;
    Thread_k::_createThread( userMain, &userMainThread, nullptr, 2, stack2);
    800020b4:	00200693          	li	a3,2
    800020b8:	00000613          	li	a2,0
    800020bc:	fc040593          	addi	a1,s0,-64
    800020c0:	0000a517          	auipc	a0,0xa
    800020c4:	97853503          	ld	a0,-1672(a0) # 8000ba38 <_GLOBAL_OFFSET_TABLE_+0x40>
    800020c8:	00000097          	auipc	ra,0x0
    800020cc:	1fc080e7          	jalr	508(ra) # 800022c4 <_ZN8Thread_k13_createThreadEPFvPvEPPS_S0_mS0_>
    userMainThread->postaviSistemsku();
    800020d0:	fc043783          	ld	a5,-64(s0)
    800020d4:	049784a3          	sb	s1,73(a5)


    while (!userMainThread->jeZavrsena())
    800020d8:	fc043783          	ld	a5,-64(s0)
    void zavrsi(bool value) {
        zavrsena=value;
    }

    bool jeZavrsena() const {
        return zavrsena;
    800020dc:	0087c783          	lbu	a5,8(a5)
    800020e0:	00079863          	bnez	a5,800020f0 <main+0x11c>
        thread_dispatch();
    800020e4:	fffff097          	auipc	ra,0xfffff
    800020e8:	4e4080e7          	jalr	1252(ra) # 800015c8 <_Z15thread_dispatchv>
    800020ec:	fedff06f          	j	800020d8 <main+0x104>
    char c=Konzola::getCharOut();
    *(char*)CONSOLE_TX_DATA=c;
    printString("Zavrseno!");
    return 0;*/
    return 0;
    800020f0:	00000513          	li	a0,0
    800020f4:	03813083          	ld	ra,56(sp)
    800020f8:	03013403          	ld	s0,48(sp)
    800020fc:	02813483          	ld	s1,40(sp)
    80002100:	04010113          	addi	sp,sp,64
    80002104:	00008067          	ret

0000000080002108 <_Znwm>:

extern void* mem_alloc(size_t);
extern int mem_free(void*);


void* operator new (size_t size) {
    80002108:	ff010113          	addi	sp,sp,-16
    8000210c:	00113423          	sd	ra,8(sp)
    80002110:	00813023          	sd	s0,0(sp)
    80002114:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80002118:	fffff097          	auipc	ra,0xfffff
    8000211c:	3a8080e7          	jalr	936(ra) # 800014c0 <_Z9mem_allocm>
}
    80002120:	00813083          	ld	ra,8(sp)
    80002124:	00013403          	ld	s0,0(sp)
    80002128:	01010113          	addi	sp,sp,16
    8000212c:	00008067          	ret

0000000080002130 <_ZdlPv>:


void operator delete(void* ptr){
    80002130:	ff010113          	addi	sp,sp,-16
    80002134:	00113423          	sd	ra,8(sp)
    80002138:	00813023          	sd	s0,0(sp)
    8000213c:	01010413          	addi	s0,sp,16

    mem_free(ptr);
    80002140:	fffff097          	auipc	ra,0xfffff
    80002144:	3d0080e7          	jalr	976(ra) # 80001510 <_Z8mem_freePv>

}
    80002148:	00813083          	ld	ra,8(sp)
    8000214c:	00013403          	ld	s0,0(sp)
    80002150:	01010113          	addi	sp,sp,16
    80002154:	00008067          	ret

0000000080002158 <_Znam>:

void* operator new[](size_t size) {
    80002158:	ff010113          	addi	sp,sp,-16
    8000215c:	00113423          	sd	ra,8(sp)
    80002160:	00813023          	sd	s0,0(sp)
    80002164:	01010413          	addi	s0,sp,16

    return mem_alloc(size);
    80002168:	fffff097          	auipc	ra,0xfffff
    8000216c:	358080e7          	jalr	856(ra) # 800014c0 <_Z9mem_allocm>

}
    80002170:	00813083          	ld	ra,8(sp)
    80002174:	00013403          	ld	s0,0(sp)
    80002178:	01010113          	addi	sp,sp,16
    8000217c:	00008067          	ret

0000000080002180 <_ZdaPv>:


void operator delete[](void* ptr){
    80002180:	ff010113          	addi	sp,sp,-16
    80002184:	00113423          	sd	ra,8(sp)
    80002188:	00813023          	sd	s0,0(sp)
    8000218c:	01010413          	addi	s0,sp,16

    mem_free(ptr);
    80002190:	fffff097          	auipc	ra,0xfffff
    80002194:	380080e7          	jalr	896(ra) # 80001510 <_Z8mem_freePv>

}
    80002198:	00813083          	ld	ra,8(sp)
    8000219c:	00013403          	ld	s0,0(sp)
    800021a0:	01010113          	addi	sp,sp,16
    800021a4:	00008067          	ret

00000000800021a8 <_ZN8Thread_k13threadWrapperEv>:
    uint64 code = 0x13;
    __asm__ volatile("mv a0,%0"::"r"(code));
    __asm__ volatile("ecall");
}

void Thread_k::threadWrapper() {
    800021a8:	fe010113          	addi	sp,sp,-32
    800021ac:	00113c23          	sd	ra,24(sp)
    800021b0:	00813823          	sd	s0,16(sp)
    800021b4:	00913423          	sd	s1,8(sp)
    800021b8:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    800021bc:	00001097          	auipc	ra,0x1
    800021c0:	a24080e7          	jalr	-1500(ra) # 80002be0 <_ZN5Riscv10popSppSpieEv>
    runningThread->body(runningThread->argument);
    800021c4:	0000a497          	auipc	s1,0xa
    800021c8:	8f448493          	addi	s1,s1,-1804 # 8000bab8 <_ZN8Thread_k13runningThreadE>
    800021cc:	0004b783          	ld	a5,0(s1)
    800021d0:	0007b703          	ld	a4,0(a5)
    800021d4:	0287b503          	ld	a0,40(a5)
    800021d8:	000700e7          	jalr	a4
    runningThread->zavrsi(true);
    800021dc:	0004b783          	ld	a5,0(s1)
    800021e0:	00100713          	li	a4,1
    800021e4:	00e78423          	sb	a4,8(a5)
        return isWaiting;
    800021e8:	0487c703          	lbu	a4,72(a5)
    if (runningThread->isParentWaiting()) {
    800021ec:	02071063          	bnez	a4,8000220c <_ZN8Thread_k13threadWrapperEv+0x64>
        runningThread->resetParentWaiting();
        runningThread->getParent()->odblokiraj();
        Scheduler::put(runningThread->getParent());
    }
    //Thread_k::yield();
    thread_dispatch();
    800021f0:	fffff097          	auipc	ra,0xfffff
    800021f4:	3d8080e7          	jalr	984(ra) # 800015c8 <_Z15thread_dispatchv>

}
    800021f8:	01813083          	ld	ra,24(sp)
    800021fc:	01013403          	ld	s0,16(sp)
    80002200:	00813483          	ld	s1,8(sp)
    80002204:	02010113          	addi	sp,sp,32
    80002208:	00008067          	ret
        isWaiting=false;
    8000220c:	04078423          	sb	zero,72(a5)
        return parent;
    80002210:	0407b703          	ld	a4,64(a5)
    void blokiraj(){
        blokirana=true;
    }

    void odblokiraj(){
        blokirana=false;
    80002214:	000704a3          	sb	zero,9(a4)
        Scheduler::put(runningThread->getParent());
    80002218:	0407b503          	ld	a0,64(a5)
    8000221c:	00000097          	auipc	ra,0x0
    80002220:	c40080e7          	jalr	-960(ra) # 80001e5c <_ZN9Scheduler3putEP8Thread_k>
    80002224:	fcdff06f          	j	800021f0 <_ZN8Thread_k13threadWrapperEv+0x48>

0000000080002228 <_ZN8Thread_k8dispatchEv>:
void Thread_k::dispatch() {
    80002228:	fe010113          	addi	sp,sp,-32
    8000222c:	00113c23          	sd	ra,24(sp)
    80002230:	00813823          	sd	s0,16(sp)
    80002234:	00913423          	sd	s1,8(sp)
    80002238:	02010413          	addi	s0,sp,32
    Thread_k* oldThread=Thread_k::runningThread;
    8000223c:	0000a497          	auipc	s1,0xa
    80002240:	87c4b483          	ld	s1,-1924(s1) # 8000bab8 <_ZN8Thread_k13runningThreadE>
        return zavrsena;
    80002244:	0084c783          	lbu	a5,8(s1)
    if (oldThread->jeZavrsena()==false && oldThread->jeBlokirana()==false) Scheduler::put(oldThread);
    80002248:	00079663          	bnez	a5,80002254 <_ZN8Thread_k8dispatchEv+0x2c>
    }

    bool jeBlokirana() const {
        return blokirana;
    8000224c:	0094c783          	lbu	a5,9(s1)
    80002250:	04078063          	beqz	a5,80002290 <_ZN8Thread_k8dispatchEv+0x68>
    Thread_k::runningThread=Scheduler::get();
    80002254:	00000097          	auipc	ra,0x0
    80002258:	b8c080e7          	jalr	-1140(ra) # 80001de0 <_ZN9Scheduler3getEv>
    8000225c:	0000a797          	auipc	a5,0xa
    80002260:	85c78793          	addi	a5,a5,-1956 # 8000bab8 <_ZN8Thread_k13runningThreadE>
    80002264:	00a7b023          	sd	a0,0(a5)
    Thread_k::counterOfTimeSlice=0;
    80002268:	0007b423          	sd	zero,8(a5)
    Thread_k::switchContext(&oldThread->kontekst, &(Thread_k::runningThread->kontekst));
    8000226c:	01850593          	addi	a1,a0,24
    80002270:	01848513          	addi	a0,s1,24
    80002274:	fffff097          	auipc	ra,0xfffff
    80002278:	1fc080e7          	jalr	508(ra) # 80001470 <_ZN8Thread_k13switchContextEPNS_7ContextES1_>
}
    8000227c:	01813083          	ld	ra,24(sp)
    80002280:	01013403          	ld	s0,16(sp)
    80002284:	00813483          	ld	s1,8(sp)
    80002288:	02010113          	addi	sp,sp,32
    8000228c:	00008067          	ret
    if (oldThread->jeZavrsena()==false && oldThread->jeBlokirana()==false) Scheduler::put(oldThread);
    80002290:	00048513          	mv	a0,s1
    80002294:	00000097          	auipc	ra,0x0
    80002298:	bc8080e7          	jalr	-1080(ra) # 80001e5c <_ZN9Scheduler3putEP8Thread_k>
    8000229c:	fb9ff06f          	j	80002254 <_ZN8Thread_k8dispatchEv+0x2c>

00000000800022a0 <_ZN8Thread_k5yieldEv>:
void Thread_k::yield() {
    800022a0:	ff010113          	addi	sp,sp,-16
    800022a4:	00813423          	sd	s0,8(sp)
    800022a8:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a0,%0"::"r"(code));
    800022ac:	01300793          	li	a5,19
    800022b0:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800022b4:	00000073          	ecall
}
    800022b8:	00813403          	ld	s0,8(sp)
    800022bc:	01010113          	addi	sp,sp,16
    800022c0:	00008067          	ret

00000000800022c4 <_ZN8Thread_k13_createThreadEPFvPvEPPS_S0_mS0_>:

int Thread_k::_createThread(Thread_k::Body body,Thread_k** rucka, void* argument, uint64 timeSl, void* stackSpace) {
    800022c4:	fb010113          	addi	sp,sp,-80
    800022c8:	04113423          	sd	ra,72(sp)
    800022cc:	04813023          	sd	s0,64(sp)
    800022d0:	02913c23          	sd	s1,56(sp)
    800022d4:	03213823          	sd	s2,48(sp)
    800022d8:	03313423          	sd	s3,40(sp)
    800022dc:	03413023          	sd	s4,32(sp)
    800022e0:	01513c23          	sd	s5,24(sp)
    800022e4:	05010413          	addi	s0,sp,80
    800022e8:	00050913          	mv	s2,a0
    800022ec:	00058993          	mv	s3,a1
    800022f0:	00060a93          	mv	s5,a2
    800022f4:	00068a13          	mv	s4,a3
    800022f8:	00070493          	mv	s1,a4
    Thread_k* tred;
    tred=(Thread_k*)MemoryAllocator::_mem_alloc(sizeof(Thread_k));
    800022fc:	05000513          	li	a0,80
    80002300:	00001097          	auipc	ra,0x1
    80002304:	d6c080e7          	jalr	-660(ra) # 8000306c <_ZN15MemoryAllocator10_mem_allocEm>
    tred->body=body;
    80002308:	01253023          	sd	s2,0(a0)
    tred->zavrsena=false;
    8000230c:	00050423          	sb	zero,8(a0)
    tred->blokirana=false;
    80002310:	000504a3          	sb	zero,9(a0)
    tred->stack=(body!=nullptr)?(uint64*)stackSpace:nullptr;
    80002314:	06090c63          	beqz	s2,8000238c <_ZN8Thread_k13_createThreadEPFvPvEPPS_S0_mS0_+0xc8>
    80002318:	00953823          	sd	s1,16(a0)
    tred->kontekst={tred->stack!=nullptr? (uint64)&(tred->stack)[8*DEFAULT_STACK_SIZE]:0,(uint64)&threadWrapper};
    8000231c:	06048c63          	beqz	s1,80002394 <_ZN8Thread_k13_createThreadEPFvPvEPPS_S0_mS0_+0xd0>
    80002320:	00040737          	lui	a4,0x40
    80002324:	00e484b3          	add	s1,s1,a4
    80002328:	00953c23          	sd	s1,24(a0)
    8000232c:	00000797          	auipc	a5,0x0
    80002330:	e7c78793          	addi	a5,a5,-388 # 800021a8 <_ZN8Thread_k13threadWrapperEv>
    80002334:	02f53023          	sd	a5,32(a0)
    tred->argument=argument;
    80002338:	03553423          	sd	s5,40(a0)
    tred->timeSlice=timeSl;
    8000233c:	03453823          	sd	s4,48(a0)
    tred->parent=Thread_k::runningThread;
    80002340:	00009797          	auipc	a5,0x9
    80002344:	7787b783          	ld	a5,1912(a5) # 8000bab8 <_ZN8Thread_k13runningThreadE>
    80002348:	04f53023          	sd	a5,64(a0)
    tred->isWaiting=false;
    8000234c:	04050423          	sb	zero,72(a0)
    tred->sys=false;
    80002350:	040504a3          	sb	zero,73(a0)
    *rucka=tred;
    80002354:	00a9b023          	sd	a0,0(s3)
    if (body!=nullptr) {
    80002358:	00090663          	beqz	s2,80002364 <_ZN8Thread_k13_createThreadEPFvPvEPPS_S0_mS0_+0xa0>
        Scheduler::put(*rucka);
    8000235c:	00000097          	auipc	ra,0x0
    80002360:	b00080e7          	jalr	-1280(ra) # 80001e5c <_ZN9Scheduler3putEP8Thread_k>
    }
    return 0;

}
    80002364:	00000513          	li	a0,0
    80002368:	04813083          	ld	ra,72(sp)
    8000236c:	04013403          	ld	s0,64(sp)
    80002370:	03813483          	ld	s1,56(sp)
    80002374:	03013903          	ld	s2,48(sp)
    80002378:	02813983          	ld	s3,40(sp)
    8000237c:	02013a03          	ld	s4,32(sp)
    80002380:	01813a83          	ld	s5,24(sp)
    80002384:	05010113          	addi	sp,sp,80
    80002388:	00008067          	ret
    tred->stack=(body!=nullptr)?(uint64*)stackSpace:nullptr;
    8000238c:	00000493          	li	s1,0
    80002390:	f89ff06f          	j	80002318 <_ZN8Thread_k13_createThreadEPFvPvEPPS_S0_mS0_+0x54>
    tred->kontekst={tred->stack!=nullptr? (uint64)&(tred->stack)[8*DEFAULT_STACK_SIZE]:0,(uint64)&threadWrapper};
    80002394:	00000493          	li	s1,0
    80002398:	f91ff06f          	j	80002328 <_ZN8Thread_k13_createThreadEPFvPvEPPS_S0_mS0_+0x64>

000000008000239c <_ZN8Thread_k11sleepThreadEm>:
    return 0;

}*/

int Thread_k::sleepThread(time_t time) {
    if(time>0) {
    8000239c:	04050863          	beqz	a0,800023ec <_ZN8Thread_k11sleepThreadEm+0x50>
int Thread_k::sleepThread(time_t time) {
    800023a0:	ff010113          	addi	sp,sp,-16
    800023a4:	00113423          	sd	ra,8(sp)
    800023a8:	00813023          	sd	s0,0(sp)
    800023ac:	01010413          	addi	s0,sp,16
    800023b0:	00050793          	mv	a5,a0
        runningThread->blokiraj();
    800023b4:	00009517          	auipc	a0,0x9
    800023b8:	70453503          	ld	a0,1796(a0) # 8000bab8 <_ZN8Thread_k13runningThreadE>
        blokirana=true;
    800023bc:	00100713          	li	a4,1
    800023c0:	00e504a3          	sb	a4,9(a0)
        uspavanaJos=vreme;
    800023c4:	02f53c23          	sd	a5,56(a0)
        runningThread->uspavaj(time);
        Riscv::dodajUListu(runningThread);
    800023c8:	00000097          	auipc	ra,0x0
    800023cc:	5d4080e7          	jalr	1492(ra) # 8000299c <_ZN5Riscv11dodajUListuEP8Thread_k>
        Thread_k::dispatch();
    800023d0:	00000097          	auipc	ra,0x0
    800023d4:	e58080e7          	jalr	-424(ra) # 80002228 <_ZN8Thread_k8dispatchEv>
//        thread_dispatch();
        return 0;
    800023d8:	00000513          	li	a0,0
    }
    else return -1;
}
    800023dc:	00813083          	ld	ra,8(sp)
    800023e0:	00013403          	ld	s0,0(sp)
    800023e4:	01010113          	addi	sp,sp,16
    800023e8:	00008067          	ret
    else return -1;
    800023ec:	fff00513          	li	a0,-1
}
    800023f0:	00008067          	ret

00000000800023f4 <_ZN8Thread_k4joinEv>:

void Thread_k::join() {
    800023f4:	fe010113          	addi	sp,sp,-32
    800023f8:	00113c23          	sd	ra,24(sp)
    800023fc:	00813823          	sd	s0,16(sp)
    80002400:	00913423          	sd	s1,8(sp)
    80002404:	02010413          	addi	s0,sp,32
    80002408:	00050493          	mv	s1,a0
    printString("LALA1");
    8000240c:	00007517          	auipc	a0,0x7
    80002410:	efc50513          	addi	a0,a0,-260 # 80009308 <CONSOLE_STATUS+0x2f8>
    80002414:	00003097          	auipc	ra,0x3
    80002418:	77c080e7          	jalr	1916(ra) # 80005b90 <_Z11printStringPKc>
    if (this->parent!=runningThread) return;
    8000241c:	0404b703          	ld	a4,64(s1)
    80002420:	00009797          	auipc	a5,0x9
    80002424:	6987b783          	ld	a5,1688(a5) # 8000bab8 <_ZN8Thread_k13runningThreadE>
    80002428:	00f70c63          	beq	a4,a5,80002440 <_ZN8Thread_k4joinEv+0x4c>
    printString("LALA");
    isWaiting=true;
    Thread_k* old = runningThread;
    old->blokiraj();
    thread_dispatch();
}
    8000242c:	01813083          	ld	ra,24(sp)
    80002430:	01013403          	ld	s0,16(sp)
    80002434:	00813483          	ld	s1,8(sp)
    80002438:	02010113          	addi	sp,sp,32
    8000243c:	00008067          	ret
        return zavrsena;
    80002440:	0084c783          	lbu	a5,8(s1)
    if(this->jeZavrsena()) return;
    80002444:	fe0794e3          	bnez	a5,8000242c <_ZN8Thread_k4joinEv+0x38>
    printString("LALA");
    80002448:	00007517          	auipc	a0,0x7
    8000244c:	ec850513          	addi	a0,a0,-312 # 80009310 <CONSOLE_STATUS+0x300>
    80002450:	00003097          	auipc	ra,0x3
    80002454:	740080e7          	jalr	1856(ra) # 80005b90 <_Z11printStringPKc>
    isWaiting=true;
    80002458:	00100793          	li	a5,1
    8000245c:	04f48423          	sb	a5,72(s1)
    Thread_k* old = runningThread;
    80002460:	00009717          	auipc	a4,0x9
    80002464:	65873703          	ld	a4,1624(a4) # 8000bab8 <_ZN8Thread_k13runningThreadE>
        blokirana=true;
    80002468:	00f704a3          	sb	a5,9(a4)
    thread_dispatch();
    8000246c:	fffff097          	auipc	ra,0xfffff
    80002470:	15c080e7          	jalr	348(ra) # 800015c8 <_Z15thread_dispatchv>
    80002474:	fb9ff06f          	j	8000242c <_ZN8Thread_k4joinEv+0x38>

0000000080002478 <_ZN14PeriodicThread9terminateEv>:
//
#include "../h/syscall_cpp.hpp"
#include "../h/syscall_c.hpp"
#include "../h/Thread_k.hpp"

void PeriodicThread::terminate(){
    80002478:	ff010113          	addi	sp,sp,-16
    8000247c:	00113423          	sd	ra,8(sp)
    80002480:	00813023          	sd	s0,0(sp)
    80002484:	01010413          	addi	s0,sp,16
    myHandle->zavrsi(true);
    80002488:	00853783          	ld	a5,8(a0)
        zavrsena=value;
    8000248c:	00100713          	li	a4,1
    80002490:	00e78423          	sb	a4,8(a5)
    thread_dispatch();
    80002494:	fffff097          	auipc	ra,0xfffff
    80002498:	134080e7          	jalr	308(ra) # 800015c8 <_Z15thread_dispatchv>
}
    8000249c:	00813083          	ld	ra,8(sp)
    800024a0:	00013403          	ld	s0,0(sp)
    800024a4:	01010113          	addi	sp,sp,16
    800024a8:	00008067          	ret

00000000800024ac <_ZN14PeriodicThreadC1Em>:

PeriodicThread::PeriodicThread(time_t period) : period(period){
    800024ac:	fe010113          	addi	sp,sp,-32
    800024b0:	00113c23          	sd	ra,24(sp)
    800024b4:	00813823          	sd	s0,16(sp)
    800024b8:	00913423          	sd	s1,8(sp)
    800024bc:	01213023          	sd	s2,0(sp)
    800024c0:	02010413          	addi	s0,sp,32
    800024c4:	00050493          	mv	s1,a0
    800024c8:	00058913          	mv	s2,a1
    800024cc:	fffff097          	auipc	ra,0xfffff
    800024d0:	59c080e7          	jalr	1436(ra) # 80001a68 <_ZN6ThreadC1Ev>
    800024d4:	00009797          	auipc	a5,0x9
    800024d8:	35c78793          	addi	a5,a5,860 # 8000b830 <_ZTV14PeriodicThread+0x10>
    800024dc:	00f4b023          	sd	a5,0(s1)
    800024e0:	0324b023          	sd	s2,32(s1)

}
    800024e4:	01813083          	ld	ra,24(sp)
    800024e8:	01013403          	ld	s0,16(sp)
    800024ec:	00813483          	ld	s1,8(sp)
    800024f0:	00013903          	ld	s2,0(sp)
    800024f4:	02010113          	addi	sp,sp,32
    800024f8:	00008067          	ret

00000000800024fc <_ZN14PeriodicThread18periodicActivationEv>:
class PeriodicThread : public Thread {
public:
    void terminate();
protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation(){}
    800024fc:	ff010113          	addi	sp,sp,-16
    80002500:	00813423          	sd	s0,8(sp)
    80002504:	01010413          	addi	s0,sp,16
    80002508:	00813403          	ld	s0,8(sp)
    8000250c:	01010113          	addi	sp,sp,16
    80002510:	00008067          	ret

0000000080002514 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    80002514:	ff010113          	addi	sp,sp,-16
    80002518:	00113423          	sd	ra,8(sp)
    8000251c:	00813023          	sd	s0,0(sp)
    80002520:	01010413          	addi	s0,sp,16
    80002524:	00009797          	auipc	a5,0x9
    80002528:	30c78793          	addi	a5,a5,780 # 8000b830 <_ZTV14PeriodicThread+0x10>
    8000252c:	00f53023          	sd	a5,0(a0)
    80002530:	fffff097          	auipc	ra,0xfffff
    80002534:	3c0080e7          	jalr	960(ra) # 800018f0 <_ZN6ThreadD1Ev>
    80002538:	00813083          	ld	ra,8(sp)
    8000253c:	00013403          	ld	s0,0(sp)
    80002540:	01010113          	addi	sp,sp,16
    80002544:	00008067          	ret

0000000080002548 <_ZN14PeriodicThreadD0Ev>:
    80002548:	fe010113          	addi	sp,sp,-32
    8000254c:	00113c23          	sd	ra,24(sp)
    80002550:	00813823          	sd	s0,16(sp)
    80002554:	00913423          	sd	s1,8(sp)
    80002558:	02010413          	addi	s0,sp,32
    8000255c:	00050493          	mv	s1,a0
    80002560:	00009797          	auipc	a5,0x9
    80002564:	2d078793          	addi	a5,a5,720 # 8000b830 <_ZTV14PeriodicThread+0x10>
    80002568:	00f53023          	sd	a5,0(a0)
    8000256c:	fffff097          	auipc	ra,0xfffff
    80002570:	384080e7          	jalr	900(ra) # 800018f0 <_ZN6ThreadD1Ev>
    80002574:	00048513          	mv	a0,s1
    80002578:	00000097          	auipc	ra,0x0
    8000257c:	bb8080e7          	jalr	-1096(ra) # 80002130 <_ZdlPv>
    80002580:	01813083          	ld	ra,24(sp)
    80002584:	01013403          	ld	s0,16(sp)
    80002588:	00813483          	ld	s1,8(sp)
    8000258c:	02010113          	addi	sp,sp,32
    80002590:	00008067          	ret

0000000080002594 <_ZN13UspavanaLista11probudiNitiEv>:
// Created by os on 9/9/23.
//

#include "../h/UspavanaLista.hpp"

void UspavanaLista::probudiNiti() {
    80002594:	fd010113          	addi	sp,sp,-48
    80002598:	02113423          	sd	ra,40(sp)
    8000259c:	02813023          	sd	s0,32(sp)
    800025a0:	00913c23          	sd	s1,24(sp)
    800025a4:	01213823          	sd	s2,16(sp)
    800025a8:	01313423          	sd	s3,8(sp)
    800025ac:	01413023          	sd	s4,0(sp)
    800025b0:	03010413          	addi	s0,sp,48
    if (head== nullptr) return;
    800025b4:	00053483          	ld	s1,0(a0)
    800025b8:	08048a63          	beqz	s1,8000264c <_ZN13UspavanaLista11probudiNitiEv+0xb8>
    800025bc:	00050993          	mv	s3,a0
    Element* curr=head;
    Element* pret=nullptr;
    800025c0:	00000913          	li	s2,0
    800025c4:	03c0006f          	j	80002600 <_ZN13UspavanaLista11probudiNitiEv+0x6c>
    void blokiraj(){
        blokirana=true;
    }

    void odblokiraj(){
        blokirana=false;
    800025c8:	000784a3          	sb	zero,9(a5)
    while (curr!=nullptr){
        (curr->nit)->umanjiUspavanost();
        if(curr->nit->uspavana()==0) {
            curr->nit->odblokiraj();
            Scheduler::put(curr->nit);
    800025cc:	0004b503          	ld	a0,0(s1)
    800025d0:	00000097          	auipc	ra,0x0
    800025d4:	88c080e7          	jalr	-1908(ra) # 80001e5c <_ZN9Scheduler3putEP8Thread_k>
            if (pret) {
    800025d8:	04090e63          	beqz	s2,80002634 <_ZN13UspavanaLista11probudiNitiEv+0xa0>
                pret->next=curr->next;
    800025dc:	0084b783          	ld	a5,8(s1)
    800025e0:	00f93423          	sd	a5,8(s2)
                if (curr==tail) {
    800025e4:	0089b783          	ld	a5,8(s3)
    800025e8:	04978263          	beq	a5,s1,8000262c <_ZN13UspavanaLista11probudiNitiEv+0x98>
            else {
                head=head->next;
                if (head== nullptr) tail= nullptr;
            }
            Element* el=curr;
            curr=curr->next;
    800025ec:	0084ba03          	ld	s4,8(s1)
            MemoryAllocator::_mem_free(el);
    800025f0:	00048513          	mv	a0,s1
    800025f4:	00001097          	auipc	ra,0x1
    800025f8:	b7c080e7          	jalr	-1156(ra) # 80003170 <_ZN15MemoryAllocator9_mem_freeEPv>
            curr=curr->next;
    800025fc:	000a0493          	mv	s1,s4
    while (curr!=nullptr){
    80002600:	04048663          	beqz	s1,8000264c <_ZN13UspavanaLista11probudiNitiEv+0xb8>
        (curr->nit)->umanjiUspavanost();
    80002604:	0004b703          	ld	a4,0(s1)
        uspavanaJos--;
    80002608:	03873783          	ld	a5,56(a4)
    8000260c:	fff78793          	addi	a5,a5,-1
    80002610:	02f73c23          	sd	a5,56(a4)
        if(curr->nit->uspavana()==0) {
    80002614:	0004b783          	ld	a5,0(s1)
        return uspavanaJos;
    80002618:	0387b703          	ld	a4,56(a5)
    8000261c:	fa0706e3          	beqz	a4,800025c8 <_ZN13UspavanaLista11probudiNitiEv+0x34>
        }
        else{
            pret=curr;
    80002620:	00048913          	mv	s2,s1
            curr=curr->next;
    80002624:	0084b483          	ld	s1,8(s1)
    80002628:	fd9ff06f          	j	80002600 <_ZN13UspavanaLista11probudiNitiEv+0x6c>
                    tail=pret;
    8000262c:	0129b423          	sd	s2,8(s3)
    80002630:	fbdff06f          	j	800025ec <_ZN13UspavanaLista11probudiNitiEv+0x58>
                head=head->next;
    80002634:	0009b783          	ld	a5,0(s3)
    80002638:	0087b783          	ld	a5,8(a5)
    8000263c:	00f9b023          	sd	a5,0(s3)
                if (head== nullptr) tail= nullptr;
    80002640:	fa0796e3          	bnez	a5,800025ec <_ZN13UspavanaLista11probudiNitiEv+0x58>
    80002644:	0009b423          	sd	zero,8(s3)
    80002648:	fa5ff06f          	j	800025ec <_ZN13UspavanaLista11probudiNitiEv+0x58>
        }
    }
}
    8000264c:	02813083          	ld	ra,40(sp)
    80002650:	02013403          	ld	s0,32(sp)
    80002654:	01813483          	ld	s1,24(sp)
    80002658:	01013903          	ld	s2,16(sp)
    8000265c:	00813983          	ld	s3,8(sp)
    80002660:	00013a03          	ld	s4,0(sp)
    80002664:	03010113          	addi	sp,sp,48
    80002668:	00008067          	ret

000000008000266c <_ZN13UspavanaLista8dodajNitEP8Thread_k>:

void UspavanaLista::dodajNit(Thread_k* t) {
    8000266c:	fe010113          	addi	sp,sp,-32
    80002670:	00113c23          	sd	ra,24(sp)
    80002674:	00813823          	sd	s0,16(sp)
    80002678:	00913423          	sd	s1,8(sp)
    8000267c:	01213023          	sd	s2,0(sp)
    80002680:	02010413          	addi	s0,sp,32
    80002684:	00050493          	mv	s1,a0
    80002688:	00058913          	mv	s2,a1
    Element* novi= (Element*)MemoryAllocator::_mem_alloc(sizeof(Element));
    8000268c:	01000513          	li	a0,16
    80002690:	00001097          	auipc	ra,0x1
    80002694:	9dc080e7          	jalr	-1572(ra) # 8000306c <_ZN15MemoryAllocator10_mem_allocEm>
    novi->nit=t;
    80002698:	01253023          	sd	s2,0(a0)
    novi->next= nullptr;
    8000269c:	00053423          	sd	zero,8(a0)
    if (head==nullptr){
    800026a0:	0004b783          	ld	a5,0(s1)
    800026a4:	02078463          	beqz	a5,800026cc <_ZN13UspavanaLista8dodajNitEP8Thread_k+0x60>
        head=novi;
    }
    else{
        tail->next=novi;
    800026a8:	0084b783          	ld	a5,8(s1)
    800026ac:	00a7b423          	sd	a0,8(a5)
    }
    tail=novi;
    800026b0:	00a4b423          	sd	a0,8(s1)
}
    800026b4:	01813083          	ld	ra,24(sp)
    800026b8:	01013403          	ld	s0,16(sp)
    800026bc:	00813483          	ld	s1,8(sp)
    800026c0:	00013903          	ld	s2,0(sp)
    800026c4:	02010113          	addi	sp,sp,32
    800026c8:	00008067          	ret
        head=novi;
    800026cc:	00a4b023          	sd	a0,0(s1)
    800026d0:	fe1ff06f          	j	800026b0 <_ZN13UspavanaLista8dodajNitEP8Thread_k+0x44>

00000000800026d4 <_ZN11Semaphore_k7unblockEv>:
#include "../h/MemoryAllocator.hpp"
#include "../h/Riscv.hpp"
#include "../h/syscall_cpp.hpp"
#include "../test/printing.hpp"

void Semaphore_k::unblock() {
    800026d4:	fe010113          	addi	sp,sp,-32
    800026d8:	00113c23          	sd	ra,24(sp)
    800026dc:	00813823          	sd	s0,16(sp)
    800026e0:	00913423          	sd	s1,8(sp)
    800026e4:	01213023          	sd	s2,0(sp)
    800026e8:	02010413          	addi	s0,sp,32
    800026ec:	00050793          	mv	a5,a0
    Thread_k* nit=blokirane.ukloniPrvi();
    800026f0:	00850493          	addi	s1,a0,8



    T* ukloniPrvi(){

        if (head==nullptr) return nullptr;
    800026f4:	00853503          	ld	a0,8(a0)
    800026f8:	04050c63          	beqz	a0,80002750 <_ZN11Semaphore_k7unblockEv+0x7c>
        Element* elem=head;
        head = head->next;
    800026fc:	00853703          	ld	a4,8(a0)
    80002700:	00e7b423          	sd	a4,8(a5)
        if (head==nullptr){
    80002704:	04070263          	beqz	a4,80002748 <_ZN11Semaphore_k7unblockEv+0x74>
            tail=nullptr;
        }
        T* podatak=elem->el;
    80002708:	00053903          	ld	s2,0(a0)
        MemoryAllocator::_mem_free(elem);
    8000270c:	00001097          	auipc	ra,0x1
    80002710:	a64080e7          	jalr	-1436(ra) # 80003170 <_ZN15MemoryAllocator9_mem_freeEPv>
        len--;
    80002714:	0104a783          	lw	a5,16(s1)
    80002718:	fff7879b          	addiw	a5,a5,-1
    8000271c:	00f4a823          	sw	a5,16(s1)
        blokirana=false;
    80002720:	000904a3          	sb	zero,9(s2)
    nit->odblokiraj();
    Scheduler::put(nit);
    80002724:	00090513          	mv	a0,s2
    80002728:	fffff097          	auipc	ra,0xfffff
    8000272c:	734080e7          	jalr	1844(ra) # 80001e5c <_ZN9Scheduler3putEP8Thread_k>
}
    80002730:	01813083          	ld	ra,24(sp)
    80002734:	01013403          	ld	s0,16(sp)
    80002738:	00813483          	ld	s1,8(sp)
    8000273c:	00013903          	ld	s2,0(sp)
    80002740:	02010113          	addi	sp,sp,32
    80002744:	00008067          	ret
            tail=nullptr;
    80002748:	0004b423          	sd	zero,8(s1)
    8000274c:	fbdff06f          	j	80002708 <_ZN11Semaphore_k7unblockEv+0x34>
        if (head==nullptr) return nullptr;
    80002750:	00050913          	mv	s2,a0
    80002754:	fcdff06f          	j	80002720 <_ZN11Semaphore_k7unblockEv+0x4c>

0000000080002758 <_ZN11Semaphore_k5blockEv>:

void Semaphore_k::block() {
    80002758:	fd010113          	addi	sp,sp,-48
    8000275c:	02113423          	sd	ra,40(sp)
    80002760:	02813023          	sd	s0,32(sp)
    80002764:	00913c23          	sd	s1,24(sp)
    80002768:	01213823          	sd	s2,16(sp)
    8000276c:	01313423          	sd	s3,8(sp)
    80002770:	03010413          	addi	s0,sp,48
    80002774:	00050493          	mv	s1,a0
    Thread_k::runningThread->blokiraj();
    80002778:	00009797          	auipc	a5,0x9
    8000277c:	2c87b783          	ld	a5,712(a5) # 8000ba40 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002780:	0007b983          	ld	s3,0(a5)
        blokirana=true;
    80002784:	00100793          	li	a5,1
    80002788:	00f984a3          	sb	a5,9(s3)
    blokirane.dodajNaKraj(Thread_k::runningThread);
    8000278c:	00850913          	addi	s2,a0,8
        Element* novi=(Element*)MemoryAllocator::_mem_alloc(sizeof(Element));
    80002790:	01000513          	li	a0,16
    80002794:	00001097          	auipc	ra,0x1
    80002798:	8d8080e7          	jalr	-1832(ra) # 8000306c <_ZN15MemoryAllocator10_mem_allocEm>
        novi->el=pod;
    8000279c:	01353023          	sd	s3,0(a0)
        novi->next= nullptr;
    800027a0:	00053423          	sd	zero,8(a0)
        if (head==nullptr){
    800027a4:	0084b783          	ld	a5,8(s1)
    800027a8:	04078063          	beqz	a5,800027e8 <_ZN11Semaphore_k5blockEv+0x90>
            tail->next=novi;
    800027ac:	00893783          	ld	a5,8(s2)
    800027b0:	00a7b423          	sd	a0,8(a5)
        tail=novi;
    800027b4:	00a93423          	sd	a0,8(s2)
        len++;
    800027b8:	01092783          	lw	a5,16(s2)
    800027bc:	0017879b          	addiw	a5,a5,1
    800027c0:	00f92823          	sw	a5,16(s2)
    Thread_k::dispatch();//bio siskol pre ovoga
    800027c4:	00000097          	auipc	ra,0x0
    800027c8:	a64080e7          	jalr	-1436(ra) # 80002228 <_ZN8Thread_k8dispatchEv>
}
    800027cc:	02813083          	ld	ra,40(sp)
    800027d0:	02013403          	ld	s0,32(sp)
    800027d4:	01813483          	ld	s1,24(sp)
    800027d8:	01013903          	ld	s2,16(sp)
    800027dc:	00813983          	ld	s3,8(sp)
    800027e0:	03010113          	addi	sp,sp,48
    800027e4:	00008067          	ret
            head=novi;
    800027e8:	00a4b423          	sd	a0,8(s1)
    800027ec:	fc9ff06f          	j	800027b4 <_ZN11Semaphore_k5blockEv+0x5c>

00000000800027f0 <_ZN11Semaphore_kC1Ei>:

Semaphore_k::Semaphore_k(int init) {
    800027f0:	ff010113          	addi	sp,sp,-16
    800027f4:	00813423          	sd	s0,8(sp)
    800027f8:	01010413          	addi	s0,sp,16
    Lista(): head(nullptr),tail(nullptr), len(0){}
    800027fc:	00053423          	sd	zero,8(a0)
    80002800:	00053823          	sd	zero,16(a0)
    80002804:	00052c23          	sw	zero,24(a0)
    value=init;
    80002808:	00b52023          	sw	a1,0(a0)
}
    8000280c:	00813403          	ld	s0,8(sp)
    80002810:	01010113          	addi	sp,sp,16
    80002814:	00008067          	ret

0000000080002818 <_ZN11Semaphore_k15createSemaphoreEPPS_i>:

void Semaphore_k::createSemaphore(Semaphore_k **sem, int init) {
    80002818:	fd010113          	addi	sp,sp,-48
    8000281c:	02113423          	sd	ra,40(sp)
    80002820:	02813023          	sd	s0,32(sp)
    80002824:	00913c23          	sd	s1,24(sp)
    80002828:	01213823          	sd	s2,16(sp)
    8000282c:	01313423          	sd	s3,8(sp)
    80002830:	03010413          	addi	s0,sp,48
    80002834:	00050493          	mv	s1,a0
    80002838:	00058993          	mv	s3,a1
    Semaphore_k(int init);
protected:
    void unblock();
    void block();
public:
    void *operator new(size_t size) { return __mem_alloc(size); }
    8000283c:	02000513          	li	a0,32
    80002840:	00006097          	auipc	ra,0x6
    80002844:	5d8080e7          	jalr	1496(ra) # 80008e18 <__mem_alloc>
    80002848:	00050913          	mv	s2,a0
    Semaphore_k* newSem=new Semaphore_k(init);
    8000284c:	00098593          	mv	a1,s3
    80002850:	00000097          	auipc	ra,0x0
    80002854:	fa0080e7          	jalr	-96(ra) # 800027f0 <_ZN11Semaphore_kC1Ei>
    *sem=newSem;
    80002858:	0124b023          	sd	s2,0(s1)
}
    8000285c:	02813083          	ld	ra,40(sp)
    80002860:	02013403          	ld	s0,32(sp)
    80002864:	01813483          	ld	s1,24(sp)
    80002868:	01013903          	ld	s2,16(sp)
    8000286c:	00813983          	ld	s3,8(sp)
    80002870:	03010113          	addi	sp,sp,48
    80002874:	00008067          	ret

0000000080002878 <_ZN11Semaphore_k4waitEv>:

int Semaphore_k::wait() {
    if (--(this->value)<0) {
    80002878:	00052783          	lw	a5,0(a0)
    8000287c:	fff7879b          	addiw	a5,a5,-1
    80002880:	00f52023          	sw	a5,0(a0)
    80002884:	02079713          	slli	a4,a5,0x20
    80002888:	00074663          	bltz	a4,80002894 <_ZN11Semaphore_k4waitEv+0x1c>
        block();
    }
    return 0;
}
    8000288c:	00000513          	li	a0,0
    80002890:	00008067          	ret
int Semaphore_k::wait() {
    80002894:	ff010113          	addi	sp,sp,-16
    80002898:	00113423          	sd	ra,8(sp)
    8000289c:	00813023          	sd	s0,0(sp)
    800028a0:	01010413          	addi	s0,sp,16
        block();
    800028a4:	00000097          	auipc	ra,0x0
    800028a8:	eb4080e7          	jalr	-332(ra) # 80002758 <_ZN11Semaphore_k5blockEv>
}
    800028ac:	00000513          	li	a0,0
    800028b0:	00813083          	ld	ra,8(sp)
    800028b4:	00013403          	ld	s0,0(sp)
    800028b8:	01010113          	addi	sp,sp,16
    800028bc:	00008067          	ret

00000000800028c0 <_ZN11Semaphore_k6signalEv>:

int Semaphore_k::signal() {
    if (++(this->value)<=0) {
    800028c0:	00052783          	lw	a5,0(a0)
    800028c4:	0017879b          	addiw	a5,a5,1
    800028c8:	0007871b          	sext.w	a4,a5
    800028cc:	00f52023          	sw	a5,0(a0)
    800028d0:	00e05663          	blez	a4,800028dc <_ZN11Semaphore_k6signalEv+0x1c>
        unblock();
    }
    return 0;

}
    800028d4:	00000513          	li	a0,0
    800028d8:	00008067          	ret
int Semaphore_k::signal() {
    800028dc:	ff010113          	addi	sp,sp,-16
    800028e0:	00113423          	sd	ra,8(sp)
    800028e4:	00813023          	sd	s0,0(sp)
    800028e8:	01010413          	addi	s0,sp,16
        unblock();
    800028ec:	00000097          	auipc	ra,0x0
    800028f0:	de8080e7          	jalr	-536(ra) # 800026d4 <_ZN11Semaphore_k7unblockEv>
}
    800028f4:	00000513          	li	a0,0
    800028f8:	00813083          	ld	ra,8(sp)
    800028fc:	00013403          	ld	s0,0(sp)
    80002900:	01010113          	addi	sp,sp,16
    80002904:	00008067          	ret

0000000080002908 <_ZN11Semaphore_k16releaseSemaphoreEv>:

void Semaphore_k::releaseSemaphore() {
    80002908:	fe010113          	addi	sp,sp,-32
    8000290c:	00113c23          	sd	ra,24(sp)
    80002910:	00813823          	sd	s0,16(sp)
    80002914:	00913423          	sd	s1,8(sp)
    80002918:	02010413          	addi	s0,sp,32
    8000291c:	00050493          	mv	s1,a0
        return len;
    80002920:	0184a503          	lw	a0,24(s1)
    //printInt(blokirane.length());
    while (blokirane.length()) {
    80002924:	02050263          	beqz	a0,80002948 <_ZN11Semaphore_k16releaseSemaphoreEv+0x40>
        printInt(blokirane.length());
    80002928:	00000613          	li	a2,0
    8000292c:	00a00593          	li	a1,10
    80002930:	00003097          	auipc	ra,0x3
    80002934:	410080e7          	jalr	1040(ra) # 80005d40 <_Z8printIntiii>
        unblock();
    80002938:	00048513          	mv	a0,s1
    8000293c:	00000097          	auipc	ra,0x0
    80002940:	d98080e7          	jalr	-616(ra) # 800026d4 <_ZN11Semaphore_k7unblockEv>
    while (blokirane.length()) {
    80002944:	fddff06f          	j	80002920 <_ZN11Semaphore_k16releaseSemaphoreEv+0x18>
    }
}
    80002948:	01813083          	ld	ra,24(sp)
    8000294c:	01013403          	ld	s0,16(sp)
    80002950:	00813483          	ld	s1,8(sp)
    80002954:	02010113          	addi	sp,sp,32
    80002958:	00008067          	ret

000000008000295c <_Z41__static_initialization_and_destruction_0ii>:
        else if (scause==7){
            printString("Error scause = 7");
        }
        return;
    }
    8000295c:	ff010113          	addi	sp,sp,-16
    80002960:	00813423          	sd	s0,8(sp)
    80002964:	01010413          	addi	s0,sp,16
    80002968:	00100793          	li	a5,1
    8000296c:	00f50863          	beq	a0,a5,8000297c <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002970:	00813403          	ld	s0,8(sp)
    80002974:	01010113          	addi	sp,sp,16
    80002978:	00008067          	ret
    8000297c:	000107b7          	lui	a5,0x10
    80002980:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002984:	fef596e3          	bne	a1,a5,80002970 <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

private:
    Element *head, *tail;
public:
    UspavanaLista() : head(nullptr), tail(nullptr) {}
    80002988:	00009797          	auipc	a5,0x9
    8000298c:	14078793          	addi	a5,a5,320 # 8000bac8 <_ZN5Riscv12uspavaneNitiE>
    80002990:	0007b023          	sd	zero,0(a5)
    80002994:	0007b423          	sd	zero,8(a5)
    80002998:	fd9ff06f          	j	80002970 <_Z41__static_initialization_and_destruction_0ii+0x14>

000000008000299c <_ZN5Riscv11dodajUListuEP8Thread_k>:
void Riscv::dodajUListu(Thread_k *thr) {
    8000299c:	ff010113          	addi	sp,sp,-16
    800029a0:	00113423          	sd	ra,8(sp)
    800029a4:	00813023          	sd	s0,0(sp)
    800029a8:	01010413          	addi	s0,sp,16
    800029ac:	00050593          	mv	a1,a0
    uspavaneNiti.dodajNit(thr);
    800029b0:	00009517          	auipc	a0,0x9
    800029b4:	11850513          	addi	a0,a0,280 # 8000bac8 <_ZN5Riscv12uspavaneNitiE>
    800029b8:	00000097          	auipc	ra,0x0
    800029bc:	cb4080e7          	jalr	-844(ra) # 8000266c <_ZN13UspavanaLista8dodajNitEP8Thread_k>
}
    800029c0:	00813083          	ld	ra,8(sp)
    800029c4:	00013403          	ld	s0,0(sp)
    800029c8:	01010113          	addi	sp,sp,16
    800029cc:	00008067          	ret

00000000800029d0 <_ZN5Riscv7syscallEPm>:
uint64 Riscv::syscall(uint64 *params) {
    800029d0:	fd010113          	addi	sp,sp,-48
    800029d4:	02113423          	sd	ra,40(sp)
    800029d8:	02813023          	sd	s0,32(sp)
    800029dc:	00913c23          	sd	s1,24(sp)
    800029e0:	01213823          	sd	s2,16(sp)
    800029e4:	03010413          	addi	s0,sp,48
    800029e8:	00050493          	mv	s1,a0
    uint64 operationCode=params[0];
    800029ec:	00053783          	ld	a5,0(a0)
    if (operationCode==MEM_ALLOC) {
    800029f0:	00100713          	li	a4,1
    800029f4:	06e78e63          	beq	a5,a4,80002a70 <_ZN5Riscv7syscallEPm+0xa0>
    else if (operationCode==MEM_FREE) {
    800029f8:	00200713          	li	a4,2
    800029fc:	08e78e63          	beq	a5,a4,80002a98 <_ZN5Riscv7syscallEPm+0xc8>
    else if (operationCode==THREAD_CREATE) {
    80002a00:	01100713          	li	a4,17
    80002a04:	0ae78263          	beq	a5,a4,80002aa8 <_ZN5Riscv7syscallEPm+0xd8>
    else if (operationCode==THREAD_EXIT){
    80002a08:	01200713          	li	a4,18
    80002a0c:	0ce78e63          	beq	a5,a4,80002ae8 <_ZN5Riscv7syscallEPm+0x118>
    else if (operationCode==THREAD_DISPATCH) {
    80002a10:	01300713          	li	a4,19
    80002a14:	0ee78c63          	beq	a5,a4,80002b0c <_ZN5Riscv7syscallEPm+0x13c>
    else if (operationCode==THREAD_JOIN) {
    80002a18:	01400713          	li	a4,20
    80002a1c:	12e78063          	beq	a5,a4,80002b3c <_ZN5Riscv7syscallEPm+0x16c>
    else if (operationCode==SEM_OPEN){
    80002a20:	02100713          	li	a4,33
    80002a24:	14e78063          	beq	a5,a4,80002b64 <_ZN5Riscv7syscallEPm+0x194>
    else if (operationCode==SEM_CLOSE) {
    80002a28:	02200713          	li	a4,34
    80002a2c:	14e78863          	beq	a5,a4,80002b7c <_ZN5Riscv7syscallEPm+0x1ac>
    else if (operationCode==SEM_WAIT) {
    80002a30:	02300713          	li	a4,35
    80002a34:	14e78e63          	beq	a5,a4,80002b90 <_ZN5Riscv7syscallEPm+0x1c0>
    else if (operationCode==SEM_SIGNAL){
    80002a38:	02400713          	li	a4,36
    80002a3c:	16e78263          	beq	a5,a4,80002ba0 <_ZN5Riscv7syscallEPm+0x1d0>
    else if (operationCode==TIME_SLEEP) {
    80002a40:	03100713          	li	a4,49
    80002a44:	16e78663          	beq	a5,a4,80002bb0 <_ZN5Riscv7syscallEPm+0x1e0>
    else if (operationCode==GETC){
    80002a48:	04100713          	li	a4,65
    80002a4c:	16e78a63          	beq	a5,a4,80002bc0 <_ZN5Riscv7syscallEPm+0x1f0>
    else if (operationCode==PUTC){
    80002a50:	04200713          	li	a4,66
    80002a54:	16e78c63          	beq	a5,a4,80002bcc <_ZN5Riscv7syscallEPm+0x1fc>
        printString("???\n");
    80002a58:	00007517          	auipc	a0,0x7
    80002a5c:	8c850513          	addi	a0,a0,-1848 # 80009320 <CONSOLE_STATUS+0x310>
    80002a60:	00003097          	auipc	ra,0x3
    80002a64:	130080e7          	jalr	304(ra) # 80005b90 <_Z11printStringPKc>
    uint64 ret=0;
    80002a68:	00000513          	li	a0,0
    80002a6c:	0140006f          	j	80002a80 <_ZN5Riscv7syscallEPm+0xb0>
        uint64 s=MEM_BLOCK_SIZE*params[1];
    80002a70:	00853503          	ld	a0,8(a0)
        ret=(uint64)MemoryAllocator::_mem_alloc(s);
    80002a74:	00651513          	slli	a0,a0,0x6
    80002a78:	00000097          	auipc	ra,0x0
    80002a7c:	5f4080e7          	jalr	1524(ra) # 8000306c <_ZN15MemoryAllocator10_mem_allocEm>
}
    80002a80:	02813083          	ld	ra,40(sp)
    80002a84:	02013403          	ld	s0,32(sp)
    80002a88:	01813483          	ld	s1,24(sp)
    80002a8c:	01013903          	ld	s2,16(sp)
    80002a90:	03010113          	addi	sp,sp,48
    80002a94:	00008067          	ret
        ret = MemoryAllocator::_mem_free((void*)params[1]);
    80002a98:	00853503          	ld	a0,8(a0)
    80002a9c:	00000097          	auipc	ra,0x0
    80002aa0:	6d4080e7          	jalr	1748(ra) # 80003170 <_ZN15MemoryAllocator9_mem_freeEPv>
    80002aa4:	fddff06f          	j	80002a80 <_ZN5Riscv7syscallEPm+0xb0>
        void* stack_space=MemoryAllocator::_mem_alloc(8*DEFAULT_STACK_SIZE*sizeof(uint64));
    80002aa8:	00040537          	lui	a0,0x40
    80002aac:	00000097          	auipc	ra,0x0
    80002ab0:	5c0080e7          	jalr	1472(ra) # 8000306c <_ZN15MemoryAllocator10_mem_allocEm>
    80002ab4:	00050713          	mv	a4,a0
        Thread_k** r=(Thread_k**)params[1];
    80002ab8:	0084b903          	ld	s2,8(s1)
        Thread_k::_createThread(startRoutine,r,argument,DEFAULT_TIME_SLICE,(void*)stack_space);
    80002abc:	00200693          	li	a3,2
    80002ac0:	0184b603          	ld	a2,24(s1)
    80002ac4:	00090593          	mv	a1,s2
    80002ac8:	0104b503          	ld	a0,16(s1)
    80002acc:	fffff097          	auipc	ra,0xfffff
    80002ad0:	7f8080e7          	jalr	2040(ra) # 800022c4 <_ZN8Thread_k13_createThreadEPFvPvEPPS_S0_mS0_>
        if (r== nullptr) ret=-1;
    80002ad4:	00090663          	beqz	s2,80002ae0 <_ZN5Riscv7syscallEPm+0x110>
        else ret=0;
    80002ad8:	00000513          	li	a0,0
    return ret;
    80002adc:	fa5ff06f          	j	80002a80 <_ZN5Riscv7syscallEPm+0xb0>
        if (r== nullptr) ret=-1;
    80002ae0:	fff00513          	li	a0,-1
    80002ae4:	f9dff06f          	j	80002a80 <_ZN5Riscv7syscallEPm+0xb0>
        Thread_k::runningThread->zavrsi(true);
    80002ae8:	00009797          	auipc	a5,0x9
    80002aec:	f587b783          	ld	a5,-168(a5) # 8000ba40 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002af0:	0007b783          	ld	a5,0(a5)
        zavrsena=value;
    80002af4:	00100713          	li	a4,1
    80002af8:	00e78423          	sb	a4,8(a5)
        Thread_k::dispatch();
    80002afc:	fffff097          	auipc	ra,0xfffff
    80002b00:	72c080e7          	jalr	1836(ra) # 80002228 <_ZN8Thread_k8dispatchEv>
        ret=0;
    80002b04:	00000513          	li	a0,0
    80002b08:	f79ff06f          	j	80002a80 <_ZN5Riscv7syscallEPm+0xb0>
    __asm__ volatile("csrr %[sepc],sepc":[sepc] "=r"(sepc));
    80002b0c:	141027f3          	csrr	a5,sepc
    80002b10:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80002b14:	fd843483          	ld	s1,-40(s0)
    __asm__ volatile("csrr %[sstatus],sstatus":[sstatus] "=r"(sstatus));
    80002b18:	100027f3          	csrr	a5,sstatus
    80002b1c:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    80002b20:	fd043903          	ld	s2,-48(s0)
        Thread_k::dispatch();
    80002b24:	fffff097          	auipc	ra,0xfffff
    80002b28:	704080e7          	jalr	1796(ra) # 80002228 <_ZN8Thread_k8dispatchEv>
    __asm__ volatile("csrw sstatus,%[sstatus]"::[sstatus] "r"(sstatus));
    80002b2c:	10091073          	csrw	sstatus,s2
    __asm__ volatile("csrw sepc, %[sepc]"::[sepc] "r"(sepc));
    80002b30:	14149073          	csrw	sepc,s1
    uint64 ret=0;
    80002b34:	00000513          	li	a0,0
}
    80002b38:	f49ff06f          	j	80002a80 <_ZN5Riscv7syscallEPm+0xb0>
        Thread_k* handle=(Thread_k*)params[1];
    80002b3c:	00853483          	ld	s1,8(a0) # 40008 <_entry-0x7ffbfff8>
        printString("nnn");
    80002b40:	00006517          	auipc	a0,0x6
    80002b44:	7d850513          	addi	a0,a0,2008 # 80009318 <CONSOLE_STATUS+0x308>
    80002b48:	00003097          	auipc	ra,0x3
    80002b4c:	048080e7          	jalr	72(ra) # 80005b90 <_Z11printStringPKc>
        handle->join();
    80002b50:	00048513          	mv	a0,s1
    80002b54:	00000097          	auipc	ra,0x0
    80002b58:	8a0080e7          	jalr	-1888(ra) # 800023f4 <_ZN8Thread_k4joinEv>
    uint64 ret=0;
    80002b5c:	00000513          	li	a0,0
    80002b60:	f21ff06f          	j	80002a80 <_ZN5Riscv7syscallEPm+0xb0>
        Semaphore_k::createSemaphore(handle,init);
    80002b64:	01052583          	lw	a1,16(a0)
    80002b68:	00853503          	ld	a0,8(a0)
    80002b6c:	00000097          	auipc	ra,0x0
    80002b70:	cac080e7          	jalr	-852(ra) # 80002818 <_ZN11Semaphore_k15createSemaphoreEPPS_i>
        ret=0;
    80002b74:	00000513          	li	a0,0
    80002b78:	f09ff06f          	j	80002a80 <_ZN5Riscv7syscallEPm+0xb0>
        handle->releaseSemaphore();
    80002b7c:	00853503          	ld	a0,8(a0)
    80002b80:	00000097          	auipc	ra,0x0
    80002b84:	d88080e7          	jalr	-632(ra) # 80002908 <_ZN11Semaphore_k16releaseSemaphoreEv>
        ret=0;
    80002b88:	00000513          	li	a0,0
    80002b8c:	ef5ff06f          	j	80002a80 <_ZN5Riscv7syscallEPm+0xb0>
        ret=handle->wait();
    80002b90:	00853503          	ld	a0,8(a0)
    80002b94:	00000097          	auipc	ra,0x0
    80002b98:	ce4080e7          	jalr	-796(ra) # 80002878 <_ZN11Semaphore_k4waitEv>
    80002b9c:	ee5ff06f          	j	80002a80 <_ZN5Riscv7syscallEPm+0xb0>
        ret=handle->signal();
    80002ba0:	00853503          	ld	a0,8(a0)
    80002ba4:	00000097          	auipc	ra,0x0
    80002ba8:	d1c080e7          	jalr	-740(ra) # 800028c0 <_ZN11Semaphore_k6signalEv>
    80002bac:	ed5ff06f          	j	80002a80 <_ZN5Riscv7syscallEPm+0xb0>
        ret=Thread_k::sleepThread(time);
    80002bb0:	00853503          	ld	a0,8(a0)
    80002bb4:	fffff097          	auipc	ra,0xfffff
    80002bb8:	7e8080e7          	jalr	2024(ra) # 8000239c <_ZN8Thread_k11sleepThreadEm>
    80002bbc:	ec5ff06f          	j	80002a80 <_ZN5Riscv7syscallEPm+0xb0>
        char c=Konzola::getCharIn();
    80002bc0:	00000097          	auipc	ra,0x0
    80002bc4:	78c080e7          	jalr	1932(ra) # 8000334c <_ZN7Konzola9getCharInEv>
        ret=(uint64)c;
    80002bc8:	eb9ff06f          	j	80002a80 <_ZN5Riscv7syscallEPm+0xb0>
        Konzola::putCharOut(c);
    80002bcc:	00854503          	lbu	a0,8(a0)
    80002bd0:	00001097          	auipc	ra,0x1
    80002bd4:	810080e7          	jalr	-2032(ra) # 800033e0 <_ZN7Konzola10putCharOutEc>
    uint64 ret=0;
    80002bd8:	00000513          	li	a0,0
    80002bdc:	ea5ff06f          	j	80002a80 <_ZN5Riscv7syscallEPm+0xb0>

0000000080002be0 <_ZN5Riscv10popSppSpieEv>:
void Riscv::popSppSpie() {
    80002be0:	ff010113          	addi	sp,sp,-16
    80002be4:	00813423          	sd	s0,8(sp)
    80002be8:	01010413          	addi	s0,sp,16
    if (Thread_k::runningThread->sistemskaNit()==true) {
    80002bec:	00009797          	auipc	a5,0x9
    80002bf0:	e547b783          	ld	a5,-428(a5) # 8000ba40 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002bf4:	0007b783          	ld	a5,0(a5)
        return sys;
    80002bf8:	0497c783          	lbu	a5,73(a5)
    80002bfc:	02078063          	beqz	a5,80002c1c <_ZN5Riscv10popSppSpieEv+0x3c>
    __asm__ volatile("csrs sstatus,%[maska]"::[maska] "r"(maska));
    80002c00:	10000793          	li	a5,256
    80002c04:	1007a073          	csrs	sstatus,a5
    __asm__ volatile ("csrw sepc,ra");
    80002c08:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80002c0c:	10200073          	sret
}
    80002c10:	00813403          	ld	s0,8(sp)
    80002c14:	01010113          	addi	sp,sp,16
    80002c18:	00008067          	ret
}

inline void Riscv::sstatus_mc(uint64 maska) {
    __asm__ volatile("csrc sstatus,%[maska]"::[maska] "r"(maska));
    80002c1c:	10000793          	li	a5,256
    80002c20:	1007b073          	csrc	sstatus,a5
}
    80002c24:	fe5ff06f          	j	80002c08 <_ZN5Riscv10popSppSpieEv+0x28>

0000000080002c28 <_ZN5Riscv25handleSupervisorTrapBasicEv>:
void Riscv::handleSupervisorTrapBasic(){
    80002c28:	f8010113          	addi	sp,sp,-128
    80002c2c:	06113c23          	sd	ra,120(sp)
    80002c30:	06813823          	sd	s0,112(sp)
    80002c34:	08010413          	addi	s0,sp,128
    __asm__ volatile("csrr %[scause],scause":[scause] "=r"(scause));
    80002c38:	142027f3          	csrr	a5,scause
    80002c3c:	faf43023          	sd	a5,-96(s0)
    return scause;
    80002c40:	fa043783          	ld	a5,-96(s0)
    uint64 volatile scause=scause_r();
    80002c44:	fef43423          	sd	a5,-24(s0)
    if (scause==KORISNICKI_ECALL || scause==SISTEMSKI_ECALL) {
    80002c48:	fe843703          	ld	a4,-24(s0)
    80002c4c:	00800793          	li	a5,8
    80002c50:	00f70863          	beq	a4,a5,80002c60 <_ZN5Riscv25handleSupervisorTrapBasicEv+0x38>
    80002c54:	fe843703          	ld	a4,-24(s0)
    80002c58:	00900793          	li	a5,9
    80002c5c:	0af71a63          	bne	a4,a5,80002d10 <_ZN5Riscv25handleSupervisorTrapBasicEv+0xe8>
    __asm__ volatile("csrr %[sepc],sepc":[sepc] "=r"(sepc));
    80002c60:	141027f3          	csrr	a5,sepc
    80002c64:	faf43c23          	sd	a5,-72(s0)
    return sepc;
    80002c68:	fb843783          	ld	a5,-72(s0)
        uint64 volatile sepcOld=sepc_r();
    80002c6c:	f8f43423          	sd	a5,-120(s0)
    __asm__ volatile("csrr %[sstatus],sstatus":[sstatus] "=r"(sstatus));
    80002c70:	100027f3          	csrr	a5,sstatus
    80002c74:	faf43823          	sd	a5,-80(s0)
    return sstatus;
    80002c78:	fb043783          	ld	a5,-80(s0)
        uint64 volatile status=sstatus_r();
    80002c7c:	f8f43823          	sd	a5,-112(s0)
    __asm__ volatile("csrc sip,%[maska]"::[maska] "r"(maska));
}

inline void Riscv::ucitajParametre(uint64 *params) {
    uint64 volatile pomocna;
    __asm__ volatile("mv %0,a0":"=r"(pomocna));
    80002c80:	00050793          	mv	a5,a0
    80002c84:	faf43423          	sd	a5,-88(s0)
    params[0]=pomocna;
    80002c88:	fa843783          	ld	a5,-88(s0)
    80002c8c:	fcf43023          	sd	a5,-64(s0)
    __asm__ volatile("mv %0,a1":"=r"(pomocna));
    80002c90:	00058793          	mv	a5,a1
    80002c94:	faf43423          	sd	a5,-88(s0)
    params[1]=pomocna;
    80002c98:	fa843783          	ld	a5,-88(s0)
    80002c9c:	fcf43423          	sd	a5,-56(s0)
    __asm__ volatile("mv %0,a2":"=r"(pomocna));
    80002ca0:	00060793          	mv	a5,a2
    80002ca4:	faf43423          	sd	a5,-88(s0)
    params[2]=pomocna;
    80002ca8:	fa843783          	ld	a5,-88(s0)
    80002cac:	fcf43823          	sd	a5,-48(s0)
    __asm__ volatile("mv %0,a3":"=r"(pomocna));
    80002cb0:	00068793          	mv	a5,a3
    80002cb4:	faf43423          	sd	a5,-88(s0)
    params[3]=pomocna;
    80002cb8:	fa843783          	ld	a5,-88(s0)
    80002cbc:	fcf43c23          	sd	a5,-40(s0)
    __asm__ volatile("mv %0,a4":"=r"(pomocna));
    80002cc0:	00070793          	mv	a5,a4
    80002cc4:	faf43423          	sd	a5,-88(s0)
    params[4]=pomocna;
    80002cc8:	fa843783          	ld	a5,-88(s0)
    80002ccc:	fef43023          	sd	a5,-32(s0)
        uint64 volatile returnValue=syscall(params);
    80002cd0:	fc040513          	addi	a0,s0,-64
    80002cd4:	00000097          	auipc	ra,0x0
    80002cd8:	cfc080e7          	jalr	-772(ra) # 800029d0 <_ZN5Riscv7syscallEPm>
    80002cdc:	f8a43c23          	sd	a0,-104(s0)
        sstatus_w(status);
    80002ce0:	f9043783          	ld	a5,-112(s0)
    __asm__ volatile("csrw sstatus,%[sstatus]"::[sstatus] "r"(sstatus));
    80002ce4:	10079073          	csrw	sstatus,a5
        sepc_w(sepcOld+4);
    80002ce8:	f8843783          	ld	a5,-120(s0)
    80002cec:	00478793          	addi	a5,a5,4
    __asm__ volatile("csrw sepc, %[sepc]"::[sepc] "r"(sepc));
    80002cf0:	14179073          	csrw	sepc,a5
        upisi_u_a0(returnValue);
    80002cf4:	f9843783          	ld	a5,-104(s0)
    __asm volatile("mv a0, %[a0]"::[a0]"r"(a0));
    80002cf8:	00078513          	mv	a0,a5
    __asm__ volatile ("sd a0, 10*8(s0)");
    80002cfc:	04a43823          	sd	a0,80(s0)
}
    80002d00:	07813083          	ld	ra,120(sp)
    80002d04:	07013403          	ld	s0,112(sp)
    80002d08:	08010113          	addi	sp,sp,128
    80002d0c:	00008067          	ret
        printString("error");
    80002d10:	00006517          	auipc	a0,0x6
    80002d14:	61850513          	addi	a0,a0,1560 # 80009328 <CONSOLE_STATUS+0x318>
    80002d18:	00003097          	auipc	ra,0x3
    80002d1c:	e78080e7          	jalr	-392(ra) # 80005b90 <_Z11printStringPKc>
        if (scause==2) {
    80002d20:	fe843703          	ld	a4,-24(s0)
    80002d24:	00200793          	li	a5,2
    80002d28:	02f70863          	beq	a4,a5,80002d58 <_ZN5Riscv25handleSupervisorTrapBasicEv+0x130>
        else if (scause==5) {
    80002d2c:	fe843703          	ld	a4,-24(s0)
    80002d30:	00500793          	li	a5,5
    80002d34:	02f70c63          	beq	a4,a5,80002d6c <_ZN5Riscv25handleSupervisorTrapBasicEv+0x144>
        else if (scause==7){
    80002d38:	fe843703          	ld	a4,-24(s0)
    80002d3c:	00700793          	li	a5,7
    80002d40:	fcf710e3          	bne	a4,a5,80002d00 <_ZN5Riscv25handleSupervisorTrapBasicEv+0xd8>
            printString("Error scause = 7");
    80002d44:	00006517          	auipc	a0,0x6
    80002d48:	61c50513          	addi	a0,a0,1564 # 80009360 <CONSOLE_STATUS+0x350>
    80002d4c:	00003097          	auipc	ra,0x3
    80002d50:	e44080e7          	jalr	-444(ra) # 80005b90 <_Z11printStringPKc>
        return;
    80002d54:	fadff06f          	j	80002d00 <_ZN5Riscv25handleSupervisorTrapBasicEv+0xd8>
            printString("Error scause = 2");
    80002d58:	00006517          	auipc	a0,0x6
    80002d5c:	5d850513          	addi	a0,a0,1496 # 80009330 <CONSOLE_STATUS+0x320>
    80002d60:	00003097          	auipc	ra,0x3
    80002d64:	e30080e7          	jalr	-464(ra) # 80005b90 <_Z11printStringPKc>
    80002d68:	f99ff06f          	j	80002d00 <_ZN5Riscv25handleSupervisorTrapBasicEv+0xd8>
            printString("Error scause = 5");
    80002d6c:	00006517          	auipc	a0,0x6
    80002d70:	5dc50513          	addi	a0,a0,1500 # 80009348 <CONSOLE_STATUS+0x338>
    80002d74:	00003097          	auipc	ra,0x3
    80002d78:	e1c080e7          	jalr	-484(ra) # 80005b90 <_Z11printStringPKc>
    80002d7c:	f85ff06f          	j	80002d00 <_ZN5Riscv25handleSupervisorTrapBasicEv+0xd8>

0000000080002d80 <_ZN5Riscv25handleSupervisorTrapTimerEv>:
void Riscv::handleSupervisorTrapTimer(){
    80002d80:	fb010113          	addi	sp,sp,-80
    80002d84:	04113423          	sd	ra,72(sp)
    80002d88:	04813023          	sd	s0,64(sp)
    80002d8c:	02913c23          	sd	s1,56(sp)
    80002d90:	05010413          	addi	s0,sp,80
    __asm__ volatile("csrr %[scause],scause":[scause] "=r"(scause));
    80002d94:	142027f3          	csrr	a5,scause
    80002d98:	fcf43423          	sd	a5,-56(s0)
    return scause;
    80002d9c:	fc843483          	ld	s1,-56(s0)
    if (scause==TIMER) {
    80002da0:	fff00793          	li	a5,-1
    80002da4:	03f79793          	slli	a5,a5,0x3f
    80002da8:	00178793          	addi	a5,a5,1
    80002dac:	0af49063          	bne	s1,a5,80002e4c <_ZN5Riscv25handleSupervisorTrapTimerEv+0xcc>
        uspavaneNiti.probudiNiti();
    80002db0:	00009517          	auipc	a0,0x9
    80002db4:	d1850513          	addi	a0,a0,-744 # 8000bac8 <_ZN5Riscv12uspavaneNitiE>
    80002db8:	fffff097          	auipc	ra,0xfffff
    80002dbc:	7dc080e7          	jalr	2012(ra) # 80002594 <_ZN13UspavanaLista11probudiNitiEv>
    __asm__ volatile("csrc sip,%[maska]"::[maska] "r"(maska));
    80002dc0:	00200793          	li	a5,2
    80002dc4:	1447b073          	csrc	sip,a5
        Thread_k::counterOfTimeSlice++;
    80002dc8:	00009717          	auipc	a4,0x9
    80002dcc:	c6073703          	ld	a4,-928(a4) # 8000ba28 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002dd0:	00073783          	ld	a5,0(a4)
    80002dd4:	00178793          	addi	a5,a5,1
    80002dd8:	00f73023          	sd	a5,0(a4)
        if (Thread_k::counterOfTimeSlice >= Thread_k::runningThread->dohvatiTimeSlice()) {
    80002ddc:	00009717          	auipc	a4,0x9
    80002de0:	c6473703          	ld	a4,-924(a4) # 8000ba40 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002de4:	00073703          	ld	a4,0(a4)
        return timeSlice;
    80002de8:	03073703          	ld	a4,48(a4)
    80002dec:	00e7fc63          	bgeu	a5,a4,80002e04 <_ZN5Riscv25handleSupervisorTrapTimerEv+0x84>
}
    80002df0:	04813083          	ld	ra,72(sp)
    80002df4:	04013403          	ld	s0,64(sp)
    80002df8:	03813483          	ld	s1,56(sp)
    80002dfc:	05010113          	addi	sp,sp,80
    80002e00:	00008067          	ret
    __asm__ volatile("csrr %[sepc],sepc":[sepc] "=r"(sepc));
    80002e04:	141027f3          	csrr	a5,sepc
    80002e08:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80002e0c:	fd843783          	ld	a5,-40(s0)
            uint64 volatile sepc = sepc_r();
    80002e10:	faf43c23          	sd	a5,-72(s0)
    __asm__ volatile("csrr %[sstatus],sstatus":[sstatus] "=r"(sstatus));
    80002e14:	100027f3          	csrr	a5,sstatus
    80002e18:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    80002e1c:	fd043783          	ld	a5,-48(s0)
            uint64 volatile sstatus = sstatus_r();
    80002e20:	fcf43023          	sd	a5,-64(s0)
            Thread_k::counterOfTimeSlice = 0;
    80002e24:	00009797          	auipc	a5,0x9
    80002e28:	c047b783          	ld	a5,-1020(a5) # 8000ba28 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002e2c:	0007b023          	sd	zero,0(a5)
            Thread_k::dispatch();
    80002e30:	fffff097          	auipc	ra,0xfffff
    80002e34:	3f8080e7          	jalr	1016(ra) # 80002228 <_ZN8Thread_k8dispatchEv>
            sstatus_w(sstatus);
    80002e38:	fc043783          	ld	a5,-64(s0)
    __asm__ volatile("csrw sstatus,%[sstatus]"::[sstatus] "r"(sstatus));
    80002e3c:	10079073          	csrw	sstatus,a5
            sepc_w(sepc);
    80002e40:	fb843783          	ld	a5,-72(s0)
    __asm__ volatile("csrw sepc, %[sepc]"::[sepc] "r"(sepc));
    80002e44:	14179073          	csrw	sepc,a5
}
    80002e48:	fa9ff06f          	j	80002df0 <_ZN5Riscv25handleSupervisorTrapTimerEv+0x70>
        printString("error");
    80002e4c:	00006517          	auipc	a0,0x6
    80002e50:	4dc50513          	addi	a0,a0,1244 # 80009328 <CONSOLE_STATUS+0x318>
    80002e54:	00003097          	auipc	ra,0x3
    80002e58:	d3c080e7          	jalr	-708(ra) # 80005b90 <_Z11printStringPKc>
        if (scause==2) {
    80002e5c:	00200793          	li	a5,2
    80002e60:	02f48463          	beq	s1,a5,80002e88 <_ZN5Riscv25handleSupervisorTrapTimerEv+0x108>
        else if (scause==5) {
    80002e64:	00500793          	li	a5,5
    80002e68:	02f48a63          	beq	s1,a5,80002e9c <_ZN5Riscv25handleSupervisorTrapTimerEv+0x11c>
        else if (scause==7){
    80002e6c:	00700793          	li	a5,7
    80002e70:	f8f490e3          	bne	s1,a5,80002df0 <_ZN5Riscv25handleSupervisorTrapTimerEv+0x70>
            printString("Error scause = 7");
    80002e74:	00006517          	auipc	a0,0x6
    80002e78:	4ec50513          	addi	a0,a0,1260 # 80009360 <CONSOLE_STATUS+0x350>
    80002e7c:	00003097          	auipc	ra,0x3
    80002e80:	d14080e7          	jalr	-748(ra) # 80005b90 <_Z11printStringPKc>
        return;
    80002e84:	f6dff06f          	j	80002df0 <_ZN5Riscv25handleSupervisorTrapTimerEv+0x70>
            printString("Error scause = 2");
    80002e88:	00006517          	auipc	a0,0x6
    80002e8c:	4a850513          	addi	a0,a0,1192 # 80009330 <CONSOLE_STATUS+0x320>
    80002e90:	00003097          	auipc	ra,0x3
    80002e94:	d00080e7          	jalr	-768(ra) # 80005b90 <_Z11printStringPKc>
    80002e98:	f59ff06f          	j	80002df0 <_ZN5Riscv25handleSupervisorTrapTimerEv+0x70>
            printString("Error scause = 5");
    80002e9c:	00006517          	auipc	a0,0x6
    80002ea0:	4ac50513          	addi	a0,a0,1196 # 80009348 <CONSOLE_STATUS+0x338>
    80002ea4:	00003097          	auipc	ra,0x3
    80002ea8:	cec080e7          	jalr	-788(ra) # 80005b90 <_Z11printStringPKc>
    80002eac:	f45ff06f          	j	80002df0 <_ZN5Riscv25handleSupervisorTrapTimerEv+0x70>

0000000080002eb0 <_ZN5Riscv27handleSupervisorTrapConsoleEv>:
void Riscv::handleSupervisorTrapConsole() {
    80002eb0:	fb010113          	addi	sp,sp,-80
    80002eb4:	04113423          	sd	ra,72(sp)
    80002eb8:	04813023          	sd	s0,64(sp)
    80002ebc:	02913c23          	sd	s1,56(sp)
    80002ec0:	05010413          	addi	s0,sp,80
    __asm__ volatile("csrr %[scause],scause":[scause] "=r"(scause));
    80002ec4:	142027f3          	csrr	a5,scause
    80002ec8:	fcf43423          	sd	a5,-56(s0)
    return scause;
    80002ecc:	fc843483          	ld	s1,-56(s0)
    if (scause==KONZOLA) {
    80002ed0:	fff00793          	li	a5,-1
    80002ed4:	03f79793          	slli	a5,a5,0x3f
    80002ed8:	00978793          	addi	a5,a5,9
    80002edc:	08f49e63          	bne	s1,a5,80002f78 <_ZN5Riscv27handleSupervisorTrapConsoleEv+0xc8>
    __asm__ volatile("csrr %[sepc],sepc":[sepc] "=r"(sepc));
    80002ee0:	141027f3          	csrr	a5,sepc
    80002ee4:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80002ee8:	fd843783          	ld	a5,-40(s0)
        uint64 volatile sepc = sepc_r();
    80002eec:	faf43c23          	sd	a5,-72(s0)
    __asm__ volatile("csrr %[sstatus],sstatus":[sstatus] "=r"(sstatus));
    80002ef0:	100027f3          	csrr	a5,sstatus
    80002ef4:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    80002ef8:	fd043783          	ld	a5,-48(s0)
        uint64 volatile sstatus = sstatus_r();
    80002efc:	fcf43023          	sd	a5,-64(s0)
        uint64 brojPrekida = plic_claim();
    80002f00:	00004097          	auipc	ra,0x4
    80002f04:	5e4080e7          	jalr	1508(ra) # 800074e4 <plic_claim>
    80002f08:	00050493          	mv	s1,a0
        if (brojPrekida == CONSOLE_IRQ) {
    80002f0c:	00a00793          	li	a5,10
    80002f10:	02f50a63          	beq	a0,a5,80002f44 <_ZN5Riscv27handleSupervisorTrapConsoleEv+0x94>
        plic_complete((int) brojPrekida);
    80002f14:	00048513          	mv	a0,s1
    80002f18:	00004097          	auipc	ra,0x4
    80002f1c:	604080e7          	jalr	1540(ra) # 8000751c <plic_complete>
        sstatus_w(sstatus);
    80002f20:	fc043783          	ld	a5,-64(s0)
    __asm__ volatile("csrw sstatus,%[sstatus]"::[sstatus] "r"(sstatus));
    80002f24:	10079073          	csrw	sstatus,a5
        sepc_w(sepc);
    80002f28:	fb843783          	ld	a5,-72(s0)
    __asm__ volatile("csrw sepc, %[sepc]"::[sepc] "r"(sepc));
    80002f2c:	14179073          	csrw	sepc,a5
    80002f30:	04813083          	ld	ra,72(sp)
    80002f34:	04013403          	ld	s0,64(sp)
    80002f38:	03813483          	ld	s1,56(sp)
    80002f3c:	05010113          	addi	sp,sp,80
    80002f40:	00008067          	ret
            while (CONSOLE_RX_STATUS_BIT & (*(char *) CONSOLE_STATUS)) Konzola::putCharIn(*(char *) CONSOLE_RX_DATA);
    80002f44:	00009797          	auipc	a5,0x9
    80002f48:	ac47b783          	ld	a5,-1340(a5) # 8000ba08 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002f4c:	0007b783          	ld	a5,0(a5)
    80002f50:	0007c783          	lbu	a5,0(a5)
    80002f54:	0017f793          	andi	a5,a5,1
    80002f58:	fa078ee3          	beqz	a5,80002f14 <_ZN5Riscv27handleSupervisorTrapConsoleEv+0x64>
    80002f5c:	00009797          	auipc	a5,0x9
    80002f60:	aa47b783          	ld	a5,-1372(a5) # 8000ba00 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002f64:	0007b783          	ld	a5,0(a5)
    80002f68:	0007c503          	lbu	a0,0(a5)
    80002f6c:	00000097          	auipc	ra,0x0
    80002f70:	440080e7          	jalr	1088(ra) # 800033ac <_ZN7Konzola9putCharInEc>
    80002f74:	fd1ff06f          	j	80002f44 <_ZN5Riscv27handleSupervisorTrapConsoleEv+0x94>
        printString("error");
    80002f78:	00006517          	auipc	a0,0x6
    80002f7c:	3b050513          	addi	a0,a0,944 # 80009328 <CONSOLE_STATUS+0x318>
    80002f80:	00003097          	auipc	ra,0x3
    80002f84:	c10080e7          	jalr	-1008(ra) # 80005b90 <_Z11printStringPKc>
        if (scause==2) {
    80002f88:	00200793          	li	a5,2
    80002f8c:	02f48463          	beq	s1,a5,80002fb4 <_ZN5Riscv27handleSupervisorTrapConsoleEv+0x104>
        else if (scause==5) {
    80002f90:	00500793          	li	a5,5
    80002f94:	02f48a63          	beq	s1,a5,80002fc8 <_ZN5Riscv27handleSupervisorTrapConsoleEv+0x118>
        else if (scause==7){
    80002f98:	00700793          	li	a5,7
    80002f9c:	f8f49ae3          	bne	s1,a5,80002f30 <_ZN5Riscv27handleSupervisorTrapConsoleEv+0x80>
            printString("Error scause = 7");
    80002fa0:	00006517          	auipc	a0,0x6
    80002fa4:	3c050513          	addi	a0,a0,960 # 80009360 <CONSOLE_STATUS+0x350>
    80002fa8:	00003097          	auipc	ra,0x3
    80002fac:	be8080e7          	jalr	-1048(ra) # 80005b90 <_Z11printStringPKc>
        return;
    80002fb0:	f81ff06f          	j	80002f30 <_ZN5Riscv27handleSupervisorTrapConsoleEv+0x80>
            printString("Error scause = 2");
    80002fb4:	00006517          	auipc	a0,0x6
    80002fb8:	37c50513          	addi	a0,a0,892 # 80009330 <CONSOLE_STATUS+0x320>
    80002fbc:	00003097          	auipc	ra,0x3
    80002fc0:	bd4080e7          	jalr	-1068(ra) # 80005b90 <_Z11printStringPKc>
    80002fc4:	f6dff06f          	j	80002f30 <_ZN5Riscv27handleSupervisorTrapConsoleEv+0x80>
            printString("Error scause = 5");
    80002fc8:	00006517          	auipc	a0,0x6
    80002fcc:	38050513          	addi	a0,a0,896 # 80009348 <CONSOLE_STATUS+0x338>
    80002fd0:	00003097          	auipc	ra,0x3
    80002fd4:	bc0080e7          	jalr	-1088(ra) # 80005b90 <_Z11printStringPKc>
    80002fd8:	f59ff06f          	j	80002f30 <_ZN5Riscv27handleSupervisorTrapConsoleEv+0x80>

0000000080002fdc <_GLOBAL__sub_I__ZN5Riscv12uspavaneNitiE>:
    80002fdc:	ff010113          	addi	sp,sp,-16
    80002fe0:	00113423          	sd	ra,8(sp)
    80002fe4:	00813023          	sd	s0,0(sp)
    80002fe8:	01010413          	addi	s0,sp,16
    80002fec:	000105b7          	lui	a1,0x10
    80002ff0:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002ff4:	00100513          	li	a0,1
    80002ff8:	00000097          	auipc	ra,0x0
    80002ffc:	964080e7          	jalr	-1692(ra) # 8000295c <_Z41__static_initialization_and_destruction_0ii>
    80003000:	00813083          	ld	ra,8(sp)
    80003004:	00013403          	ld	s0,0(sp)
    80003008:	01010113          	addi	sp,sp,16
    8000300c:	00008067          	ret

0000000080003010 <_ZN15MemoryAllocator5_initEv>:

bool MemoryAllocator::init=false;



void MemoryAllocator::_init() {
    80003010:	ff010113          	addi	sp,sp,-16
    80003014:	00813423          	sd	s0,8(sp)
    80003018:	01010413          	addi	s0,sp,16
    freeMemHead=(freeMem*)HEAP_START_ADDR;
    8000301c:	00009697          	auipc	a3,0x9
    80003020:	9f46b683          	ld	a3,-1548(a3) # 8000ba10 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003024:	0006b783          	ld	a5,0(a3)
    80003028:	00009717          	auipc	a4,0x9
    8000302c:	ab070713          	addi	a4,a4,-1360 # 8000bad8 <_ZN15MemoryAllocator11freeMemHeadE>
    80003030:	00f73023          	sd	a5,0(a4)
    freeMemHead->next= nullptr;
    80003034:	0007b023          	sd	zero,0(a5)
    freeMemHead->size=(size_t)(-sizeof(freeMem)+(uint64)HEAP_END_ADDR-(uint64)HEAP_START_ADDR);
    80003038:	00073603          	ld	a2,0(a4)
    8000303c:	00009797          	auipc	a5,0x9
    80003040:	a0c7b783          	ld	a5,-1524(a5) # 8000ba48 <_GLOBAL_OFFSET_TABLE_+0x50>
    80003044:	0007b783          	ld	a5,0(a5)
    80003048:	0006b683          	ld	a3,0(a3)
    8000304c:	40d787b3          	sub	a5,a5,a3
    80003050:	ff078793          	addi	a5,a5,-16
    80003054:	00f63423          	sd	a5,8(a2)
    MemoryAllocator::init=true;
    80003058:	00100793          	li	a5,1
    8000305c:	00f70423          	sb	a5,8(a4)
}
    80003060:	00813403          	ld	s0,8(sp)
    80003064:	01010113          	addi	sp,sp,16
    80003068:	00008067          	ret

000000008000306c <_ZN15MemoryAllocator10_mem_allocEm>:

void *MemoryAllocator::_mem_alloc(size_t s) {
    8000306c:	fe010113          	addi	sp,sp,-32
    80003070:	00113c23          	sd	ra,24(sp)
    80003074:	00813823          	sd	s0,16(sp)
    80003078:	00913423          	sd	s1,8(sp)
    8000307c:	02010413          	addi	s0,sp,32
    80003080:	00050493          	mv	s1,a0
    if (!init) {
    80003084:	00009797          	auipc	a5,0x9
    80003088:	a5c7c783          	lbu	a5,-1444(a5) # 8000bae0 <_ZN15MemoryAllocator4initE>
    8000308c:	04078063          	beqz	a5,800030cc <_ZN15MemoryAllocator10_mem_allocEm+0x60>
        MemoryAllocator::_init();
    }
    s+=sizeof(freeMem);
    80003090:	01048793          	addi	a5,s1,16
    if (s%MEM_BLOCK_SIZE) {
    80003094:	03f7f713          	andi	a4,a5,63
    80003098:	00070863          	beqz	a4,800030a8 <_ZN15MemoryAllocator10_mem_allocEm+0x3c>
        s=MEM_BLOCK_SIZE*(1+s/MEM_BLOCK_SIZE);
    8000309c:	0067d793          	srli	a5,a5,0x6
    800030a0:	00178793          	addi	a5,a5,1
    800030a4:	00679793          	slli	a5,a5,0x6
    }
    freeMem* iterator=freeMemHead;
    800030a8:	00009517          	auipc	a0,0x9
    800030ac:	a3053503          	ld	a0,-1488(a0) # 8000bad8 <_ZN15MemoryAllocator11freeMemHeadE>
    freeMem* prethodni=nullptr;
    800030b0:	00000693          	li	a3,0
    while (iterator && iterator->size<s){
    800030b4:	02050263          	beqz	a0,800030d8 <_ZN15MemoryAllocator10_mem_allocEm+0x6c>
    800030b8:	00853703          	ld	a4,8(a0)
    800030bc:	00f77e63          	bgeu	a4,a5,800030d8 <_ZN15MemoryAllocator10_mem_allocEm+0x6c>
        prethodni=iterator;
    800030c0:	00050693          	mv	a3,a0
        iterator=iterator->next;
    800030c4:	00053503          	ld	a0,0(a0)
    while (iterator && iterator->size<s){
    800030c8:	fedff06f          	j	800030b4 <_ZN15MemoryAllocator10_mem_allocEm+0x48>
        MemoryAllocator::_init();
    800030cc:	00000097          	auipc	ra,0x0
    800030d0:	f44080e7          	jalr	-188(ra) # 80003010 <_ZN15MemoryAllocator5_initEv>
    800030d4:	fbdff06f          	j	80003090 <_ZN15MemoryAllocator10_mem_allocEm+0x24>
    }
    if (iterator==nullptr) return nullptr;
    800030d8:	02050e63          	beqz	a0,80003114 <_ZN15MemoryAllocator10_mem_allocEm+0xa8>
    if (iterator->size>s+sizeof(freeMem)){
    800030dc:	00853703          	ld	a4,8(a0)
    800030e0:	01078613          	addi	a2,a5,16
    800030e4:	06e67263          	bgeu	a2,a4,80003148 <_ZN15MemoryAllocator10_mem_allocEm+0xdc>
        if (prethodni) {
    800030e8:	04068063          	beqz	a3,80003128 <_ZN15MemoryAllocator10_mem_allocEm+0xbc>
            prethodni->next = (freeMem *) ((char *) iterator + s);
    800030ec:	00f50633          	add	a2,a0,a5
    800030f0:	00c6b023          	sd	a2,0(a3)
            prethodni->next->size=iterator->size-s;
    800030f4:	00853703          	ld	a4,8(a0)
    800030f8:	40f70733          	sub	a4,a4,a5
    800030fc:	00e63423          	sd	a4,8(a2)
            prethodni->next->next=iterator->next;
    80003100:	0006b703          	ld	a4,0(a3)
    80003104:	00053683          	ld	a3,0(a0)
    80003108:	00d73023          	sd	a3,0(a4)
        else {
            freeMemHead=(freeMem*)((char*)iterator+s);
            freeMemHead->size=iterator->size-s;
            freeMemHead->next=iterator->next;
        }
        iterator->size=s;
    8000310c:	00f53423          	sd	a5,8(a0)
        return (void*)((char*)iterator+sizeof(freeMem));
    80003110:	01050513          	addi	a0,a0,16
        iterator->size=s;
        return (void*)((char*)iterator+sizeof(freeMem));

    }
    
}
    80003114:	01813083          	ld	ra,24(sp)
    80003118:	01013403          	ld	s0,16(sp)
    8000311c:	00813483          	ld	s1,8(sp)
    80003120:	02010113          	addi	sp,sp,32
    80003124:	00008067          	ret
            freeMemHead=(freeMem*)((char*)iterator+s);
    80003128:	00f506b3          	add	a3,a0,a5
    8000312c:	00009617          	auipc	a2,0x9
    80003130:	9ad63623          	sd	a3,-1620(a2) # 8000bad8 <_ZN15MemoryAllocator11freeMemHeadE>
            freeMemHead->size=iterator->size-s;
    80003134:	40f70733          	sub	a4,a4,a5
    80003138:	00e6b423          	sd	a4,8(a3)
            freeMemHead->next=iterator->next;
    8000313c:	00053703          	ld	a4,0(a0)
    80003140:	00e6b023          	sd	a4,0(a3)
    80003144:	fc9ff06f          	j	8000310c <_ZN15MemoryAllocator10_mem_allocEm+0xa0>
        if(prethodni) prethodni->next=iterator->next;
    80003148:	00068c63          	beqz	a3,80003160 <_ZN15MemoryAllocator10_mem_allocEm+0xf4>
    8000314c:	00053703          	ld	a4,0(a0)
    80003150:	00e6b023          	sd	a4,0(a3)
        iterator->size=s;
    80003154:	00f53423          	sd	a5,8(a0)
        return (void*)((char*)iterator+sizeof(freeMem));
    80003158:	01050513          	addi	a0,a0,16
    8000315c:	fb9ff06f          	j	80003114 <_ZN15MemoryAllocator10_mem_allocEm+0xa8>
        else freeMemHead=iterator->next;
    80003160:	00053703          	ld	a4,0(a0)
    80003164:	00009697          	auipc	a3,0x9
    80003168:	96e6ba23          	sd	a4,-1676(a3) # 8000bad8 <_ZN15MemoryAllocator11freeMemHeadE>
    8000316c:	fe9ff06f          	j	80003154 <_ZN15MemoryAllocator10_mem_allocEm+0xe8>

0000000080003170 <_ZN15MemoryAllocator9_mem_freeEPv>:

int MemoryAllocator::_mem_free(void* addr) {
    if (!init) {
    80003170:	00009797          	auipc	a5,0x9
    80003174:	9707c783          	lbu	a5,-1680(a5) # 8000bae0 <_ZN15MemoryAllocator4initE>
    80003178:	04078663          	beqz	a5,800031c4 <_ZN15MemoryAllocator9_mem_freeEPv+0x54>
        MemoryAllocator::_init();
        return -1;
    }
    if ((uint64*)addr<(uint64*)HEAP_START_ADDR || (uint64*)addr>(uint64*)HEAP_END_ADDR) return -1;
    8000317c:	00009797          	auipc	a5,0x9
    80003180:	8947b783          	ld	a5,-1900(a5) # 8000ba10 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003184:	0007b783          	ld	a5,0(a5)
    80003188:	10f56263          	bltu	a0,a5,8000328c <_ZN15MemoryAllocator9_mem_freeEPv+0x11c>
    8000318c:	00009797          	auipc	a5,0x9
    80003190:	8bc7b783          	ld	a5,-1860(a5) # 8000ba48 <_GLOBAL_OFFSET_TABLE_+0x50>
    80003194:	0007b783          	ld	a5,0(a5)
    80003198:	0ea7ee63          	bltu	a5,a0,80003294 <_ZN15MemoryAllocator9_mem_freeEPv+0x124>
    freeMem* novi=(freeMem*)((char*)addr-sizeof(freeMem));
    8000319c:	ff050693          	addi	a3,a0,-16
    if (!freeMemHead) {
    800031a0:	00009797          	auipc	a5,0x9
    800031a4:	9387b783          	ld	a5,-1736(a5) # 8000bad8 <_ZN15MemoryAllocator11freeMemHeadE>
    800031a8:	04078463          	beqz	a5,800031f0 <_ZN15MemoryAllocator9_mem_freeEPv+0x80>
        novi->next=nullptr;
        freeMemHead=novi;
        return 0;
    }
    else if (addr<(void*)freeMemHead) {
    800031ac:	04f57c63          	bgeu	a0,a5,80003204 <_ZN15MemoryAllocator9_mem_freeEPv+0x94>
        novi->next=freeMemHead;
    800031b0:	fef53823          	sd	a5,-16(a0)
        freeMemHead=novi;
    800031b4:	00009797          	auipc	a5,0x9
    800031b8:	92d7b223          	sd	a3,-1756(a5) # 8000bad8 <_ZN15MemoryAllocator11freeMemHeadE>
        return 0;
    800031bc:	00000513          	li	a0,0
    800031c0:	00008067          	ret
int MemoryAllocator::_mem_free(void* addr) {
    800031c4:	ff010113          	addi	sp,sp,-16
    800031c8:	00113423          	sd	ra,8(sp)
    800031cc:	00813023          	sd	s0,0(sp)
    800031d0:	01010413          	addi	s0,sp,16
        MemoryAllocator::_init();
    800031d4:	00000097          	auipc	ra,0x0
    800031d8:	e3c080e7          	jalr	-452(ra) # 80003010 <_ZN15MemoryAllocator5_initEv>
        return -1;
    800031dc:	fff00513          	li	a0,-1
                trenutni->next=trenutni->next->next;
            }
        }
        return 0;
    }
}
    800031e0:	00813083          	ld	ra,8(sp)
    800031e4:	00013403          	ld	s0,0(sp)
    800031e8:	01010113          	addi	sp,sp,16
    800031ec:	00008067          	ret
        novi->next=nullptr;
    800031f0:	fe053823          	sd	zero,-16(a0)
        freeMemHead=novi;
    800031f4:	00009797          	auipc	a5,0x9
    800031f8:	8ed7b223          	sd	a3,-1820(a5) # 8000bad8 <_ZN15MemoryAllocator11freeMemHeadE>
        return 0;
    800031fc:	00000513          	li	a0,0
    80003200:	00008067          	ret
        while (trenutni->next) {
    80003204:	00078713          	mv	a4,a5
    80003208:	0007b783          	ld	a5,0(a5)
    8000320c:	00078463          	beqz	a5,80003214 <_ZN15MemoryAllocator9_mem_freeEPv+0xa4>
            if (addr < (void *) (trenutni->next)) break;
    80003210:	fef57ae3          	bgeu	a0,a5,80003204 <_ZN15MemoryAllocator9_mem_freeEPv+0x94>
        if (trenutni->next) {
    80003214:	02078e63          	beqz	a5,80003250 <_ZN15MemoryAllocator9_mem_freeEPv+0xe0>
            novi->next=trenutni->next;
    80003218:	fef53823          	sd	a5,-16(a0)
            trenutni->next=novi;
    8000321c:	00d73023          	sd	a3,0(a4)
        if (novi->next) {
    80003220:	ff053783          	ld	a5,-16(a0)
    80003224:	00078863          	beqz	a5,80003234 <_ZN15MemoryAllocator9_mem_freeEPv+0xc4>
            if (novi->size+(char*)novi==(char*)(novi->next)) {
    80003228:	ff853603          	ld	a2,-8(a0)
    8000322c:	00c686b3          	add	a3,a3,a2
    80003230:	02d78663          	beq	a5,a3,8000325c <_ZN15MemoryAllocator9_mem_freeEPv+0xec>
        if (trenutni->next) {
    80003234:	00073783          	ld	a5,0(a4)
    80003238:	00078863          	beqz	a5,80003248 <_ZN15MemoryAllocator9_mem_freeEPv+0xd8>
            if (trenutni->size+(char*)trenutni==(char*)(trenutni->next)) {
    8000323c:	00873683          	ld	a3,8(a4)
    80003240:	00d70633          	add	a2,a4,a3
    80003244:	02c78863          	beq	a5,a2,80003274 <_ZN15MemoryAllocator9_mem_freeEPv+0x104>
        return 0;
    80003248:	00000513          	li	a0,0
    8000324c:	00008067          	ret
            novi->next=nullptr;
    80003250:	fe053823          	sd	zero,-16(a0)
            trenutni->next=novi;
    80003254:	00d73023          	sd	a3,0(a4)
    80003258:	fc9ff06f          	j	80003220 <_ZN15MemoryAllocator9_mem_freeEPv+0xb0>
                novi->size+=novi->next->size;
    8000325c:	0087b683          	ld	a3,8(a5)
    80003260:	00d60633          	add	a2,a2,a3
    80003264:	fec53c23          	sd	a2,-8(a0)
                novi->next=novi->next->next;
    80003268:	0007b783          	ld	a5,0(a5)
    8000326c:	fef53823          	sd	a5,-16(a0)
    80003270:	fc5ff06f          	j	80003234 <_ZN15MemoryAllocator9_mem_freeEPv+0xc4>
                trenutni->size+=trenutni->next->size;
    80003274:	0087b603          	ld	a2,8(a5)
    80003278:	00c686b3          	add	a3,a3,a2
    8000327c:	00d73423          	sd	a3,8(a4)
                trenutni->next=trenutni->next->next;
    80003280:	0007b783          	ld	a5,0(a5)
    80003284:	00f73023          	sd	a5,0(a4)
    80003288:	fc1ff06f          	j	80003248 <_ZN15MemoryAllocator9_mem_freeEPv+0xd8>
    if ((uint64*)addr<(uint64*)HEAP_START_ADDR || (uint64*)addr>(uint64*)HEAP_END_ADDR) return -1;
    8000328c:	fff00513          	li	a0,-1
    80003290:	00008067          	ret
    80003294:	fff00513          	li	a0,-1
}
    80003298:	00008067          	ret

000000008000329c <_ZN7Konzola4initEv>:


Bafer* Konzola::in;
Bafer* Konzola::out;

void Konzola::init() {
    8000329c:	fe010113          	addi	sp,sp,-32
    800032a0:	00113c23          	sd	ra,24(sp)
    800032a4:	00813823          	sd	s0,16(sp)
    800032a8:	00913423          	sd	s1,8(sp)
    800032ac:	01213023          	sd	s2,0(sp)
    800032b0:	02010413          	addi	s0,sp,32
    uint64 head=0,tail=0,len=0;
    Semaphore_k* zauzeto,*slobodno;

public:
    void* operator new (size_t size) {
        return MemoryAllocator::_mem_alloc(size);
    800032b4:	03000513          	li	a0,48
    800032b8:	00000097          	auipc	ra,0x0
    800032bc:	db4080e7          	jalr	-588(ra) # 8000306c <_ZN15MemoryAllocator10_mem_allocEm>
    800032c0:	00050493          	mv	s1,a0
    in=new Bafer(1024);
    800032c4:	40000593          	li	a1,1024
    800032c8:	ffffe097          	auipc	ra,0xffffe
    800032cc:	7ec080e7          	jalr	2028(ra) # 80001ab4 <_ZN5BaferC1Ei>
    800032d0:	00009797          	auipc	a5,0x9
    800032d4:	8097bc23          	sd	s1,-2024(a5) # 8000bae8 <_ZN7Konzola2inE>
    800032d8:	03000513          	li	a0,48
    800032dc:	00000097          	auipc	ra,0x0
    800032e0:	d90080e7          	jalr	-624(ra) # 8000306c <_ZN15MemoryAllocator10_mem_allocEm>
    800032e4:	00050493          	mv	s1,a0
    out=new Bafer(1024);
    800032e8:	40000593          	li	a1,1024
    800032ec:	ffffe097          	auipc	ra,0xffffe
    800032f0:	7c8080e7          	jalr	1992(ra) # 80001ab4 <_ZN5BaferC1Ei>
    800032f4:	00008797          	auipc	a5,0x8
    800032f8:	7e97be23          	sd	s1,2044(a5) # 8000baf0 <_ZN7Konzola3outE>
}
    800032fc:	01813083          	ld	ra,24(sp)
    80003300:	01013403          	ld	s0,16(sp)
    80003304:	00813483          	ld	s1,8(sp)
    80003308:	00013903          	ld	s2,0(sp)
    8000330c:	02010113          	addi	sp,sp,32
    80003310:	00008067          	ret
    80003314:	00050913          	mv	s2,a0
    }


    void operator delete(void* ptr){

        MemoryAllocator::_mem_free(ptr);
    80003318:	00048513          	mv	a0,s1
    8000331c:	00000097          	auipc	ra,0x0
    80003320:	e54080e7          	jalr	-428(ra) # 80003170 <_ZN15MemoryAllocator9_mem_freeEPv>
    80003324:	00090513          	mv	a0,s2
    80003328:	0000a097          	auipc	ra,0xa
    8000332c:	8f0080e7          	jalr	-1808(ra) # 8000cc18 <_Unwind_Resume>
    80003330:	00050913          	mv	s2,a0
    80003334:	00048513          	mv	a0,s1
    80003338:	00000097          	auipc	ra,0x0
    8000333c:	e38080e7          	jalr	-456(ra) # 80003170 <_ZN15MemoryAllocator9_mem_freeEPv>
    80003340:	00090513          	mv	a0,s2
    80003344:	0000a097          	auipc	ra,0xa
    80003348:	8d4080e7          	jalr	-1836(ra) # 8000cc18 <_Unwind_Resume>

000000008000334c <_ZN7Konzola9getCharInEv>:

char Konzola::getCharIn(){
    8000334c:	ff010113          	addi	sp,sp,-16
    80003350:	00113423          	sd	ra,8(sp)
    80003354:	00813023          	sd	s0,0(sp)
    80003358:	01010413          	addi	s0,sp,16
    return in->getChar();
    8000335c:	00008517          	auipc	a0,0x8
    80003360:	78c53503          	ld	a0,1932(a0) # 8000bae8 <_ZN7Konzola2inE>
    80003364:	fffff097          	auipc	ra,0xfffff
    80003368:	840080e7          	jalr	-1984(ra) # 80001ba4 <_ZN5Bafer7getCharEv>
}
    8000336c:	00813083          	ld	ra,8(sp)
    80003370:	00013403          	ld	s0,0(sp)
    80003374:	01010113          	addi	sp,sp,16
    80003378:	00008067          	ret

000000008000337c <_ZN7Konzola10getCharOutEv>:

char Konzola::getCharOut(){
    8000337c:	ff010113          	addi	sp,sp,-16
    80003380:	00113423          	sd	ra,8(sp)
    80003384:	00813023          	sd	s0,0(sp)
    80003388:	01010413          	addi	s0,sp,16
    return out->getChar();
    8000338c:	00008517          	auipc	a0,0x8
    80003390:	76453503          	ld	a0,1892(a0) # 8000baf0 <_ZN7Konzola3outE>
    80003394:	fffff097          	auipc	ra,0xfffff
    80003398:	810080e7          	jalr	-2032(ra) # 80001ba4 <_ZN5Bafer7getCharEv>
}
    8000339c:	00813083          	ld	ra,8(sp)
    800033a0:	00013403          	ld	s0,0(sp)
    800033a4:	01010113          	addi	sp,sp,16
    800033a8:	00008067          	ret

00000000800033ac <_ZN7Konzola9putCharInEc>:

void Konzola::putCharIn(char c){
    800033ac:	ff010113          	addi	sp,sp,-16
    800033b0:	00113423          	sd	ra,8(sp)
    800033b4:	00813023          	sd	s0,0(sp)
    800033b8:	01010413          	addi	s0,sp,16
    800033bc:	00050593          	mv	a1,a0
    in->putChar(c);
    800033c0:	00008517          	auipc	a0,0x8
    800033c4:	72853503          	ld	a0,1832(a0) # 8000bae8 <_ZN7Konzola2inE>
    800033c8:	ffffe097          	auipc	ra,0xffffe
    800033cc:	760080e7          	jalr	1888(ra) # 80001b28 <_ZN5Bafer7putCharEc>
}
    800033d0:	00813083          	ld	ra,8(sp)
    800033d4:	00013403          	ld	s0,0(sp)
    800033d8:	01010113          	addi	sp,sp,16
    800033dc:	00008067          	ret

00000000800033e0 <_ZN7Konzola10putCharOutEc>:

void Konzola::putCharOut(char c){
    800033e0:	ff010113          	addi	sp,sp,-16
    800033e4:	00113423          	sd	ra,8(sp)
    800033e8:	00813023          	sd	s0,0(sp)
    800033ec:	01010413          	addi	s0,sp,16
    800033f0:	00050593          	mv	a1,a0
    out->putChar(c);
    800033f4:	00008517          	auipc	a0,0x8
    800033f8:	6fc53503          	ld	a0,1788(a0) # 8000baf0 <_ZN7Konzola3outE>
    800033fc:	ffffe097          	auipc	ra,0xffffe
    80003400:	72c080e7          	jalr	1836(ra) # 80001b28 <_ZN5Bafer7putCharEc>

    80003404:	00813083          	ld	ra,8(sp)
    80003408:	00013403          	ld	s0,0(sp)
    8000340c:	01010113          	addi	sp,sp,16
    80003410:	00008067          	ret

0000000080003414 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80003414:	fe010113          	addi	sp,sp,-32
    80003418:	00113c23          	sd	ra,24(sp)
    8000341c:	00813823          	sd	s0,16(sp)
    80003420:	00913423          	sd	s1,8(sp)
    80003424:	01213023          	sd	s2,0(sp)
    80003428:	02010413          	addi	s0,sp,32
    8000342c:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80003430:	00000913          	li	s2,0
    80003434:	00c0006f          	j	80003440 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003438:	ffffe097          	auipc	ra,0xffffe
    8000343c:	190080e7          	jalr	400(ra) # 800015c8 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    80003440:	ffffe097          	auipc	ra,0xffffe
    80003444:	304080e7          	jalr	772(ra) # 80001744 <_Z4getcv>
    80003448:	0005059b          	sext.w	a1,a0
    8000344c:	01b00793          	li	a5,27
    80003450:	02f58a63          	beq	a1,a5,80003484 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80003454:	0084b503          	ld	a0,8(s1)
    80003458:	00003097          	auipc	ra,0x3
    8000345c:	5b0080e7          	jalr	1456(ra) # 80006a08 <_ZN6Buffer3putEi>
        i++;
    80003460:	0019071b          	addiw	a4,s2,1
    80003464:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003468:	0004a683          	lw	a3,0(s1)
    8000346c:	0026979b          	slliw	a5,a3,0x2
    80003470:	00d787bb          	addw	a5,a5,a3
    80003474:	0017979b          	slliw	a5,a5,0x1
    80003478:	02f767bb          	remw	a5,a4,a5
    8000347c:	fc0792e3          	bnez	a5,80003440 <_ZL16producerKeyboardPv+0x2c>
    80003480:	fb9ff06f          	j	80003438 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80003484:	00100793          	li	a5,1
    80003488:	00008717          	auipc	a4,0x8
    8000348c:	66f72823          	sw	a5,1648(a4) # 8000baf8 <_ZL9threadEnd>
    data->buffer->put('!');
    80003490:	02100593          	li	a1,33
    80003494:	0084b503          	ld	a0,8(s1)
    80003498:	00003097          	auipc	ra,0x3
    8000349c:	570080e7          	jalr	1392(ra) # 80006a08 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    800034a0:	0104b503          	ld	a0,16(s1)
    800034a4:	ffffe097          	auipc	ra,0xffffe
    800034a8:	228080e7          	jalr	552(ra) # 800016cc <_Z10sem_signalP11Semaphore_k>
}
    800034ac:	01813083          	ld	ra,24(sp)
    800034b0:	01013403          	ld	s0,16(sp)
    800034b4:	00813483          	ld	s1,8(sp)
    800034b8:	00013903          	ld	s2,0(sp)
    800034bc:	02010113          	addi	sp,sp,32
    800034c0:	00008067          	ret

00000000800034c4 <_ZL8producerPv>:

static void producer(void *arg) {
    800034c4:	fe010113          	addi	sp,sp,-32
    800034c8:	00113c23          	sd	ra,24(sp)
    800034cc:	00813823          	sd	s0,16(sp)
    800034d0:	00913423          	sd	s1,8(sp)
    800034d4:	01213023          	sd	s2,0(sp)
    800034d8:	02010413          	addi	s0,sp,32
    800034dc:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800034e0:	00000913          	li	s2,0
    800034e4:	00c0006f          	j	800034f0 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800034e8:	ffffe097          	auipc	ra,0xffffe
    800034ec:	0e0080e7          	jalr	224(ra) # 800015c8 <_Z15thread_dispatchv>
    while (!threadEnd) {
    800034f0:	00008797          	auipc	a5,0x8
    800034f4:	6087a783          	lw	a5,1544(a5) # 8000baf8 <_ZL9threadEnd>
    800034f8:	02079e63          	bnez	a5,80003534 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    800034fc:	0004a583          	lw	a1,0(s1)
    80003500:	0305859b          	addiw	a1,a1,48
    80003504:	0084b503          	ld	a0,8(s1)
    80003508:	00003097          	auipc	ra,0x3
    8000350c:	500080e7          	jalr	1280(ra) # 80006a08 <_ZN6Buffer3putEi>
        i++;
    80003510:	0019071b          	addiw	a4,s2,1
    80003514:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003518:	0004a683          	lw	a3,0(s1)
    8000351c:	0026979b          	slliw	a5,a3,0x2
    80003520:	00d787bb          	addw	a5,a5,a3
    80003524:	0017979b          	slliw	a5,a5,0x1
    80003528:	02f767bb          	remw	a5,a4,a5
    8000352c:	fc0792e3          	bnez	a5,800034f0 <_ZL8producerPv+0x2c>
    80003530:	fb9ff06f          	j	800034e8 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80003534:	0104b503          	ld	a0,16(s1)
    80003538:	ffffe097          	auipc	ra,0xffffe
    8000353c:	194080e7          	jalr	404(ra) # 800016cc <_Z10sem_signalP11Semaphore_k>
}
    80003540:	01813083          	ld	ra,24(sp)
    80003544:	01013403          	ld	s0,16(sp)
    80003548:	00813483          	ld	s1,8(sp)
    8000354c:	00013903          	ld	s2,0(sp)
    80003550:	02010113          	addi	sp,sp,32
    80003554:	00008067          	ret

0000000080003558 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80003558:	fd010113          	addi	sp,sp,-48
    8000355c:	02113423          	sd	ra,40(sp)
    80003560:	02813023          	sd	s0,32(sp)
    80003564:	00913c23          	sd	s1,24(sp)
    80003568:	01213823          	sd	s2,16(sp)
    8000356c:	01313423          	sd	s3,8(sp)
    80003570:	03010413          	addi	s0,sp,48
    80003574:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003578:	00000993          	li	s3,0
    8000357c:	01c0006f          	j	80003598 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80003580:	ffffe097          	auipc	ra,0xffffe
    80003584:	048080e7          	jalr	72(ra) # 800015c8 <_Z15thread_dispatchv>
    80003588:	0500006f          	j	800035d8 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    8000358c:	00a00513          	li	a0,10
    80003590:	ffffe097          	auipc	ra,0xffffe
    80003594:	1ec080e7          	jalr	492(ra) # 8000177c <_Z4putcc>
    while (!threadEnd) {
    80003598:	00008797          	auipc	a5,0x8
    8000359c:	5607a783          	lw	a5,1376(a5) # 8000baf8 <_ZL9threadEnd>
    800035a0:	06079063          	bnez	a5,80003600 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    800035a4:	00893503          	ld	a0,8(s2)
    800035a8:	00003097          	auipc	ra,0x3
    800035ac:	4f0080e7          	jalr	1264(ra) # 80006a98 <_ZN6Buffer3getEv>
        i++;
    800035b0:	0019849b          	addiw	s1,s3,1
    800035b4:	0004899b          	sext.w	s3,s1
        putc(key);
    800035b8:	0ff57513          	andi	a0,a0,255
    800035bc:	ffffe097          	auipc	ra,0xffffe
    800035c0:	1c0080e7          	jalr	448(ra) # 8000177c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    800035c4:	00092703          	lw	a4,0(s2)
    800035c8:	0027179b          	slliw	a5,a4,0x2
    800035cc:	00e787bb          	addw	a5,a5,a4
    800035d0:	02f4e7bb          	remw	a5,s1,a5
    800035d4:	fa0786e3          	beqz	a5,80003580 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    800035d8:	05000793          	li	a5,80
    800035dc:	02f4e4bb          	remw	s1,s1,a5
    800035e0:	fa049ce3          	bnez	s1,80003598 <_ZL8consumerPv+0x40>
    800035e4:	fa9ff06f          	j	8000358c <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    800035e8:	00893503          	ld	a0,8(s2)
    800035ec:	00003097          	auipc	ra,0x3
    800035f0:	4ac080e7          	jalr	1196(ra) # 80006a98 <_ZN6Buffer3getEv>
        putc(key);
    800035f4:	0ff57513          	andi	a0,a0,255
    800035f8:	ffffe097          	auipc	ra,0xffffe
    800035fc:	184080e7          	jalr	388(ra) # 8000177c <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80003600:	00893503          	ld	a0,8(s2)
    80003604:	00003097          	auipc	ra,0x3
    80003608:	520080e7          	jalr	1312(ra) # 80006b24 <_ZN6Buffer6getCntEv>
    8000360c:	fca04ee3          	bgtz	a0,800035e8 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80003610:	01093503          	ld	a0,16(s2)
    80003614:	ffffe097          	auipc	ra,0xffffe
    80003618:	0b8080e7          	jalr	184(ra) # 800016cc <_Z10sem_signalP11Semaphore_k>
}
    8000361c:	02813083          	ld	ra,40(sp)
    80003620:	02013403          	ld	s0,32(sp)
    80003624:	01813483          	ld	s1,24(sp)
    80003628:	01013903          	ld	s2,16(sp)
    8000362c:	00813983          	ld	s3,8(sp)
    80003630:	03010113          	addi	sp,sp,48
    80003634:	00008067          	ret

0000000080003638 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80003638:	f9010113          	addi	sp,sp,-112
    8000363c:	06113423          	sd	ra,104(sp)
    80003640:	06813023          	sd	s0,96(sp)
    80003644:	04913c23          	sd	s1,88(sp)
    80003648:	05213823          	sd	s2,80(sp)
    8000364c:	05313423          	sd	s3,72(sp)
    80003650:	05413023          	sd	s4,64(sp)
    80003654:	03513c23          	sd	s5,56(sp)
    80003658:	03613823          	sd	s6,48(sp)
    8000365c:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80003660:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80003664:	00006517          	auipc	a0,0x6
    80003668:	d1450513          	addi	a0,a0,-748 # 80009378 <CONSOLE_STATUS+0x368>
    8000366c:	00002097          	auipc	ra,0x2
    80003670:	524080e7          	jalr	1316(ra) # 80005b90 <_Z11printStringPKc>
    getString(input, 30);
    80003674:	01e00593          	li	a1,30
    80003678:	fa040493          	addi	s1,s0,-96
    8000367c:	00048513          	mv	a0,s1
    80003680:	00002097          	auipc	ra,0x2
    80003684:	598080e7          	jalr	1432(ra) # 80005c18 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003688:	00048513          	mv	a0,s1
    8000368c:	00002097          	auipc	ra,0x2
    80003690:	664080e7          	jalr	1636(ra) # 80005cf0 <_Z11stringToIntPKc>
    80003694:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80003698:	00006517          	auipc	a0,0x6
    8000369c:	d0050513          	addi	a0,a0,-768 # 80009398 <CONSOLE_STATUS+0x388>
    800036a0:	00002097          	auipc	ra,0x2
    800036a4:	4f0080e7          	jalr	1264(ra) # 80005b90 <_Z11printStringPKc>
    getString(input, 30);
    800036a8:	01e00593          	li	a1,30
    800036ac:	00048513          	mv	a0,s1
    800036b0:	00002097          	auipc	ra,0x2
    800036b4:	568080e7          	jalr	1384(ra) # 80005c18 <_Z9getStringPci>
    n = stringToInt(input);
    800036b8:	00048513          	mv	a0,s1
    800036bc:	00002097          	auipc	ra,0x2
    800036c0:	634080e7          	jalr	1588(ra) # 80005cf0 <_Z11stringToIntPKc>
    800036c4:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    800036c8:	00006517          	auipc	a0,0x6
    800036cc:	cf050513          	addi	a0,a0,-784 # 800093b8 <CONSOLE_STATUS+0x3a8>
    800036d0:	00002097          	auipc	ra,0x2
    800036d4:	4c0080e7          	jalr	1216(ra) # 80005b90 <_Z11printStringPKc>
    800036d8:	00000613          	li	a2,0
    800036dc:	00a00593          	li	a1,10
    800036e0:	00090513          	mv	a0,s2
    800036e4:	00002097          	auipc	ra,0x2
    800036e8:	65c080e7          	jalr	1628(ra) # 80005d40 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800036ec:	00006517          	auipc	a0,0x6
    800036f0:	ce450513          	addi	a0,a0,-796 # 800093d0 <CONSOLE_STATUS+0x3c0>
    800036f4:	00002097          	auipc	ra,0x2
    800036f8:	49c080e7          	jalr	1180(ra) # 80005b90 <_Z11printStringPKc>
    800036fc:	00000613          	li	a2,0
    80003700:	00a00593          	li	a1,10
    80003704:	00048513          	mv	a0,s1
    80003708:	00002097          	auipc	ra,0x2
    8000370c:	638080e7          	jalr	1592(ra) # 80005d40 <_Z8printIntiii>
    printString(".\n");
    80003710:	00006517          	auipc	a0,0x6
    80003714:	cd850513          	addi	a0,a0,-808 # 800093e8 <CONSOLE_STATUS+0x3d8>
    80003718:	00002097          	auipc	ra,0x2
    8000371c:	478080e7          	jalr	1144(ra) # 80005b90 <_Z11printStringPKc>
    if(threadNum > n) {
    80003720:	0324c463          	blt	s1,s2,80003748 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80003724:	03205c63          	blez	s2,8000375c <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80003728:	03800513          	li	a0,56
    8000372c:	fffff097          	auipc	ra,0xfffff
    80003730:	9dc080e7          	jalr	-1572(ra) # 80002108 <_Znwm>
    80003734:	00050a13          	mv	s4,a0
    80003738:	00048593          	mv	a1,s1
    8000373c:	00003097          	auipc	ra,0x3
    80003740:	230080e7          	jalr	560(ra) # 8000696c <_ZN6BufferC1Ei>
    80003744:	0300006f          	j	80003774 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003748:	00006517          	auipc	a0,0x6
    8000374c:	ca850513          	addi	a0,a0,-856 # 800093f0 <CONSOLE_STATUS+0x3e0>
    80003750:	00002097          	auipc	ra,0x2
    80003754:	440080e7          	jalr	1088(ra) # 80005b90 <_Z11printStringPKc>
        return;
    80003758:	0140006f          	j	8000376c <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    8000375c:	00006517          	auipc	a0,0x6
    80003760:	cd450513          	addi	a0,a0,-812 # 80009430 <CONSOLE_STATUS+0x420>
    80003764:	00002097          	auipc	ra,0x2
    80003768:	42c080e7          	jalr	1068(ra) # 80005b90 <_Z11printStringPKc>
        return;
    8000376c:	000b0113          	mv	sp,s6
    80003770:	1500006f          	j	800038c0 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80003774:	00000593          	li	a1,0
    80003778:	00008517          	auipc	a0,0x8
    8000377c:	38850513          	addi	a0,a0,904 # 8000bb00 <_ZL10waitForAll>
    80003780:	ffffe097          	auipc	ra,0xffffe
    80003784:	e94080e7          	jalr	-364(ra) # 80001614 <_Z8sem_openPP11Semaphore_kj>
    thread_t threads[threadNum];
    80003788:	00391793          	slli	a5,s2,0x3
    8000378c:	00f78793          	addi	a5,a5,15
    80003790:	ff07f793          	andi	a5,a5,-16
    80003794:	40f10133          	sub	sp,sp,a5
    80003798:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    8000379c:	0019071b          	addiw	a4,s2,1
    800037a0:	00171793          	slli	a5,a4,0x1
    800037a4:	00e787b3          	add	a5,a5,a4
    800037a8:	00379793          	slli	a5,a5,0x3
    800037ac:	00f78793          	addi	a5,a5,15
    800037b0:	ff07f793          	andi	a5,a5,-16
    800037b4:	40f10133          	sub	sp,sp,a5
    800037b8:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    800037bc:	00191613          	slli	a2,s2,0x1
    800037c0:	012607b3          	add	a5,a2,s2
    800037c4:	00379793          	slli	a5,a5,0x3
    800037c8:	00f987b3          	add	a5,s3,a5
    800037cc:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    800037d0:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    800037d4:	00008717          	auipc	a4,0x8
    800037d8:	32c73703          	ld	a4,812(a4) # 8000bb00 <_ZL10waitForAll>
    800037dc:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    800037e0:	00078613          	mv	a2,a5
    800037e4:	00000597          	auipc	a1,0x0
    800037e8:	d7458593          	addi	a1,a1,-652 # 80003558 <_ZL8consumerPv>
    800037ec:	f9840513          	addi	a0,s0,-104
    800037f0:	ffffe097          	auipc	ra,0xffffe
    800037f4:	d5c080e7          	jalr	-676(ra) # 8000154c <_Z13thread_createPP8Thread_kPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800037f8:	00000493          	li	s1,0
    800037fc:	0280006f          	j	80003824 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80003800:	00000597          	auipc	a1,0x0
    80003804:	c1458593          	addi	a1,a1,-1004 # 80003414 <_ZL16producerKeyboardPv>
                      data + i);
    80003808:	00179613          	slli	a2,a5,0x1
    8000380c:	00f60633          	add	a2,a2,a5
    80003810:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80003814:	00c98633          	add	a2,s3,a2
    80003818:	ffffe097          	auipc	ra,0xffffe
    8000381c:	d34080e7          	jalr	-716(ra) # 8000154c <_Z13thread_createPP8Thread_kPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003820:	0014849b          	addiw	s1,s1,1
    80003824:	0524d263          	bge	s1,s2,80003868 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80003828:	00149793          	slli	a5,s1,0x1
    8000382c:	009787b3          	add	a5,a5,s1
    80003830:	00379793          	slli	a5,a5,0x3
    80003834:	00f987b3          	add	a5,s3,a5
    80003838:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    8000383c:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80003840:	00008717          	auipc	a4,0x8
    80003844:	2c073703          	ld	a4,704(a4) # 8000bb00 <_ZL10waitForAll>
    80003848:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    8000384c:	00048793          	mv	a5,s1
    80003850:	00349513          	slli	a0,s1,0x3
    80003854:	00aa8533          	add	a0,s5,a0
    80003858:	fa9054e3          	blez	s1,80003800 <_Z22producerConsumer_C_APIv+0x1c8>
    8000385c:	00000597          	auipc	a1,0x0
    80003860:	c6858593          	addi	a1,a1,-920 # 800034c4 <_ZL8producerPv>
    80003864:	fa5ff06f          	j	80003808 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80003868:	ffffe097          	auipc	ra,0xffffe
    8000386c:	d60080e7          	jalr	-672(ra) # 800015c8 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80003870:	00000493          	li	s1,0
    80003874:	00994e63          	blt	s2,s1,80003890 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80003878:	00008517          	auipc	a0,0x8
    8000387c:	28853503          	ld	a0,648(a0) # 8000bb00 <_ZL10waitForAll>
    80003880:	ffffe097          	auipc	ra,0xffffe
    80003884:	e10080e7          	jalr	-496(ra) # 80001690 <_Z8sem_waitP11Semaphore_k>
    for (int i = 0; i <= threadNum; i++) {
    80003888:	0014849b          	addiw	s1,s1,1
    8000388c:	fe9ff06f          	j	80003874 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80003890:	00008517          	auipc	a0,0x8
    80003894:	27053503          	ld	a0,624(a0) # 8000bb00 <_ZL10waitForAll>
    80003898:	ffffe097          	auipc	ra,0xffffe
    8000389c:	dbc080e7          	jalr	-580(ra) # 80001654 <_Z9sem_closeP11Semaphore_k>
    delete buffer;
    800038a0:	000a0e63          	beqz	s4,800038bc <_Z22producerConsumer_C_APIv+0x284>
    800038a4:	000a0513          	mv	a0,s4
    800038a8:	00003097          	auipc	ra,0x3
    800038ac:	304080e7          	jalr	772(ra) # 80006bac <_ZN6BufferD1Ev>
    800038b0:	000a0513          	mv	a0,s4
    800038b4:	fffff097          	auipc	ra,0xfffff
    800038b8:	87c080e7          	jalr	-1924(ra) # 80002130 <_ZdlPv>
    800038bc:	000b0113          	mv	sp,s6

}
    800038c0:	f9040113          	addi	sp,s0,-112
    800038c4:	06813083          	ld	ra,104(sp)
    800038c8:	06013403          	ld	s0,96(sp)
    800038cc:	05813483          	ld	s1,88(sp)
    800038d0:	05013903          	ld	s2,80(sp)
    800038d4:	04813983          	ld	s3,72(sp)
    800038d8:	04013a03          	ld	s4,64(sp)
    800038dc:	03813a83          	ld	s5,56(sp)
    800038e0:	03013b03          	ld	s6,48(sp)
    800038e4:	07010113          	addi	sp,sp,112
    800038e8:	00008067          	ret
    800038ec:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    800038f0:	000a0513          	mv	a0,s4
    800038f4:	fffff097          	auipc	ra,0xfffff
    800038f8:	83c080e7          	jalr	-1988(ra) # 80002130 <_ZdlPv>
    800038fc:	00048513          	mv	a0,s1
    80003900:	00009097          	auipc	ra,0x9
    80003904:	318080e7          	jalr	792(ra) # 8000cc18 <_Unwind_Resume>

0000000080003908 <_ZN7WorkerA9mod_fun_AEPv>:
        mod_fun_B(nullptr);
    }
};

void WorkerA::mod_fun_A(void *arg)
{
    80003908:	fe010113          	addi	sp,sp,-32
    8000390c:	00113c23          	sd	ra,24(sp)
    80003910:	00813823          	sd	s0,16(sp)
    80003914:	00913423          	sd	s1,8(sp)
    80003918:	01213023          	sd	s2,0(sp)
    8000391c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++)
    80003920:	00000913          	li	s2,0
    80003924:	0380006f          	j	8000395c <_ZN7WorkerA9mod_fun_AEPv+0x54>
            for (uint64 k = 0; k < 30000; k++)
            {
                /* busy wait */
            }

            thread_dispatch();
    80003928:	ffffe097          	auipc	ra,0xffffe
    8000392c:	ca0080e7          	jalr	-864(ra) # 800015c8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++)
    80003930:	00148493          	addi	s1,s1,1
    80003934:	000027b7          	lui	a5,0x2
    80003938:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000393c:	0097ee63          	bltu	a5,s1,80003958 <_ZN7WorkerA9mod_fun_AEPv+0x50>
            for (uint64 k = 0; k < 30000; k++)
    80003940:	00000713          	li	a4,0
    80003944:	000077b7          	lui	a5,0x7
    80003948:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000394c:	fce7eee3          	bltu	a5,a4,80003928 <_ZN7WorkerA9mod_fun_AEPv+0x20>
    80003950:	00170713          	addi	a4,a4,1
    80003954:	ff1ff06f          	j	80003944 <_ZN7WorkerA9mod_fun_AEPv+0x3c>
    for (uint64 i = 0; i < 10; i++)
    80003958:	00190913          	addi	s2,s2,1
    8000395c:	00900793          	li	a5,9
    80003960:	0527e063          	bltu	a5,s2,800039a0 <_ZN7WorkerA9mod_fun_AEPv+0x98>
        printString("A: i=");
    80003964:	00006517          	auipc	a0,0x6
    80003968:	afc50513          	addi	a0,a0,-1284 # 80009460 <CONSOLE_STATUS+0x450>
    8000396c:	00002097          	auipc	ra,0x2
    80003970:	224080e7          	jalr	548(ra) # 80005b90 <_Z11printStringPKc>
        printInt(i);
    80003974:	00000613          	li	a2,0
    80003978:	00a00593          	li	a1,10
    8000397c:	0009051b          	sext.w	a0,s2
    80003980:	00002097          	auipc	ra,0x2
    80003984:	3c0080e7          	jalr	960(ra) # 80005d40 <_Z8printIntiii>
        printString("\n");
    80003988:	00005517          	auipc	a0,0x5
    8000398c:	7e850513          	addi	a0,a0,2024 # 80009170 <CONSOLE_STATUS+0x160>
    80003990:	00002097          	auipc	ra,0x2
    80003994:	200080e7          	jalr	512(ra) # 80005b90 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    80003998:	00000493          	li	s1,0
    8000399c:	f99ff06f          	j	80003934 <_ZN7WorkerA9mod_fun_AEPv+0x2c>
        }
    }

    printString("A finished!\n");
    800039a0:	00006517          	auipc	a0,0x6
    800039a4:	ac850513          	addi	a0,a0,-1336 # 80009468 <CONSOLE_STATUS+0x458>
    800039a8:	00002097          	auipc	ra,0x2
    800039ac:	1e8080e7          	jalr	488(ra) # 80005b90 <_Z11printStringPKc>
    finishedA = true;
    800039b0:	00100793          	li	a5,1
    800039b4:	00008717          	auipc	a4,0x8
    800039b8:	14f70a23          	sb	a5,340(a4) # 8000bb08 <finishedA>
}
    800039bc:	01813083          	ld	ra,24(sp)
    800039c0:	01013403          	ld	s0,16(sp)
    800039c4:	00813483          	ld	s1,8(sp)
    800039c8:	00013903          	ld	s2,0(sp)
    800039cc:	02010113          	addi	sp,sp,32
    800039d0:	00008067          	ret

00000000800039d4 <_ZN7WorkerB9mod_fun_BEPv>:

void WorkerB::mod_fun_B(void *arg)
{
    800039d4:	fe010113          	addi	sp,sp,-32
    800039d8:	00113c23          	sd	ra,24(sp)
    800039dc:	00813823          	sd	s0,16(sp)
    800039e0:	00913423          	sd	s1,8(sp)
    800039e4:	01213023          	sd	s2,0(sp)
    800039e8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++)
    800039ec:	00000913          	li	s2,0
    800039f0:	0380006f          	j	80003a28 <_ZN7WorkerB9mod_fun_BEPv+0x54>
            for (uint64 k = 0; k < 30000; k++)
            {
                /* busy wait */
            }

            thread_dispatch();
    800039f4:	ffffe097          	auipc	ra,0xffffe
    800039f8:	bd4080e7          	jalr	-1068(ra) # 800015c8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++)
    800039fc:	00148493          	addi	s1,s1,1
    80003a00:	000027b7          	lui	a5,0x2
    80003a04:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003a08:	0097ee63          	bltu	a5,s1,80003a24 <_ZN7WorkerB9mod_fun_BEPv+0x50>
            for (uint64 k = 0; k < 30000; k++)
    80003a0c:	00000713          	li	a4,0
    80003a10:	000077b7          	lui	a5,0x7
    80003a14:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003a18:	fce7eee3          	bltu	a5,a4,800039f4 <_ZN7WorkerB9mod_fun_BEPv+0x20>
    80003a1c:	00170713          	addi	a4,a4,1
    80003a20:	ff1ff06f          	j	80003a10 <_ZN7WorkerB9mod_fun_BEPv+0x3c>
    for (uint64 i = 0; i < 16; i++)
    80003a24:	00190913          	addi	s2,s2,1
    80003a28:	00f00793          	li	a5,15
    80003a2c:	0527e063          	bltu	a5,s2,80003a6c <_ZN7WorkerB9mod_fun_BEPv+0x98>
        printString("B: i=");
    80003a30:	00006517          	auipc	a0,0x6
    80003a34:	a4850513          	addi	a0,a0,-1464 # 80009478 <CONSOLE_STATUS+0x468>
    80003a38:	00002097          	auipc	ra,0x2
    80003a3c:	158080e7          	jalr	344(ra) # 80005b90 <_Z11printStringPKc>
        printInt(i);
    80003a40:	00000613          	li	a2,0
    80003a44:	00a00593          	li	a1,10
    80003a48:	0009051b          	sext.w	a0,s2
    80003a4c:	00002097          	auipc	ra,0x2
    80003a50:	2f4080e7          	jalr	756(ra) # 80005d40 <_Z8printIntiii>
        printString("\n");
    80003a54:	00005517          	auipc	a0,0x5
    80003a58:	71c50513          	addi	a0,a0,1820 # 80009170 <CONSOLE_STATUS+0x160>
    80003a5c:	00002097          	auipc	ra,0x2
    80003a60:	134080e7          	jalr	308(ra) # 80005b90 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    80003a64:	00000493          	li	s1,0
    80003a68:	f99ff06f          	j	80003a00 <_ZN7WorkerB9mod_fun_BEPv+0x2c>
        }
    }

    printString("B finished!\n");
    80003a6c:	00006517          	auipc	a0,0x6
    80003a70:	a1450513          	addi	a0,a0,-1516 # 80009480 <CONSOLE_STATUS+0x470>
    80003a74:	00002097          	auipc	ra,0x2
    80003a78:	11c080e7          	jalr	284(ra) # 80005b90 <_Z11printStringPKc>
    finishedB = true;
    80003a7c:	00100793          	li	a5,1
    80003a80:	00008717          	auipc	a4,0x8
    80003a84:	08f704a3          	sb	a5,137(a4) # 8000bb09 <finishedB>
    thread_dispatch();
    80003a88:	ffffe097          	auipc	ra,0xffffe
    80003a8c:	b40080e7          	jalr	-1216(ra) # 800015c8 <_Z15thread_dispatchv>
}
    80003a90:	01813083          	ld	ra,24(sp)
    80003a94:	01013403          	ld	s0,16(sp)
    80003a98:	00813483          	ld	s1,8(sp)
    80003a9c:	00013903          	ld	s2,0(sp)
    80003aa0:	02010113          	addi	sp,sp,32
    80003aa4:	00008067          	ret

0000000080003aa8 <_Z8testJoinv>:

void  testJoin() {
    80003aa8:	fc010113          	addi	sp,sp,-64
    80003aac:	02113c23          	sd	ra,56(sp)
    80003ab0:	02813823          	sd	s0,48(sp)
    80003ab4:	02913423          	sd	s1,40(sp)
    80003ab8:	03213023          	sd	s2,32(sp)
    80003abc:	01313c23          	sd	s3,24(sp)
    80003ac0:	04010413          	addi	s0,sp,64
    Thread* threads[2];

    threads[0] = new WorkerA();
    80003ac4:	02000513          	li	a0,32
    80003ac8:	ffffe097          	auipc	ra,0xffffe
    80003acc:	640080e7          	jalr	1600(ra) # 80002108 <_Znwm>
    80003ad0:	00050993          	mv	s3,a0
    WorkerA():Thread() {}
    80003ad4:	ffffe097          	auipc	ra,0xffffe
    80003ad8:	f94080e7          	jalr	-108(ra) # 80001a68 <_ZN6ThreadC1Ev>
    80003adc:	00008797          	auipc	a5,0x8
    80003ae0:	d8478793          	addi	a5,a5,-636 # 8000b860 <_ZTV7WorkerA+0x10>
    80003ae4:	00f9b023          	sd	a5,0(s3)
    threads[0] = new WorkerA();
    80003ae8:	fd343023          	sd	s3,-64(s0)
    printString("ThreadA created\n");
    80003aec:	00006517          	auipc	a0,0x6
    80003af0:	9a450513          	addi	a0,a0,-1628 # 80009490 <CONSOLE_STATUS+0x480>
    80003af4:	00002097          	auipc	ra,0x2
    80003af8:	09c080e7          	jalr	156(ra) # 80005b90 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80003afc:	02000513          	li	a0,32
    80003b00:	ffffe097          	auipc	ra,0xffffe
    80003b04:	608080e7          	jalr	1544(ra) # 80002108 <_Znwm>
    80003b08:	00050913          	mv	s2,a0
    WorkerB():Thread() {}
    80003b0c:	ffffe097          	auipc	ra,0xffffe
    80003b10:	f5c080e7          	jalr	-164(ra) # 80001a68 <_ZN6ThreadC1Ev>
    80003b14:	00008797          	auipc	a5,0x8
    80003b18:	d7478793          	addi	a5,a5,-652 # 8000b888 <_ZTV7WorkerB+0x10>
    80003b1c:	00f93023          	sd	a5,0(s2)
    threads[1] = new WorkerB();
    80003b20:	fd243423          	sd	s2,-56(s0)
    printString("ThreadB created\n");
    80003b24:	00006517          	auipc	a0,0x6
    80003b28:	98450513          	addi	a0,a0,-1660 # 800094a8 <CONSOLE_STATUS+0x498>
    80003b2c:	00002097          	auipc	ra,0x2
    80003b30:	064080e7          	jalr	100(ra) # 80005b90 <_Z11printStringPKc>

    for(int i = 0; i < 2; i++) {
    80003b34:	00000493          	li	s1,0
    80003b38:	0300006f          	j	80003b68 <_Z8testJoinv+0xc0>
        threads[i]->start();
    80003b3c:	00349793          	slli	a5,s1,0x3
    80003b40:	fd040713          	addi	a4,s0,-48
    80003b44:	00f707b3          	add	a5,a4,a5
    80003b48:	ff07b503          	ld	a0,-16(a5)
    80003b4c:	ffffe097          	auipc	ra,0xffffe
    80003b50:	e28080e7          	jalr	-472(ra) # 80001974 <_ZN6Thread5startEv>
        printString("jkj");
    80003b54:	00006517          	auipc	a0,0x6
    80003b58:	96c50513          	addi	a0,a0,-1684 # 800094c0 <CONSOLE_STATUS+0x4b0>
    80003b5c:	00002097          	auipc	ra,0x2
    80003b60:	034080e7          	jalr	52(ra) # 80005b90 <_Z11printStringPKc>
    for(int i = 0; i < 2; i++) {
    80003b64:	0014849b          	addiw	s1,s1,1
    80003b68:	00100793          	li	a5,1
    80003b6c:	fc97d8e3          	bge	a5,s1,80003b3c <_Z8testJoinv+0x94>
    }
    printString("lll");
    80003b70:	00006517          	auipc	a0,0x6
    80003b74:	95850513          	addi	a0,a0,-1704 # 800094c8 <CONSOLE_STATUS+0x4b8>
    80003b78:	00002097          	auipc	ra,0x2
    80003b7c:	018080e7          	jalr	24(ra) # 80005b90 <_Z11printStringPKc>

    threads[0]->join(); // Blokiraj main nit(u ovom slucaju) dok se nit 0 ne zavrsi
    80003b80:	00098513          	mv	a0,s3
    80003b84:	ffffe097          	auipc	ra,0xffffe
    80003b88:	e38080e7          	jalr	-456(ra) # 800019bc <_ZN6Thread4joinEv>
    threads[1]->join(); // Blokiraj main nit(u ovom slucaju) dok se nit 1 ne zavrsi
    80003b8c:	00090513          	mv	a0,s2
    80003b90:	ffffe097          	auipc	ra,0xffffe
    80003b94:	e2c080e7          	jalr	-468(ra) # 800019bc <_ZN6Thread4joinEv>
    printString("hjhjhjj");
    80003b98:	00006517          	auipc	a0,0x6
    80003b9c:	93850513          	addi	a0,a0,-1736 # 800094d0 <CONSOLE_STATUS+0x4c0>
    80003ba0:	00002097          	auipc	ra,0x2
    80003ba4:	ff0080e7          	jalr	-16(ra) # 80005b90 <_Z11printStringPKc>
    /*
    for (auto thread: threads)
        delete thread;
*/
    printString("Main Stopped\n");
    80003ba8:	00006517          	auipc	a0,0x6
    80003bac:	93050513          	addi	a0,a0,-1744 # 800094d8 <CONSOLE_STATUS+0x4c8>
    80003bb0:	00002097          	auipc	ra,0x2
    80003bb4:	fe0080e7          	jalr	-32(ra) # 80005b90 <_Z11printStringPKc>
    80003bb8:	03813083          	ld	ra,56(sp)
    80003bbc:	03013403          	ld	s0,48(sp)
    80003bc0:	02813483          	ld	s1,40(sp)
    80003bc4:	02013903          	ld	s2,32(sp)
    80003bc8:	01813983          	ld	s3,24(sp)
    80003bcc:	04010113          	addi	sp,sp,64
    80003bd0:	00008067          	ret
    80003bd4:	00050493          	mv	s1,a0
    threads[0] = new WorkerA();
    80003bd8:	00098513          	mv	a0,s3
    80003bdc:	ffffe097          	auipc	ra,0xffffe
    80003be0:	554080e7          	jalr	1364(ra) # 80002130 <_ZdlPv>
    80003be4:	00048513          	mv	a0,s1
    80003be8:	00009097          	auipc	ra,0x9
    80003bec:	030080e7          	jalr	48(ra) # 8000cc18 <_Unwind_Resume>
    80003bf0:	00050493          	mv	s1,a0
    threads[1] = new WorkerB();
    80003bf4:	00090513          	mv	a0,s2
    80003bf8:	ffffe097          	auipc	ra,0xffffe
    80003bfc:	538080e7          	jalr	1336(ra) # 80002130 <_ZdlPv>
    80003c00:	00048513          	mv	a0,s1
    80003c04:	00009097          	auipc	ra,0x9
    80003c08:	014080e7          	jalr	20(ra) # 8000cc18 <_Unwind_Resume>

0000000080003c0c <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread
    80003c0c:	ff010113          	addi	sp,sp,-16
    80003c10:	00113423          	sd	ra,8(sp)
    80003c14:	00813023          	sd	s0,0(sp)
    80003c18:	01010413          	addi	s0,sp,16
    80003c1c:	00008797          	auipc	a5,0x8
    80003c20:	c4478793          	addi	a5,a5,-956 # 8000b860 <_ZTV7WorkerA+0x10>
    80003c24:	00f53023          	sd	a5,0(a0)
    80003c28:	ffffe097          	auipc	ra,0xffffe
    80003c2c:	cc8080e7          	jalr	-824(ra) # 800018f0 <_ZN6ThreadD1Ev>
    80003c30:	00813083          	ld	ra,8(sp)
    80003c34:	00013403          	ld	s0,0(sp)
    80003c38:	01010113          	addi	sp,sp,16
    80003c3c:	00008067          	ret

0000000080003c40 <_ZN7WorkerAD0Ev>:
    80003c40:	fe010113          	addi	sp,sp,-32
    80003c44:	00113c23          	sd	ra,24(sp)
    80003c48:	00813823          	sd	s0,16(sp)
    80003c4c:	00913423          	sd	s1,8(sp)
    80003c50:	02010413          	addi	s0,sp,32
    80003c54:	00050493          	mv	s1,a0
    80003c58:	00008797          	auipc	a5,0x8
    80003c5c:	c0878793          	addi	a5,a5,-1016 # 8000b860 <_ZTV7WorkerA+0x10>
    80003c60:	00f53023          	sd	a5,0(a0)
    80003c64:	ffffe097          	auipc	ra,0xffffe
    80003c68:	c8c080e7          	jalr	-884(ra) # 800018f0 <_ZN6ThreadD1Ev>
    80003c6c:	00048513          	mv	a0,s1
    80003c70:	ffffe097          	auipc	ra,0xffffe
    80003c74:	4c0080e7          	jalr	1216(ra) # 80002130 <_ZdlPv>
    80003c78:	01813083          	ld	ra,24(sp)
    80003c7c:	01013403          	ld	s0,16(sp)
    80003c80:	00813483          	ld	s1,8(sp)
    80003c84:	02010113          	addi	sp,sp,32
    80003c88:	00008067          	ret

0000000080003c8c <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread
    80003c8c:	ff010113          	addi	sp,sp,-16
    80003c90:	00113423          	sd	ra,8(sp)
    80003c94:	00813023          	sd	s0,0(sp)
    80003c98:	01010413          	addi	s0,sp,16
    80003c9c:	00008797          	auipc	a5,0x8
    80003ca0:	bec78793          	addi	a5,a5,-1044 # 8000b888 <_ZTV7WorkerB+0x10>
    80003ca4:	00f53023          	sd	a5,0(a0)
    80003ca8:	ffffe097          	auipc	ra,0xffffe
    80003cac:	c48080e7          	jalr	-952(ra) # 800018f0 <_ZN6ThreadD1Ev>
    80003cb0:	00813083          	ld	ra,8(sp)
    80003cb4:	00013403          	ld	s0,0(sp)
    80003cb8:	01010113          	addi	sp,sp,16
    80003cbc:	00008067          	ret

0000000080003cc0 <_ZN7WorkerBD0Ev>:
    80003cc0:	fe010113          	addi	sp,sp,-32
    80003cc4:	00113c23          	sd	ra,24(sp)
    80003cc8:	00813823          	sd	s0,16(sp)
    80003ccc:	00913423          	sd	s1,8(sp)
    80003cd0:	02010413          	addi	s0,sp,32
    80003cd4:	00050493          	mv	s1,a0
    80003cd8:	00008797          	auipc	a5,0x8
    80003cdc:	bb078793          	addi	a5,a5,-1104 # 8000b888 <_ZTV7WorkerB+0x10>
    80003ce0:	00f53023          	sd	a5,0(a0)
    80003ce4:	ffffe097          	auipc	ra,0xffffe
    80003ce8:	c0c080e7          	jalr	-1012(ra) # 800018f0 <_ZN6ThreadD1Ev>
    80003cec:	00048513          	mv	a0,s1
    80003cf0:	ffffe097          	auipc	ra,0xffffe
    80003cf4:	440080e7          	jalr	1088(ra) # 80002130 <_ZdlPv>
    80003cf8:	01813083          	ld	ra,24(sp)
    80003cfc:	01013403          	ld	s0,16(sp)
    80003d00:	00813483          	ld	s1,8(sp)
    80003d04:	02010113          	addi	sp,sp,32
    80003d08:	00008067          	ret

0000000080003d0c <_ZN7WorkerA3runEv>:
    void run() override
    80003d0c:	ff010113          	addi	sp,sp,-16
    80003d10:	00113423          	sd	ra,8(sp)
    80003d14:	00813023          	sd	s0,0(sp)
    80003d18:	01010413          	addi	s0,sp,16
        mod_fun_A(nullptr);
    80003d1c:	00000593          	li	a1,0
    80003d20:	00000097          	auipc	ra,0x0
    80003d24:	be8080e7          	jalr	-1048(ra) # 80003908 <_ZN7WorkerA9mod_fun_AEPv>
    }
    80003d28:	00813083          	ld	ra,8(sp)
    80003d2c:	00013403          	ld	s0,0(sp)
    80003d30:	01010113          	addi	sp,sp,16
    80003d34:	00008067          	ret

0000000080003d38 <_ZN7WorkerB3runEv>:
    void run() override
    80003d38:	ff010113          	addi	sp,sp,-16
    80003d3c:	00113423          	sd	ra,8(sp)
    80003d40:	00813023          	sd	s0,0(sp)
    80003d44:	01010413          	addi	s0,sp,16
        mod_fun_B(nullptr);
    80003d48:	00000593          	li	a1,0
    80003d4c:	00000097          	auipc	ra,0x0
    80003d50:	c88080e7          	jalr	-888(ra) # 800039d4 <_ZN7WorkerB9mod_fun_BEPv>
    }
    80003d54:	00813083          	ld	ra,8(sp)
    80003d58:	00013403          	ld	s0,0(sp)
    80003d5c:	01010113          	addi	sp,sp,16
    80003d60:	00008067          	ret

0000000080003d64 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003d64:	fe010113          	addi	sp,sp,-32
    80003d68:	00113c23          	sd	ra,24(sp)
    80003d6c:	00813823          	sd	s0,16(sp)
    80003d70:	00913423          	sd	s1,8(sp)
    80003d74:	01213023          	sd	s2,0(sp)
    80003d78:	02010413          	addi	s0,sp,32
    80003d7c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003d80:	00100793          	li	a5,1
    80003d84:	02a7f863          	bgeu	a5,a0,80003db4 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003d88:	00a00793          	li	a5,10
    80003d8c:	02f577b3          	remu	a5,a0,a5
    80003d90:	02078e63          	beqz	a5,80003dcc <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003d94:	fff48513          	addi	a0,s1,-1
    80003d98:	00000097          	auipc	ra,0x0
    80003d9c:	fcc080e7          	jalr	-52(ra) # 80003d64 <_ZL9fibonaccim>
    80003da0:	00050913          	mv	s2,a0
    80003da4:	ffe48513          	addi	a0,s1,-2
    80003da8:	00000097          	auipc	ra,0x0
    80003dac:	fbc080e7          	jalr	-68(ra) # 80003d64 <_ZL9fibonaccim>
    80003db0:	00a90533          	add	a0,s2,a0
}
    80003db4:	01813083          	ld	ra,24(sp)
    80003db8:	01013403          	ld	s0,16(sp)
    80003dbc:	00813483          	ld	s1,8(sp)
    80003dc0:	00013903          	ld	s2,0(sp)
    80003dc4:	02010113          	addi	sp,sp,32
    80003dc8:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003dcc:	ffffd097          	auipc	ra,0xffffd
    80003dd0:	7fc080e7          	jalr	2044(ra) # 800015c8 <_Z15thread_dispatchv>
    80003dd4:	fc1ff06f          	j	80003d94 <_ZL9fibonaccim+0x30>

0000000080003dd8 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80003dd8:	fe010113          	addi	sp,sp,-32
    80003ddc:	00113c23          	sd	ra,24(sp)
    80003de0:	00813823          	sd	s0,16(sp)
    80003de4:	00913423          	sd	s1,8(sp)
    80003de8:	01213023          	sd	s2,0(sp)
    80003dec:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003df0:	00000913          	li	s2,0
    80003df4:	0380006f          	j	80003e2c <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003df8:	ffffd097          	auipc	ra,0xffffd
    80003dfc:	7d0080e7          	jalr	2000(ra) # 800015c8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003e00:	00148493          	addi	s1,s1,1
    80003e04:	000027b7          	lui	a5,0x2
    80003e08:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003e0c:	0097ee63          	bltu	a5,s1,80003e28 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003e10:	00000713          	li	a4,0
    80003e14:	000077b7          	lui	a5,0x7
    80003e18:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003e1c:	fce7eee3          	bltu	a5,a4,80003df8 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003e20:	00170713          	addi	a4,a4,1
    80003e24:	ff1ff06f          	j	80003e14 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003e28:	00190913          	addi	s2,s2,1
    80003e2c:	00900793          	li	a5,9
    80003e30:	0527e063          	bltu	a5,s2,80003e70 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003e34:	00005517          	auipc	a0,0x5
    80003e38:	62c50513          	addi	a0,a0,1580 # 80009460 <CONSOLE_STATUS+0x450>
    80003e3c:	00002097          	auipc	ra,0x2
    80003e40:	d54080e7          	jalr	-684(ra) # 80005b90 <_Z11printStringPKc>
    80003e44:	00000613          	li	a2,0
    80003e48:	00a00593          	li	a1,10
    80003e4c:	0009051b          	sext.w	a0,s2
    80003e50:	00002097          	auipc	ra,0x2
    80003e54:	ef0080e7          	jalr	-272(ra) # 80005d40 <_Z8printIntiii>
    80003e58:	00005517          	auipc	a0,0x5
    80003e5c:	31850513          	addi	a0,a0,792 # 80009170 <CONSOLE_STATUS+0x160>
    80003e60:	00002097          	auipc	ra,0x2
    80003e64:	d30080e7          	jalr	-720(ra) # 80005b90 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003e68:	00000493          	li	s1,0
    80003e6c:	f99ff06f          	j	80003e04 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80003e70:	00005517          	auipc	a0,0x5
    80003e74:	5f850513          	addi	a0,a0,1528 # 80009468 <CONSOLE_STATUS+0x458>
    80003e78:	00002097          	auipc	ra,0x2
    80003e7c:	d18080e7          	jalr	-744(ra) # 80005b90 <_Z11printStringPKc>
    finishedA = true;
    80003e80:	00100793          	li	a5,1
    80003e84:	00008717          	auipc	a4,0x8
    80003e88:	c8f70323          	sb	a5,-890(a4) # 8000bb0a <_ZL9finishedA>
}
    80003e8c:	01813083          	ld	ra,24(sp)
    80003e90:	01013403          	ld	s0,16(sp)
    80003e94:	00813483          	ld	s1,8(sp)
    80003e98:	00013903          	ld	s2,0(sp)
    80003e9c:	02010113          	addi	sp,sp,32
    80003ea0:	00008067          	ret

0000000080003ea4 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80003ea4:	fe010113          	addi	sp,sp,-32
    80003ea8:	00113c23          	sd	ra,24(sp)
    80003eac:	00813823          	sd	s0,16(sp)
    80003eb0:	00913423          	sd	s1,8(sp)
    80003eb4:	01213023          	sd	s2,0(sp)
    80003eb8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003ebc:	00000913          	li	s2,0
    80003ec0:	0380006f          	j	80003ef8 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003ec4:	ffffd097          	auipc	ra,0xffffd
    80003ec8:	704080e7          	jalr	1796(ra) # 800015c8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003ecc:	00148493          	addi	s1,s1,1
    80003ed0:	000027b7          	lui	a5,0x2
    80003ed4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003ed8:	0097ee63          	bltu	a5,s1,80003ef4 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003edc:	00000713          	li	a4,0
    80003ee0:	000077b7          	lui	a5,0x7
    80003ee4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003ee8:	fce7eee3          	bltu	a5,a4,80003ec4 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80003eec:	00170713          	addi	a4,a4,1
    80003ef0:	ff1ff06f          	j	80003ee0 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003ef4:	00190913          	addi	s2,s2,1
    80003ef8:	00f00793          	li	a5,15
    80003efc:	0527e063          	bltu	a5,s2,80003f3c <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003f00:	00005517          	auipc	a0,0x5
    80003f04:	57850513          	addi	a0,a0,1400 # 80009478 <CONSOLE_STATUS+0x468>
    80003f08:	00002097          	auipc	ra,0x2
    80003f0c:	c88080e7          	jalr	-888(ra) # 80005b90 <_Z11printStringPKc>
    80003f10:	00000613          	li	a2,0
    80003f14:	00a00593          	li	a1,10
    80003f18:	0009051b          	sext.w	a0,s2
    80003f1c:	00002097          	auipc	ra,0x2
    80003f20:	e24080e7          	jalr	-476(ra) # 80005d40 <_Z8printIntiii>
    80003f24:	00005517          	auipc	a0,0x5
    80003f28:	24c50513          	addi	a0,a0,588 # 80009170 <CONSOLE_STATUS+0x160>
    80003f2c:	00002097          	auipc	ra,0x2
    80003f30:	c64080e7          	jalr	-924(ra) # 80005b90 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003f34:	00000493          	li	s1,0
    80003f38:	f99ff06f          	j	80003ed0 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80003f3c:	00005517          	auipc	a0,0x5
    80003f40:	54450513          	addi	a0,a0,1348 # 80009480 <CONSOLE_STATUS+0x470>
    80003f44:	00002097          	auipc	ra,0x2
    80003f48:	c4c080e7          	jalr	-948(ra) # 80005b90 <_Z11printStringPKc>
    finishedB = true;
    80003f4c:	00100793          	li	a5,1
    80003f50:	00008717          	auipc	a4,0x8
    80003f54:	baf70da3          	sb	a5,-1093(a4) # 8000bb0b <_ZL9finishedB>
    thread_dispatch();
    80003f58:	ffffd097          	auipc	ra,0xffffd
    80003f5c:	670080e7          	jalr	1648(ra) # 800015c8 <_Z15thread_dispatchv>
}
    80003f60:	01813083          	ld	ra,24(sp)
    80003f64:	01013403          	ld	s0,16(sp)
    80003f68:	00813483          	ld	s1,8(sp)
    80003f6c:	00013903          	ld	s2,0(sp)
    80003f70:	02010113          	addi	sp,sp,32
    80003f74:	00008067          	ret

0000000080003f78 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80003f78:	fe010113          	addi	sp,sp,-32
    80003f7c:	00113c23          	sd	ra,24(sp)
    80003f80:	00813823          	sd	s0,16(sp)
    80003f84:	00913423          	sd	s1,8(sp)
    80003f88:	01213023          	sd	s2,0(sp)
    80003f8c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003f90:	00000493          	li	s1,0
    80003f94:	0400006f          	j	80003fd4 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003f98:	00005517          	auipc	a0,0x5
    80003f9c:	55050513          	addi	a0,a0,1360 # 800094e8 <CONSOLE_STATUS+0x4d8>
    80003fa0:	00002097          	auipc	ra,0x2
    80003fa4:	bf0080e7          	jalr	-1040(ra) # 80005b90 <_Z11printStringPKc>
    80003fa8:	00000613          	li	a2,0
    80003fac:	00a00593          	li	a1,10
    80003fb0:	00048513          	mv	a0,s1
    80003fb4:	00002097          	auipc	ra,0x2
    80003fb8:	d8c080e7          	jalr	-628(ra) # 80005d40 <_Z8printIntiii>
    80003fbc:	00005517          	auipc	a0,0x5
    80003fc0:	1b450513          	addi	a0,a0,436 # 80009170 <CONSOLE_STATUS+0x160>
    80003fc4:	00002097          	auipc	ra,0x2
    80003fc8:	bcc080e7          	jalr	-1076(ra) # 80005b90 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003fcc:	0014849b          	addiw	s1,s1,1
    80003fd0:	0ff4f493          	andi	s1,s1,255
    80003fd4:	00200793          	li	a5,2
    80003fd8:	fc97f0e3          	bgeu	a5,s1,80003f98 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80003fdc:	00005517          	auipc	a0,0x5
    80003fe0:	51450513          	addi	a0,a0,1300 # 800094f0 <CONSOLE_STATUS+0x4e0>
    80003fe4:	00002097          	auipc	ra,0x2
    80003fe8:	bac080e7          	jalr	-1108(ra) # 80005b90 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003fec:	00700313          	li	t1,7
    thread_dispatch();
    80003ff0:	ffffd097          	auipc	ra,0xffffd
    80003ff4:	5d8080e7          	jalr	1496(ra) # 800015c8 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003ff8:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80003ffc:	00005517          	auipc	a0,0x5
    80004000:	50450513          	addi	a0,a0,1284 # 80009500 <CONSOLE_STATUS+0x4f0>
    80004004:	00002097          	auipc	ra,0x2
    80004008:	b8c080e7          	jalr	-1140(ra) # 80005b90 <_Z11printStringPKc>
    8000400c:	00000613          	li	a2,0
    80004010:	00a00593          	li	a1,10
    80004014:	0009051b          	sext.w	a0,s2
    80004018:	00002097          	auipc	ra,0x2
    8000401c:	d28080e7          	jalr	-728(ra) # 80005d40 <_Z8printIntiii>
    80004020:	00005517          	auipc	a0,0x5
    80004024:	15050513          	addi	a0,a0,336 # 80009170 <CONSOLE_STATUS+0x160>
    80004028:	00002097          	auipc	ra,0x2
    8000402c:	b68080e7          	jalr	-1176(ra) # 80005b90 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80004030:	00c00513          	li	a0,12
    80004034:	00000097          	auipc	ra,0x0
    80004038:	d30080e7          	jalr	-720(ra) # 80003d64 <_ZL9fibonaccim>
    8000403c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004040:	00005517          	auipc	a0,0x5
    80004044:	4c850513          	addi	a0,a0,1224 # 80009508 <CONSOLE_STATUS+0x4f8>
    80004048:	00002097          	auipc	ra,0x2
    8000404c:	b48080e7          	jalr	-1208(ra) # 80005b90 <_Z11printStringPKc>
    80004050:	00000613          	li	a2,0
    80004054:	00a00593          	li	a1,10
    80004058:	0009051b          	sext.w	a0,s2
    8000405c:	00002097          	auipc	ra,0x2
    80004060:	ce4080e7          	jalr	-796(ra) # 80005d40 <_Z8printIntiii>
    80004064:	00005517          	auipc	a0,0x5
    80004068:	10c50513          	addi	a0,a0,268 # 80009170 <CONSOLE_STATUS+0x160>
    8000406c:	00002097          	auipc	ra,0x2
    80004070:	b24080e7          	jalr	-1244(ra) # 80005b90 <_Z11printStringPKc>
    80004074:	0400006f          	j	800040b4 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80004078:	00005517          	auipc	a0,0x5
    8000407c:	47050513          	addi	a0,a0,1136 # 800094e8 <CONSOLE_STATUS+0x4d8>
    80004080:	00002097          	auipc	ra,0x2
    80004084:	b10080e7          	jalr	-1264(ra) # 80005b90 <_Z11printStringPKc>
    80004088:	00000613          	li	a2,0
    8000408c:	00a00593          	li	a1,10
    80004090:	00048513          	mv	a0,s1
    80004094:	00002097          	auipc	ra,0x2
    80004098:	cac080e7          	jalr	-852(ra) # 80005d40 <_Z8printIntiii>
    8000409c:	00005517          	auipc	a0,0x5
    800040a0:	0d450513          	addi	a0,a0,212 # 80009170 <CONSOLE_STATUS+0x160>
    800040a4:	00002097          	auipc	ra,0x2
    800040a8:	aec080e7          	jalr	-1300(ra) # 80005b90 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800040ac:	0014849b          	addiw	s1,s1,1
    800040b0:	0ff4f493          	andi	s1,s1,255
    800040b4:	00500793          	li	a5,5
    800040b8:	fc97f0e3          	bgeu	a5,s1,80004078 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    800040bc:	00005517          	auipc	a0,0x5
    800040c0:	3ac50513          	addi	a0,a0,940 # 80009468 <CONSOLE_STATUS+0x458>
    800040c4:	00002097          	auipc	ra,0x2
    800040c8:	acc080e7          	jalr	-1332(ra) # 80005b90 <_Z11printStringPKc>
    finishedC = true;
    800040cc:	00100793          	li	a5,1
    800040d0:	00008717          	auipc	a4,0x8
    800040d4:	a2f70e23          	sb	a5,-1476(a4) # 8000bb0c <_ZL9finishedC>
    thread_dispatch();
    800040d8:	ffffd097          	auipc	ra,0xffffd
    800040dc:	4f0080e7          	jalr	1264(ra) # 800015c8 <_Z15thread_dispatchv>
}
    800040e0:	01813083          	ld	ra,24(sp)
    800040e4:	01013403          	ld	s0,16(sp)
    800040e8:	00813483          	ld	s1,8(sp)
    800040ec:	00013903          	ld	s2,0(sp)
    800040f0:	02010113          	addi	sp,sp,32
    800040f4:	00008067          	ret

00000000800040f8 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    800040f8:	fe010113          	addi	sp,sp,-32
    800040fc:	00113c23          	sd	ra,24(sp)
    80004100:	00813823          	sd	s0,16(sp)
    80004104:	00913423          	sd	s1,8(sp)
    80004108:	01213023          	sd	s2,0(sp)
    8000410c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004110:	00a00493          	li	s1,10
    80004114:	0400006f          	j	80004154 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004118:	00005517          	auipc	a0,0x5
    8000411c:	40050513          	addi	a0,a0,1024 # 80009518 <CONSOLE_STATUS+0x508>
    80004120:	00002097          	auipc	ra,0x2
    80004124:	a70080e7          	jalr	-1424(ra) # 80005b90 <_Z11printStringPKc>
    80004128:	00000613          	li	a2,0
    8000412c:	00a00593          	li	a1,10
    80004130:	00048513          	mv	a0,s1
    80004134:	00002097          	auipc	ra,0x2
    80004138:	c0c080e7          	jalr	-1012(ra) # 80005d40 <_Z8printIntiii>
    8000413c:	00005517          	auipc	a0,0x5
    80004140:	03450513          	addi	a0,a0,52 # 80009170 <CONSOLE_STATUS+0x160>
    80004144:	00002097          	auipc	ra,0x2
    80004148:	a4c080e7          	jalr	-1460(ra) # 80005b90 <_Z11printStringPKc>
    for (; i < 13; i++) {
    8000414c:	0014849b          	addiw	s1,s1,1
    80004150:	0ff4f493          	andi	s1,s1,255
    80004154:	00c00793          	li	a5,12
    80004158:	fc97f0e3          	bgeu	a5,s1,80004118 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    8000415c:	00005517          	auipc	a0,0x5
    80004160:	3c450513          	addi	a0,a0,964 # 80009520 <CONSOLE_STATUS+0x510>
    80004164:	00002097          	auipc	ra,0x2
    80004168:	a2c080e7          	jalr	-1492(ra) # 80005b90 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    8000416c:	00500313          	li	t1,5
    thread_dispatch();
    80004170:	ffffd097          	auipc	ra,0xffffd
    80004174:	458080e7          	jalr	1112(ra) # 800015c8 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004178:	01000513          	li	a0,16
    8000417c:	00000097          	auipc	ra,0x0
    80004180:	be8080e7          	jalr	-1048(ra) # 80003d64 <_ZL9fibonaccim>
    80004184:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004188:	00005517          	auipc	a0,0x5
    8000418c:	3a850513          	addi	a0,a0,936 # 80009530 <CONSOLE_STATUS+0x520>
    80004190:	00002097          	auipc	ra,0x2
    80004194:	a00080e7          	jalr	-1536(ra) # 80005b90 <_Z11printStringPKc>
    80004198:	00000613          	li	a2,0
    8000419c:	00a00593          	li	a1,10
    800041a0:	0009051b          	sext.w	a0,s2
    800041a4:	00002097          	auipc	ra,0x2
    800041a8:	b9c080e7          	jalr	-1124(ra) # 80005d40 <_Z8printIntiii>
    800041ac:	00005517          	auipc	a0,0x5
    800041b0:	fc450513          	addi	a0,a0,-60 # 80009170 <CONSOLE_STATUS+0x160>
    800041b4:	00002097          	auipc	ra,0x2
    800041b8:	9dc080e7          	jalr	-1572(ra) # 80005b90 <_Z11printStringPKc>
    800041bc:	0400006f          	j	800041fc <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800041c0:	00005517          	auipc	a0,0x5
    800041c4:	35850513          	addi	a0,a0,856 # 80009518 <CONSOLE_STATUS+0x508>
    800041c8:	00002097          	auipc	ra,0x2
    800041cc:	9c8080e7          	jalr	-1592(ra) # 80005b90 <_Z11printStringPKc>
    800041d0:	00000613          	li	a2,0
    800041d4:	00a00593          	li	a1,10
    800041d8:	00048513          	mv	a0,s1
    800041dc:	00002097          	auipc	ra,0x2
    800041e0:	b64080e7          	jalr	-1180(ra) # 80005d40 <_Z8printIntiii>
    800041e4:	00005517          	auipc	a0,0x5
    800041e8:	f8c50513          	addi	a0,a0,-116 # 80009170 <CONSOLE_STATUS+0x160>
    800041ec:	00002097          	auipc	ra,0x2
    800041f0:	9a4080e7          	jalr	-1628(ra) # 80005b90 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800041f4:	0014849b          	addiw	s1,s1,1
    800041f8:	0ff4f493          	andi	s1,s1,255
    800041fc:	00f00793          	li	a5,15
    80004200:	fc97f0e3          	bgeu	a5,s1,800041c0 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80004204:	00005517          	auipc	a0,0x5
    80004208:	33c50513          	addi	a0,a0,828 # 80009540 <CONSOLE_STATUS+0x530>
    8000420c:	00002097          	auipc	ra,0x2
    80004210:	984080e7          	jalr	-1660(ra) # 80005b90 <_Z11printStringPKc>
    finishedD = true;
    80004214:	00100793          	li	a5,1
    80004218:	00008717          	auipc	a4,0x8
    8000421c:	8ef70aa3          	sb	a5,-1803(a4) # 8000bb0d <_ZL9finishedD>
    thread_dispatch();
    80004220:	ffffd097          	auipc	ra,0xffffd
    80004224:	3a8080e7          	jalr	936(ra) # 800015c8 <_Z15thread_dispatchv>
}
    80004228:	01813083          	ld	ra,24(sp)
    8000422c:	01013403          	ld	s0,16(sp)
    80004230:	00813483          	ld	s1,8(sp)
    80004234:	00013903          	ld	s2,0(sp)
    80004238:	02010113          	addi	sp,sp,32
    8000423c:	00008067          	ret

0000000080004240 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80004240:	fc010113          	addi	sp,sp,-64
    80004244:	02113c23          	sd	ra,56(sp)
    80004248:	02813823          	sd	s0,48(sp)
    8000424c:	02913423          	sd	s1,40(sp)
    80004250:	03213023          	sd	s2,32(sp)
    80004254:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80004258:	02000513          	li	a0,32
    8000425c:	ffffe097          	auipc	ra,0xffffe
    80004260:	eac080e7          	jalr	-340(ra) # 80002108 <_Znwm>
    80004264:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80004268:	ffffe097          	auipc	ra,0xffffe
    8000426c:	800080e7          	jalr	-2048(ra) # 80001a68 <_ZN6ThreadC1Ev>
    80004270:	00007797          	auipc	a5,0x7
    80004274:	5f078793          	addi	a5,a5,1520 # 8000b860 <_ZTV7WorkerA+0x10>
    80004278:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    8000427c:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80004280:	00005517          	auipc	a0,0x5
    80004284:	21050513          	addi	a0,a0,528 # 80009490 <CONSOLE_STATUS+0x480>
    80004288:	00002097          	auipc	ra,0x2
    8000428c:	908080e7          	jalr	-1784(ra) # 80005b90 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80004290:	02000513          	li	a0,32
    80004294:	ffffe097          	auipc	ra,0xffffe
    80004298:	e74080e7          	jalr	-396(ra) # 80002108 <_Znwm>
    8000429c:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    800042a0:	ffffd097          	auipc	ra,0xffffd
    800042a4:	7c8080e7          	jalr	1992(ra) # 80001a68 <_ZN6ThreadC1Ev>
    800042a8:	00007797          	auipc	a5,0x7
    800042ac:	5e078793          	addi	a5,a5,1504 # 8000b888 <_ZTV7WorkerB+0x10>
    800042b0:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    800042b4:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    800042b8:	00005517          	auipc	a0,0x5
    800042bc:	1f050513          	addi	a0,a0,496 # 800094a8 <CONSOLE_STATUS+0x498>
    800042c0:	00002097          	auipc	ra,0x2
    800042c4:	8d0080e7          	jalr	-1840(ra) # 80005b90 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    800042c8:	02000513          	li	a0,32
    800042cc:	ffffe097          	auipc	ra,0xffffe
    800042d0:	e3c080e7          	jalr	-452(ra) # 80002108 <_Znwm>
    800042d4:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    800042d8:	ffffd097          	auipc	ra,0xffffd
    800042dc:	790080e7          	jalr	1936(ra) # 80001a68 <_ZN6ThreadC1Ev>
    800042e0:	00007797          	auipc	a5,0x7
    800042e4:	5d078793          	addi	a5,a5,1488 # 8000b8b0 <_ZTV7WorkerC+0x10>
    800042e8:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    800042ec:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    800042f0:	00005517          	auipc	a0,0x5
    800042f4:	26050513          	addi	a0,a0,608 # 80009550 <CONSOLE_STATUS+0x540>
    800042f8:	00002097          	auipc	ra,0x2
    800042fc:	898080e7          	jalr	-1896(ra) # 80005b90 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80004300:	02000513          	li	a0,32
    80004304:	ffffe097          	auipc	ra,0xffffe
    80004308:	e04080e7          	jalr	-508(ra) # 80002108 <_Znwm>
    8000430c:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80004310:	ffffd097          	auipc	ra,0xffffd
    80004314:	758080e7          	jalr	1880(ra) # 80001a68 <_ZN6ThreadC1Ev>
    80004318:	00007797          	auipc	a5,0x7
    8000431c:	5c078793          	addi	a5,a5,1472 # 8000b8d8 <_ZTV7WorkerD+0x10>
    80004320:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80004324:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80004328:	00005517          	auipc	a0,0x5
    8000432c:	24050513          	addi	a0,a0,576 # 80009568 <CONSOLE_STATUS+0x558>
    80004330:	00002097          	auipc	ra,0x2
    80004334:	860080e7          	jalr	-1952(ra) # 80005b90 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80004338:	00000493          	li	s1,0
    8000433c:	00300793          	li	a5,3
    80004340:	0297c663          	blt	a5,s1,8000436c <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80004344:	00349793          	slli	a5,s1,0x3
    80004348:	fe040713          	addi	a4,s0,-32
    8000434c:	00f707b3          	add	a5,a4,a5
    80004350:	fe07b503          	ld	a0,-32(a5)
    80004354:	ffffd097          	auipc	ra,0xffffd
    80004358:	620080e7          	jalr	1568(ra) # 80001974 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    8000435c:	0014849b          	addiw	s1,s1,1
    80004360:	fddff06f          	j	8000433c <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80004364:	ffffd097          	auipc	ra,0xffffd
    80004368:	684080e7          	jalr	1668(ra) # 800019e8 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    8000436c:	00007797          	auipc	a5,0x7
    80004370:	79e7c783          	lbu	a5,1950(a5) # 8000bb0a <_ZL9finishedA>
    80004374:	fe0788e3          	beqz	a5,80004364 <_Z20Threads_CPP_API_testv+0x124>
    80004378:	00007797          	auipc	a5,0x7
    8000437c:	7937c783          	lbu	a5,1939(a5) # 8000bb0b <_ZL9finishedB>
    80004380:	fe0782e3          	beqz	a5,80004364 <_Z20Threads_CPP_API_testv+0x124>
    80004384:	00007797          	auipc	a5,0x7
    80004388:	7887c783          	lbu	a5,1928(a5) # 8000bb0c <_ZL9finishedC>
    8000438c:	fc078ce3          	beqz	a5,80004364 <_Z20Threads_CPP_API_testv+0x124>
    80004390:	00007797          	auipc	a5,0x7
    80004394:	77d7c783          	lbu	a5,1917(a5) # 8000bb0d <_ZL9finishedD>
    80004398:	fc0786e3          	beqz	a5,80004364 <_Z20Threads_CPP_API_testv+0x124>
    8000439c:	fc040493          	addi	s1,s0,-64
    800043a0:	0080006f          	j	800043a8 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    800043a4:	00848493          	addi	s1,s1,8
    800043a8:	fe040793          	addi	a5,s0,-32
    800043ac:	08f48663          	beq	s1,a5,80004438 <_Z20Threads_CPP_API_testv+0x1f8>
    800043b0:	0004b503          	ld	a0,0(s1)
    800043b4:	fe0508e3          	beqz	a0,800043a4 <_Z20Threads_CPP_API_testv+0x164>
    800043b8:	00053783          	ld	a5,0(a0)
    800043bc:	0087b783          	ld	a5,8(a5)
    800043c0:	000780e7          	jalr	a5
    800043c4:	fe1ff06f          	j	800043a4 <_Z20Threads_CPP_API_testv+0x164>
    800043c8:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    800043cc:	00048513          	mv	a0,s1
    800043d0:	ffffe097          	auipc	ra,0xffffe
    800043d4:	d60080e7          	jalr	-672(ra) # 80002130 <_ZdlPv>
    800043d8:	00090513          	mv	a0,s2
    800043dc:	00009097          	auipc	ra,0x9
    800043e0:	83c080e7          	jalr	-1988(ra) # 8000cc18 <_Unwind_Resume>
    800043e4:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    800043e8:	00048513          	mv	a0,s1
    800043ec:	ffffe097          	auipc	ra,0xffffe
    800043f0:	d44080e7          	jalr	-700(ra) # 80002130 <_ZdlPv>
    800043f4:	00090513          	mv	a0,s2
    800043f8:	00009097          	auipc	ra,0x9
    800043fc:	820080e7          	jalr	-2016(ra) # 8000cc18 <_Unwind_Resume>
    80004400:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80004404:	00048513          	mv	a0,s1
    80004408:	ffffe097          	auipc	ra,0xffffe
    8000440c:	d28080e7          	jalr	-728(ra) # 80002130 <_ZdlPv>
    80004410:	00090513          	mv	a0,s2
    80004414:	00009097          	auipc	ra,0x9
    80004418:	804080e7          	jalr	-2044(ra) # 8000cc18 <_Unwind_Resume>
    8000441c:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80004420:	00048513          	mv	a0,s1
    80004424:	ffffe097          	auipc	ra,0xffffe
    80004428:	d0c080e7          	jalr	-756(ra) # 80002130 <_ZdlPv>
    8000442c:	00090513          	mv	a0,s2
    80004430:	00008097          	auipc	ra,0x8
    80004434:	7e8080e7          	jalr	2024(ra) # 8000cc18 <_Unwind_Resume>
}
    80004438:	03813083          	ld	ra,56(sp)
    8000443c:	03013403          	ld	s0,48(sp)
    80004440:	02813483          	ld	s1,40(sp)
    80004444:	02013903          	ld	s2,32(sp)
    80004448:	04010113          	addi	sp,sp,64
    8000444c:	00008067          	ret

0000000080004450 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80004450:	ff010113          	addi	sp,sp,-16
    80004454:	00113423          	sd	ra,8(sp)
    80004458:	00813023          	sd	s0,0(sp)
    8000445c:	01010413          	addi	s0,sp,16
    80004460:	00007797          	auipc	a5,0x7
    80004464:	45078793          	addi	a5,a5,1104 # 8000b8b0 <_ZTV7WorkerC+0x10>
    80004468:	00f53023          	sd	a5,0(a0)
    8000446c:	ffffd097          	auipc	ra,0xffffd
    80004470:	484080e7          	jalr	1156(ra) # 800018f0 <_ZN6ThreadD1Ev>
    80004474:	00813083          	ld	ra,8(sp)
    80004478:	00013403          	ld	s0,0(sp)
    8000447c:	01010113          	addi	sp,sp,16
    80004480:	00008067          	ret

0000000080004484 <_ZN7WorkerCD0Ev>:
    80004484:	fe010113          	addi	sp,sp,-32
    80004488:	00113c23          	sd	ra,24(sp)
    8000448c:	00813823          	sd	s0,16(sp)
    80004490:	00913423          	sd	s1,8(sp)
    80004494:	02010413          	addi	s0,sp,32
    80004498:	00050493          	mv	s1,a0
    8000449c:	00007797          	auipc	a5,0x7
    800044a0:	41478793          	addi	a5,a5,1044 # 8000b8b0 <_ZTV7WorkerC+0x10>
    800044a4:	00f53023          	sd	a5,0(a0)
    800044a8:	ffffd097          	auipc	ra,0xffffd
    800044ac:	448080e7          	jalr	1096(ra) # 800018f0 <_ZN6ThreadD1Ev>
    800044b0:	00048513          	mv	a0,s1
    800044b4:	ffffe097          	auipc	ra,0xffffe
    800044b8:	c7c080e7          	jalr	-900(ra) # 80002130 <_ZdlPv>
    800044bc:	01813083          	ld	ra,24(sp)
    800044c0:	01013403          	ld	s0,16(sp)
    800044c4:	00813483          	ld	s1,8(sp)
    800044c8:	02010113          	addi	sp,sp,32
    800044cc:	00008067          	ret

00000000800044d0 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    800044d0:	ff010113          	addi	sp,sp,-16
    800044d4:	00113423          	sd	ra,8(sp)
    800044d8:	00813023          	sd	s0,0(sp)
    800044dc:	01010413          	addi	s0,sp,16
    800044e0:	00007797          	auipc	a5,0x7
    800044e4:	3f878793          	addi	a5,a5,1016 # 8000b8d8 <_ZTV7WorkerD+0x10>
    800044e8:	00f53023          	sd	a5,0(a0)
    800044ec:	ffffd097          	auipc	ra,0xffffd
    800044f0:	404080e7          	jalr	1028(ra) # 800018f0 <_ZN6ThreadD1Ev>
    800044f4:	00813083          	ld	ra,8(sp)
    800044f8:	00013403          	ld	s0,0(sp)
    800044fc:	01010113          	addi	sp,sp,16
    80004500:	00008067          	ret

0000000080004504 <_ZN7WorkerDD0Ev>:
    80004504:	fe010113          	addi	sp,sp,-32
    80004508:	00113c23          	sd	ra,24(sp)
    8000450c:	00813823          	sd	s0,16(sp)
    80004510:	00913423          	sd	s1,8(sp)
    80004514:	02010413          	addi	s0,sp,32
    80004518:	00050493          	mv	s1,a0
    8000451c:	00007797          	auipc	a5,0x7
    80004520:	3bc78793          	addi	a5,a5,956 # 8000b8d8 <_ZTV7WorkerD+0x10>
    80004524:	00f53023          	sd	a5,0(a0)
    80004528:	ffffd097          	auipc	ra,0xffffd
    8000452c:	3c8080e7          	jalr	968(ra) # 800018f0 <_ZN6ThreadD1Ev>
    80004530:	00048513          	mv	a0,s1
    80004534:	ffffe097          	auipc	ra,0xffffe
    80004538:	bfc080e7          	jalr	-1028(ra) # 80002130 <_ZdlPv>
    8000453c:	01813083          	ld	ra,24(sp)
    80004540:	01013403          	ld	s0,16(sp)
    80004544:	00813483          	ld	s1,8(sp)
    80004548:	02010113          	addi	sp,sp,32
    8000454c:	00008067          	ret

0000000080004550 <_ZN7WorkerC3runEv>:
    void run() override {
    80004550:	ff010113          	addi	sp,sp,-16
    80004554:	00113423          	sd	ra,8(sp)
    80004558:	00813023          	sd	s0,0(sp)
    8000455c:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80004560:	00000593          	li	a1,0
    80004564:	00000097          	auipc	ra,0x0
    80004568:	a14080e7          	jalr	-1516(ra) # 80003f78 <_ZN7WorkerC11workerBodyCEPv>
    }
    8000456c:	00813083          	ld	ra,8(sp)
    80004570:	00013403          	ld	s0,0(sp)
    80004574:	01010113          	addi	sp,sp,16
    80004578:	00008067          	ret

000000008000457c <_ZN7WorkerD3runEv>:
    void run() override {
    8000457c:	ff010113          	addi	sp,sp,-16
    80004580:	00113423          	sd	ra,8(sp)
    80004584:	00813023          	sd	s0,0(sp)
    80004588:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    8000458c:	00000593          	li	a1,0
    80004590:	00000097          	auipc	ra,0x0
    80004594:	b68080e7          	jalr	-1176(ra) # 800040f8 <_ZN7WorkerD11workerBodyDEPv>
    }
    80004598:	00813083          	ld	ra,8(sp)
    8000459c:	00013403          	ld	s0,0(sp)
    800045a0:	01010113          	addi	sp,sp,16
    800045a4:	00008067          	ret

00000000800045a8 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    800045a8:	f8010113          	addi	sp,sp,-128
    800045ac:	06113c23          	sd	ra,120(sp)
    800045b0:	06813823          	sd	s0,112(sp)
    800045b4:	06913423          	sd	s1,104(sp)
    800045b8:	07213023          	sd	s2,96(sp)
    800045bc:	05313c23          	sd	s3,88(sp)
    800045c0:	05413823          	sd	s4,80(sp)
    800045c4:	05513423          	sd	s5,72(sp)
    800045c8:	05613023          	sd	s6,64(sp)
    800045cc:	03713c23          	sd	s7,56(sp)
    800045d0:	03813823          	sd	s8,48(sp)
    800045d4:	03913423          	sd	s9,40(sp)
    800045d8:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    800045dc:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    800045e0:	00005517          	auipc	a0,0x5
    800045e4:	d9850513          	addi	a0,a0,-616 # 80009378 <CONSOLE_STATUS+0x368>
    800045e8:	00001097          	auipc	ra,0x1
    800045ec:	5a8080e7          	jalr	1448(ra) # 80005b90 <_Z11printStringPKc>
    getString(input, 30);
    800045f0:	01e00593          	li	a1,30
    800045f4:	f8040493          	addi	s1,s0,-128
    800045f8:	00048513          	mv	a0,s1
    800045fc:	00001097          	auipc	ra,0x1
    80004600:	61c080e7          	jalr	1564(ra) # 80005c18 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004604:	00048513          	mv	a0,s1
    80004608:	00001097          	auipc	ra,0x1
    8000460c:	6e8080e7          	jalr	1768(ra) # 80005cf0 <_Z11stringToIntPKc>
    80004610:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80004614:	00005517          	auipc	a0,0x5
    80004618:	d8450513          	addi	a0,a0,-636 # 80009398 <CONSOLE_STATUS+0x388>
    8000461c:	00001097          	auipc	ra,0x1
    80004620:	574080e7          	jalr	1396(ra) # 80005b90 <_Z11printStringPKc>
    getString(input, 30);
    80004624:	01e00593          	li	a1,30
    80004628:	00048513          	mv	a0,s1
    8000462c:	00001097          	auipc	ra,0x1
    80004630:	5ec080e7          	jalr	1516(ra) # 80005c18 <_Z9getStringPci>
    n = stringToInt(input);
    80004634:	00048513          	mv	a0,s1
    80004638:	00001097          	auipc	ra,0x1
    8000463c:	6b8080e7          	jalr	1720(ra) # 80005cf0 <_Z11stringToIntPKc>
    80004640:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80004644:	00005517          	auipc	a0,0x5
    80004648:	d7450513          	addi	a0,a0,-652 # 800093b8 <CONSOLE_STATUS+0x3a8>
    8000464c:	00001097          	auipc	ra,0x1
    80004650:	544080e7          	jalr	1348(ra) # 80005b90 <_Z11printStringPKc>
    printInt(threadNum);
    80004654:	00000613          	li	a2,0
    80004658:	00a00593          	li	a1,10
    8000465c:	00098513          	mv	a0,s3
    80004660:	00001097          	auipc	ra,0x1
    80004664:	6e0080e7          	jalr	1760(ra) # 80005d40 <_Z8printIntiii>
    printString(" i velicina bafera ");
    80004668:	00005517          	auipc	a0,0x5
    8000466c:	d6850513          	addi	a0,a0,-664 # 800093d0 <CONSOLE_STATUS+0x3c0>
    80004670:	00001097          	auipc	ra,0x1
    80004674:	520080e7          	jalr	1312(ra) # 80005b90 <_Z11printStringPKc>
    printInt(n);
    80004678:	00000613          	li	a2,0
    8000467c:	00a00593          	li	a1,10
    80004680:	00048513          	mv	a0,s1
    80004684:	00001097          	auipc	ra,0x1
    80004688:	6bc080e7          	jalr	1724(ra) # 80005d40 <_Z8printIntiii>
    printString(".\n");
    8000468c:	00005517          	auipc	a0,0x5
    80004690:	d5c50513          	addi	a0,a0,-676 # 800093e8 <CONSOLE_STATUS+0x3d8>
    80004694:	00001097          	auipc	ra,0x1
    80004698:	4fc080e7          	jalr	1276(ra) # 80005b90 <_Z11printStringPKc>
    if (threadNum > n) {
    8000469c:	0334c463          	blt	s1,s3,800046c4 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    800046a0:	03305c63          	blez	s3,800046d8 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    800046a4:	03800513          	li	a0,56
    800046a8:	ffffe097          	auipc	ra,0xffffe
    800046ac:	a60080e7          	jalr	-1440(ra) # 80002108 <_Znwm>
    800046b0:	00050a93          	mv	s5,a0
    800046b4:	00048593          	mv	a1,s1
    800046b8:	00001097          	auipc	ra,0x1
    800046bc:	7a8080e7          	jalr	1960(ra) # 80005e60 <_ZN9BufferCPPC1Ei>
    800046c0:	0300006f          	j	800046f0 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800046c4:	00005517          	auipc	a0,0x5
    800046c8:	d2c50513          	addi	a0,a0,-724 # 800093f0 <CONSOLE_STATUS+0x3e0>
    800046cc:	00001097          	auipc	ra,0x1
    800046d0:	4c4080e7          	jalr	1220(ra) # 80005b90 <_Z11printStringPKc>
        return;
    800046d4:	0140006f          	j	800046e8 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800046d8:	00005517          	auipc	a0,0x5
    800046dc:	d5850513          	addi	a0,a0,-680 # 80009430 <CONSOLE_STATUS+0x420>
    800046e0:	00001097          	auipc	ra,0x1
    800046e4:	4b0080e7          	jalr	1200(ra) # 80005b90 <_Z11printStringPKc>
        return;
    800046e8:	000c0113          	mv	sp,s8
    800046ec:	2140006f          	j	80004900 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    800046f0:	01000513          	li	a0,16
    800046f4:	ffffe097          	auipc	ra,0xffffe
    800046f8:	a14080e7          	jalr	-1516(ra) # 80002108 <_Znwm>
    800046fc:	00050913          	mv	s2,a0
    80004700:	00000593          	li	a1,0
    80004704:	ffffd097          	auipc	ra,0xffffd
    80004708:	130080e7          	jalr	304(ra) # 80001834 <_ZN9SemaphoreC1Ej>
    8000470c:	00007797          	auipc	a5,0x7
    80004710:	4127b623          	sd	s2,1036(a5) # 8000bb18 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80004714:	00399793          	slli	a5,s3,0x3
    80004718:	00f78793          	addi	a5,a5,15
    8000471c:	ff07f793          	andi	a5,a5,-16
    80004720:	40f10133          	sub	sp,sp,a5
    80004724:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80004728:	0019871b          	addiw	a4,s3,1
    8000472c:	00171793          	slli	a5,a4,0x1
    80004730:	00e787b3          	add	a5,a5,a4
    80004734:	00379793          	slli	a5,a5,0x3
    80004738:	00f78793          	addi	a5,a5,15
    8000473c:	ff07f793          	andi	a5,a5,-16
    80004740:	40f10133          	sub	sp,sp,a5
    80004744:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80004748:	00199493          	slli	s1,s3,0x1
    8000474c:	013484b3          	add	s1,s1,s3
    80004750:	00349493          	slli	s1,s1,0x3
    80004754:	009b04b3          	add	s1,s6,s1
    80004758:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    8000475c:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    80004760:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004764:	02800513          	li	a0,40
    80004768:	ffffe097          	auipc	ra,0xffffe
    8000476c:	9a0080e7          	jalr	-1632(ra) # 80002108 <_Znwm>
    80004770:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80004774:	ffffd097          	auipc	ra,0xffffd
    80004778:	2f4080e7          	jalr	756(ra) # 80001a68 <_ZN6ThreadC1Ev>
    8000477c:	00007797          	auipc	a5,0x7
    80004780:	1d478793          	addi	a5,a5,468 # 8000b950 <_ZTV8Consumer+0x10>
    80004784:	00fbb023          	sd	a5,0(s7)
    80004788:	029bb023          	sd	s1,32(s7)
    consumer->start();
    8000478c:	000b8513          	mv	a0,s7
    80004790:	ffffd097          	auipc	ra,0xffffd
    80004794:	1e4080e7          	jalr	484(ra) # 80001974 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80004798:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    8000479c:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    800047a0:	00007797          	auipc	a5,0x7
    800047a4:	3787b783          	ld	a5,888(a5) # 8000bb18 <_ZL10waitForAll>
    800047a8:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800047ac:	02800513          	li	a0,40
    800047b0:	ffffe097          	auipc	ra,0xffffe
    800047b4:	958080e7          	jalr	-1704(ra) # 80002108 <_Znwm>
    800047b8:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    800047bc:	ffffd097          	auipc	ra,0xffffd
    800047c0:	2ac080e7          	jalr	684(ra) # 80001a68 <_ZN6ThreadC1Ev>
    800047c4:	00007797          	auipc	a5,0x7
    800047c8:	13c78793          	addi	a5,a5,316 # 8000b900 <_ZTV16ProducerKeyborad+0x10>
    800047cc:	00f4b023          	sd	a5,0(s1)
    800047d0:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800047d4:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    800047d8:	00048513          	mv	a0,s1
    800047dc:	ffffd097          	auipc	ra,0xffffd
    800047e0:	198080e7          	jalr	408(ra) # 80001974 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    800047e4:	00100913          	li	s2,1
    800047e8:	0300006f          	j	80004818 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    800047ec:	00007797          	auipc	a5,0x7
    800047f0:	13c78793          	addi	a5,a5,316 # 8000b928 <_ZTV8Producer+0x10>
    800047f4:	00fcb023          	sd	a5,0(s9)
    800047f8:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    800047fc:	00391793          	slli	a5,s2,0x3
    80004800:	00fa07b3          	add	a5,s4,a5
    80004804:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80004808:	000c8513          	mv	a0,s9
    8000480c:	ffffd097          	auipc	ra,0xffffd
    80004810:	168080e7          	jalr	360(ra) # 80001974 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004814:	0019091b          	addiw	s2,s2,1
    80004818:	05395263          	bge	s2,s3,8000485c <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    8000481c:	00191493          	slli	s1,s2,0x1
    80004820:	012484b3          	add	s1,s1,s2
    80004824:	00349493          	slli	s1,s1,0x3
    80004828:	009b04b3          	add	s1,s6,s1
    8000482c:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80004830:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80004834:	00007797          	auipc	a5,0x7
    80004838:	2e47b783          	ld	a5,740(a5) # 8000bb18 <_ZL10waitForAll>
    8000483c:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80004840:	02800513          	li	a0,40
    80004844:	ffffe097          	auipc	ra,0xffffe
    80004848:	8c4080e7          	jalr	-1852(ra) # 80002108 <_Znwm>
    8000484c:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004850:	ffffd097          	auipc	ra,0xffffd
    80004854:	218080e7          	jalr	536(ra) # 80001a68 <_ZN6ThreadC1Ev>
    80004858:	f95ff06f          	j	800047ec <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    8000485c:	ffffd097          	auipc	ra,0xffffd
    80004860:	18c080e7          	jalr	396(ra) # 800019e8 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004864:	00000493          	li	s1,0
    80004868:	0099ce63          	blt	s3,s1,80004884 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    8000486c:	00007517          	auipc	a0,0x7
    80004870:	2ac53503          	ld	a0,684(a0) # 8000bb18 <_ZL10waitForAll>
    80004874:	ffffd097          	auipc	ra,0xffffd
    80004878:	ff8080e7          	jalr	-8(ra) # 8000186c <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    8000487c:	0014849b          	addiw	s1,s1,1
    80004880:	fe9ff06f          	j	80004868 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80004884:	00007517          	auipc	a0,0x7
    80004888:	29453503          	ld	a0,660(a0) # 8000bb18 <_ZL10waitForAll>
    8000488c:	00050863          	beqz	a0,8000489c <_Z20testConsumerProducerv+0x2f4>
    80004890:	00053783          	ld	a5,0(a0)
    80004894:	0087b783          	ld	a5,8(a5)
    80004898:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    8000489c:	00000493          	li	s1,0
    800048a0:	0080006f          	j	800048a8 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    800048a4:	0014849b          	addiw	s1,s1,1
    800048a8:	0334d263          	bge	s1,s3,800048cc <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    800048ac:	00349793          	slli	a5,s1,0x3
    800048b0:	00fa07b3          	add	a5,s4,a5
    800048b4:	0007b503          	ld	a0,0(a5)
    800048b8:	fe0506e3          	beqz	a0,800048a4 <_Z20testConsumerProducerv+0x2fc>
    800048bc:	00053783          	ld	a5,0(a0)
    800048c0:	0087b783          	ld	a5,8(a5)
    800048c4:	000780e7          	jalr	a5
    800048c8:	fddff06f          	j	800048a4 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    800048cc:	000b8a63          	beqz	s7,800048e0 <_Z20testConsumerProducerv+0x338>
    800048d0:	000bb783          	ld	a5,0(s7)
    800048d4:	0087b783          	ld	a5,8(a5)
    800048d8:	000b8513          	mv	a0,s7
    800048dc:	000780e7          	jalr	a5
    delete buffer;
    800048e0:	000a8e63          	beqz	s5,800048fc <_Z20testConsumerProducerv+0x354>
    800048e4:	000a8513          	mv	a0,s5
    800048e8:	00002097          	auipc	ra,0x2
    800048ec:	870080e7          	jalr	-1936(ra) # 80006158 <_ZN9BufferCPPD1Ev>
    800048f0:	000a8513          	mv	a0,s5
    800048f4:	ffffe097          	auipc	ra,0xffffe
    800048f8:	83c080e7          	jalr	-1988(ra) # 80002130 <_ZdlPv>
    800048fc:	000c0113          	mv	sp,s8
}
    80004900:	f8040113          	addi	sp,s0,-128
    80004904:	07813083          	ld	ra,120(sp)
    80004908:	07013403          	ld	s0,112(sp)
    8000490c:	06813483          	ld	s1,104(sp)
    80004910:	06013903          	ld	s2,96(sp)
    80004914:	05813983          	ld	s3,88(sp)
    80004918:	05013a03          	ld	s4,80(sp)
    8000491c:	04813a83          	ld	s5,72(sp)
    80004920:	04013b03          	ld	s6,64(sp)
    80004924:	03813b83          	ld	s7,56(sp)
    80004928:	03013c03          	ld	s8,48(sp)
    8000492c:	02813c83          	ld	s9,40(sp)
    80004930:	08010113          	addi	sp,sp,128
    80004934:	00008067          	ret
    80004938:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    8000493c:	000a8513          	mv	a0,s5
    80004940:	ffffd097          	auipc	ra,0xffffd
    80004944:	7f0080e7          	jalr	2032(ra) # 80002130 <_ZdlPv>
    80004948:	00048513          	mv	a0,s1
    8000494c:	00008097          	auipc	ra,0x8
    80004950:	2cc080e7          	jalr	716(ra) # 8000cc18 <_Unwind_Resume>
    80004954:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80004958:	00090513          	mv	a0,s2
    8000495c:	ffffd097          	auipc	ra,0xffffd
    80004960:	7d4080e7          	jalr	2004(ra) # 80002130 <_ZdlPv>
    80004964:	00048513          	mv	a0,s1
    80004968:	00008097          	auipc	ra,0x8
    8000496c:	2b0080e7          	jalr	688(ra) # 8000cc18 <_Unwind_Resume>
    80004970:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004974:	000b8513          	mv	a0,s7
    80004978:	ffffd097          	auipc	ra,0xffffd
    8000497c:	7b8080e7          	jalr	1976(ra) # 80002130 <_ZdlPv>
    80004980:	00048513          	mv	a0,s1
    80004984:	00008097          	auipc	ra,0x8
    80004988:	294080e7          	jalr	660(ra) # 8000cc18 <_Unwind_Resume>
    8000498c:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004990:	00048513          	mv	a0,s1
    80004994:	ffffd097          	auipc	ra,0xffffd
    80004998:	79c080e7          	jalr	1948(ra) # 80002130 <_ZdlPv>
    8000499c:	00090513          	mv	a0,s2
    800049a0:	00008097          	auipc	ra,0x8
    800049a4:	278080e7          	jalr	632(ra) # 8000cc18 <_Unwind_Resume>
    800049a8:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    800049ac:	000c8513          	mv	a0,s9
    800049b0:	ffffd097          	auipc	ra,0xffffd
    800049b4:	780080e7          	jalr	1920(ra) # 80002130 <_ZdlPv>
    800049b8:	00048513          	mv	a0,s1
    800049bc:	00008097          	auipc	ra,0x8
    800049c0:	25c080e7          	jalr	604(ra) # 8000cc18 <_Unwind_Resume>

00000000800049c4 <_ZN8Consumer3runEv>:
    void run() override {
    800049c4:	fd010113          	addi	sp,sp,-48
    800049c8:	02113423          	sd	ra,40(sp)
    800049cc:	02813023          	sd	s0,32(sp)
    800049d0:	00913c23          	sd	s1,24(sp)
    800049d4:	01213823          	sd	s2,16(sp)
    800049d8:	01313423          	sd	s3,8(sp)
    800049dc:	03010413          	addi	s0,sp,48
    800049e0:	00050913          	mv	s2,a0
        int i = 0;
    800049e4:	00000993          	li	s3,0
    800049e8:	0100006f          	j	800049f8 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    800049ec:	00a00513          	li	a0,10
    800049f0:	ffffd097          	auipc	ra,0xffffd
    800049f4:	544080e7          	jalr	1348(ra) # 80001f34 <_ZN7Console4putcEc>
        while (!threadEnd) {
    800049f8:	00007797          	auipc	a5,0x7
    800049fc:	1187a783          	lw	a5,280(a5) # 8000bb10 <_ZL9threadEnd>
    80004a00:	04079a63          	bnez	a5,80004a54 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80004a04:	02093783          	ld	a5,32(s2)
    80004a08:	0087b503          	ld	a0,8(a5)
    80004a0c:	00001097          	auipc	ra,0x1
    80004a10:	638080e7          	jalr	1592(ra) # 80006044 <_ZN9BufferCPP3getEv>
            i++;
    80004a14:	0019849b          	addiw	s1,s3,1
    80004a18:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    80004a1c:	0ff57513          	andi	a0,a0,255
    80004a20:	ffffd097          	auipc	ra,0xffffd
    80004a24:	514080e7          	jalr	1300(ra) # 80001f34 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80004a28:	05000793          	li	a5,80
    80004a2c:	02f4e4bb          	remw	s1,s1,a5
    80004a30:	fc0494e3          	bnez	s1,800049f8 <_ZN8Consumer3runEv+0x34>
    80004a34:	fb9ff06f          	j	800049ec <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    80004a38:	02093783          	ld	a5,32(s2)
    80004a3c:	0087b503          	ld	a0,8(a5)
    80004a40:	00001097          	auipc	ra,0x1
    80004a44:	604080e7          	jalr	1540(ra) # 80006044 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80004a48:	0ff57513          	andi	a0,a0,255
    80004a4c:	ffffd097          	auipc	ra,0xffffd
    80004a50:	4e8080e7          	jalr	1256(ra) # 80001f34 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80004a54:	02093783          	ld	a5,32(s2)
    80004a58:	0087b503          	ld	a0,8(a5)
    80004a5c:	00001097          	auipc	ra,0x1
    80004a60:	674080e7          	jalr	1652(ra) # 800060d0 <_ZN9BufferCPP6getCntEv>
    80004a64:	fca04ae3          	bgtz	a0,80004a38 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80004a68:	02093783          	ld	a5,32(s2)
    80004a6c:	0107b503          	ld	a0,16(a5)
    80004a70:	ffffd097          	auipc	ra,0xffffd
    80004a74:	e28080e7          	jalr	-472(ra) # 80001898 <_ZN9Semaphore6signalEv>
    }
    80004a78:	02813083          	ld	ra,40(sp)
    80004a7c:	02013403          	ld	s0,32(sp)
    80004a80:	01813483          	ld	s1,24(sp)
    80004a84:	01013903          	ld	s2,16(sp)
    80004a88:	00813983          	ld	s3,8(sp)
    80004a8c:	03010113          	addi	sp,sp,48
    80004a90:	00008067          	ret

0000000080004a94 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80004a94:	ff010113          	addi	sp,sp,-16
    80004a98:	00113423          	sd	ra,8(sp)
    80004a9c:	00813023          	sd	s0,0(sp)
    80004aa0:	01010413          	addi	s0,sp,16
    80004aa4:	00007797          	auipc	a5,0x7
    80004aa8:	eac78793          	addi	a5,a5,-340 # 8000b950 <_ZTV8Consumer+0x10>
    80004aac:	00f53023          	sd	a5,0(a0)
    80004ab0:	ffffd097          	auipc	ra,0xffffd
    80004ab4:	e40080e7          	jalr	-448(ra) # 800018f0 <_ZN6ThreadD1Ev>
    80004ab8:	00813083          	ld	ra,8(sp)
    80004abc:	00013403          	ld	s0,0(sp)
    80004ac0:	01010113          	addi	sp,sp,16
    80004ac4:	00008067          	ret

0000000080004ac8 <_ZN8ConsumerD0Ev>:
    80004ac8:	fe010113          	addi	sp,sp,-32
    80004acc:	00113c23          	sd	ra,24(sp)
    80004ad0:	00813823          	sd	s0,16(sp)
    80004ad4:	00913423          	sd	s1,8(sp)
    80004ad8:	02010413          	addi	s0,sp,32
    80004adc:	00050493          	mv	s1,a0
    80004ae0:	00007797          	auipc	a5,0x7
    80004ae4:	e7078793          	addi	a5,a5,-400 # 8000b950 <_ZTV8Consumer+0x10>
    80004ae8:	00f53023          	sd	a5,0(a0)
    80004aec:	ffffd097          	auipc	ra,0xffffd
    80004af0:	e04080e7          	jalr	-508(ra) # 800018f0 <_ZN6ThreadD1Ev>
    80004af4:	00048513          	mv	a0,s1
    80004af8:	ffffd097          	auipc	ra,0xffffd
    80004afc:	638080e7          	jalr	1592(ra) # 80002130 <_ZdlPv>
    80004b00:	01813083          	ld	ra,24(sp)
    80004b04:	01013403          	ld	s0,16(sp)
    80004b08:	00813483          	ld	s1,8(sp)
    80004b0c:	02010113          	addi	sp,sp,32
    80004b10:	00008067          	ret

0000000080004b14 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80004b14:	ff010113          	addi	sp,sp,-16
    80004b18:	00113423          	sd	ra,8(sp)
    80004b1c:	00813023          	sd	s0,0(sp)
    80004b20:	01010413          	addi	s0,sp,16
    80004b24:	00007797          	auipc	a5,0x7
    80004b28:	ddc78793          	addi	a5,a5,-548 # 8000b900 <_ZTV16ProducerKeyborad+0x10>
    80004b2c:	00f53023          	sd	a5,0(a0)
    80004b30:	ffffd097          	auipc	ra,0xffffd
    80004b34:	dc0080e7          	jalr	-576(ra) # 800018f0 <_ZN6ThreadD1Ev>
    80004b38:	00813083          	ld	ra,8(sp)
    80004b3c:	00013403          	ld	s0,0(sp)
    80004b40:	01010113          	addi	sp,sp,16
    80004b44:	00008067          	ret

0000000080004b48 <_ZN16ProducerKeyboradD0Ev>:
    80004b48:	fe010113          	addi	sp,sp,-32
    80004b4c:	00113c23          	sd	ra,24(sp)
    80004b50:	00813823          	sd	s0,16(sp)
    80004b54:	00913423          	sd	s1,8(sp)
    80004b58:	02010413          	addi	s0,sp,32
    80004b5c:	00050493          	mv	s1,a0
    80004b60:	00007797          	auipc	a5,0x7
    80004b64:	da078793          	addi	a5,a5,-608 # 8000b900 <_ZTV16ProducerKeyborad+0x10>
    80004b68:	00f53023          	sd	a5,0(a0)
    80004b6c:	ffffd097          	auipc	ra,0xffffd
    80004b70:	d84080e7          	jalr	-636(ra) # 800018f0 <_ZN6ThreadD1Ev>
    80004b74:	00048513          	mv	a0,s1
    80004b78:	ffffd097          	auipc	ra,0xffffd
    80004b7c:	5b8080e7          	jalr	1464(ra) # 80002130 <_ZdlPv>
    80004b80:	01813083          	ld	ra,24(sp)
    80004b84:	01013403          	ld	s0,16(sp)
    80004b88:	00813483          	ld	s1,8(sp)
    80004b8c:	02010113          	addi	sp,sp,32
    80004b90:	00008067          	ret

0000000080004b94 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80004b94:	ff010113          	addi	sp,sp,-16
    80004b98:	00113423          	sd	ra,8(sp)
    80004b9c:	00813023          	sd	s0,0(sp)
    80004ba0:	01010413          	addi	s0,sp,16
    80004ba4:	00007797          	auipc	a5,0x7
    80004ba8:	d8478793          	addi	a5,a5,-636 # 8000b928 <_ZTV8Producer+0x10>
    80004bac:	00f53023          	sd	a5,0(a0)
    80004bb0:	ffffd097          	auipc	ra,0xffffd
    80004bb4:	d40080e7          	jalr	-704(ra) # 800018f0 <_ZN6ThreadD1Ev>
    80004bb8:	00813083          	ld	ra,8(sp)
    80004bbc:	00013403          	ld	s0,0(sp)
    80004bc0:	01010113          	addi	sp,sp,16
    80004bc4:	00008067          	ret

0000000080004bc8 <_ZN8ProducerD0Ev>:
    80004bc8:	fe010113          	addi	sp,sp,-32
    80004bcc:	00113c23          	sd	ra,24(sp)
    80004bd0:	00813823          	sd	s0,16(sp)
    80004bd4:	00913423          	sd	s1,8(sp)
    80004bd8:	02010413          	addi	s0,sp,32
    80004bdc:	00050493          	mv	s1,a0
    80004be0:	00007797          	auipc	a5,0x7
    80004be4:	d4878793          	addi	a5,a5,-696 # 8000b928 <_ZTV8Producer+0x10>
    80004be8:	00f53023          	sd	a5,0(a0)
    80004bec:	ffffd097          	auipc	ra,0xffffd
    80004bf0:	d04080e7          	jalr	-764(ra) # 800018f0 <_ZN6ThreadD1Ev>
    80004bf4:	00048513          	mv	a0,s1
    80004bf8:	ffffd097          	auipc	ra,0xffffd
    80004bfc:	538080e7          	jalr	1336(ra) # 80002130 <_ZdlPv>
    80004c00:	01813083          	ld	ra,24(sp)
    80004c04:	01013403          	ld	s0,16(sp)
    80004c08:	00813483          	ld	s1,8(sp)
    80004c0c:	02010113          	addi	sp,sp,32
    80004c10:	00008067          	ret

0000000080004c14 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80004c14:	fe010113          	addi	sp,sp,-32
    80004c18:	00113c23          	sd	ra,24(sp)
    80004c1c:	00813823          	sd	s0,16(sp)
    80004c20:	00913423          	sd	s1,8(sp)
    80004c24:	02010413          	addi	s0,sp,32
    80004c28:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80004c2c:	ffffd097          	auipc	ra,0xffffd
    80004c30:	b18080e7          	jalr	-1256(ra) # 80001744 <_Z4getcv>
    80004c34:	0005059b          	sext.w	a1,a0
    80004c38:	01b00793          	li	a5,27
    80004c3c:	00f58c63          	beq	a1,a5,80004c54 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80004c40:	0204b783          	ld	a5,32(s1)
    80004c44:	0087b503          	ld	a0,8(a5)
    80004c48:	00001097          	auipc	ra,0x1
    80004c4c:	36c080e7          	jalr	876(ra) # 80005fb4 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80004c50:	fddff06f          	j	80004c2c <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80004c54:	00100793          	li	a5,1
    80004c58:	00007717          	auipc	a4,0x7
    80004c5c:	eaf72c23          	sw	a5,-328(a4) # 8000bb10 <_ZL9threadEnd>
        td->buffer->put('!');
    80004c60:	0204b783          	ld	a5,32(s1)
    80004c64:	02100593          	li	a1,33
    80004c68:	0087b503          	ld	a0,8(a5)
    80004c6c:	00001097          	auipc	ra,0x1
    80004c70:	348080e7          	jalr	840(ra) # 80005fb4 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80004c74:	0204b783          	ld	a5,32(s1)
    80004c78:	0107b503          	ld	a0,16(a5)
    80004c7c:	ffffd097          	auipc	ra,0xffffd
    80004c80:	c1c080e7          	jalr	-996(ra) # 80001898 <_ZN9Semaphore6signalEv>
    }
    80004c84:	01813083          	ld	ra,24(sp)
    80004c88:	01013403          	ld	s0,16(sp)
    80004c8c:	00813483          	ld	s1,8(sp)
    80004c90:	02010113          	addi	sp,sp,32
    80004c94:	00008067          	ret

0000000080004c98 <_ZN8Producer3runEv>:
    void run() override {
    80004c98:	fe010113          	addi	sp,sp,-32
    80004c9c:	00113c23          	sd	ra,24(sp)
    80004ca0:	00813823          	sd	s0,16(sp)
    80004ca4:	00913423          	sd	s1,8(sp)
    80004ca8:	01213023          	sd	s2,0(sp)
    80004cac:	02010413          	addi	s0,sp,32
    80004cb0:	00050493          	mv	s1,a0
        int i = 0;
    80004cb4:	00000913          	li	s2,0
        while (!threadEnd) {
    80004cb8:	00007797          	auipc	a5,0x7
    80004cbc:	e587a783          	lw	a5,-424(a5) # 8000bb10 <_ZL9threadEnd>
    80004cc0:	04079263          	bnez	a5,80004d04 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80004cc4:	0204b783          	ld	a5,32(s1)
    80004cc8:	0007a583          	lw	a1,0(a5)
    80004ccc:	0305859b          	addiw	a1,a1,48
    80004cd0:	0087b503          	ld	a0,8(a5)
    80004cd4:	00001097          	auipc	ra,0x1
    80004cd8:	2e0080e7          	jalr	736(ra) # 80005fb4 <_ZN9BufferCPP3putEi>
            i++;
    80004cdc:	0019071b          	addiw	a4,s2,1
    80004ce0:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80004ce4:	0204b783          	ld	a5,32(s1)
    80004ce8:	0007a783          	lw	a5,0(a5)
    80004cec:	00e787bb          	addw	a5,a5,a4
    80004cf0:	00500513          	li	a0,5
    80004cf4:	02a7e53b          	remw	a0,a5,a0
    80004cf8:	ffffd097          	auipc	ra,0xffffd
    80004cfc:	d18080e7          	jalr	-744(ra) # 80001a10 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80004d00:	fb9ff06f          	j	80004cb8 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80004d04:	0204b783          	ld	a5,32(s1)
    80004d08:	0107b503          	ld	a0,16(a5)
    80004d0c:	ffffd097          	auipc	ra,0xffffd
    80004d10:	b8c080e7          	jalr	-1140(ra) # 80001898 <_ZN9Semaphore6signalEv>
    }
    80004d14:	01813083          	ld	ra,24(sp)
    80004d18:	01013403          	ld	s0,16(sp)
    80004d1c:	00813483          	ld	s1,8(sp)
    80004d20:	00013903          	ld	s2,0(sp)
    80004d24:	02010113          	addi	sp,sp,32
    80004d28:	00008067          	ret

0000000080004d2c <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004d2c:	fe010113          	addi	sp,sp,-32
    80004d30:	00113c23          	sd	ra,24(sp)
    80004d34:	00813823          	sd	s0,16(sp)
    80004d38:	00913423          	sd	s1,8(sp)
    80004d3c:	01213023          	sd	s2,0(sp)
    80004d40:	02010413          	addi	s0,sp,32
    80004d44:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004d48:	00100793          	li	a5,1
    80004d4c:	02a7f863          	bgeu	a5,a0,80004d7c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004d50:	00a00793          	li	a5,10
    80004d54:	02f577b3          	remu	a5,a0,a5
    80004d58:	02078e63          	beqz	a5,80004d94 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004d5c:	fff48513          	addi	a0,s1,-1
    80004d60:	00000097          	auipc	ra,0x0
    80004d64:	fcc080e7          	jalr	-52(ra) # 80004d2c <_ZL9fibonaccim>
    80004d68:	00050913          	mv	s2,a0
    80004d6c:	ffe48513          	addi	a0,s1,-2
    80004d70:	00000097          	auipc	ra,0x0
    80004d74:	fbc080e7          	jalr	-68(ra) # 80004d2c <_ZL9fibonaccim>
    80004d78:	00a90533          	add	a0,s2,a0
}
    80004d7c:	01813083          	ld	ra,24(sp)
    80004d80:	01013403          	ld	s0,16(sp)
    80004d84:	00813483          	ld	s1,8(sp)
    80004d88:	00013903          	ld	s2,0(sp)
    80004d8c:	02010113          	addi	sp,sp,32
    80004d90:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004d94:	ffffd097          	auipc	ra,0xffffd
    80004d98:	834080e7          	jalr	-1996(ra) # 800015c8 <_Z15thread_dispatchv>
    80004d9c:	fc1ff06f          	j	80004d5c <_ZL9fibonaccim+0x30>

0000000080004da0 <_ZL11workerBodyDPv>:
    printString("C finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80004da0:	fe010113          	addi	sp,sp,-32
    80004da4:	00113c23          	sd	ra,24(sp)
    80004da8:	00813823          	sd	s0,16(sp)
    80004dac:	00913423          	sd	s1,8(sp)
    80004db0:	01213023          	sd	s2,0(sp)
    80004db4:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004db8:	00a00493          	li	s1,10
    80004dbc:	0400006f          	j	80004dfc <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004dc0:	00004517          	auipc	a0,0x4
    80004dc4:	75850513          	addi	a0,a0,1880 # 80009518 <CONSOLE_STATUS+0x508>
    80004dc8:	00001097          	auipc	ra,0x1
    80004dcc:	dc8080e7          	jalr	-568(ra) # 80005b90 <_Z11printStringPKc>
    80004dd0:	00000613          	li	a2,0
    80004dd4:	00a00593          	li	a1,10
    80004dd8:	00048513          	mv	a0,s1
    80004ddc:	00001097          	auipc	ra,0x1
    80004de0:	f64080e7          	jalr	-156(ra) # 80005d40 <_Z8printIntiii>
    80004de4:	00004517          	auipc	a0,0x4
    80004de8:	38c50513          	addi	a0,a0,908 # 80009170 <CONSOLE_STATUS+0x160>
    80004dec:	00001097          	auipc	ra,0x1
    80004df0:	da4080e7          	jalr	-604(ra) # 80005b90 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004df4:	0014849b          	addiw	s1,s1,1
    80004df8:	0ff4f493          	andi	s1,s1,255
    80004dfc:	00c00793          	li	a5,12
    80004e00:	fc97f0e3          	bgeu	a5,s1,80004dc0 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80004e04:	00004517          	auipc	a0,0x4
    80004e08:	71c50513          	addi	a0,a0,1820 # 80009520 <CONSOLE_STATUS+0x510>
    80004e0c:	00001097          	auipc	ra,0x1
    80004e10:	d84080e7          	jalr	-636(ra) # 80005b90 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004e14:	00500313          	li	t1,5
    thread_dispatch();
    80004e18:	ffffc097          	auipc	ra,0xffffc
    80004e1c:	7b0080e7          	jalr	1968(ra) # 800015c8 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004e20:	01000513          	li	a0,16
    80004e24:	00000097          	auipc	ra,0x0
    80004e28:	f08080e7          	jalr	-248(ra) # 80004d2c <_ZL9fibonaccim>
    80004e2c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004e30:	00004517          	auipc	a0,0x4
    80004e34:	70050513          	addi	a0,a0,1792 # 80009530 <CONSOLE_STATUS+0x520>
    80004e38:	00001097          	auipc	ra,0x1
    80004e3c:	d58080e7          	jalr	-680(ra) # 80005b90 <_Z11printStringPKc>
    80004e40:	00000613          	li	a2,0
    80004e44:	00a00593          	li	a1,10
    80004e48:	0009051b          	sext.w	a0,s2
    80004e4c:	00001097          	auipc	ra,0x1
    80004e50:	ef4080e7          	jalr	-268(ra) # 80005d40 <_Z8printIntiii>
    80004e54:	00004517          	auipc	a0,0x4
    80004e58:	31c50513          	addi	a0,a0,796 # 80009170 <CONSOLE_STATUS+0x160>
    80004e5c:	00001097          	auipc	ra,0x1
    80004e60:	d34080e7          	jalr	-716(ra) # 80005b90 <_Z11printStringPKc>
    80004e64:	0400006f          	j	80004ea4 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004e68:	00004517          	auipc	a0,0x4
    80004e6c:	6b050513          	addi	a0,a0,1712 # 80009518 <CONSOLE_STATUS+0x508>
    80004e70:	00001097          	auipc	ra,0x1
    80004e74:	d20080e7          	jalr	-736(ra) # 80005b90 <_Z11printStringPKc>
    80004e78:	00000613          	li	a2,0
    80004e7c:	00a00593          	li	a1,10
    80004e80:	00048513          	mv	a0,s1
    80004e84:	00001097          	auipc	ra,0x1
    80004e88:	ebc080e7          	jalr	-324(ra) # 80005d40 <_Z8printIntiii>
    80004e8c:	00004517          	auipc	a0,0x4
    80004e90:	2e450513          	addi	a0,a0,740 # 80009170 <CONSOLE_STATUS+0x160>
    80004e94:	00001097          	auipc	ra,0x1
    80004e98:	cfc080e7          	jalr	-772(ra) # 80005b90 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004e9c:	0014849b          	addiw	s1,s1,1
    80004ea0:	0ff4f493          	andi	s1,s1,255
    80004ea4:	00f00793          	li	a5,15
    80004ea8:	fc97f0e3          	bgeu	a5,s1,80004e68 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80004eac:	00004517          	auipc	a0,0x4
    80004eb0:	69450513          	addi	a0,a0,1684 # 80009540 <CONSOLE_STATUS+0x530>
    80004eb4:	00001097          	auipc	ra,0x1
    80004eb8:	cdc080e7          	jalr	-804(ra) # 80005b90 <_Z11printStringPKc>
    finishedD = true;
    80004ebc:	00100793          	li	a5,1
    80004ec0:	00007717          	auipc	a4,0x7
    80004ec4:	c6f70023          	sb	a5,-928(a4) # 8000bb20 <_ZL9finishedD>
    thread_dispatch();
    80004ec8:	ffffc097          	auipc	ra,0xffffc
    80004ecc:	700080e7          	jalr	1792(ra) # 800015c8 <_Z15thread_dispatchv>
}
    80004ed0:	01813083          	ld	ra,24(sp)
    80004ed4:	01013403          	ld	s0,16(sp)
    80004ed8:	00813483          	ld	s1,8(sp)
    80004edc:	00013903          	ld	s2,0(sp)
    80004ee0:	02010113          	addi	sp,sp,32
    80004ee4:	00008067          	ret

0000000080004ee8 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80004ee8:	fe010113          	addi	sp,sp,-32
    80004eec:	00113c23          	sd	ra,24(sp)
    80004ef0:	00813823          	sd	s0,16(sp)
    80004ef4:	00913423          	sd	s1,8(sp)
    80004ef8:	01213023          	sd	s2,0(sp)
    80004efc:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004f00:	00000493          	li	s1,0
    80004f04:	0400006f          	j	80004f44 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80004f08:	00004517          	auipc	a0,0x4
    80004f0c:	5e050513          	addi	a0,a0,1504 # 800094e8 <CONSOLE_STATUS+0x4d8>
    80004f10:	00001097          	auipc	ra,0x1
    80004f14:	c80080e7          	jalr	-896(ra) # 80005b90 <_Z11printStringPKc>
    80004f18:	00000613          	li	a2,0
    80004f1c:	00a00593          	li	a1,10
    80004f20:	00048513          	mv	a0,s1
    80004f24:	00001097          	auipc	ra,0x1
    80004f28:	e1c080e7          	jalr	-484(ra) # 80005d40 <_Z8printIntiii>
    80004f2c:	00004517          	auipc	a0,0x4
    80004f30:	24450513          	addi	a0,a0,580 # 80009170 <CONSOLE_STATUS+0x160>
    80004f34:	00001097          	auipc	ra,0x1
    80004f38:	c5c080e7          	jalr	-932(ra) # 80005b90 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004f3c:	0014849b          	addiw	s1,s1,1
    80004f40:	0ff4f493          	andi	s1,s1,255
    80004f44:	00200793          	li	a5,2
    80004f48:	fc97f0e3          	bgeu	a5,s1,80004f08 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80004f4c:	00004517          	auipc	a0,0x4
    80004f50:	5a450513          	addi	a0,a0,1444 # 800094f0 <CONSOLE_STATUS+0x4e0>
    80004f54:	00001097          	auipc	ra,0x1
    80004f58:	c3c080e7          	jalr	-964(ra) # 80005b90 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004f5c:	00700313          	li	t1,7
    thread_dispatch();
    80004f60:	ffffc097          	auipc	ra,0xffffc
    80004f64:	668080e7          	jalr	1640(ra) # 800015c8 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004f68:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80004f6c:	00004517          	auipc	a0,0x4
    80004f70:	59450513          	addi	a0,a0,1428 # 80009500 <CONSOLE_STATUS+0x4f0>
    80004f74:	00001097          	auipc	ra,0x1
    80004f78:	c1c080e7          	jalr	-996(ra) # 80005b90 <_Z11printStringPKc>
    80004f7c:	00000613          	li	a2,0
    80004f80:	00a00593          	li	a1,10
    80004f84:	0009051b          	sext.w	a0,s2
    80004f88:	00001097          	auipc	ra,0x1
    80004f8c:	db8080e7          	jalr	-584(ra) # 80005d40 <_Z8printIntiii>
    80004f90:	00004517          	auipc	a0,0x4
    80004f94:	1e050513          	addi	a0,a0,480 # 80009170 <CONSOLE_STATUS+0x160>
    80004f98:	00001097          	auipc	ra,0x1
    80004f9c:	bf8080e7          	jalr	-1032(ra) # 80005b90 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80004fa0:	00c00513          	li	a0,12
    80004fa4:	00000097          	auipc	ra,0x0
    80004fa8:	d88080e7          	jalr	-632(ra) # 80004d2c <_ZL9fibonaccim>
    80004fac:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004fb0:	00004517          	auipc	a0,0x4
    80004fb4:	55850513          	addi	a0,a0,1368 # 80009508 <CONSOLE_STATUS+0x4f8>
    80004fb8:	00001097          	auipc	ra,0x1
    80004fbc:	bd8080e7          	jalr	-1064(ra) # 80005b90 <_Z11printStringPKc>
    80004fc0:	00000613          	li	a2,0
    80004fc4:	00a00593          	li	a1,10
    80004fc8:	0009051b          	sext.w	a0,s2
    80004fcc:	00001097          	auipc	ra,0x1
    80004fd0:	d74080e7          	jalr	-652(ra) # 80005d40 <_Z8printIntiii>
    80004fd4:	00004517          	auipc	a0,0x4
    80004fd8:	19c50513          	addi	a0,a0,412 # 80009170 <CONSOLE_STATUS+0x160>
    80004fdc:	00001097          	auipc	ra,0x1
    80004fe0:	bb4080e7          	jalr	-1100(ra) # 80005b90 <_Z11printStringPKc>
    80004fe4:	0400006f          	j	80005024 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80004fe8:	00004517          	auipc	a0,0x4
    80004fec:	50050513          	addi	a0,a0,1280 # 800094e8 <CONSOLE_STATUS+0x4d8>
    80004ff0:	00001097          	auipc	ra,0x1
    80004ff4:	ba0080e7          	jalr	-1120(ra) # 80005b90 <_Z11printStringPKc>
    80004ff8:	00000613          	li	a2,0
    80004ffc:	00a00593          	li	a1,10
    80005000:	00048513          	mv	a0,s1
    80005004:	00001097          	auipc	ra,0x1
    80005008:	d3c080e7          	jalr	-708(ra) # 80005d40 <_Z8printIntiii>
    8000500c:	00004517          	auipc	a0,0x4
    80005010:	16450513          	addi	a0,a0,356 # 80009170 <CONSOLE_STATUS+0x160>
    80005014:	00001097          	auipc	ra,0x1
    80005018:	b7c080e7          	jalr	-1156(ra) # 80005b90 <_Z11printStringPKc>
    for (; i < 6; i++) {
    8000501c:	0014849b          	addiw	s1,s1,1
    80005020:	0ff4f493          	andi	s1,s1,255
    80005024:	00500793          	li	a5,5
    80005028:	fc97f0e3          	bgeu	a5,s1,80004fe8 <_ZL11workerBodyCPv+0x100>
    printString("C finished!\n");
    8000502c:	00004517          	auipc	a0,0x4
    80005030:	55450513          	addi	a0,a0,1364 # 80009580 <CONSOLE_STATUS+0x570>
    80005034:	00001097          	auipc	ra,0x1
    80005038:	b5c080e7          	jalr	-1188(ra) # 80005b90 <_Z11printStringPKc>
    finishedC = true;
    8000503c:	00100793          	li	a5,1
    80005040:	00007717          	auipc	a4,0x7
    80005044:	aef700a3          	sb	a5,-1311(a4) # 8000bb21 <_ZL9finishedC>
    thread_dispatch();
    80005048:	ffffc097          	auipc	ra,0xffffc
    8000504c:	580080e7          	jalr	1408(ra) # 800015c8 <_Z15thread_dispatchv>
}
    80005050:	01813083          	ld	ra,24(sp)
    80005054:	01013403          	ld	s0,16(sp)
    80005058:	00813483          	ld	s1,8(sp)
    8000505c:	00013903          	ld	s2,0(sp)
    80005060:	02010113          	addi	sp,sp,32
    80005064:	00008067          	ret

0000000080005068 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80005068:	fe010113          	addi	sp,sp,-32
    8000506c:	00113c23          	sd	ra,24(sp)
    80005070:	00813823          	sd	s0,16(sp)
    80005074:	00913423          	sd	s1,8(sp)
    80005078:	01213023          	sd	s2,0(sp)
    8000507c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005080:	00000913          	li	s2,0
    80005084:	0380006f          	j	800050bc <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80005088:	ffffc097          	auipc	ra,0xffffc
    8000508c:	540080e7          	jalr	1344(ra) # 800015c8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005090:	00148493          	addi	s1,s1,1
    80005094:	000027b7          	lui	a5,0x2
    80005098:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000509c:	0097ee63          	bltu	a5,s1,800050b8 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800050a0:	00000713          	li	a4,0
    800050a4:	000077b7          	lui	a5,0x7
    800050a8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800050ac:	fce7eee3          	bltu	a5,a4,80005088 <_ZL11workerBodyBPv+0x20>
    800050b0:	00170713          	addi	a4,a4,1
    800050b4:	ff1ff06f          	j	800050a4 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800050b8:	00190913          	addi	s2,s2,1
    800050bc:	00f00793          	li	a5,15
    800050c0:	0527e063          	bltu	a5,s2,80005100 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800050c4:	00004517          	auipc	a0,0x4
    800050c8:	3b450513          	addi	a0,a0,948 # 80009478 <CONSOLE_STATUS+0x468>
    800050cc:	00001097          	auipc	ra,0x1
    800050d0:	ac4080e7          	jalr	-1340(ra) # 80005b90 <_Z11printStringPKc>
    800050d4:	00000613          	li	a2,0
    800050d8:	00a00593          	li	a1,10
    800050dc:	0009051b          	sext.w	a0,s2
    800050e0:	00001097          	auipc	ra,0x1
    800050e4:	c60080e7          	jalr	-928(ra) # 80005d40 <_Z8printIntiii>
    800050e8:	00004517          	auipc	a0,0x4
    800050ec:	08850513          	addi	a0,a0,136 # 80009170 <CONSOLE_STATUS+0x160>
    800050f0:	00001097          	auipc	ra,0x1
    800050f4:	aa0080e7          	jalr	-1376(ra) # 80005b90 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800050f8:	00000493          	li	s1,0
    800050fc:	f99ff06f          	j	80005094 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80005100:	00004517          	auipc	a0,0x4
    80005104:	38050513          	addi	a0,a0,896 # 80009480 <CONSOLE_STATUS+0x470>
    80005108:	00001097          	auipc	ra,0x1
    8000510c:	a88080e7          	jalr	-1400(ra) # 80005b90 <_Z11printStringPKc>
    finishedB = true;
    80005110:	00100793          	li	a5,1
    80005114:	00007717          	auipc	a4,0x7
    80005118:	a0f70723          	sb	a5,-1522(a4) # 8000bb22 <_ZL9finishedB>
    thread_dispatch();
    8000511c:	ffffc097          	auipc	ra,0xffffc
    80005120:	4ac080e7          	jalr	1196(ra) # 800015c8 <_Z15thread_dispatchv>
}
    80005124:	01813083          	ld	ra,24(sp)
    80005128:	01013403          	ld	s0,16(sp)
    8000512c:	00813483          	ld	s1,8(sp)
    80005130:	00013903          	ld	s2,0(sp)
    80005134:	02010113          	addi	sp,sp,32
    80005138:	00008067          	ret

000000008000513c <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    8000513c:	fe010113          	addi	sp,sp,-32
    80005140:	00113c23          	sd	ra,24(sp)
    80005144:	00813823          	sd	s0,16(sp)
    80005148:	00913423          	sd	s1,8(sp)
    8000514c:	01213023          	sd	s2,0(sp)
    80005150:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80005154:	00000913          	li	s2,0
    80005158:	0380006f          	j	80005190 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    8000515c:	ffffc097          	auipc	ra,0xffffc
    80005160:	46c080e7          	jalr	1132(ra) # 800015c8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005164:	00148493          	addi	s1,s1,1
    80005168:	000027b7          	lui	a5,0x2
    8000516c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005170:	0097ee63          	bltu	a5,s1,8000518c <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005174:	00000713          	li	a4,0
    80005178:	000077b7          	lui	a5,0x7
    8000517c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005180:	fce7eee3          	bltu	a5,a4,8000515c <_ZL11workerBodyAPv+0x20>
    80005184:	00170713          	addi	a4,a4,1
    80005188:	ff1ff06f          	j	80005178 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    8000518c:	00190913          	addi	s2,s2,1
    80005190:	00900793          	li	a5,9
    80005194:	0527e063          	bltu	a5,s2,800051d4 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005198:	00004517          	auipc	a0,0x4
    8000519c:	2c850513          	addi	a0,a0,712 # 80009460 <CONSOLE_STATUS+0x450>
    800051a0:	00001097          	auipc	ra,0x1
    800051a4:	9f0080e7          	jalr	-1552(ra) # 80005b90 <_Z11printStringPKc>
    800051a8:	00000613          	li	a2,0
    800051ac:	00a00593          	li	a1,10
    800051b0:	0009051b          	sext.w	a0,s2
    800051b4:	00001097          	auipc	ra,0x1
    800051b8:	b8c080e7          	jalr	-1140(ra) # 80005d40 <_Z8printIntiii>
    800051bc:	00004517          	auipc	a0,0x4
    800051c0:	fb450513          	addi	a0,a0,-76 # 80009170 <CONSOLE_STATUS+0x160>
    800051c4:	00001097          	auipc	ra,0x1
    800051c8:	9cc080e7          	jalr	-1588(ra) # 80005b90 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800051cc:	00000493          	li	s1,0
    800051d0:	f99ff06f          	j	80005168 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800051d4:	00004517          	auipc	a0,0x4
    800051d8:	29450513          	addi	a0,a0,660 # 80009468 <CONSOLE_STATUS+0x458>
    800051dc:	00001097          	auipc	ra,0x1
    800051e0:	9b4080e7          	jalr	-1612(ra) # 80005b90 <_Z11printStringPKc>
    finishedA = true;
    800051e4:	00100793          	li	a5,1
    800051e8:	00007717          	auipc	a4,0x7
    800051ec:	92f70da3          	sb	a5,-1733(a4) # 8000bb23 <_ZL9finishedA>
}
    800051f0:	01813083          	ld	ra,24(sp)
    800051f4:	01013403          	ld	s0,16(sp)
    800051f8:	00813483          	ld	s1,8(sp)
    800051fc:	00013903          	ld	s2,0(sp)
    80005200:	02010113          	addi	sp,sp,32
    80005204:	00008067          	ret

0000000080005208 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80005208:	fd010113          	addi	sp,sp,-48
    8000520c:	02113423          	sd	ra,40(sp)
    80005210:	02813023          	sd	s0,32(sp)
    80005214:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005218:	00000613          	li	a2,0
    8000521c:	00000597          	auipc	a1,0x0
    80005220:	f2058593          	addi	a1,a1,-224 # 8000513c <_ZL11workerBodyAPv>
    80005224:	fd040513          	addi	a0,s0,-48
    80005228:	ffffc097          	auipc	ra,0xffffc
    8000522c:	324080e7          	jalr	804(ra) # 8000154c <_Z13thread_createPP8Thread_kPFvPvES2_>
    printString("ThreadA created\n");
    80005230:	00004517          	auipc	a0,0x4
    80005234:	26050513          	addi	a0,a0,608 # 80009490 <CONSOLE_STATUS+0x480>
    80005238:	00001097          	auipc	ra,0x1
    8000523c:	958080e7          	jalr	-1704(ra) # 80005b90 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80005240:	00000613          	li	a2,0
    80005244:	00000597          	auipc	a1,0x0
    80005248:	e2458593          	addi	a1,a1,-476 # 80005068 <_ZL11workerBodyBPv>
    8000524c:	fd840513          	addi	a0,s0,-40
    80005250:	ffffc097          	auipc	ra,0xffffc
    80005254:	2fc080e7          	jalr	764(ra) # 8000154c <_Z13thread_createPP8Thread_kPFvPvES2_>
    printString("ThreadB created\n");
    80005258:	00004517          	auipc	a0,0x4
    8000525c:	25050513          	addi	a0,a0,592 # 800094a8 <CONSOLE_STATUS+0x498>
    80005260:	00001097          	auipc	ra,0x1
    80005264:	930080e7          	jalr	-1744(ra) # 80005b90 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005268:	00000613          	li	a2,0
    8000526c:	00000597          	auipc	a1,0x0
    80005270:	c7c58593          	addi	a1,a1,-900 # 80004ee8 <_ZL11workerBodyCPv>
    80005274:	fe040513          	addi	a0,s0,-32
    80005278:	ffffc097          	auipc	ra,0xffffc
    8000527c:	2d4080e7          	jalr	724(ra) # 8000154c <_Z13thread_createPP8Thread_kPFvPvES2_>
    printString("ThreadC created\n");
    80005280:	00004517          	auipc	a0,0x4
    80005284:	2d050513          	addi	a0,a0,720 # 80009550 <CONSOLE_STATUS+0x540>
    80005288:	00001097          	auipc	ra,0x1
    8000528c:	908080e7          	jalr	-1784(ra) # 80005b90 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005290:	00000613          	li	a2,0
    80005294:	00000597          	auipc	a1,0x0
    80005298:	b0c58593          	addi	a1,a1,-1268 # 80004da0 <_ZL11workerBodyDPv>
    8000529c:	fe840513          	addi	a0,s0,-24
    800052a0:	ffffc097          	auipc	ra,0xffffc
    800052a4:	2ac080e7          	jalr	684(ra) # 8000154c <_Z13thread_createPP8Thread_kPFvPvES2_>
    printString("ThreadD created\n");
    800052a8:	00004517          	auipc	a0,0x4
    800052ac:	2c050513          	addi	a0,a0,704 # 80009568 <CONSOLE_STATUS+0x558>
    800052b0:	00001097          	auipc	ra,0x1
    800052b4:	8e0080e7          	jalr	-1824(ra) # 80005b90 <_Z11printStringPKc>
    800052b8:	00c0006f          	j	800052c4 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800052bc:	ffffc097          	auipc	ra,0xffffc
    800052c0:	30c080e7          	jalr	780(ra) # 800015c8 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800052c4:	00007797          	auipc	a5,0x7
    800052c8:	85f7c783          	lbu	a5,-1953(a5) # 8000bb23 <_ZL9finishedA>
    800052cc:	fe0788e3          	beqz	a5,800052bc <_Z18Threads_C_API_testv+0xb4>
    800052d0:	00007797          	auipc	a5,0x7
    800052d4:	8527c783          	lbu	a5,-1966(a5) # 8000bb22 <_ZL9finishedB>
    800052d8:	fe0782e3          	beqz	a5,800052bc <_Z18Threads_C_API_testv+0xb4>
    800052dc:	00007797          	auipc	a5,0x7
    800052e0:	8457c783          	lbu	a5,-1979(a5) # 8000bb21 <_ZL9finishedC>
    800052e4:	fc078ce3          	beqz	a5,800052bc <_Z18Threads_C_API_testv+0xb4>
    800052e8:	00007797          	auipc	a5,0x7
    800052ec:	8387c783          	lbu	a5,-1992(a5) # 8000bb20 <_ZL9finishedD>
    800052f0:	fc0786e3          	beqz	a5,800052bc <_Z18Threads_C_API_testv+0xb4>
    }

}
    800052f4:	02813083          	ld	ra,40(sp)
    800052f8:	02013403          	ld	s0,32(sp)
    800052fc:	03010113          	addi	sp,sp,48
    80005300:	00008067          	ret

0000000080005304 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80005304:	fd010113          	addi	sp,sp,-48
    80005308:	02113423          	sd	ra,40(sp)
    8000530c:	02813023          	sd	s0,32(sp)
    80005310:	00913c23          	sd	s1,24(sp)
    80005314:	01213823          	sd	s2,16(sp)
    80005318:	01313423          	sd	s3,8(sp)
    8000531c:	03010413          	addi	s0,sp,48
    80005320:	00050993          	mv	s3,a0
    80005324:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80005328:	00000913          	li	s2,0
    8000532c:	00c0006f          	j	80005338 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80005330:	ffffc097          	auipc	ra,0xffffc
    80005334:	6b8080e7          	jalr	1720(ra) # 800019e8 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80005338:	ffffc097          	auipc	ra,0xffffc
    8000533c:	40c080e7          	jalr	1036(ra) # 80001744 <_Z4getcv>
    80005340:	0005059b          	sext.w	a1,a0
    80005344:	01b00793          	li	a5,27
    80005348:	02f58a63          	beq	a1,a5,8000537c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    8000534c:	0084b503          	ld	a0,8(s1)
    80005350:	00001097          	auipc	ra,0x1
    80005354:	c64080e7          	jalr	-924(ra) # 80005fb4 <_ZN9BufferCPP3putEi>
        i++;
    80005358:	0019071b          	addiw	a4,s2,1
    8000535c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80005360:	0004a683          	lw	a3,0(s1)
    80005364:	0026979b          	slliw	a5,a3,0x2
    80005368:	00d787bb          	addw	a5,a5,a3
    8000536c:	0017979b          	slliw	a5,a5,0x1
    80005370:	02f767bb          	remw	a5,a4,a5
    80005374:	fc0792e3          	bnez	a5,80005338 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80005378:	fb9ff06f          	j	80005330 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    8000537c:	00100793          	li	a5,1
    80005380:	00006717          	auipc	a4,0x6
    80005384:	7af72423          	sw	a5,1960(a4) # 8000bb28 <_ZL9threadEnd>
    td->buffer->put('!');
    80005388:	0209b783          	ld	a5,32(s3)
    8000538c:	02100593          	li	a1,33
    80005390:	0087b503          	ld	a0,8(a5)
    80005394:	00001097          	auipc	ra,0x1
    80005398:	c20080e7          	jalr	-992(ra) # 80005fb4 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    8000539c:	0104b503          	ld	a0,16(s1)
    800053a0:	ffffc097          	auipc	ra,0xffffc
    800053a4:	4f8080e7          	jalr	1272(ra) # 80001898 <_ZN9Semaphore6signalEv>
}
    800053a8:	02813083          	ld	ra,40(sp)
    800053ac:	02013403          	ld	s0,32(sp)
    800053b0:	01813483          	ld	s1,24(sp)
    800053b4:	01013903          	ld	s2,16(sp)
    800053b8:	00813983          	ld	s3,8(sp)
    800053bc:	03010113          	addi	sp,sp,48
    800053c0:	00008067          	ret

00000000800053c4 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    800053c4:	fe010113          	addi	sp,sp,-32
    800053c8:	00113c23          	sd	ra,24(sp)
    800053cc:	00813823          	sd	s0,16(sp)
    800053d0:	00913423          	sd	s1,8(sp)
    800053d4:	01213023          	sd	s2,0(sp)
    800053d8:	02010413          	addi	s0,sp,32
    800053dc:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800053e0:	00000913          	li	s2,0
    800053e4:	00c0006f          	j	800053f0 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800053e8:	ffffc097          	auipc	ra,0xffffc
    800053ec:	600080e7          	jalr	1536(ra) # 800019e8 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    800053f0:	00006797          	auipc	a5,0x6
    800053f4:	7387a783          	lw	a5,1848(a5) # 8000bb28 <_ZL9threadEnd>
    800053f8:	02079e63          	bnez	a5,80005434 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    800053fc:	0004a583          	lw	a1,0(s1)
    80005400:	0305859b          	addiw	a1,a1,48
    80005404:	0084b503          	ld	a0,8(s1)
    80005408:	00001097          	auipc	ra,0x1
    8000540c:	bac080e7          	jalr	-1108(ra) # 80005fb4 <_ZN9BufferCPP3putEi>
        i++;
    80005410:	0019071b          	addiw	a4,s2,1
    80005414:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80005418:	0004a683          	lw	a3,0(s1)
    8000541c:	0026979b          	slliw	a5,a3,0x2
    80005420:	00d787bb          	addw	a5,a5,a3
    80005424:	0017979b          	slliw	a5,a5,0x1
    80005428:	02f767bb          	remw	a5,a4,a5
    8000542c:	fc0792e3          	bnez	a5,800053f0 <_ZN12ProducerSync8producerEPv+0x2c>
    80005430:	fb9ff06f          	j	800053e8 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80005434:	0104b503          	ld	a0,16(s1)
    80005438:	ffffc097          	auipc	ra,0xffffc
    8000543c:	460080e7          	jalr	1120(ra) # 80001898 <_ZN9Semaphore6signalEv>
}
    80005440:	01813083          	ld	ra,24(sp)
    80005444:	01013403          	ld	s0,16(sp)
    80005448:	00813483          	ld	s1,8(sp)
    8000544c:	00013903          	ld	s2,0(sp)
    80005450:	02010113          	addi	sp,sp,32
    80005454:	00008067          	ret

0000000080005458 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80005458:	fd010113          	addi	sp,sp,-48
    8000545c:	02113423          	sd	ra,40(sp)
    80005460:	02813023          	sd	s0,32(sp)
    80005464:	00913c23          	sd	s1,24(sp)
    80005468:	01213823          	sd	s2,16(sp)
    8000546c:	01313423          	sd	s3,8(sp)
    80005470:	01413023          	sd	s4,0(sp)
    80005474:	03010413          	addi	s0,sp,48
    80005478:	00050993          	mv	s3,a0
    8000547c:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80005480:	00000a13          	li	s4,0
    80005484:	01c0006f          	j	800054a0 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80005488:	ffffc097          	auipc	ra,0xffffc
    8000548c:	560080e7          	jalr	1376(ra) # 800019e8 <_ZN6Thread8dispatchEv>
    80005490:	0500006f          	j	800054e0 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80005494:	00a00513          	li	a0,10
    80005498:	ffffc097          	auipc	ra,0xffffc
    8000549c:	2e4080e7          	jalr	740(ra) # 8000177c <_Z4putcc>
    while (!threadEnd) {
    800054a0:	00006797          	auipc	a5,0x6
    800054a4:	6887a783          	lw	a5,1672(a5) # 8000bb28 <_ZL9threadEnd>
    800054a8:	06079263          	bnez	a5,8000550c <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    800054ac:	00893503          	ld	a0,8(s2)
    800054b0:	00001097          	auipc	ra,0x1
    800054b4:	b94080e7          	jalr	-1132(ra) # 80006044 <_ZN9BufferCPP3getEv>
        i++;
    800054b8:	001a049b          	addiw	s1,s4,1
    800054bc:	00048a1b          	sext.w	s4,s1
        putc(key);
    800054c0:	0ff57513          	andi	a0,a0,255
    800054c4:	ffffc097          	auipc	ra,0xffffc
    800054c8:	2b8080e7          	jalr	696(ra) # 8000177c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    800054cc:	00092703          	lw	a4,0(s2)
    800054d0:	0027179b          	slliw	a5,a4,0x2
    800054d4:	00e787bb          	addw	a5,a5,a4
    800054d8:	02f4e7bb          	remw	a5,s1,a5
    800054dc:	fa0786e3          	beqz	a5,80005488 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    800054e0:	05000793          	li	a5,80
    800054e4:	02f4e4bb          	remw	s1,s1,a5
    800054e8:	fa049ce3          	bnez	s1,800054a0 <_ZN12ConsumerSync8consumerEPv+0x48>
    800054ec:	fa9ff06f          	j	80005494 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    800054f0:	0209b783          	ld	a5,32(s3)
    800054f4:	0087b503          	ld	a0,8(a5)
    800054f8:	00001097          	auipc	ra,0x1
    800054fc:	b4c080e7          	jalr	-1204(ra) # 80006044 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80005500:	0ff57513          	andi	a0,a0,255
    80005504:	ffffd097          	auipc	ra,0xffffd
    80005508:	a30080e7          	jalr	-1488(ra) # 80001f34 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    8000550c:	0209b783          	ld	a5,32(s3)
    80005510:	0087b503          	ld	a0,8(a5)
    80005514:	00001097          	auipc	ra,0x1
    80005518:	bbc080e7          	jalr	-1092(ra) # 800060d0 <_ZN9BufferCPP6getCntEv>
    8000551c:	fca04ae3          	bgtz	a0,800054f0 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80005520:	01093503          	ld	a0,16(s2)
    80005524:	ffffc097          	auipc	ra,0xffffc
    80005528:	374080e7          	jalr	884(ra) # 80001898 <_ZN9Semaphore6signalEv>
}
    8000552c:	02813083          	ld	ra,40(sp)
    80005530:	02013403          	ld	s0,32(sp)
    80005534:	01813483          	ld	s1,24(sp)
    80005538:	01013903          	ld	s2,16(sp)
    8000553c:	00813983          	ld	s3,8(sp)
    80005540:	00013a03          	ld	s4,0(sp)
    80005544:	03010113          	addi	sp,sp,48
    80005548:	00008067          	ret

000000008000554c <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    8000554c:	f8010113          	addi	sp,sp,-128
    80005550:	06113c23          	sd	ra,120(sp)
    80005554:	06813823          	sd	s0,112(sp)
    80005558:	06913423          	sd	s1,104(sp)
    8000555c:	07213023          	sd	s2,96(sp)
    80005560:	05313c23          	sd	s3,88(sp)
    80005564:	05413823          	sd	s4,80(sp)
    80005568:	05513423          	sd	s5,72(sp)
    8000556c:	05613023          	sd	s6,64(sp)
    80005570:	03713c23          	sd	s7,56(sp)
    80005574:	03813823          	sd	s8,48(sp)
    80005578:	03913423          	sd	s9,40(sp)
    8000557c:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80005580:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80005584:	00004517          	auipc	a0,0x4
    80005588:	df450513          	addi	a0,a0,-524 # 80009378 <CONSOLE_STATUS+0x368>
    8000558c:	00000097          	auipc	ra,0x0
    80005590:	604080e7          	jalr	1540(ra) # 80005b90 <_Z11printStringPKc>
    getString(input, 30);
    80005594:	01e00593          	li	a1,30
    80005598:	f8040493          	addi	s1,s0,-128
    8000559c:	00048513          	mv	a0,s1
    800055a0:	00000097          	auipc	ra,0x0
    800055a4:	678080e7          	jalr	1656(ra) # 80005c18 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800055a8:	00048513          	mv	a0,s1
    800055ac:	00000097          	auipc	ra,0x0
    800055b0:	744080e7          	jalr	1860(ra) # 80005cf0 <_Z11stringToIntPKc>
    800055b4:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    800055b8:	00004517          	auipc	a0,0x4
    800055bc:	de050513          	addi	a0,a0,-544 # 80009398 <CONSOLE_STATUS+0x388>
    800055c0:	00000097          	auipc	ra,0x0
    800055c4:	5d0080e7          	jalr	1488(ra) # 80005b90 <_Z11printStringPKc>
    getString(input, 30);
    800055c8:	01e00593          	li	a1,30
    800055cc:	00048513          	mv	a0,s1
    800055d0:	00000097          	auipc	ra,0x0
    800055d4:	648080e7          	jalr	1608(ra) # 80005c18 <_Z9getStringPci>
    n = stringToInt(input);
    800055d8:	00048513          	mv	a0,s1
    800055dc:	00000097          	auipc	ra,0x0
    800055e0:	714080e7          	jalr	1812(ra) # 80005cf0 <_Z11stringToIntPKc>
    800055e4:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    800055e8:	00004517          	auipc	a0,0x4
    800055ec:	dd050513          	addi	a0,a0,-560 # 800093b8 <CONSOLE_STATUS+0x3a8>
    800055f0:	00000097          	auipc	ra,0x0
    800055f4:	5a0080e7          	jalr	1440(ra) # 80005b90 <_Z11printStringPKc>
    800055f8:	00000613          	li	a2,0
    800055fc:	00a00593          	li	a1,10
    80005600:	00090513          	mv	a0,s2
    80005604:	00000097          	auipc	ra,0x0
    80005608:	73c080e7          	jalr	1852(ra) # 80005d40 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    8000560c:	00004517          	auipc	a0,0x4
    80005610:	dc450513          	addi	a0,a0,-572 # 800093d0 <CONSOLE_STATUS+0x3c0>
    80005614:	00000097          	auipc	ra,0x0
    80005618:	57c080e7          	jalr	1404(ra) # 80005b90 <_Z11printStringPKc>
    8000561c:	00000613          	li	a2,0
    80005620:	00a00593          	li	a1,10
    80005624:	00048513          	mv	a0,s1
    80005628:	00000097          	auipc	ra,0x0
    8000562c:	718080e7          	jalr	1816(ra) # 80005d40 <_Z8printIntiii>
    printString(".\n");
    80005630:	00004517          	auipc	a0,0x4
    80005634:	db850513          	addi	a0,a0,-584 # 800093e8 <CONSOLE_STATUS+0x3d8>
    80005638:	00000097          	auipc	ra,0x0
    8000563c:	558080e7          	jalr	1368(ra) # 80005b90 <_Z11printStringPKc>
    if(threadNum > n) {
    80005640:	0324c463          	blt	s1,s2,80005668 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80005644:	03205c63          	blez	s2,8000567c <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80005648:	03800513          	li	a0,56
    8000564c:	ffffd097          	auipc	ra,0xffffd
    80005650:	abc080e7          	jalr	-1348(ra) # 80002108 <_Znwm>
    80005654:	00050a93          	mv	s5,a0
    80005658:	00048593          	mv	a1,s1
    8000565c:	00001097          	auipc	ra,0x1
    80005660:	804080e7          	jalr	-2044(ra) # 80005e60 <_ZN9BufferCPPC1Ei>
    80005664:	0300006f          	j	80005694 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80005668:	00004517          	auipc	a0,0x4
    8000566c:	d8850513          	addi	a0,a0,-632 # 800093f0 <CONSOLE_STATUS+0x3e0>
    80005670:	00000097          	auipc	ra,0x0
    80005674:	520080e7          	jalr	1312(ra) # 80005b90 <_Z11printStringPKc>
        return;
    80005678:	0140006f          	j	8000568c <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    8000567c:	00004517          	auipc	a0,0x4
    80005680:	db450513          	addi	a0,a0,-588 # 80009430 <CONSOLE_STATUS+0x420>
    80005684:	00000097          	auipc	ra,0x0
    80005688:	50c080e7          	jalr	1292(ra) # 80005b90 <_Z11printStringPKc>
        return;
    8000568c:	000b8113          	mv	sp,s7
    80005690:	2380006f          	j	800058c8 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80005694:	01000513          	li	a0,16
    80005698:	ffffd097          	auipc	ra,0xffffd
    8000569c:	a70080e7          	jalr	-1424(ra) # 80002108 <_Znwm>
    800056a0:	00050493          	mv	s1,a0
    800056a4:	00000593          	li	a1,0
    800056a8:	ffffc097          	auipc	ra,0xffffc
    800056ac:	18c080e7          	jalr	396(ra) # 80001834 <_ZN9SemaphoreC1Ej>
    800056b0:	00006797          	auipc	a5,0x6
    800056b4:	4897b023          	sd	s1,1152(a5) # 8000bb30 <_ZL10waitForAll>
    Thread* threads[threadNum];
    800056b8:	00391793          	slli	a5,s2,0x3
    800056bc:	00f78793          	addi	a5,a5,15
    800056c0:	ff07f793          	andi	a5,a5,-16
    800056c4:	40f10133          	sub	sp,sp,a5
    800056c8:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    800056cc:	0019071b          	addiw	a4,s2,1
    800056d0:	00171793          	slli	a5,a4,0x1
    800056d4:	00e787b3          	add	a5,a5,a4
    800056d8:	00379793          	slli	a5,a5,0x3
    800056dc:	00f78793          	addi	a5,a5,15
    800056e0:	ff07f793          	andi	a5,a5,-16
    800056e4:	40f10133          	sub	sp,sp,a5
    800056e8:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    800056ec:	00191c13          	slli	s8,s2,0x1
    800056f0:	012c07b3          	add	a5,s8,s2
    800056f4:	00379793          	slli	a5,a5,0x3
    800056f8:	00fa07b3          	add	a5,s4,a5
    800056fc:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80005700:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80005704:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80005708:	02800513          	li	a0,40
    8000570c:	ffffd097          	auipc	ra,0xffffd
    80005710:	9fc080e7          	jalr	-1540(ra) # 80002108 <_Znwm>
    80005714:	00050b13          	mv	s6,a0
    80005718:	012c0c33          	add	s8,s8,s2
    8000571c:	003c1c13          	slli	s8,s8,0x3
    80005720:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80005724:	ffffc097          	auipc	ra,0xffffc
    80005728:	344080e7          	jalr	836(ra) # 80001a68 <_ZN6ThreadC1Ev>
    8000572c:	00006797          	auipc	a5,0x6
    80005730:	29c78793          	addi	a5,a5,668 # 8000b9c8 <_ZTV12ConsumerSync+0x10>
    80005734:	00fb3023          	sd	a5,0(s6)
    80005738:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    8000573c:	000b0513          	mv	a0,s6
    80005740:	ffffc097          	auipc	ra,0xffffc
    80005744:	234080e7          	jalr	564(ra) # 80001974 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005748:	00000493          	li	s1,0
    8000574c:	0380006f          	j	80005784 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005750:	00006797          	auipc	a5,0x6
    80005754:	25078793          	addi	a5,a5,592 # 8000b9a0 <_ZTV12ProducerSync+0x10>
    80005758:	00fcb023          	sd	a5,0(s9)
    8000575c:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80005760:	00349793          	slli	a5,s1,0x3
    80005764:	00f987b3          	add	a5,s3,a5
    80005768:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    8000576c:	00349793          	slli	a5,s1,0x3
    80005770:	00f987b3          	add	a5,s3,a5
    80005774:	0007b503          	ld	a0,0(a5)
    80005778:	ffffc097          	auipc	ra,0xffffc
    8000577c:	1fc080e7          	jalr	508(ra) # 80001974 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005780:	0014849b          	addiw	s1,s1,1
    80005784:	0b24d063          	bge	s1,s2,80005824 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80005788:	00149793          	slli	a5,s1,0x1
    8000578c:	009787b3          	add	a5,a5,s1
    80005790:	00379793          	slli	a5,a5,0x3
    80005794:	00fa07b3          	add	a5,s4,a5
    80005798:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    8000579c:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    800057a0:	00006717          	auipc	a4,0x6
    800057a4:	39073703          	ld	a4,912(a4) # 8000bb30 <_ZL10waitForAll>
    800057a8:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    800057ac:	02905863          	blez	s1,800057dc <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    800057b0:	02800513          	li	a0,40
    800057b4:	ffffd097          	auipc	ra,0xffffd
    800057b8:	954080e7          	jalr	-1708(ra) # 80002108 <_Znwm>
    800057bc:	00050c93          	mv	s9,a0
    800057c0:	00149c13          	slli	s8,s1,0x1
    800057c4:	009c0c33          	add	s8,s8,s1
    800057c8:	003c1c13          	slli	s8,s8,0x3
    800057cc:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    800057d0:	ffffc097          	auipc	ra,0xffffc
    800057d4:	298080e7          	jalr	664(ra) # 80001a68 <_ZN6ThreadC1Ev>
    800057d8:	f79ff06f          	j	80005750 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    800057dc:	02800513          	li	a0,40
    800057e0:	ffffd097          	auipc	ra,0xffffd
    800057e4:	928080e7          	jalr	-1752(ra) # 80002108 <_Znwm>
    800057e8:	00050c93          	mv	s9,a0
    800057ec:	00149c13          	slli	s8,s1,0x1
    800057f0:	009c0c33          	add	s8,s8,s1
    800057f4:	003c1c13          	slli	s8,s8,0x3
    800057f8:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    800057fc:	ffffc097          	auipc	ra,0xffffc
    80005800:	26c080e7          	jalr	620(ra) # 80001a68 <_ZN6ThreadC1Ev>
    80005804:	00006797          	auipc	a5,0x6
    80005808:	17478793          	addi	a5,a5,372 # 8000b978 <_ZTV16ProducerKeyboard+0x10>
    8000580c:	00fcb023          	sd	a5,0(s9)
    80005810:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80005814:	00349793          	slli	a5,s1,0x3
    80005818:	00f987b3          	add	a5,s3,a5
    8000581c:	0197b023          	sd	s9,0(a5)
    80005820:	f4dff06f          	j	8000576c <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80005824:	ffffc097          	auipc	ra,0xffffc
    80005828:	1c4080e7          	jalr	452(ra) # 800019e8 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    8000582c:	00000493          	li	s1,0
    80005830:	00994e63          	blt	s2,s1,8000584c <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80005834:	00006517          	auipc	a0,0x6
    80005838:	2fc53503          	ld	a0,764(a0) # 8000bb30 <_ZL10waitForAll>
    8000583c:	ffffc097          	auipc	ra,0xffffc
    80005840:	030080e7          	jalr	48(ra) # 8000186c <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80005844:	0014849b          	addiw	s1,s1,1
    80005848:	fe9ff06f          	j	80005830 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    8000584c:	00000493          	li	s1,0
    80005850:	0080006f          	j	80005858 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80005854:	0014849b          	addiw	s1,s1,1
    80005858:	0324d263          	bge	s1,s2,8000587c <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    8000585c:	00349793          	slli	a5,s1,0x3
    80005860:	00f987b3          	add	a5,s3,a5
    80005864:	0007b503          	ld	a0,0(a5)
    80005868:	fe0506e3          	beqz	a0,80005854 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    8000586c:	00053783          	ld	a5,0(a0)
    80005870:	0087b783          	ld	a5,8(a5)
    80005874:	000780e7          	jalr	a5
    80005878:	fddff06f          	j	80005854 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    8000587c:	000b0a63          	beqz	s6,80005890 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80005880:	000b3783          	ld	a5,0(s6)
    80005884:	0087b783          	ld	a5,8(a5)
    80005888:	000b0513          	mv	a0,s6
    8000588c:	000780e7          	jalr	a5
    delete waitForAll;
    80005890:	00006517          	auipc	a0,0x6
    80005894:	2a053503          	ld	a0,672(a0) # 8000bb30 <_ZL10waitForAll>
    80005898:	00050863          	beqz	a0,800058a8 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    8000589c:	00053783          	ld	a5,0(a0)
    800058a0:	0087b783          	ld	a5,8(a5)
    800058a4:	000780e7          	jalr	a5
    delete buffer;
    800058a8:	000a8e63          	beqz	s5,800058c4 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    800058ac:	000a8513          	mv	a0,s5
    800058b0:	00001097          	auipc	ra,0x1
    800058b4:	8a8080e7          	jalr	-1880(ra) # 80006158 <_ZN9BufferCPPD1Ev>
    800058b8:	000a8513          	mv	a0,s5
    800058bc:	ffffd097          	auipc	ra,0xffffd
    800058c0:	874080e7          	jalr	-1932(ra) # 80002130 <_ZdlPv>
    800058c4:	000b8113          	mv	sp,s7

}
    800058c8:	f8040113          	addi	sp,s0,-128
    800058cc:	07813083          	ld	ra,120(sp)
    800058d0:	07013403          	ld	s0,112(sp)
    800058d4:	06813483          	ld	s1,104(sp)
    800058d8:	06013903          	ld	s2,96(sp)
    800058dc:	05813983          	ld	s3,88(sp)
    800058e0:	05013a03          	ld	s4,80(sp)
    800058e4:	04813a83          	ld	s5,72(sp)
    800058e8:	04013b03          	ld	s6,64(sp)
    800058ec:	03813b83          	ld	s7,56(sp)
    800058f0:	03013c03          	ld	s8,48(sp)
    800058f4:	02813c83          	ld	s9,40(sp)
    800058f8:	08010113          	addi	sp,sp,128
    800058fc:	00008067          	ret
    80005900:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80005904:	000a8513          	mv	a0,s5
    80005908:	ffffd097          	auipc	ra,0xffffd
    8000590c:	828080e7          	jalr	-2008(ra) # 80002130 <_ZdlPv>
    80005910:	00048513          	mv	a0,s1
    80005914:	00007097          	auipc	ra,0x7
    80005918:	304080e7          	jalr	772(ra) # 8000cc18 <_Unwind_Resume>
    8000591c:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80005920:	00048513          	mv	a0,s1
    80005924:	ffffd097          	auipc	ra,0xffffd
    80005928:	80c080e7          	jalr	-2036(ra) # 80002130 <_ZdlPv>
    8000592c:	00090513          	mv	a0,s2
    80005930:	00007097          	auipc	ra,0x7
    80005934:	2e8080e7          	jalr	744(ra) # 8000cc18 <_Unwind_Resume>
    80005938:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    8000593c:	000b0513          	mv	a0,s6
    80005940:	ffffc097          	auipc	ra,0xffffc
    80005944:	7f0080e7          	jalr	2032(ra) # 80002130 <_ZdlPv>
    80005948:	00048513          	mv	a0,s1
    8000594c:	00007097          	auipc	ra,0x7
    80005950:	2cc080e7          	jalr	716(ra) # 8000cc18 <_Unwind_Resume>
    80005954:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80005958:	000c8513          	mv	a0,s9
    8000595c:	ffffc097          	auipc	ra,0xffffc
    80005960:	7d4080e7          	jalr	2004(ra) # 80002130 <_ZdlPv>
    80005964:	00048513          	mv	a0,s1
    80005968:	00007097          	auipc	ra,0x7
    8000596c:	2b0080e7          	jalr	688(ra) # 8000cc18 <_Unwind_Resume>
    80005970:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80005974:	000c8513          	mv	a0,s9
    80005978:	ffffc097          	auipc	ra,0xffffc
    8000597c:	7b8080e7          	jalr	1976(ra) # 80002130 <_ZdlPv>
    80005980:	00048513          	mv	a0,s1
    80005984:	00007097          	auipc	ra,0x7
    80005988:	294080e7          	jalr	660(ra) # 8000cc18 <_Unwind_Resume>

000000008000598c <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    8000598c:	ff010113          	addi	sp,sp,-16
    80005990:	00113423          	sd	ra,8(sp)
    80005994:	00813023          	sd	s0,0(sp)
    80005998:	01010413          	addi	s0,sp,16
    8000599c:	00006797          	auipc	a5,0x6
    800059a0:	02c78793          	addi	a5,a5,44 # 8000b9c8 <_ZTV12ConsumerSync+0x10>
    800059a4:	00f53023          	sd	a5,0(a0)
    800059a8:	ffffc097          	auipc	ra,0xffffc
    800059ac:	f48080e7          	jalr	-184(ra) # 800018f0 <_ZN6ThreadD1Ev>
    800059b0:	00813083          	ld	ra,8(sp)
    800059b4:	00013403          	ld	s0,0(sp)
    800059b8:	01010113          	addi	sp,sp,16
    800059bc:	00008067          	ret

00000000800059c0 <_ZN12ConsumerSyncD0Ev>:
    800059c0:	fe010113          	addi	sp,sp,-32
    800059c4:	00113c23          	sd	ra,24(sp)
    800059c8:	00813823          	sd	s0,16(sp)
    800059cc:	00913423          	sd	s1,8(sp)
    800059d0:	02010413          	addi	s0,sp,32
    800059d4:	00050493          	mv	s1,a0
    800059d8:	00006797          	auipc	a5,0x6
    800059dc:	ff078793          	addi	a5,a5,-16 # 8000b9c8 <_ZTV12ConsumerSync+0x10>
    800059e0:	00f53023          	sd	a5,0(a0)
    800059e4:	ffffc097          	auipc	ra,0xffffc
    800059e8:	f0c080e7          	jalr	-244(ra) # 800018f0 <_ZN6ThreadD1Ev>
    800059ec:	00048513          	mv	a0,s1
    800059f0:	ffffc097          	auipc	ra,0xffffc
    800059f4:	740080e7          	jalr	1856(ra) # 80002130 <_ZdlPv>
    800059f8:	01813083          	ld	ra,24(sp)
    800059fc:	01013403          	ld	s0,16(sp)
    80005a00:	00813483          	ld	s1,8(sp)
    80005a04:	02010113          	addi	sp,sp,32
    80005a08:	00008067          	ret

0000000080005a0c <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80005a0c:	ff010113          	addi	sp,sp,-16
    80005a10:	00113423          	sd	ra,8(sp)
    80005a14:	00813023          	sd	s0,0(sp)
    80005a18:	01010413          	addi	s0,sp,16
    80005a1c:	00006797          	auipc	a5,0x6
    80005a20:	f8478793          	addi	a5,a5,-124 # 8000b9a0 <_ZTV12ProducerSync+0x10>
    80005a24:	00f53023          	sd	a5,0(a0)
    80005a28:	ffffc097          	auipc	ra,0xffffc
    80005a2c:	ec8080e7          	jalr	-312(ra) # 800018f0 <_ZN6ThreadD1Ev>
    80005a30:	00813083          	ld	ra,8(sp)
    80005a34:	00013403          	ld	s0,0(sp)
    80005a38:	01010113          	addi	sp,sp,16
    80005a3c:	00008067          	ret

0000000080005a40 <_ZN12ProducerSyncD0Ev>:
    80005a40:	fe010113          	addi	sp,sp,-32
    80005a44:	00113c23          	sd	ra,24(sp)
    80005a48:	00813823          	sd	s0,16(sp)
    80005a4c:	00913423          	sd	s1,8(sp)
    80005a50:	02010413          	addi	s0,sp,32
    80005a54:	00050493          	mv	s1,a0
    80005a58:	00006797          	auipc	a5,0x6
    80005a5c:	f4878793          	addi	a5,a5,-184 # 8000b9a0 <_ZTV12ProducerSync+0x10>
    80005a60:	00f53023          	sd	a5,0(a0)
    80005a64:	ffffc097          	auipc	ra,0xffffc
    80005a68:	e8c080e7          	jalr	-372(ra) # 800018f0 <_ZN6ThreadD1Ev>
    80005a6c:	00048513          	mv	a0,s1
    80005a70:	ffffc097          	auipc	ra,0xffffc
    80005a74:	6c0080e7          	jalr	1728(ra) # 80002130 <_ZdlPv>
    80005a78:	01813083          	ld	ra,24(sp)
    80005a7c:	01013403          	ld	s0,16(sp)
    80005a80:	00813483          	ld	s1,8(sp)
    80005a84:	02010113          	addi	sp,sp,32
    80005a88:	00008067          	ret

0000000080005a8c <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80005a8c:	ff010113          	addi	sp,sp,-16
    80005a90:	00113423          	sd	ra,8(sp)
    80005a94:	00813023          	sd	s0,0(sp)
    80005a98:	01010413          	addi	s0,sp,16
    80005a9c:	00006797          	auipc	a5,0x6
    80005aa0:	edc78793          	addi	a5,a5,-292 # 8000b978 <_ZTV16ProducerKeyboard+0x10>
    80005aa4:	00f53023          	sd	a5,0(a0)
    80005aa8:	ffffc097          	auipc	ra,0xffffc
    80005aac:	e48080e7          	jalr	-440(ra) # 800018f0 <_ZN6ThreadD1Ev>
    80005ab0:	00813083          	ld	ra,8(sp)
    80005ab4:	00013403          	ld	s0,0(sp)
    80005ab8:	01010113          	addi	sp,sp,16
    80005abc:	00008067          	ret

0000000080005ac0 <_ZN16ProducerKeyboardD0Ev>:
    80005ac0:	fe010113          	addi	sp,sp,-32
    80005ac4:	00113c23          	sd	ra,24(sp)
    80005ac8:	00813823          	sd	s0,16(sp)
    80005acc:	00913423          	sd	s1,8(sp)
    80005ad0:	02010413          	addi	s0,sp,32
    80005ad4:	00050493          	mv	s1,a0
    80005ad8:	00006797          	auipc	a5,0x6
    80005adc:	ea078793          	addi	a5,a5,-352 # 8000b978 <_ZTV16ProducerKeyboard+0x10>
    80005ae0:	00f53023          	sd	a5,0(a0)
    80005ae4:	ffffc097          	auipc	ra,0xffffc
    80005ae8:	e0c080e7          	jalr	-500(ra) # 800018f0 <_ZN6ThreadD1Ev>
    80005aec:	00048513          	mv	a0,s1
    80005af0:	ffffc097          	auipc	ra,0xffffc
    80005af4:	640080e7          	jalr	1600(ra) # 80002130 <_ZdlPv>
    80005af8:	01813083          	ld	ra,24(sp)
    80005afc:	01013403          	ld	s0,16(sp)
    80005b00:	00813483          	ld	s1,8(sp)
    80005b04:	02010113          	addi	sp,sp,32
    80005b08:	00008067          	ret

0000000080005b0c <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80005b0c:	ff010113          	addi	sp,sp,-16
    80005b10:	00113423          	sd	ra,8(sp)
    80005b14:	00813023          	sd	s0,0(sp)
    80005b18:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80005b1c:	02053583          	ld	a1,32(a0)
    80005b20:	fffff097          	auipc	ra,0xfffff
    80005b24:	7e4080e7          	jalr	2020(ra) # 80005304 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80005b28:	00813083          	ld	ra,8(sp)
    80005b2c:	00013403          	ld	s0,0(sp)
    80005b30:	01010113          	addi	sp,sp,16
    80005b34:	00008067          	ret

0000000080005b38 <_ZN12ProducerSync3runEv>:
    void run() override {
    80005b38:	ff010113          	addi	sp,sp,-16
    80005b3c:	00113423          	sd	ra,8(sp)
    80005b40:	00813023          	sd	s0,0(sp)
    80005b44:	01010413          	addi	s0,sp,16
        producer(td);
    80005b48:	02053583          	ld	a1,32(a0)
    80005b4c:	00000097          	auipc	ra,0x0
    80005b50:	878080e7          	jalr	-1928(ra) # 800053c4 <_ZN12ProducerSync8producerEPv>
    }
    80005b54:	00813083          	ld	ra,8(sp)
    80005b58:	00013403          	ld	s0,0(sp)
    80005b5c:	01010113          	addi	sp,sp,16
    80005b60:	00008067          	ret

0000000080005b64 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80005b64:	ff010113          	addi	sp,sp,-16
    80005b68:	00113423          	sd	ra,8(sp)
    80005b6c:	00813023          	sd	s0,0(sp)
    80005b70:	01010413          	addi	s0,sp,16
        consumer(td);
    80005b74:	02053583          	ld	a1,32(a0)
    80005b78:	00000097          	auipc	ra,0x0
    80005b7c:	8e0080e7          	jalr	-1824(ra) # 80005458 <_ZN12ConsumerSync8consumerEPv>
    }
    80005b80:	00813083          	ld	ra,8(sp)
    80005b84:	00013403          	ld	s0,0(sp)
    80005b88:	01010113          	addi	sp,sp,16
    80005b8c:	00008067          	ret

0000000080005b90 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80005b90:	fe010113          	addi	sp,sp,-32
    80005b94:	00113c23          	sd	ra,24(sp)
    80005b98:	00813823          	sd	s0,16(sp)
    80005b9c:	00913423          	sd	s1,8(sp)
    80005ba0:	02010413          	addi	s0,sp,32
    80005ba4:	00050493          	mv	s1,a0
    LOCK();
    80005ba8:	00100613          	li	a2,1
    80005bac:	00000593          	li	a1,0
    80005bb0:	00006517          	auipc	a0,0x6
    80005bb4:	f8850513          	addi	a0,a0,-120 # 8000bb38 <lockPrint>
    80005bb8:	ffffc097          	auipc	ra,0xffffc
    80005bbc:	8cc080e7          	jalr	-1844(ra) # 80001484 <copy_and_swap>
    80005bc0:	00050863          	beqz	a0,80005bd0 <_Z11printStringPKc+0x40>
    80005bc4:	ffffc097          	auipc	ra,0xffffc
    80005bc8:	a04080e7          	jalr	-1532(ra) # 800015c8 <_Z15thread_dispatchv>
    80005bcc:	fddff06f          	j	80005ba8 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80005bd0:	0004c503          	lbu	a0,0(s1)
    80005bd4:	00050a63          	beqz	a0,80005be8 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80005bd8:	ffffc097          	auipc	ra,0xffffc
    80005bdc:	ba4080e7          	jalr	-1116(ra) # 8000177c <_Z4putcc>
        string++;
    80005be0:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80005be4:	fedff06f          	j	80005bd0 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80005be8:	00000613          	li	a2,0
    80005bec:	00100593          	li	a1,1
    80005bf0:	00006517          	auipc	a0,0x6
    80005bf4:	f4850513          	addi	a0,a0,-184 # 8000bb38 <lockPrint>
    80005bf8:	ffffc097          	auipc	ra,0xffffc
    80005bfc:	88c080e7          	jalr	-1908(ra) # 80001484 <copy_and_swap>
    80005c00:	fe0514e3          	bnez	a0,80005be8 <_Z11printStringPKc+0x58>
}
    80005c04:	01813083          	ld	ra,24(sp)
    80005c08:	01013403          	ld	s0,16(sp)
    80005c0c:	00813483          	ld	s1,8(sp)
    80005c10:	02010113          	addi	sp,sp,32
    80005c14:	00008067          	ret

0000000080005c18 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80005c18:	fd010113          	addi	sp,sp,-48
    80005c1c:	02113423          	sd	ra,40(sp)
    80005c20:	02813023          	sd	s0,32(sp)
    80005c24:	00913c23          	sd	s1,24(sp)
    80005c28:	01213823          	sd	s2,16(sp)
    80005c2c:	01313423          	sd	s3,8(sp)
    80005c30:	01413023          	sd	s4,0(sp)
    80005c34:	03010413          	addi	s0,sp,48
    80005c38:	00050993          	mv	s3,a0
    80005c3c:	00058a13          	mv	s4,a1
    LOCK();
    80005c40:	00100613          	li	a2,1
    80005c44:	00000593          	li	a1,0
    80005c48:	00006517          	auipc	a0,0x6
    80005c4c:	ef050513          	addi	a0,a0,-272 # 8000bb38 <lockPrint>
    80005c50:	ffffc097          	auipc	ra,0xffffc
    80005c54:	834080e7          	jalr	-1996(ra) # 80001484 <copy_and_swap>
    80005c58:	00050863          	beqz	a0,80005c68 <_Z9getStringPci+0x50>
    80005c5c:	ffffc097          	auipc	ra,0xffffc
    80005c60:	96c080e7          	jalr	-1684(ra) # 800015c8 <_Z15thread_dispatchv>
    80005c64:	fddff06f          	j	80005c40 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80005c68:	00000913          	li	s2,0
    80005c6c:	00090493          	mv	s1,s2
    80005c70:	0019091b          	addiw	s2,s2,1
    80005c74:	03495a63          	bge	s2,s4,80005ca8 <_Z9getStringPci+0x90>
        cc = getc();
    80005c78:	ffffc097          	auipc	ra,0xffffc
    80005c7c:	acc080e7          	jalr	-1332(ra) # 80001744 <_Z4getcv>
        if(cc < 1)
    80005c80:	02050463          	beqz	a0,80005ca8 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80005c84:	009984b3          	add	s1,s3,s1
    80005c88:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80005c8c:	00a00793          	li	a5,10
    80005c90:	00f50a63          	beq	a0,a5,80005ca4 <_Z9getStringPci+0x8c>
    80005c94:	00d00793          	li	a5,13
    80005c98:	fcf51ae3          	bne	a0,a5,80005c6c <_Z9getStringPci+0x54>
        buf[i++] = c;
    80005c9c:	00090493          	mv	s1,s2
    80005ca0:	0080006f          	j	80005ca8 <_Z9getStringPci+0x90>
    80005ca4:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005ca8:	009984b3          	add	s1,s3,s1
    80005cac:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005cb0:	00000613          	li	a2,0
    80005cb4:	00100593          	li	a1,1
    80005cb8:	00006517          	auipc	a0,0x6
    80005cbc:	e8050513          	addi	a0,a0,-384 # 8000bb38 <lockPrint>
    80005cc0:	ffffb097          	auipc	ra,0xffffb
    80005cc4:	7c4080e7          	jalr	1988(ra) # 80001484 <copy_and_swap>
    80005cc8:	fe0514e3          	bnez	a0,80005cb0 <_Z9getStringPci+0x98>
    return buf;
}
    80005ccc:	00098513          	mv	a0,s3
    80005cd0:	02813083          	ld	ra,40(sp)
    80005cd4:	02013403          	ld	s0,32(sp)
    80005cd8:	01813483          	ld	s1,24(sp)
    80005cdc:	01013903          	ld	s2,16(sp)
    80005ce0:	00813983          	ld	s3,8(sp)
    80005ce4:	00013a03          	ld	s4,0(sp)
    80005ce8:	03010113          	addi	sp,sp,48
    80005cec:	00008067          	ret

0000000080005cf0 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005cf0:	ff010113          	addi	sp,sp,-16
    80005cf4:	00813423          	sd	s0,8(sp)
    80005cf8:	01010413          	addi	s0,sp,16
    80005cfc:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005d00:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005d04:	0006c603          	lbu	a2,0(a3)
    80005d08:	fd06071b          	addiw	a4,a2,-48
    80005d0c:	0ff77713          	andi	a4,a4,255
    80005d10:	00900793          	li	a5,9
    80005d14:	02e7e063          	bltu	a5,a4,80005d34 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005d18:	0025179b          	slliw	a5,a0,0x2
    80005d1c:	00a787bb          	addw	a5,a5,a0
    80005d20:	0017979b          	slliw	a5,a5,0x1
    80005d24:	00168693          	addi	a3,a3,1
    80005d28:	00c787bb          	addw	a5,a5,a2
    80005d2c:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005d30:	fd5ff06f          	j	80005d04 <_Z11stringToIntPKc+0x14>
    return n;
}
    80005d34:	00813403          	ld	s0,8(sp)
    80005d38:	01010113          	addi	sp,sp,16
    80005d3c:	00008067          	ret

0000000080005d40 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80005d40:	fc010113          	addi	sp,sp,-64
    80005d44:	02113c23          	sd	ra,56(sp)
    80005d48:	02813823          	sd	s0,48(sp)
    80005d4c:	02913423          	sd	s1,40(sp)
    80005d50:	03213023          	sd	s2,32(sp)
    80005d54:	01313c23          	sd	s3,24(sp)
    80005d58:	04010413          	addi	s0,sp,64
    80005d5c:	00050493          	mv	s1,a0
    80005d60:	00058913          	mv	s2,a1
    80005d64:	00060993          	mv	s3,a2
    LOCK();
    80005d68:	00100613          	li	a2,1
    80005d6c:	00000593          	li	a1,0
    80005d70:	00006517          	auipc	a0,0x6
    80005d74:	dc850513          	addi	a0,a0,-568 # 8000bb38 <lockPrint>
    80005d78:	ffffb097          	auipc	ra,0xffffb
    80005d7c:	70c080e7          	jalr	1804(ra) # 80001484 <copy_and_swap>
    80005d80:	00050863          	beqz	a0,80005d90 <_Z8printIntiii+0x50>
    80005d84:	ffffc097          	auipc	ra,0xffffc
    80005d88:	844080e7          	jalr	-1980(ra) # 800015c8 <_Z15thread_dispatchv>
    80005d8c:	fddff06f          	j	80005d68 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80005d90:	00098463          	beqz	s3,80005d98 <_Z8printIntiii+0x58>
    80005d94:	0804c463          	bltz	s1,80005e1c <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005d98:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005d9c:	00000593          	li	a1,0
    }

    i = 0;
    80005da0:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80005da4:	0009079b          	sext.w	a5,s2
    80005da8:	0325773b          	remuw	a4,a0,s2
    80005dac:	00048613          	mv	a2,s1
    80005db0:	0014849b          	addiw	s1,s1,1
    80005db4:	02071693          	slli	a3,a4,0x20
    80005db8:	0206d693          	srli	a3,a3,0x20
    80005dbc:	00006717          	auipc	a4,0x6
    80005dc0:	c2470713          	addi	a4,a4,-988 # 8000b9e0 <digits>
    80005dc4:	00d70733          	add	a4,a4,a3
    80005dc8:	00074683          	lbu	a3,0(a4)
    80005dcc:	fd040713          	addi	a4,s0,-48
    80005dd0:	00c70733          	add	a4,a4,a2
    80005dd4:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80005dd8:	0005071b          	sext.w	a4,a0
    80005ddc:	0325553b          	divuw	a0,a0,s2
    80005de0:	fcf772e3          	bgeu	a4,a5,80005da4 <_Z8printIntiii+0x64>
    if(neg)
    80005de4:	00058c63          	beqz	a1,80005dfc <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80005de8:	fd040793          	addi	a5,s0,-48
    80005dec:	009784b3          	add	s1,a5,s1
    80005df0:	02d00793          	li	a5,45
    80005df4:	fef48823          	sb	a5,-16(s1)
    80005df8:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80005dfc:	fff4849b          	addiw	s1,s1,-1
    80005e00:	0204c463          	bltz	s1,80005e28 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80005e04:	fd040793          	addi	a5,s0,-48
    80005e08:	009787b3          	add	a5,a5,s1
    80005e0c:	ff07c503          	lbu	a0,-16(a5)
    80005e10:	ffffc097          	auipc	ra,0xffffc
    80005e14:	96c080e7          	jalr	-1684(ra) # 8000177c <_Z4putcc>
    80005e18:	fe5ff06f          	j	80005dfc <_Z8printIntiii+0xbc>
        x = -xx;
    80005e1c:	4090053b          	negw	a0,s1
        neg = 1;
    80005e20:	00100593          	li	a1,1
        x = -xx;
    80005e24:	f7dff06f          	j	80005da0 <_Z8printIntiii+0x60>

    UNLOCK();
    80005e28:	00000613          	li	a2,0
    80005e2c:	00100593          	li	a1,1
    80005e30:	00006517          	auipc	a0,0x6
    80005e34:	d0850513          	addi	a0,a0,-760 # 8000bb38 <lockPrint>
    80005e38:	ffffb097          	auipc	ra,0xffffb
    80005e3c:	64c080e7          	jalr	1612(ra) # 80001484 <copy_and_swap>
    80005e40:	fe0514e3          	bnez	a0,80005e28 <_Z8printIntiii+0xe8>
    80005e44:	03813083          	ld	ra,56(sp)
    80005e48:	03013403          	ld	s0,48(sp)
    80005e4c:	02813483          	ld	s1,40(sp)
    80005e50:	02013903          	ld	s2,32(sp)
    80005e54:	01813983          	ld	s3,24(sp)
    80005e58:	04010113          	addi	sp,sp,64
    80005e5c:	00008067          	ret

0000000080005e60 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005e60:	fd010113          	addi	sp,sp,-48
    80005e64:	02113423          	sd	ra,40(sp)
    80005e68:	02813023          	sd	s0,32(sp)
    80005e6c:	00913c23          	sd	s1,24(sp)
    80005e70:	01213823          	sd	s2,16(sp)
    80005e74:	01313423          	sd	s3,8(sp)
    80005e78:	03010413          	addi	s0,sp,48
    80005e7c:	00050493          	mv	s1,a0
    80005e80:	00058913          	mv	s2,a1
    80005e84:	0015879b          	addiw	a5,a1,1
    80005e88:	0007851b          	sext.w	a0,a5
    80005e8c:	00f4a023          	sw	a5,0(s1)
    80005e90:	0004a823          	sw	zero,16(s1)
    80005e94:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005e98:	00251513          	slli	a0,a0,0x2
    80005e9c:	ffffb097          	auipc	ra,0xffffb
    80005ea0:	624080e7          	jalr	1572(ra) # 800014c0 <_Z9mem_allocm>
    80005ea4:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005ea8:	01000513          	li	a0,16
    80005eac:	ffffc097          	auipc	ra,0xffffc
    80005eb0:	25c080e7          	jalr	604(ra) # 80002108 <_Znwm>
    80005eb4:	00050993          	mv	s3,a0
    80005eb8:	00000593          	li	a1,0
    80005ebc:	ffffc097          	auipc	ra,0xffffc
    80005ec0:	978080e7          	jalr	-1672(ra) # 80001834 <_ZN9SemaphoreC1Ej>
    80005ec4:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80005ec8:	01000513          	li	a0,16
    80005ecc:	ffffc097          	auipc	ra,0xffffc
    80005ed0:	23c080e7          	jalr	572(ra) # 80002108 <_Znwm>
    80005ed4:	00050993          	mv	s3,a0
    80005ed8:	00090593          	mv	a1,s2
    80005edc:	ffffc097          	auipc	ra,0xffffc
    80005ee0:	958080e7          	jalr	-1704(ra) # 80001834 <_ZN9SemaphoreC1Ej>
    80005ee4:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80005ee8:	01000513          	li	a0,16
    80005eec:	ffffc097          	auipc	ra,0xffffc
    80005ef0:	21c080e7          	jalr	540(ra) # 80002108 <_Znwm>
    80005ef4:	00050913          	mv	s2,a0
    80005ef8:	00100593          	li	a1,1
    80005efc:	ffffc097          	auipc	ra,0xffffc
    80005f00:	938080e7          	jalr	-1736(ra) # 80001834 <_ZN9SemaphoreC1Ej>
    80005f04:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005f08:	01000513          	li	a0,16
    80005f0c:	ffffc097          	auipc	ra,0xffffc
    80005f10:	1fc080e7          	jalr	508(ra) # 80002108 <_Znwm>
    80005f14:	00050913          	mv	s2,a0
    80005f18:	00100593          	li	a1,1
    80005f1c:	ffffc097          	auipc	ra,0xffffc
    80005f20:	918080e7          	jalr	-1768(ra) # 80001834 <_ZN9SemaphoreC1Ej>
    80005f24:	0324b823          	sd	s2,48(s1)
}
    80005f28:	02813083          	ld	ra,40(sp)
    80005f2c:	02013403          	ld	s0,32(sp)
    80005f30:	01813483          	ld	s1,24(sp)
    80005f34:	01013903          	ld	s2,16(sp)
    80005f38:	00813983          	ld	s3,8(sp)
    80005f3c:	03010113          	addi	sp,sp,48
    80005f40:	00008067          	ret
    80005f44:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005f48:	00098513          	mv	a0,s3
    80005f4c:	ffffc097          	auipc	ra,0xffffc
    80005f50:	1e4080e7          	jalr	484(ra) # 80002130 <_ZdlPv>
    80005f54:	00048513          	mv	a0,s1
    80005f58:	00007097          	auipc	ra,0x7
    80005f5c:	cc0080e7          	jalr	-832(ra) # 8000cc18 <_Unwind_Resume>
    80005f60:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80005f64:	00098513          	mv	a0,s3
    80005f68:	ffffc097          	auipc	ra,0xffffc
    80005f6c:	1c8080e7          	jalr	456(ra) # 80002130 <_ZdlPv>
    80005f70:	00048513          	mv	a0,s1
    80005f74:	00007097          	auipc	ra,0x7
    80005f78:	ca4080e7          	jalr	-860(ra) # 8000cc18 <_Unwind_Resume>
    80005f7c:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005f80:	00090513          	mv	a0,s2
    80005f84:	ffffc097          	auipc	ra,0xffffc
    80005f88:	1ac080e7          	jalr	428(ra) # 80002130 <_ZdlPv>
    80005f8c:	00048513          	mv	a0,s1
    80005f90:	00007097          	auipc	ra,0x7
    80005f94:	c88080e7          	jalr	-888(ra) # 8000cc18 <_Unwind_Resume>
    80005f98:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80005f9c:	00090513          	mv	a0,s2
    80005fa0:	ffffc097          	auipc	ra,0xffffc
    80005fa4:	190080e7          	jalr	400(ra) # 80002130 <_ZdlPv>
    80005fa8:	00048513          	mv	a0,s1
    80005fac:	00007097          	auipc	ra,0x7
    80005fb0:	c6c080e7          	jalr	-916(ra) # 8000cc18 <_Unwind_Resume>

0000000080005fb4 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80005fb4:	fe010113          	addi	sp,sp,-32
    80005fb8:	00113c23          	sd	ra,24(sp)
    80005fbc:	00813823          	sd	s0,16(sp)
    80005fc0:	00913423          	sd	s1,8(sp)
    80005fc4:	01213023          	sd	s2,0(sp)
    80005fc8:	02010413          	addi	s0,sp,32
    80005fcc:	00050493          	mv	s1,a0
    80005fd0:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005fd4:	01853503          	ld	a0,24(a0)
    80005fd8:	ffffc097          	auipc	ra,0xffffc
    80005fdc:	894080e7          	jalr	-1900(ra) # 8000186c <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80005fe0:	0304b503          	ld	a0,48(s1)
    80005fe4:	ffffc097          	auipc	ra,0xffffc
    80005fe8:	888080e7          	jalr	-1912(ra) # 8000186c <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80005fec:	0084b783          	ld	a5,8(s1)
    80005ff0:	0144a703          	lw	a4,20(s1)
    80005ff4:	00271713          	slli	a4,a4,0x2
    80005ff8:	00e787b3          	add	a5,a5,a4
    80005ffc:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006000:	0144a783          	lw	a5,20(s1)
    80006004:	0017879b          	addiw	a5,a5,1
    80006008:	0004a703          	lw	a4,0(s1)
    8000600c:	02e7e7bb          	remw	a5,a5,a4
    80006010:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80006014:	0304b503          	ld	a0,48(s1)
    80006018:	ffffc097          	auipc	ra,0xffffc
    8000601c:	880080e7          	jalr	-1920(ra) # 80001898 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80006020:	0204b503          	ld	a0,32(s1)
    80006024:	ffffc097          	auipc	ra,0xffffc
    80006028:	874080e7          	jalr	-1932(ra) # 80001898 <_ZN9Semaphore6signalEv>

}
    8000602c:	01813083          	ld	ra,24(sp)
    80006030:	01013403          	ld	s0,16(sp)
    80006034:	00813483          	ld	s1,8(sp)
    80006038:	00013903          	ld	s2,0(sp)
    8000603c:	02010113          	addi	sp,sp,32
    80006040:	00008067          	ret

0000000080006044 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80006044:	fe010113          	addi	sp,sp,-32
    80006048:	00113c23          	sd	ra,24(sp)
    8000604c:	00813823          	sd	s0,16(sp)
    80006050:	00913423          	sd	s1,8(sp)
    80006054:	01213023          	sd	s2,0(sp)
    80006058:	02010413          	addi	s0,sp,32
    8000605c:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80006060:	02053503          	ld	a0,32(a0)
    80006064:	ffffc097          	auipc	ra,0xffffc
    80006068:	808080e7          	jalr	-2040(ra) # 8000186c <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    8000606c:	0284b503          	ld	a0,40(s1)
    80006070:	ffffb097          	auipc	ra,0xffffb
    80006074:	7fc080e7          	jalr	2044(ra) # 8000186c <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80006078:	0084b703          	ld	a4,8(s1)
    8000607c:	0104a783          	lw	a5,16(s1)
    80006080:	00279693          	slli	a3,a5,0x2
    80006084:	00d70733          	add	a4,a4,a3
    80006088:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    8000608c:	0017879b          	addiw	a5,a5,1
    80006090:	0004a703          	lw	a4,0(s1)
    80006094:	02e7e7bb          	remw	a5,a5,a4
    80006098:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    8000609c:	0284b503          	ld	a0,40(s1)
    800060a0:	ffffb097          	auipc	ra,0xffffb
    800060a4:	7f8080e7          	jalr	2040(ra) # 80001898 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    800060a8:	0184b503          	ld	a0,24(s1)
    800060ac:	ffffb097          	auipc	ra,0xffffb
    800060b0:	7ec080e7          	jalr	2028(ra) # 80001898 <_ZN9Semaphore6signalEv>

    return ret;
}
    800060b4:	00090513          	mv	a0,s2
    800060b8:	01813083          	ld	ra,24(sp)
    800060bc:	01013403          	ld	s0,16(sp)
    800060c0:	00813483          	ld	s1,8(sp)
    800060c4:	00013903          	ld	s2,0(sp)
    800060c8:	02010113          	addi	sp,sp,32
    800060cc:	00008067          	ret

00000000800060d0 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    800060d0:	fe010113          	addi	sp,sp,-32
    800060d4:	00113c23          	sd	ra,24(sp)
    800060d8:	00813823          	sd	s0,16(sp)
    800060dc:	00913423          	sd	s1,8(sp)
    800060e0:	01213023          	sd	s2,0(sp)
    800060e4:	02010413          	addi	s0,sp,32
    800060e8:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    800060ec:	02853503          	ld	a0,40(a0)
    800060f0:	ffffb097          	auipc	ra,0xffffb
    800060f4:	77c080e7          	jalr	1916(ra) # 8000186c <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    800060f8:	0304b503          	ld	a0,48(s1)
    800060fc:	ffffb097          	auipc	ra,0xffffb
    80006100:	770080e7          	jalr	1904(ra) # 8000186c <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80006104:	0144a783          	lw	a5,20(s1)
    80006108:	0104a903          	lw	s2,16(s1)
    8000610c:	0327ce63          	blt	a5,s2,80006148 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80006110:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80006114:	0304b503          	ld	a0,48(s1)
    80006118:	ffffb097          	auipc	ra,0xffffb
    8000611c:	780080e7          	jalr	1920(ra) # 80001898 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80006120:	0284b503          	ld	a0,40(s1)
    80006124:	ffffb097          	auipc	ra,0xffffb
    80006128:	774080e7          	jalr	1908(ra) # 80001898 <_ZN9Semaphore6signalEv>

    return ret;
}
    8000612c:	00090513          	mv	a0,s2
    80006130:	01813083          	ld	ra,24(sp)
    80006134:	01013403          	ld	s0,16(sp)
    80006138:	00813483          	ld	s1,8(sp)
    8000613c:	00013903          	ld	s2,0(sp)
    80006140:	02010113          	addi	sp,sp,32
    80006144:	00008067          	ret
        ret = cap - head + tail;
    80006148:	0004a703          	lw	a4,0(s1)
    8000614c:	4127093b          	subw	s2,a4,s2
    80006150:	00f9093b          	addw	s2,s2,a5
    80006154:	fc1ff06f          	j	80006114 <_ZN9BufferCPP6getCntEv+0x44>

0000000080006158 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80006158:	fe010113          	addi	sp,sp,-32
    8000615c:	00113c23          	sd	ra,24(sp)
    80006160:	00813823          	sd	s0,16(sp)
    80006164:	00913423          	sd	s1,8(sp)
    80006168:	02010413          	addi	s0,sp,32
    8000616c:	00050493          	mv	s1,a0
    Console::putc('\n');
    80006170:	00a00513          	li	a0,10
    80006174:	ffffc097          	auipc	ra,0xffffc
    80006178:	dc0080e7          	jalr	-576(ra) # 80001f34 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    8000617c:	00003517          	auipc	a0,0x3
    80006180:	41450513          	addi	a0,a0,1044 # 80009590 <CONSOLE_STATUS+0x580>
    80006184:	00000097          	auipc	ra,0x0
    80006188:	a0c080e7          	jalr	-1524(ra) # 80005b90 <_Z11printStringPKc>
    while (getCnt()) {
    8000618c:	00048513          	mv	a0,s1
    80006190:	00000097          	auipc	ra,0x0
    80006194:	f40080e7          	jalr	-192(ra) # 800060d0 <_ZN9BufferCPP6getCntEv>
    80006198:	02050c63          	beqz	a0,800061d0 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    8000619c:	0084b783          	ld	a5,8(s1)
    800061a0:	0104a703          	lw	a4,16(s1)
    800061a4:	00271713          	slli	a4,a4,0x2
    800061a8:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    800061ac:	0007c503          	lbu	a0,0(a5)
    800061b0:	ffffc097          	auipc	ra,0xffffc
    800061b4:	d84080e7          	jalr	-636(ra) # 80001f34 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    800061b8:	0104a783          	lw	a5,16(s1)
    800061bc:	0017879b          	addiw	a5,a5,1
    800061c0:	0004a703          	lw	a4,0(s1)
    800061c4:	02e7e7bb          	remw	a5,a5,a4
    800061c8:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    800061cc:	fc1ff06f          	j	8000618c <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    800061d0:	02100513          	li	a0,33
    800061d4:	ffffc097          	auipc	ra,0xffffc
    800061d8:	d60080e7          	jalr	-672(ra) # 80001f34 <_ZN7Console4putcEc>
    Console::putc('\n');
    800061dc:	00a00513          	li	a0,10
    800061e0:	ffffc097          	auipc	ra,0xffffc
    800061e4:	d54080e7          	jalr	-684(ra) # 80001f34 <_ZN7Console4putcEc>
    mem_free(buffer);
    800061e8:	0084b503          	ld	a0,8(s1)
    800061ec:	ffffb097          	auipc	ra,0xffffb
    800061f0:	324080e7          	jalr	804(ra) # 80001510 <_Z8mem_freePv>
    delete itemAvailable;
    800061f4:	0204b503          	ld	a0,32(s1)
    800061f8:	00050863          	beqz	a0,80006208 <_ZN9BufferCPPD1Ev+0xb0>
    800061fc:	00053783          	ld	a5,0(a0)
    80006200:	0087b783          	ld	a5,8(a5)
    80006204:	000780e7          	jalr	a5
    delete spaceAvailable;
    80006208:	0184b503          	ld	a0,24(s1)
    8000620c:	00050863          	beqz	a0,8000621c <_ZN9BufferCPPD1Ev+0xc4>
    80006210:	00053783          	ld	a5,0(a0)
    80006214:	0087b783          	ld	a5,8(a5)
    80006218:	000780e7          	jalr	a5
    delete mutexTail;
    8000621c:	0304b503          	ld	a0,48(s1)
    80006220:	00050863          	beqz	a0,80006230 <_ZN9BufferCPPD1Ev+0xd8>
    80006224:	00053783          	ld	a5,0(a0)
    80006228:	0087b783          	ld	a5,8(a5)
    8000622c:	000780e7          	jalr	a5
    delete mutexHead;
    80006230:	0284b503          	ld	a0,40(s1)
    80006234:	00050863          	beqz	a0,80006244 <_ZN9BufferCPPD1Ev+0xec>
    80006238:	00053783          	ld	a5,0(a0)
    8000623c:	0087b783          	ld	a5,8(a5)
    80006240:	000780e7          	jalr	a5
}
    80006244:	01813083          	ld	ra,24(sp)
    80006248:	01013403          	ld	s0,16(sp)
    8000624c:	00813483          	ld	s1,8(sp)
    80006250:	02010113          	addi	sp,sp,32
    80006254:	00008067          	ret

0000000080006258 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80006258:	fe010113          	addi	sp,sp,-32
    8000625c:	00113c23          	sd	ra,24(sp)
    80006260:	00813823          	sd	s0,16(sp)
    80006264:	00913423          	sd	s1,8(sp)
    80006268:	01213023          	sd	s2,0(sp)
    8000626c:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80006270:	00053903          	ld	s2,0(a0)
    int i = 6;
    80006274:	00600493          	li	s1,6
    while (--i > 0) {
    80006278:	fff4849b          	addiw	s1,s1,-1
    8000627c:	04905463          	blez	s1,800062c4 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80006280:	00003517          	auipc	a0,0x3
    80006284:	32850513          	addi	a0,a0,808 # 800095a8 <CONSOLE_STATUS+0x598>
    80006288:	00000097          	auipc	ra,0x0
    8000628c:	908080e7          	jalr	-1784(ra) # 80005b90 <_Z11printStringPKc>
        printInt(sleep_time);
    80006290:	00000613          	li	a2,0
    80006294:	00a00593          	li	a1,10
    80006298:	0009051b          	sext.w	a0,s2
    8000629c:	00000097          	auipc	ra,0x0
    800062a0:	aa4080e7          	jalr	-1372(ra) # 80005d40 <_Z8printIntiii>
        printString(" !\n");
    800062a4:	00003517          	auipc	a0,0x3
    800062a8:	30c50513          	addi	a0,a0,780 # 800095b0 <CONSOLE_STATUS+0x5a0>
    800062ac:	00000097          	auipc	ra,0x0
    800062b0:	8e4080e7          	jalr	-1820(ra) # 80005b90 <_Z11printStringPKc>
        time_sleep(sleep_time);
    800062b4:	00090513          	mv	a0,s2
    800062b8:	ffffb097          	auipc	ra,0xffffb
    800062bc:	450080e7          	jalr	1104(ra) # 80001708 <_Z10time_sleepm>
    while (--i > 0) {
    800062c0:	fb9ff06f          	j	80006278 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    800062c4:	00a00793          	li	a5,10
    800062c8:	02f95933          	divu	s2,s2,a5
    800062cc:	fff90913          	addi	s2,s2,-1
    800062d0:	00006797          	auipc	a5,0x6
    800062d4:	87078793          	addi	a5,a5,-1936 # 8000bb40 <_ZL8finished>
    800062d8:	01278933          	add	s2,a5,s2
    800062dc:	00100793          	li	a5,1
    800062e0:	00f90023          	sb	a5,0(s2)
}
    800062e4:	01813083          	ld	ra,24(sp)
    800062e8:	01013403          	ld	s0,16(sp)
    800062ec:	00813483          	ld	s1,8(sp)
    800062f0:	00013903          	ld	s2,0(sp)
    800062f4:	02010113          	addi	sp,sp,32
    800062f8:	00008067          	ret

00000000800062fc <_Z12testSleepingv>:

void testSleeping() {
    800062fc:	fc010113          	addi	sp,sp,-64
    80006300:	02113c23          	sd	ra,56(sp)
    80006304:	02813823          	sd	s0,48(sp)
    80006308:	02913423          	sd	s1,40(sp)
    8000630c:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80006310:	00a00793          	li	a5,10
    80006314:	fcf43823          	sd	a5,-48(s0)
    80006318:	01400793          	li	a5,20
    8000631c:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80006320:	00000493          	li	s1,0
    80006324:	02c0006f          	j	80006350 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80006328:	00349793          	slli	a5,s1,0x3
    8000632c:	fd040613          	addi	a2,s0,-48
    80006330:	00f60633          	add	a2,a2,a5
    80006334:	00000597          	auipc	a1,0x0
    80006338:	f2458593          	addi	a1,a1,-220 # 80006258 <_ZL9sleepyRunPv>
    8000633c:	fc040513          	addi	a0,s0,-64
    80006340:	00f50533          	add	a0,a0,a5
    80006344:	ffffb097          	auipc	ra,0xffffb
    80006348:	208080e7          	jalr	520(ra) # 8000154c <_Z13thread_createPP8Thread_kPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    8000634c:	0014849b          	addiw	s1,s1,1
    80006350:	00100793          	li	a5,1
    80006354:	fc97dae3          	bge	a5,s1,80006328 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80006358:	00005797          	auipc	a5,0x5
    8000635c:	7e87c783          	lbu	a5,2024(a5) # 8000bb40 <_ZL8finished>
    80006360:	fe078ce3          	beqz	a5,80006358 <_Z12testSleepingv+0x5c>
    80006364:	00005797          	auipc	a5,0x5
    80006368:	7dd7c783          	lbu	a5,2013(a5) # 8000bb41 <_ZL8finished+0x1>
    8000636c:	fe0786e3          	beqz	a5,80006358 <_Z12testSleepingv+0x5c>
}
    80006370:	03813083          	ld	ra,56(sp)
    80006374:	03013403          	ld	s0,48(sp)
    80006378:	02813483          	ld	s1,40(sp)
    8000637c:	04010113          	addi	sp,sp,64
    80006380:	00008067          	ret

0000000080006384 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80006384:	fe010113          	addi	sp,sp,-32
    80006388:	00113c23          	sd	ra,24(sp)
    8000638c:	00813823          	sd	s0,16(sp)
    80006390:	00913423          	sd	s1,8(sp)
    80006394:	01213023          	sd	s2,0(sp)
    80006398:	02010413          	addi	s0,sp,32
    8000639c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800063a0:	00100793          	li	a5,1
    800063a4:	02a7f863          	bgeu	a5,a0,800063d4 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800063a8:	00a00793          	li	a5,10
    800063ac:	02f577b3          	remu	a5,a0,a5
    800063b0:	02078e63          	beqz	a5,800063ec <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800063b4:	fff48513          	addi	a0,s1,-1
    800063b8:	00000097          	auipc	ra,0x0
    800063bc:	fcc080e7          	jalr	-52(ra) # 80006384 <_ZL9fibonaccim>
    800063c0:	00050913          	mv	s2,a0
    800063c4:	ffe48513          	addi	a0,s1,-2
    800063c8:	00000097          	auipc	ra,0x0
    800063cc:	fbc080e7          	jalr	-68(ra) # 80006384 <_ZL9fibonaccim>
    800063d0:	00a90533          	add	a0,s2,a0
}
    800063d4:	01813083          	ld	ra,24(sp)
    800063d8:	01013403          	ld	s0,16(sp)
    800063dc:	00813483          	ld	s1,8(sp)
    800063e0:	00013903          	ld	s2,0(sp)
    800063e4:	02010113          	addi	sp,sp,32
    800063e8:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800063ec:	ffffb097          	auipc	ra,0xffffb
    800063f0:	1dc080e7          	jalr	476(ra) # 800015c8 <_Z15thread_dispatchv>
    800063f4:	fc1ff06f          	j	800063b4 <_ZL9fibonaccim+0x30>

00000000800063f8 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    800063f8:	fe010113          	addi	sp,sp,-32
    800063fc:	00113c23          	sd	ra,24(sp)
    80006400:	00813823          	sd	s0,16(sp)
    80006404:	00913423          	sd	s1,8(sp)
    80006408:	01213023          	sd	s2,0(sp)
    8000640c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80006410:	00a00493          	li	s1,10
    80006414:	0400006f          	j	80006454 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80006418:	00003517          	auipc	a0,0x3
    8000641c:	10050513          	addi	a0,a0,256 # 80009518 <CONSOLE_STATUS+0x508>
    80006420:	fffff097          	auipc	ra,0xfffff
    80006424:	770080e7          	jalr	1904(ra) # 80005b90 <_Z11printStringPKc>
    80006428:	00000613          	li	a2,0
    8000642c:	00a00593          	li	a1,10
    80006430:	00048513          	mv	a0,s1
    80006434:	00000097          	auipc	ra,0x0
    80006438:	90c080e7          	jalr	-1780(ra) # 80005d40 <_Z8printIntiii>
    8000643c:	00003517          	auipc	a0,0x3
    80006440:	d3450513          	addi	a0,a0,-716 # 80009170 <CONSOLE_STATUS+0x160>
    80006444:	fffff097          	auipc	ra,0xfffff
    80006448:	74c080e7          	jalr	1868(ra) # 80005b90 <_Z11printStringPKc>
    for (; i < 13; i++) {
    8000644c:	0014849b          	addiw	s1,s1,1
    80006450:	0ff4f493          	andi	s1,s1,255
    80006454:	00c00793          	li	a5,12
    80006458:	fc97f0e3          	bgeu	a5,s1,80006418 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    8000645c:	00003517          	auipc	a0,0x3
    80006460:	0c450513          	addi	a0,a0,196 # 80009520 <CONSOLE_STATUS+0x510>
    80006464:	fffff097          	auipc	ra,0xfffff
    80006468:	72c080e7          	jalr	1836(ra) # 80005b90 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    8000646c:	00500313          	li	t1,5
    thread_dispatch();
    80006470:	ffffb097          	auipc	ra,0xffffb
    80006474:	158080e7          	jalr	344(ra) # 800015c8 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80006478:	01000513          	li	a0,16
    8000647c:	00000097          	auipc	ra,0x0
    80006480:	f08080e7          	jalr	-248(ra) # 80006384 <_ZL9fibonaccim>
    80006484:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80006488:	00003517          	auipc	a0,0x3
    8000648c:	0a850513          	addi	a0,a0,168 # 80009530 <CONSOLE_STATUS+0x520>
    80006490:	fffff097          	auipc	ra,0xfffff
    80006494:	700080e7          	jalr	1792(ra) # 80005b90 <_Z11printStringPKc>
    80006498:	00000613          	li	a2,0
    8000649c:	00a00593          	li	a1,10
    800064a0:	0009051b          	sext.w	a0,s2
    800064a4:	00000097          	auipc	ra,0x0
    800064a8:	89c080e7          	jalr	-1892(ra) # 80005d40 <_Z8printIntiii>
    800064ac:	00003517          	auipc	a0,0x3
    800064b0:	cc450513          	addi	a0,a0,-828 # 80009170 <CONSOLE_STATUS+0x160>
    800064b4:	fffff097          	auipc	ra,0xfffff
    800064b8:	6dc080e7          	jalr	1756(ra) # 80005b90 <_Z11printStringPKc>
    800064bc:	0400006f          	j	800064fc <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800064c0:	00003517          	auipc	a0,0x3
    800064c4:	05850513          	addi	a0,a0,88 # 80009518 <CONSOLE_STATUS+0x508>
    800064c8:	fffff097          	auipc	ra,0xfffff
    800064cc:	6c8080e7          	jalr	1736(ra) # 80005b90 <_Z11printStringPKc>
    800064d0:	00000613          	li	a2,0
    800064d4:	00a00593          	li	a1,10
    800064d8:	00048513          	mv	a0,s1
    800064dc:	00000097          	auipc	ra,0x0
    800064e0:	864080e7          	jalr	-1948(ra) # 80005d40 <_Z8printIntiii>
    800064e4:	00003517          	auipc	a0,0x3
    800064e8:	c8c50513          	addi	a0,a0,-884 # 80009170 <CONSOLE_STATUS+0x160>
    800064ec:	fffff097          	auipc	ra,0xfffff
    800064f0:	6a4080e7          	jalr	1700(ra) # 80005b90 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800064f4:	0014849b          	addiw	s1,s1,1
    800064f8:	0ff4f493          	andi	s1,s1,255
    800064fc:	00f00793          	li	a5,15
    80006500:	fc97f0e3          	bgeu	a5,s1,800064c0 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80006504:	00003517          	auipc	a0,0x3
    80006508:	03c50513          	addi	a0,a0,60 # 80009540 <CONSOLE_STATUS+0x530>
    8000650c:	fffff097          	auipc	ra,0xfffff
    80006510:	684080e7          	jalr	1668(ra) # 80005b90 <_Z11printStringPKc>
    finishedD = true;
    80006514:	00100793          	li	a5,1
    80006518:	00005717          	auipc	a4,0x5
    8000651c:	62f70523          	sb	a5,1578(a4) # 8000bb42 <_ZL9finishedD>
    thread_dispatch();
    80006520:	ffffb097          	auipc	ra,0xffffb
    80006524:	0a8080e7          	jalr	168(ra) # 800015c8 <_Z15thread_dispatchv>
}
    80006528:	01813083          	ld	ra,24(sp)
    8000652c:	01013403          	ld	s0,16(sp)
    80006530:	00813483          	ld	s1,8(sp)
    80006534:	00013903          	ld	s2,0(sp)
    80006538:	02010113          	addi	sp,sp,32
    8000653c:	00008067          	ret

0000000080006540 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80006540:	fe010113          	addi	sp,sp,-32
    80006544:	00113c23          	sd	ra,24(sp)
    80006548:	00813823          	sd	s0,16(sp)
    8000654c:	00913423          	sd	s1,8(sp)
    80006550:	01213023          	sd	s2,0(sp)
    80006554:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80006558:	00000493          	li	s1,0
    8000655c:	0400006f          	j	8000659c <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80006560:	00003517          	auipc	a0,0x3
    80006564:	f8850513          	addi	a0,a0,-120 # 800094e8 <CONSOLE_STATUS+0x4d8>
    80006568:	fffff097          	auipc	ra,0xfffff
    8000656c:	628080e7          	jalr	1576(ra) # 80005b90 <_Z11printStringPKc>
    80006570:	00000613          	li	a2,0
    80006574:	00a00593          	li	a1,10
    80006578:	00048513          	mv	a0,s1
    8000657c:	fffff097          	auipc	ra,0xfffff
    80006580:	7c4080e7          	jalr	1988(ra) # 80005d40 <_Z8printIntiii>
    80006584:	00003517          	auipc	a0,0x3
    80006588:	bec50513          	addi	a0,a0,-1044 # 80009170 <CONSOLE_STATUS+0x160>
    8000658c:	fffff097          	auipc	ra,0xfffff
    80006590:	604080e7          	jalr	1540(ra) # 80005b90 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80006594:	0014849b          	addiw	s1,s1,1
    80006598:	0ff4f493          	andi	s1,s1,255
    8000659c:	00200793          	li	a5,2
    800065a0:	fc97f0e3          	bgeu	a5,s1,80006560 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800065a4:	00003517          	auipc	a0,0x3
    800065a8:	f4c50513          	addi	a0,a0,-180 # 800094f0 <CONSOLE_STATUS+0x4e0>
    800065ac:	fffff097          	auipc	ra,0xfffff
    800065b0:	5e4080e7          	jalr	1508(ra) # 80005b90 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800065b4:	00700313          	li	t1,7
    thread_dispatch();
    800065b8:	ffffb097          	auipc	ra,0xffffb
    800065bc:	010080e7          	jalr	16(ra) # 800015c8 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800065c0:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    800065c4:	00003517          	auipc	a0,0x3
    800065c8:	f3c50513          	addi	a0,a0,-196 # 80009500 <CONSOLE_STATUS+0x4f0>
    800065cc:	fffff097          	auipc	ra,0xfffff
    800065d0:	5c4080e7          	jalr	1476(ra) # 80005b90 <_Z11printStringPKc>
    800065d4:	00000613          	li	a2,0
    800065d8:	00a00593          	li	a1,10
    800065dc:	0009051b          	sext.w	a0,s2
    800065e0:	fffff097          	auipc	ra,0xfffff
    800065e4:	760080e7          	jalr	1888(ra) # 80005d40 <_Z8printIntiii>
    800065e8:	00003517          	auipc	a0,0x3
    800065ec:	b8850513          	addi	a0,a0,-1144 # 80009170 <CONSOLE_STATUS+0x160>
    800065f0:	fffff097          	auipc	ra,0xfffff
    800065f4:	5a0080e7          	jalr	1440(ra) # 80005b90 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    800065f8:	00c00513          	li	a0,12
    800065fc:	00000097          	auipc	ra,0x0
    80006600:	d88080e7          	jalr	-632(ra) # 80006384 <_ZL9fibonaccim>
    80006604:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80006608:	00003517          	auipc	a0,0x3
    8000660c:	f0050513          	addi	a0,a0,-256 # 80009508 <CONSOLE_STATUS+0x4f8>
    80006610:	fffff097          	auipc	ra,0xfffff
    80006614:	580080e7          	jalr	1408(ra) # 80005b90 <_Z11printStringPKc>
    80006618:	00000613          	li	a2,0
    8000661c:	00a00593          	li	a1,10
    80006620:	0009051b          	sext.w	a0,s2
    80006624:	fffff097          	auipc	ra,0xfffff
    80006628:	71c080e7          	jalr	1820(ra) # 80005d40 <_Z8printIntiii>
    8000662c:	00003517          	auipc	a0,0x3
    80006630:	b4450513          	addi	a0,a0,-1212 # 80009170 <CONSOLE_STATUS+0x160>
    80006634:	fffff097          	auipc	ra,0xfffff
    80006638:	55c080e7          	jalr	1372(ra) # 80005b90 <_Z11printStringPKc>
    8000663c:	0400006f          	j	8000667c <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80006640:	00003517          	auipc	a0,0x3
    80006644:	ea850513          	addi	a0,a0,-344 # 800094e8 <CONSOLE_STATUS+0x4d8>
    80006648:	fffff097          	auipc	ra,0xfffff
    8000664c:	548080e7          	jalr	1352(ra) # 80005b90 <_Z11printStringPKc>
    80006650:	00000613          	li	a2,0
    80006654:	00a00593          	li	a1,10
    80006658:	00048513          	mv	a0,s1
    8000665c:	fffff097          	auipc	ra,0xfffff
    80006660:	6e4080e7          	jalr	1764(ra) # 80005d40 <_Z8printIntiii>
    80006664:	00003517          	auipc	a0,0x3
    80006668:	b0c50513          	addi	a0,a0,-1268 # 80009170 <CONSOLE_STATUS+0x160>
    8000666c:	fffff097          	auipc	ra,0xfffff
    80006670:	524080e7          	jalr	1316(ra) # 80005b90 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80006674:	0014849b          	addiw	s1,s1,1
    80006678:	0ff4f493          	andi	s1,s1,255
    8000667c:	00500793          	li	a5,5
    80006680:	fc97f0e3          	bgeu	a5,s1,80006640 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80006684:	00003517          	auipc	a0,0x3
    80006688:	de450513          	addi	a0,a0,-540 # 80009468 <CONSOLE_STATUS+0x458>
    8000668c:	fffff097          	auipc	ra,0xfffff
    80006690:	504080e7          	jalr	1284(ra) # 80005b90 <_Z11printStringPKc>
    finishedC = true;
    80006694:	00100793          	li	a5,1
    80006698:	00005717          	auipc	a4,0x5
    8000669c:	4af705a3          	sb	a5,1195(a4) # 8000bb43 <_ZL9finishedC>
    thread_dispatch();
    800066a0:	ffffb097          	auipc	ra,0xffffb
    800066a4:	f28080e7          	jalr	-216(ra) # 800015c8 <_Z15thread_dispatchv>
}
    800066a8:	01813083          	ld	ra,24(sp)
    800066ac:	01013403          	ld	s0,16(sp)
    800066b0:	00813483          	ld	s1,8(sp)
    800066b4:	00013903          	ld	s2,0(sp)
    800066b8:	02010113          	addi	sp,sp,32
    800066bc:	00008067          	ret

00000000800066c0 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800066c0:	fe010113          	addi	sp,sp,-32
    800066c4:	00113c23          	sd	ra,24(sp)
    800066c8:	00813823          	sd	s0,16(sp)
    800066cc:	00913423          	sd	s1,8(sp)
    800066d0:	01213023          	sd	s2,0(sp)
    800066d4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800066d8:	00000913          	li	s2,0
    800066dc:	0400006f          	j	8000671c <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    800066e0:	ffffb097          	auipc	ra,0xffffb
    800066e4:	ee8080e7          	jalr	-280(ra) # 800015c8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800066e8:	00148493          	addi	s1,s1,1
    800066ec:	000027b7          	lui	a5,0x2
    800066f0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800066f4:	0097ee63          	bltu	a5,s1,80006710 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800066f8:	00000713          	li	a4,0
    800066fc:	000077b7          	lui	a5,0x7
    80006700:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006704:	fce7eee3          	bltu	a5,a4,800066e0 <_ZL11workerBodyBPv+0x20>
    80006708:	00170713          	addi	a4,a4,1
    8000670c:	ff1ff06f          	j	800066fc <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80006710:	00a00793          	li	a5,10
    80006714:	04f90663          	beq	s2,a5,80006760 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80006718:	00190913          	addi	s2,s2,1
    8000671c:	00f00793          	li	a5,15
    80006720:	0527e463          	bltu	a5,s2,80006768 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80006724:	00003517          	auipc	a0,0x3
    80006728:	d5450513          	addi	a0,a0,-684 # 80009478 <CONSOLE_STATUS+0x468>
    8000672c:	fffff097          	auipc	ra,0xfffff
    80006730:	464080e7          	jalr	1124(ra) # 80005b90 <_Z11printStringPKc>
    80006734:	00000613          	li	a2,0
    80006738:	00a00593          	li	a1,10
    8000673c:	0009051b          	sext.w	a0,s2
    80006740:	fffff097          	auipc	ra,0xfffff
    80006744:	600080e7          	jalr	1536(ra) # 80005d40 <_Z8printIntiii>
    80006748:	00003517          	auipc	a0,0x3
    8000674c:	a2850513          	addi	a0,a0,-1496 # 80009170 <CONSOLE_STATUS+0x160>
    80006750:	fffff097          	auipc	ra,0xfffff
    80006754:	440080e7          	jalr	1088(ra) # 80005b90 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006758:	00000493          	li	s1,0
    8000675c:	f91ff06f          	j	800066ec <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80006760:	14102ff3          	csrr	t6,sepc
    80006764:	fb5ff06f          	j	80006718 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80006768:	00003517          	auipc	a0,0x3
    8000676c:	d1850513          	addi	a0,a0,-744 # 80009480 <CONSOLE_STATUS+0x470>
    80006770:	fffff097          	auipc	ra,0xfffff
    80006774:	420080e7          	jalr	1056(ra) # 80005b90 <_Z11printStringPKc>
    finishedB = true;
    80006778:	00100793          	li	a5,1
    8000677c:	00005717          	auipc	a4,0x5
    80006780:	3cf70423          	sb	a5,968(a4) # 8000bb44 <_ZL9finishedB>
    thread_dispatch();
    80006784:	ffffb097          	auipc	ra,0xffffb
    80006788:	e44080e7          	jalr	-444(ra) # 800015c8 <_Z15thread_dispatchv>
}
    8000678c:	01813083          	ld	ra,24(sp)
    80006790:	01013403          	ld	s0,16(sp)
    80006794:	00813483          	ld	s1,8(sp)
    80006798:	00013903          	ld	s2,0(sp)
    8000679c:	02010113          	addi	sp,sp,32
    800067a0:	00008067          	ret

00000000800067a4 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800067a4:	fe010113          	addi	sp,sp,-32
    800067a8:	00113c23          	sd	ra,24(sp)
    800067ac:	00813823          	sd	s0,16(sp)
    800067b0:	00913423          	sd	s1,8(sp)
    800067b4:	01213023          	sd	s2,0(sp)
    800067b8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800067bc:	00000913          	li	s2,0
    800067c0:	0380006f          	j	800067f8 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    800067c4:	ffffb097          	auipc	ra,0xffffb
    800067c8:	e04080e7          	jalr	-508(ra) # 800015c8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800067cc:	00148493          	addi	s1,s1,1
    800067d0:	000027b7          	lui	a5,0x2
    800067d4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800067d8:	0097ee63          	bltu	a5,s1,800067f4 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800067dc:	00000713          	li	a4,0
    800067e0:	000077b7          	lui	a5,0x7
    800067e4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800067e8:	fce7eee3          	bltu	a5,a4,800067c4 <_ZL11workerBodyAPv+0x20>
    800067ec:	00170713          	addi	a4,a4,1
    800067f0:	ff1ff06f          	j	800067e0 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800067f4:	00190913          	addi	s2,s2,1
    800067f8:	00900793          	li	a5,9
    800067fc:	0527e063          	bltu	a5,s2,8000683c <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80006800:	00003517          	auipc	a0,0x3
    80006804:	c6050513          	addi	a0,a0,-928 # 80009460 <CONSOLE_STATUS+0x450>
    80006808:	fffff097          	auipc	ra,0xfffff
    8000680c:	388080e7          	jalr	904(ra) # 80005b90 <_Z11printStringPKc>
    80006810:	00000613          	li	a2,0
    80006814:	00a00593          	li	a1,10
    80006818:	0009051b          	sext.w	a0,s2
    8000681c:	fffff097          	auipc	ra,0xfffff
    80006820:	524080e7          	jalr	1316(ra) # 80005d40 <_Z8printIntiii>
    80006824:	00003517          	auipc	a0,0x3
    80006828:	94c50513          	addi	a0,a0,-1716 # 80009170 <CONSOLE_STATUS+0x160>
    8000682c:	fffff097          	auipc	ra,0xfffff
    80006830:	364080e7          	jalr	868(ra) # 80005b90 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006834:	00000493          	li	s1,0
    80006838:	f99ff06f          	j	800067d0 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    8000683c:	00003517          	auipc	a0,0x3
    80006840:	c2c50513          	addi	a0,a0,-980 # 80009468 <CONSOLE_STATUS+0x458>
    80006844:	fffff097          	auipc	ra,0xfffff
    80006848:	34c080e7          	jalr	844(ra) # 80005b90 <_Z11printStringPKc>
    finishedA = true;
    8000684c:	00100793          	li	a5,1
    80006850:	00005717          	auipc	a4,0x5
    80006854:	2ef70aa3          	sb	a5,757(a4) # 8000bb45 <_ZL9finishedA>
}
    80006858:	01813083          	ld	ra,24(sp)
    8000685c:	01013403          	ld	s0,16(sp)
    80006860:	00813483          	ld	s1,8(sp)
    80006864:	00013903          	ld	s2,0(sp)
    80006868:	02010113          	addi	sp,sp,32
    8000686c:	00008067          	ret

0000000080006870 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80006870:	fd010113          	addi	sp,sp,-48
    80006874:	02113423          	sd	ra,40(sp)
    80006878:	02813023          	sd	s0,32(sp)
    8000687c:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80006880:	00000613          	li	a2,0
    80006884:	00000597          	auipc	a1,0x0
    80006888:	f2058593          	addi	a1,a1,-224 # 800067a4 <_ZL11workerBodyAPv>
    8000688c:	fd040513          	addi	a0,s0,-48
    80006890:	ffffb097          	auipc	ra,0xffffb
    80006894:	cbc080e7          	jalr	-836(ra) # 8000154c <_Z13thread_createPP8Thread_kPFvPvES2_>
    printString("ThreadA created\n");
    80006898:	00003517          	auipc	a0,0x3
    8000689c:	bf850513          	addi	a0,a0,-1032 # 80009490 <CONSOLE_STATUS+0x480>
    800068a0:	fffff097          	auipc	ra,0xfffff
    800068a4:	2f0080e7          	jalr	752(ra) # 80005b90 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800068a8:	00000613          	li	a2,0
    800068ac:	00000597          	auipc	a1,0x0
    800068b0:	e1458593          	addi	a1,a1,-492 # 800066c0 <_ZL11workerBodyBPv>
    800068b4:	fd840513          	addi	a0,s0,-40
    800068b8:	ffffb097          	auipc	ra,0xffffb
    800068bc:	c94080e7          	jalr	-876(ra) # 8000154c <_Z13thread_createPP8Thread_kPFvPvES2_>
    printString("ThreadB created\n");
    800068c0:	00003517          	auipc	a0,0x3
    800068c4:	be850513          	addi	a0,a0,-1048 # 800094a8 <CONSOLE_STATUS+0x498>
    800068c8:	fffff097          	auipc	ra,0xfffff
    800068cc:	2c8080e7          	jalr	712(ra) # 80005b90 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800068d0:	00000613          	li	a2,0
    800068d4:	00000597          	auipc	a1,0x0
    800068d8:	c6c58593          	addi	a1,a1,-916 # 80006540 <_ZL11workerBodyCPv>
    800068dc:	fe040513          	addi	a0,s0,-32
    800068e0:	ffffb097          	auipc	ra,0xffffb
    800068e4:	c6c080e7          	jalr	-916(ra) # 8000154c <_Z13thread_createPP8Thread_kPFvPvES2_>
    printString("ThreadC created\n");
    800068e8:	00003517          	auipc	a0,0x3
    800068ec:	c6850513          	addi	a0,a0,-920 # 80009550 <CONSOLE_STATUS+0x540>
    800068f0:	fffff097          	auipc	ra,0xfffff
    800068f4:	2a0080e7          	jalr	672(ra) # 80005b90 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800068f8:	00000613          	li	a2,0
    800068fc:	00000597          	auipc	a1,0x0
    80006900:	afc58593          	addi	a1,a1,-1284 # 800063f8 <_ZL11workerBodyDPv>
    80006904:	fe840513          	addi	a0,s0,-24
    80006908:	ffffb097          	auipc	ra,0xffffb
    8000690c:	c44080e7          	jalr	-956(ra) # 8000154c <_Z13thread_createPP8Thread_kPFvPvES2_>
    printString("ThreadD created\n");
    80006910:	00003517          	auipc	a0,0x3
    80006914:	c5850513          	addi	a0,a0,-936 # 80009568 <CONSOLE_STATUS+0x558>
    80006918:	fffff097          	auipc	ra,0xfffff
    8000691c:	278080e7          	jalr	632(ra) # 80005b90 <_Z11printStringPKc>
    80006920:	00c0006f          	j	8000692c <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80006924:	ffffb097          	auipc	ra,0xffffb
    80006928:	ca4080e7          	jalr	-860(ra) # 800015c8 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    8000692c:	00005797          	auipc	a5,0x5
    80006930:	2197c783          	lbu	a5,537(a5) # 8000bb45 <_ZL9finishedA>
    80006934:	fe0788e3          	beqz	a5,80006924 <_Z16System_Mode_testv+0xb4>
    80006938:	00005797          	auipc	a5,0x5
    8000693c:	20c7c783          	lbu	a5,524(a5) # 8000bb44 <_ZL9finishedB>
    80006940:	fe0782e3          	beqz	a5,80006924 <_Z16System_Mode_testv+0xb4>
    80006944:	00005797          	auipc	a5,0x5
    80006948:	1ff7c783          	lbu	a5,511(a5) # 8000bb43 <_ZL9finishedC>
    8000694c:	fc078ce3          	beqz	a5,80006924 <_Z16System_Mode_testv+0xb4>
    80006950:	00005797          	auipc	a5,0x5
    80006954:	1f27c783          	lbu	a5,498(a5) # 8000bb42 <_ZL9finishedD>
    80006958:	fc0786e3          	beqz	a5,80006924 <_Z16System_Mode_testv+0xb4>
    }

}
    8000695c:	02813083          	ld	ra,40(sp)
    80006960:	02013403          	ld	s0,32(sp)
    80006964:	03010113          	addi	sp,sp,48
    80006968:	00008067          	ret

000000008000696c <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    8000696c:	fe010113          	addi	sp,sp,-32
    80006970:	00113c23          	sd	ra,24(sp)
    80006974:	00813823          	sd	s0,16(sp)
    80006978:	00913423          	sd	s1,8(sp)
    8000697c:	01213023          	sd	s2,0(sp)
    80006980:	02010413          	addi	s0,sp,32
    80006984:	00050493          	mv	s1,a0
    80006988:	00058913          	mv	s2,a1
    8000698c:	0015879b          	addiw	a5,a1,1
    80006990:	0007851b          	sext.w	a0,a5
    80006994:	00f4a023          	sw	a5,0(s1)
    80006998:	0004a823          	sw	zero,16(s1)
    8000699c:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800069a0:	00251513          	slli	a0,a0,0x2
    800069a4:	ffffb097          	auipc	ra,0xffffb
    800069a8:	b1c080e7          	jalr	-1252(ra) # 800014c0 <_Z9mem_allocm>
    800069ac:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    800069b0:	00000593          	li	a1,0
    800069b4:	02048513          	addi	a0,s1,32
    800069b8:	ffffb097          	auipc	ra,0xffffb
    800069bc:	c5c080e7          	jalr	-932(ra) # 80001614 <_Z8sem_openPP11Semaphore_kj>
    sem_open(&spaceAvailable, _cap);
    800069c0:	00090593          	mv	a1,s2
    800069c4:	01848513          	addi	a0,s1,24
    800069c8:	ffffb097          	auipc	ra,0xffffb
    800069cc:	c4c080e7          	jalr	-948(ra) # 80001614 <_Z8sem_openPP11Semaphore_kj>
    sem_open(&mutexHead, 1);
    800069d0:	00100593          	li	a1,1
    800069d4:	02848513          	addi	a0,s1,40
    800069d8:	ffffb097          	auipc	ra,0xffffb
    800069dc:	c3c080e7          	jalr	-964(ra) # 80001614 <_Z8sem_openPP11Semaphore_kj>
    sem_open(&mutexTail, 1);
    800069e0:	00100593          	li	a1,1
    800069e4:	03048513          	addi	a0,s1,48
    800069e8:	ffffb097          	auipc	ra,0xffffb
    800069ec:	c2c080e7          	jalr	-980(ra) # 80001614 <_Z8sem_openPP11Semaphore_kj>
}
    800069f0:	01813083          	ld	ra,24(sp)
    800069f4:	01013403          	ld	s0,16(sp)
    800069f8:	00813483          	ld	s1,8(sp)
    800069fc:	00013903          	ld	s2,0(sp)
    80006a00:	02010113          	addi	sp,sp,32
    80006a04:	00008067          	ret

0000000080006a08 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80006a08:	fe010113          	addi	sp,sp,-32
    80006a0c:	00113c23          	sd	ra,24(sp)
    80006a10:	00813823          	sd	s0,16(sp)
    80006a14:	00913423          	sd	s1,8(sp)
    80006a18:	01213023          	sd	s2,0(sp)
    80006a1c:	02010413          	addi	s0,sp,32
    80006a20:	00050493          	mv	s1,a0
    80006a24:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80006a28:	01853503          	ld	a0,24(a0)
    80006a2c:	ffffb097          	auipc	ra,0xffffb
    80006a30:	c64080e7          	jalr	-924(ra) # 80001690 <_Z8sem_waitP11Semaphore_k>

    sem_wait(mutexTail);
    80006a34:	0304b503          	ld	a0,48(s1)
    80006a38:	ffffb097          	auipc	ra,0xffffb
    80006a3c:	c58080e7          	jalr	-936(ra) # 80001690 <_Z8sem_waitP11Semaphore_k>
    buffer[tail] = val;
    80006a40:	0084b783          	ld	a5,8(s1)
    80006a44:	0144a703          	lw	a4,20(s1)
    80006a48:	00271713          	slli	a4,a4,0x2
    80006a4c:	00e787b3          	add	a5,a5,a4
    80006a50:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006a54:	0144a783          	lw	a5,20(s1)
    80006a58:	0017879b          	addiw	a5,a5,1
    80006a5c:	0004a703          	lw	a4,0(s1)
    80006a60:	02e7e7bb          	remw	a5,a5,a4
    80006a64:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80006a68:	0304b503          	ld	a0,48(s1)
    80006a6c:	ffffb097          	auipc	ra,0xffffb
    80006a70:	c60080e7          	jalr	-928(ra) # 800016cc <_Z10sem_signalP11Semaphore_k>

    sem_signal(itemAvailable);
    80006a74:	0204b503          	ld	a0,32(s1)
    80006a78:	ffffb097          	auipc	ra,0xffffb
    80006a7c:	c54080e7          	jalr	-940(ra) # 800016cc <_Z10sem_signalP11Semaphore_k>

}
    80006a80:	01813083          	ld	ra,24(sp)
    80006a84:	01013403          	ld	s0,16(sp)
    80006a88:	00813483          	ld	s1,8(sp)
    80006a8c:	00013903          	ld	s2,0(sp)
    80006a90:	02010113          	addi	sp,sp,32
    80006a94:	00008067          	ret

0000000080006a98 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80006a98:	fe010113          	addi	sp,sp,-32
    80006a9c:	00113c23          	sd	ra,24(sp)
    80006aa0:	00813823          	sd	s0,16(sp)
    80006aa4:	00913423          	sd	s1,8(sp)
    80006aa8:	01213023          	sd	s2,0(sp)
    80006aac:	02010413          	addi	s0,sp,32
    80006ab0:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80006ab4:	02053503          	ld	a0,32(a0)
    80006ab8:	ffffb097          	auipc	ra,0xffffb
    80006abc:	bd8080e7          	jalr	-1064(ra) # 80001690 <_Z8sem_waitP11Semaphore_k>

    sem_wait(mutexHead);
    80006ac0:	0284b503          	ld	a0,40(s1)
    80006ac4:	ffffb097          	auipc	ra,0xffffb
    80006ac8:	bcc080e7          	jalr	-1076(ra) # 80001690 <_Z8sem_waitP11Semaphore_k>

    int ret = buffer[head];
    80006acc:	0084b703          	ld	a4,8(s1)
    80006ad0:	0104a783          	lw	a5,16(s1)
    80006ad4:	00279693          	slli	a3,a5,0x2
    80006ad8:	00d70733          	add	a4,a4,a3
    80006adc:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006ae0:	0017879b          	addiw	a5,a5,1
    80006ae4:	0004a703          	lw	a4,0(s1)
    80006ae8:	02e7e7bb          	remw	a5,a5,a4
    80006aec:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80006af0:	0284b503          	ld	a0,40(s1)
    80006af4:	ffffb097          	auipc	ra,0xffffb
    80006af8:	bd8080e7          	jalr	-1064(ra) # 800016cc <_Z10sem_signalP11Semaphore_k>

    sem_signal(spaceAvailable);
    80006afc:	0184b503          	ld	a0,24(s1)
    80006b00:	ffffb097          	auipc	ra,0xffffb
    80006b04:	bcc080e7          	jalr	-1076(ra) # 800016cc <_Z10sem_signalP11Semaphore_k>

    return ret;
}
    80006b08:	00090513          	mv	a0,s2
    80006b0c:	01813083          	ld	ra,24(sp)
    80006b10:	01013403          	ld	s0,16(sp)
    80006b14:	00813483          	ld	s1,8(sp)
    80006b18:	00013903          	ld	s2,0(sp)
    80006b1c:	02010113          	addi	sp,sp,32
    80006b20:	00008067          	ret

0000000080006b24 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80006b24:	fe010113          	addi	sp,sp,-32
    80006b28:	00113c23          	sd	ra,24(sp)
    80006b2c:	00813823          	sd	s0,16(sp)
    80006b30:	00913423          	sd	s1,8(sp)
    80006b34:	01213023          	sd	s2,0(sp)
    80006b38:	02010413          	addi	s0,sp,32
    80006b3c:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80006b40:	02853503          	ld	a0,40(a0)
    80006b44:	ffffb097          	auipc	ra,0xffffb
    80006b48:	b4c080e7          	jalr	-1204(ra) # 80001690 <_Z8sem_waitP11Semaphore_k>
    sem_wait(mutexTail);
    80006b4c:	0304b503          	ld	a0,48(s1)
    80006b50:	ffffb097          	auipc	ra,0xffffb
    80006b54:	b40080e7          	jalr	-1216(ra) # 80001690 <_Z8sem_waitP11Semaphore_k>

    if (tail >= head) {
    80006b58:	0144a783          	lw	a5,20(s1)
    80006b5c:	0104a903          	lw	s2,16(s1)
    80006b60:	0327ce63          	blt	a5,s2,80006b9c <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80006b64:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80006b68:	0304b503          	ld	a0,48(s1)
    80006b6c:	ffffb097          	auipc	ra,0xffffb
    80006b70:	b60080e7          	jalr	-1184(ra) # 800016cc <_Z10sem_signalP11Semaphore_k>
    sem_signal(mutexHead);
    80006b74:	0284b503          	ld	a0,40(s1)
    80006b78:	ffffb097          	auipc	ra,0xffffb
    80006b7c:	b54080e7          	jalr	-1196(ra) # 800016cc <_Z10sem_signalP11Semaphore_k>

    return ret;
}
    80006b80:	00090513          	mv	a0,s2
    80006b84:	01813083          	ld	ra,24(sp)
    80006b88:	01013403          	ld	s0,16(sp)
    80006b8c:	00813483          	ld	s1,8(sp)
    80006b90:	00013903          	ld	s2,0(sp)
    80006b94:	02010113          	addi	sp,sp,32
    80006b98:	00008067          	ret
        ret = cap - head + tail;
    80006b9c:	0004a703          	lw	a4,0(s1)
    80006ba0:	4127093b          	subw	s2,a4,s2
    80006ba4:	00f9093b          	addw	s2,s2,a5
    80006ba8:	fc1ff06f          	j	80006b68 <_ZN6Buffer6getCntEv+0x44>

0000000080006bac <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80006bac:	fe010113          	addi	sp,sp,-32
    80006bb0:	00113c23          	sd	ra,24(sp)
    80006bb4:	00813823          	sd	s0,16(sp)
    80006bb8:	00913423          	sd	s1,8(sp)
    80006bbc:	02010413          	addi	s0,sp,32
    80006bc0:	00050493          	mv	s1,a0
    putc('\n');
    80006bc4:	00a00513          	li	a0,10
    80006bc8:	ffffb097          	auipc	ra,0xffffb
    80006bcc:	bb4080e7          	jalr	-1100(ra) # 8000177c <_Z4putcc>
    printString("Buffer deleted!\n");
    80006bd0:	00003517          	auipc	a0,0x3
    80006bd4:	9c050513          	addi	a0,a0,-1600 # 80009590 <CONSOLE_STATUS+0x580>
    80006bd8:	fffff097          	auipc	ra,0xfffff
    80006bdc:	fb8080e7          	jalr	-72(ra) # 80005b90 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80006be0:	00048513          	mv	a0,s1
    80006be4:	00000097          	auipc	ra,0x0
    80006be8:	f40080e7          	jalr	-192(ra) # 80006b24 <_ZN6Buffer6getCntEv>
    80006bec:	02a05c63          	blez	a0,80006c24 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80006bf0:	0084b783          	ld	a5,8(s1)
    80006bf4:	0104a703          	lw	a4,16(s1)
    80006bf8:	00271713          	slli	a4,a4,0x2
    80006bfc:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80006c00:	0007c503          	lbu	a0,0(a5)
    80006c04:	ffffb097          	auipc	ra,0xffffb
    80006c08:	b78080e7          	jalr	-1160(ra) # 8000177c <_Z4putcc>
        head = (head + 1) % cap;
    80006c0c:	0104a783          	lw	a5,16(s1)
    80006c10:	0017879b          	addiw	a5,a5,1
    80006c14:	0004a703          	lw	a4,0(s1)
    80006c18:	02e7e7bb          	remw	a5,a5,a4
    80006c1c:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80006c20:	fc1ff06f          	j	80006be0 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80006c24:	02100513          	li	a0,33
    80006c28:	ffffb097          	auipc	ra,0xffffb
    80006c2c:	b54080e7          	jalr	-1196(ra) # 8000177c <_Z4putcc>
    putc('\n');
    80006c30:	00a00513          	li	a0,10
    80006c34:	ffffb097          	auipc	ra,0xffffb
    80006c38:	b48080e7          	jalr	-1208(ra) # 8000177c <_Z4putcc>
    mem_free(buffer);
    80006c3c:	0084b503          	ld	a0,8(s1)
    80006c40:	ffffb097          	auipc	ra,0xffffb
    80006c44:	8d0080e7          	jalr	-1840(ra) # 80001510 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80006c48:	0204b503          	ld	a0,32(s1)
    80006c4c:	ffffb097          	auipc	ra,0xffffb
    80006c50:	a08080e7          	jalr	-1528(ra) # 80001654 <_Z9sem_closeP11Semaphore_k>
    sem_close(spaceAvailable);
    80006c54:	0184b503          	ld	a0,24(s1)
    80006c58:	ffffb097          	auipc	ra,0xffffb
    80006c5c:	9fc080e7          	jalr	-1540(ra) # 80001654 <_Z9sem_closeP11Semaphore_k>
    sem_close(mutexTail);
    80006c60:	0304b503          	ld	a0,48(s1)
    80006c64:	ffffb097          	auipc	ra,0xffffb
    80006c68:	9f0080e7          	jalr	-1552(ra) # 80001654 <_Z9sem_closeP11Semaphore_k>
    sem_close(mutexHead);
    80006c6c:	0284b503          	ld	a0,40(s1)
    80006c70:	ffffb097          	auipc	ra,0xffffb
    80006c74:	9e4080e7          	jalr	-1564(ra) # 80001654 <_Z9sem_closeP11Semaphore_k>
}
    80006c78:	01813083          	ld	ra,24(sp)
    80006c7c:	01013403          	ld	s0,16(sp)
    80006c80:	00813483          	ld	s1,8(sp)
    80006c84:	02010113          	addi	sp,sp,32
    80006c88:	00008067          	ret

0000000080006c8c <start>:
    80006c8c:	ff010113          	addi	sp,sp,-16
    80006c90:	00813423          	sd	s0,8(sp)
    80006c94:	01010413          	addi	s0,sp,16
    80006c98:	300027f3          	csrr	a5,mstatus
    80006c9c:	ffffe737          	lui	a4,0xffffe
    80006ca0:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff1a3f>
    80006ca4:	00e7f7b3          	and	a5,a5,a4
    80006ca8:	00001737          	lui	a4,0x1
    80006cac:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006cb0:	00e7e7b3          	or	a5,a5,a4
    80006cb4:	30079073          	csrw	mstatus,a5
    80006cb8:	00000797          	auipc	a5,0x0
    80006cbc:	16078793          	addi	a5,a5,352 # 80006e18 <system_main>
    80006cc0:	34179073          	csrw	mepc,a5
    80006cc4:	00000793          	li	a5,0
    80006cc8:	18079073          	csrw	satp,a5
    80006ccc:	000107b7          	lui	a5,0x10
    80006cd0:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006cd4:	30279073          	csrw	medeleg,a5
    80006cd8:	30379073          	csrw	mideleg,a5
    80006cdc:	104027f3          	csrr	a5,sie
    80006ce0:	2227e793          	ori	a5,a5,546
    80006ce4:	10479073          	csrw	sie,a5
    80006ce8:	fff00793          	li	a5,-1
    80006cec:	00a7d793          	srli	a5,a5,0xa
    80006cf0:	3b079073          	csrw	pmpaddr0,a5
    80006cf4:	00f00793          	li	a5,15
    80006cf8:	3a079073          	csrw	pmpcfg0,a5
    80006cfc:	f14027f3          	csrr	a5,mhartid
    80006d00:	0200c737          	lui	a4,0x200c
    80006d04:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006d08:	0007869b          	sext.w	a3,a5
    80006d0c:	00269713          	slli	a4,a3,0x2
    80006d10:	000f4637          	lui	a2,0xf4
    80006d14:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006d18:	00d70733          	add	a4,a4,a3
    80006d1c:	0037979b          	slliw	a5,a5,0x3
    80006d20:	020046b7          	lui	a3,0x2004
    80006d24:	00d787b3          	add	a5,a5,a3
    80006d28:	00c585b3          	add	a1,a1,a2
    80006d2c:	00371693          	slli	a3,a4,0x3
    80006d30:	00005717          	auipc	a4,0x5
    80006d34:	e2070713          	addi	a4,a4,-480 # 8000bb50 <timer_scratch>
    80006d38:	00b7b023          	sd	a1,0(a5)
    80006d3c:	00d70733          	add	a4,a4,a3
    80006d40:	00f73c23          	sd	a5,24(a4)
    80006d44:	02c73023          	sd	a2,32(a4)
    80006d48:	34071073          	csrw	mscratch,a4
    80006d4c:	00000797          	auipc	a5,0x0
    80006d50:	6e478793          	addi	a5,a5,1764 # 80007430 <timervec>
    80006d54:	30579073          	csrw	mtvec,a5
    80006d58:	300027f3          	csrr	a5,mstatus
    80006d5c:	0087e793          	ori	a5,a5,8
    80006d60:	30079073          	csrw	mstatus,a5
    80006d64:	304027f3          	csrr	a5,mie
    80006d68:	0807e793          	ori	a5,a5,128
    80006d6c:	30479073          	csrw	mie,a5
    80006d70:	f14027f3          	csrr	a5,mhartid
    80006d74:	0007879b          	sext.w	a5,a5
    80006d78:	00078213          	mv	tp,a5
    80006d7c:	30200073          	mret
    80006d80:	00813403          	ld	s0,8(sp)
    80006d84:	01010113          	addi	sp,sp,16
    80006d88:	00008067          	ret

0000000080006d8c <timerinit>:
    80006d8c:	ff010113          	addi	sp,sp,-16
    80006d90:	00813423          	sd	s0,8(sp)
    80006d94:	01010413          	addi	s0,sp,16
    80006d98:	f14027f3          	csrr	a5,mhartid
    80006d9c:	0200c737          	lui	a4,0x200c
    80006da0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006da4:	0007869b          	sext.w	a3,a5
    80006da8:	00269713          	slli	a4,a3,0x2
    80006dac:	000f4637          	lui	a2,0xf4
    80006db0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006db4:	00d70733          	add	a4,a4,a3
    80006db8:	0037979b          	slliw	a5,a5,0x3
    80006dbc:	020046b7          	lui	a3,0x2004
    80006dc0:	00d787b3          	add	a5,a5,a3
    80006dc4:	00c585b3          	add	a1,a1,a2
    80006dc8:	00371693          	slli	a3,a4,0x3
    80006dcc:	00005717          	auipc	a4,0x5
    80006dd0:	d8470713          	addi	a4,a4,-636 # 8000bb50 <timer_scratch>
    80006dd4:	00b7b023          	sd	a1,0(a5)
    80006dd8:	00d70733          	add	a4,a4,a3
    80006ddc:	00f73c23          	sd	a5,24(a4)
    80006de0:	02c73023          	sd	a2,32(a4)
    80006de4:	34071073          	csrw	mscratch,a4
    80006de8:	00000797          	auipc	a5,0x0
    80006dec:	64878793          	addi	a5,a5,1608 # 80007430 <timervec>
    80006df0:	30579073          	csrw	mtvec,a5
    80006df4:	300027f3          	csrr	a5,mstatus
    80006df8:	0087e793          	ori	a5,a5,8
    80006dfc:	30079073          	csrw	mstatus,a5
    80006e00:	304027f3          	csrr	a5,mie
    80006e04:	0807e793          	ori	a5,a5,128
    80006e08:	30479073          	csrw	mie,a5
    80006e0c:	00813403          	ld	s0,8(sp)
    80006e10:	01010113          	addi	sp,sp,16
    80006e14:	00008067          	ret

0000000080006e18 <system_main>:
    80006e18:	fe010113          	addi	sp,sp,-32
    80006e1c:	00813823          	sd	s0,16(sp)
    80006e20:	00913423          	sd	s1,8(sp)
    80006e24:	00113c23          	sd	ra,24(sp)
    80006e28:	02010413          	addi	s0,sp,32
    80006e2c:	00000097          	auipc	ra,0x0
    80006e30:	0c4080e7          	jalr	196(ra) # 80006ef0 <cpuid>
    80006e34:	00005497          	auipc	s1,0x5
    80006e38:	c3c48493          	addi	s1,s1,-964 # 8000ba70 <started>
    80006e3c:	02050263          	beqz	a0,80006e60 <system_main+0x48>
    80006e40:	0004a783          	lw	a5,0(s1)
    80006e44:	0007879b          	sext.w	a5,a5
    80006e48:	fe078ce3          	beqz	a5,80006e40 <system_main+0x28>
    80006e4c:	0ff0000f          	fence
    80006e50:	00002517          	auipc	a0,0x2
    80006e54:	79850513          	addi	a0,a0,1944 # 800095e8 <CONSOLE_STATUS+0x5d8>
    80006e58:	00001097          	auipc	ra,0x1
    80006e5c:	a74080e7          	jalr	-1420(ra) # 800078cc <panic>
    80006e60:	00001097          	auipc	ra,0x1
    80006e64:	9c8080e7          	jalr	-1592(ra) # 80007828 <consoleinit>
    80006e68:	00001097          	auipc	ra,0x1
    80006e6c:	154080e7          	jalr	340(ra) # 80007fbc <printfinit>
    80006e70:	00002517          	auipc	a0,0x2
    80006e74:	30050513          	addi	a0,a0,768 # 80009170 <CONSOLE_STATUS+0x160>
    80006e78:	00001097          	auipc	ra,0x1
    80006e7c:	ab0080e7          	jalr	-1360(ra) # 80007928 <__printf>
    80006e80:	00002517          	auipc	a0,0x2
    80006e84:	73850513          	addi	a0,a0,1848 # 800095b8 <CONSOLE_STATUS+0x5a8>
    80006e88:	00001097          	auipc	ra,0x1
    80006e8c:	aa0080e7          	jalr	-1376(ra) # 80007928 <__printf>
    80006e90:	00002517          	auipc	a0,0x2
    80006e94:	2e050513          	addi	a0,a0,736 # 80009170 <CONSOLE_STATUS+0x160>
    80006e98:	00001097          	auipc	ra,0x1
    80006e9c:	a90080e7          	jalr	-1392(ra) # 80007928 <__printf>
    80006ea0:	00001097          	auipc	ra,0x1
    80006ea4:	4a8080e7          	jalr	1192(ra) # 80008348 <kinit>
    80006ea8:	00000097          	auipc	ra,0x0
    80006eac:	148080e7          	jalr	328(ra) # 80006ff0 <trapinit>
    80006eb0:	00000097          	auipc	ra,0x0
    80006eb4:	16c080e7          	jalr	364(ra) # 8000701c <trapinithart>
    80006eb8:	00000097          	auipc	ra,0x0
    80006ebc:	5b8080e7          	jalr	1464(ra) # 80007470 <plicinit>
    80006ec0:	00000097          	auipc	ra,0x0
    80006ec4:	5d8080e7          	jalr	1496(ra) # 80007498 <plicinithart>
    80006ec8:	00000097          	auipc	ra,0x0
    80006ecc:	078080e7          	jalr	120(ra) # 80006f40 <userinit>
    80006ed0:	0ff0000f          	fence
    80006ed4:	00100793          	li	a5,1
    80006ed8:	00002517          	auipc	a0,0x2
    80006edc:	6f850513          	addi	a0,a0,1784 # 800095d0 <CONSOLE_STATUS+0x5c0>
    80006ee0:	00f4a023          	sw	a5,0(s1)
    80006ee4:	00001097          	auipc	ra,0x1
    80006ee8:	a44080e7          	jalr	-1468(ra) # 80007928 <__printf>
    80006eec:	0000006f          	j	80006eec <system_main+0xd4>

0000000080006ef0 <cpuid>:
    80006ef0:	ff010113          	addi	sp,sp,-16
    80006ef4:	00813423          	sd	s0,8(sp)
    80006ef8:	01010413          	addi	s0,sp,16
    80006efc:	00020513          	mv	a0,tp
    80006f00:	00813403          	ld	s0,8(sp)
    80006f04:	0005051b          	sext.w	a0,a0
    80006f08:	01010113          	addi	sp,sp,16
    80006f0c:	00008067          	ret

0000000080006f10 <mycpu>:
    80006f10:	ff010113          	addi	sp,sp,-16
    80006f14:	00813423          	sd	s0,8(sp)
    80006f18:	01010413          	addi	s0,sp,16
    80006f1c:	00020793          	mv	a5,tp
    80006f20:	00813403          	ld	s0,8(sp)
    80006f24:	0007879b          	sext.w	a5,a5
    80006f28:	00779793          	slli	a5,a5,0x7
    80006f2c:	00006517          	auipc	a0,0x6
    80006f30:	c5450513          	addi	a0,a0,-940 # 8000cb80 <cpus>
    80006f34:	00f50533          	add	a0,a0,a5
    80006f38:	01010113          	addi	sp,sp,16
    80006f3c:	00008067          	ret

0000000080006f40 <userinit>:
    80006f40:	ff010113          	addi	sp,sp,-16
    80006f44:	00813423          	sd	s0,8(sp)
    80006f48:	01010413          	addi	s0,sp,16
    80006f4c:	00813403          	ld	s0,8(sp)
    80006f50:	01010113          	addi	sp,sp,16
    80006f54:	ffffb317          	auipc	t1,0xffffb
    80006f58:	08030067          	jr	128(t1) # 80001fd4 <main>

0000000080006f5c <either_copyout>:
    80006f5c:	ff010113          	addi	sp,sp,-16
    80006f60:	00813023          	sd	s0,0(sp)
    80006f64:	00113423          	sd	ra,8(sp)
    80006f68:	01010413          	addi	s0,sp,16
    80006f6c:	02051663          	bnez	a0,80006f98 <either_copyout+0x3c>
    80006f70:	00058513          	mv	a0,a1
    80006f74:	00060593          	mv	a1,a2
    80006f78:	0006861b          	sext.w	a2,a3
    80006f7c:	00002097          	auipc	ra,0x2
    80006f80:	c58080e7          	jalr	-936(ra) # 80008bd4 <__memmove>
    80006f84:	00813083          	ld	ra,8(sp)
    80006f88:	00013403          	ld	s0,0(sp)
    80006f8c:	00000513          	li	a0,0
    80006f90:	01010113          	addi	sp,sp,16
    80006f94:	00008067          	ret
    80006f98:	00002517          	auipc	a0,0x2
    80006f9c:	67850513          	addi	a0,a0,1656 # 80009610 <CONSOLE_STATUS+0x600>
    80006fa0:	00001097          	auipc	ra,0x1
    80006fa4:	92c080e7          	jalr	-1748(ra) # 800078cc <panic>

0000000080006fa8 <either_copyin>:
    80006fa8:	ff010113          	addi	sp,sp,-16
    80006fac:	00813023          	sd	s0,0(sp)
    80006fb0:	00113423          	sd	ra,8(sp)
    80006fb4:	01010413          	addi	s0,sp,16
    80006fb8:	02059463          	bnez	a1,80006fe0 <either_copyin+0x38>
    80006fbc:	00060593          	mv	a1,a2
    80006fc0:	0006861b          	sext.w	a2,a3
    80006fc4:	00002097          	auipc	ra,0x2
    80006fc8:	c10080e7          	jalr	-1008(ra) # 80008bd4 <__memmove>
    80006fcc:	00813083          	ld	ra,8(sp)
    80006fd0:	00013403          	ld	s0,0(sp)
    80006fd4:	00000513          	li	a0,0
    80006fd8:	01010113          	addi	sp,sp,16
    80006fdc:	00008067          	ret
    80006fe0:	00002517          	auipc	a0,0x2
    80006fe4:	65850513          	addi	a0,a0,1624 # 80009638 <CONSOLE_STATUS+0x628>
    80006fe8:	00001097          	auipc	ra,0x1
    80006fec:	8e4080e7          	jalr	-1820(ra) # 800078cc <panic>

0000000080006ff0 <trapinit>:
    80006ff0:	ff010113          	addi	sp,sp,-16
    80006ff4:	00813423          	sd	s0,8(sp)
    80006ff8:	01010413          	addi	s0,sp,16
    80006ffc:	00813403          	ld	s0,8(sp)
    80007000:	00002597          	auipc	a1,0x2
    80007004:	66058593          	addi	a1,a1,1632 # 80009660 <CONSOLE_STATUS+0x650>
    80007008:	00006517          	auipc	a0,0x6
    8000700c:	bf850513          	addi	a0,a0,-1032 # 8000cc00 <tickslock>
    80007010:	01010113          	addi	sp,sp,16
    80007014:	00001317          	auipc	t1,0x1
    80007018:	5c430067          	jr	1476(t1) # 800085d8 <initlock>

000000008000701c <trapinithart>:
    8000701c:	ff010113          	addi	sp,sp,-16
    80007020:	00813423          	sd	s0,8(sp)
    80007024:	01010413          	addi	s0,sp,16
    80007028:	00000797          	auipc	a5,0x0
    8000702c:	2f878793          	addi	a5,a5,760 # 80007320 <kernelvec>
    80007030:	10579073          	csrw	stvec,a5
    80007034:	00813403          	ld	s0,8(sp)
    80007038:	01010113          	addi	sp,sp,16
    8000703c:	00008067          	ret

0000000080007040 <usertrap>:
    80007040:	ff010113          	addi	sp,sp,-16
    80007044:	00813423          	sd	s0,8(sp)
    80007048:	01010413          	addi	s0,sp,16
    8000704c:	00813403          	ld	s0,8(sp)
    80007050:	01010113          	addi	sp,sp,16
    80007054:	00008067          	ret

0000000080007058 <usertrapret>:
    80007058:	ff010113          	addi	sp,sp,-16
    8000705c:	00813423          	sd	s0,8(sp)
    80007060:	01010413          	addi	s0,sp,16
    80007064:	00813403          	ld	s0,8(sp)
    80007068:	01010113          	addi	sp,sp,16
    8000706c:	00008067          	ret

0000000080007070 <kerneltrap>:
    80007070:	fe010113          	addi	sp,sp,-32
    80007074:	00813823          	sd	s0,16(sp)
    80007078:	00113c23          	sd	ra,24(sp)
    8000707c:	00913423          	sd	s1,8(sp)
    80007080:	02010413          	addi	s0,sp,32
    80007084:	142025f3          	csrr	a1,scause
    80007088:	100027f3          	csrr	a5,sstatus
    8000708c:	0027f793          	andi	a5,a5,2
    80007090:	10079c63          	bnez	a5,800071a8 <kerneltrap+0x138>
    80007094:	142027f3          	csrr	a5,scause
    80007098:	0207ce63          	bltz	a5,800070d4 <kerneltrap+0x64>
    8000709c:	00002517          	auipc	a0,0x2
    800070a0:	60c50513          	addi	a0,a0,1548 # 800096a8 <CONSOLE_STATUS+0x698>
    800070a4:	00001097          	auipc	ra,0x1
    800070a8:	884080e7          	jalr	-1916(ra) # 80007928 <__printf>
    800070ac:	141025f3          	csrr	a1,sepc
    800070b0:	14302673          	csrr	a2,stval
    800070b4:	00002517          	auipc	a0,0x2
    800070b8:	60450513          	addi	a0,a0,1540 # 800096b8 <CONSOLE_STATUS+0x6a8>
    800070bc:	00001097          	auipc	ra,0x1
    800070c0:	86c080e7          	jalr	-1940(ra) # 80007928 <__printf>
    800070c4:	00002517          	auipc	a0,0x2
    800070c8:	60c50513          	addi	a0,a0,1548 # 800096d0 <CONSOLE_STATUS+0x6c0>
    800070cc:	00001097          	auipc	ra,0x1
    800070d0:	800080e7          	jalr	-2048(ra) # 800078cc <panic>
    800070d4:	0ff7f713          	andi	a4,a5,255
    800070d8:	00900693          	li	a3,9
    800070dc:	04d70063          	beq	a4,a3,8000711c <kerneltrap+0xac>
    800070e0:	fff00713          	li	a4,-1
    800070e4:	03f71713          	slli	a4,a4,0x3f
    800070e8:	00170713          	addi	a4,a4,1
    800070ec:	fae798e3          	bne	a5,a4,8000709c <kerneltrap+0x2c>
    800070f0:	00000097          	auipc	ra,0x0
    800070f4:	e00080e7          	jalr	-512(ra) # 80006ef0 <cpuid>
    800070f8:	06050663          	beqz	a0,80007164 <kerneltrap+0xf4>
    800070fc:	144027f3          	csrr	a5,sip
    80007100:	ffd7f793          	andi	a5,a5,-3
    80007104:	14479073          	csrw	sip,a5
    80007108:	01813083          	ld	ra,24(sp)
    8000710c:	01013403          	ld	s0,16(sp)
    80007110:	00813483          	ld	s1,8(sp)
    80007114:	02010113          	addi	sp,sp,32
    80007118:	00008067          	ret
    8000711c:	00000097          	auipc	ra,0x0
    80007120:	3c8080e7          	jalr	968(ra) # 800074e4 <plic_claim>
    80007124:	00a00793          	li	a5,10
    80007128:	00050493          	mv	s1,a0
    8000712c:	06f50863          	beq	a0,a5,8000719c <kerneltrap+0x12c>
    80007130:	fc050ce3          	beqz	a0,80007108 <kerneltrap+0x98>
    80007134:	00050593          	mv	a1,a0
    80007138:	00002517          	auipc	a0,0x2
    8000713c:	55050513          	addi	a0,a0,1360 # 80009688 <CONSOLE_STATUS+0x678>
    80007140:	00000097          	auipc	ra,0x0
    80007144:	7e8080e7          	jalr	2024(ra) # 80007928 <__printf>
    80007148:	01013403          	ld	s0,16(sp)
    8000714c:	01813083          	ld	ra,24(sp)
    80007150:	00048513          	mv	a0,s1
    80007154:	00813483          	ld	s1,8(sp)
    80007158:	02010113          	addi	sp,sp,32
    8000715c:	00000317          	auipc	t1,0x0
    80007160:	3c030067          	jr	960(t1) # 8000751c <plic_complete>
    80007164:	00006517          	auipc	a0,0x6
    80007168:	a9c50513          	addi	a0,a0,-1380 # 8000cc00 <tickslock>
    8000716c:	00001097          	auipc	ra,0x1
    80007170:	490080e7          	jalr	1168(ra) # 800085fc <acquire>
    80007174:	00005717          	auipc	a4,0x5
    80007178:	90070713          	addi	a4,a4,-1792 # 8000ba74 <ticks>
    8000717c:	00072783          	lw	a5,0(a4)
    80007180:	00006517          	auipc	a0,0x6
    80007184:	a8050513          	addi	a0,a0,-1408 # 8000cc00 <tickslock>
    80007188:	0017879b          	addiw	a5,a5,1
    8000718c:	00f72023          	sw	a5,0(a4)
    80007190:	00001097          	auipc	ra,0x1
    80007194:	538080e7          	jalr	1336(ra) # 800086c8 <release>
    80007198:	f65ff06f          	j	800070fc <kerneltrap+0x8c>
    8000719c:	00001097          	auipc	ra,0x1
    800071a0:	094080e7          	jalr	148(ra) # 80008230 <uartintr>
    800071a4:	fa5ff06f          	j	80007148 <kerneltrap+0xd8>
    800071a8:	00002517          	auipc	a0,0x2
    800071ac:	4c050513          	addi	a0,a0,1216 # 80009668 <CONSOLE_STATUS+0x658>
    800071b0:	00000097          	auipc	ra,0x0
    800071b4:	71c080e7          	jalr	1820(ra) # 800078cc <panic>

00000000800071b8 <clockintr>:
    800071b8:	fe010113          	addi	sp,sp,-32
    800071bc:	00813823          	sd	s0,16(sp)
    800071c0:	00913423          	sd	s1,8(sp)
    800071c4:	00113c23          	sd	ra,24(sp)
    800071c8:	02010413          	addi	s0,sp,32
    800071cc:	00006497          	auipc	s1,0x6
    800071d0:	a3448493          	addi	s1,s1,-1484 # 8000cc00 <tickslock>
    800071d4:	00048513          	mv	a0,s1
    800071d8:	00001097          	auipc	ra,0x1
    800071dc:	424080e7          	jalr	1060(ra) # 800085fc <acquire>
    800071e0:	00005717          	auipc	a4,0x5
    800071e4:	89470713          	addi	a4,a4,-1900 # 8000ba74 <ticks>
    800071e8:	00072783          	lw	a5,0(a4)
    800071ec:	01013403          	ld	s0,16(sp)
    800071f0:	01813083          	ld	ra,24(sp)
    800071f4:	00048513          	mv	a0,s1
    800071f8:	0017879b          	addiw	a5,a5,1
    800071fc:	00813483          	ld	s1,8(sp)
    80007200:	00f72023          	sw	a5,0(a4)
    80007204:	02010113          	addi	sp,sp,32
    80007208:	00001317          	auipc	t1,0x1
    8000720c:	4c030067          	jr	1216(t1) # 800086c8 <release>

0000000080007210 <devintr>:
    80007210:	142027f3          	csrr	a5,scause
    80007214:	00000513          	li	a0,0
    80007218:	0007c463          	bltz	a5,80007220 <devintr+0x10>
    8000721c:	00008067          	ret
    80007220:	fe010113          	addi	sp,sp,-32
    80007224:	00813823          	sd	s0,16(sp)
    80007228:	00113c23          	sd	ra,24(sp)
    8000722c:	00913423          	sd	s1,8(sp)
    80007230:	02010413          	addi	s0,sp,32
    80007234:	0ff7f713          	andi	a4,a5,255
    80007238:	00900693          	li	a3,9
    8000723c:	04d70c63          	beq	a4,a3,80007294 <devintr+0x84>
    80007240:	fff00713          	li	a4,-1
    80007244:	03f71713          	slli	a4,a4,0x3f
    80007248:	00170713          	addi	a4,a4,1
    8000724c:	00e78c63          	beq	a5,a4,80007264 <devintr+0x54>
    80007250:	01813083          	ld	ra,24(sp)
    80007254:	01013403          	ld	s0,16(sp)
    80007258:	00813483          	ld	s1,8(sp)
    8000725c:	02010113          	addi	sp,sp,32
    80007260:	00008067          	ret
    80007264:	00000097          	auipc	ra,0x0
    80007268:	c8c080e7          	jalr	-884(ra) # 80006ef0 <cpuid>
    8000726c:	06050663          	beqz	a0,800072d8 <devintr+0xc8>
    80007270:	144027f3          	csrr	a5,sip
    80007274:	ffd7f793          	andi	a5,a5,-3
    80007278:	14479073          	csrw	sip,a5
    8000727c:	01813083          	ld	ra,24(sp)
    80007280:	01013403          	ld	s0,16(sp)
    80007284:	00813483          	ld	s1,8(sp)
    80007288:	00200513          	li	a0,2
    8000728c:	02010113          	addi	sp,sp,32
    80007290:	00008067          	ret
    80007294:	00000097          	auipc	ra,0x0
    80007298:	250080e7          	jalr	592(ra) # 800074e4 <plic_claim>
    8000729c:	00a00793          	li	a5,10
    800072a0:	00050493          	mv	s1,a0
    800072a4:	06f50663          	beq	a0,a5,80007310 <devintr+0x100>
    800072a8:	00100513          	li	a0,1
    800072ac:	fa0482e3          	beqz	s1,80007250 <devintr+0x40>
    800072b0:	00048593          	mv	a1,s1
    800072b4:	00002517          	auipc	a0,0x2
    800072b8:	3d450513          	addi	a0,a0,980 # 80009688 <CONSOLE_STATUS+0x678>
    800072bc:	00000097          	auipc	ra,0x0
    800072c0:	66c080e7          	jalr	1644(ra) # 80007928 <__printf>
    800072c4:	00048513          	mv	a0,s1
    800072c8:	00000097          	auipc	ra,0x0
    800072cc:	254080e7          	jalr	596(ra) # 8000751c <plic_complete>
    800072d0:	00100513          	li	a0,1
    800072d4:	f7dff06f          	j	80007250 <devintr+0x40>
    800072d8:	00006517          	auipc	a0,0x6
    800072dc:	92850513          	addi	a0,a0,-1752 # 8000cc00 <tickslock>
    800072e0:	00001097          	auipc	ra,0x1
    800072e4:	31c080e7          	jalr	796(ra) # 800085fc <acquire>
    800072e8:	00004717          	auipc	a4,0x4
    800072ec:	78c70713          	addi	a4,a4,1932 # 8000ba74 <ticks>
    800072f0:	00072783          	lw	a5,0(a4)
    800072f4:	00006517          	auipc	a0,0x6
    800072f8:	90c50513          	addi	a0,a0,-1780 # 8000cc00 <tickslock>
    800072fc:	0017879b          	addiw	a5,a5,1
    80007300:	00f72023          	sw	a5,0(a4)
    80007304:	00001097          	auipc	ra,0x1
    80007308:	3c4080e7          	jalr	964(ra) # 800086c8 <release>
    8000730c:	f65ff06f          	j	80007270 <devintr+0x60>
    80007310:	00001097          	auipc	ra,0x1
    80007314:	f20080e7          	jalr	-224(ra) # 80008230 <uartintr>
    80007318:	fadff06f          	j	800072c4 <devintr+0xb4>
    8000731c:	0000                	unimp
	...

0000000080007320 <kernelvec>:
    80007320:	f0010113          	addi	sp,sp,-256
    80007324:	00113023          	sd	ra,0(sp)
    80007328:	00213423          	sd	sp,8(sp)
    8000732c:	00313823          	sd	gp,16(sp)
    80007330:	00413c23          	sd	tp,24(sp)
    80007334:	02513023          	sd	t0,32(sp)
    80007338:	02613423          	sd	t1,40(sp)
    8000733c:	02713823          	sd	t2,48(sp)
    80007340:	02813c23          	sd	s0,56(sp)
    80007344:	04913023          	sd	s1,64(sp)
    80007348:	04a13423          	sd	a0,72(sp)
    8000734c:	04b13823          	sd	a1,80(sp)
    80007350:	04c13c23          	sd	a2,88(sp)
    80007354:	06d13023          	sd	a3,96(sp)
    80007358:	06e13423          	sd	a4,104(sp)
    8000735c:	06f13823          	sd	a5,112(sp)
    80007360:	07013c23          	sd	a6,120(sp)
    80007364:	09113023          	sd	a7,128(sp)
    80007368:	09213423          	sd	s2,136(sp)
    8000736c:	09313823          	sd	s3,144(sp)
    80007370:	09413c23          	sd	s4,152(sp)
    80007374:	0b513023          	sd	s5,160(sp)
    80007378:	0b613423          	sd	s6,168(sp)
    8000737c:	0b713823          	sd	s7,176(sp)
    80007380:	0b813c23          	sd	s8,184(sp)
    80007384:	0d913023          	sd	s9,192(sp)
    80007388:	0da13423          	sd	s10,200(sp)
    8000738c:	0db13823          	sd	s11,208(sp)
    80007390:	0dc13c23          	sd	t3,216(sp)
    80007394:	0fd13023          	sd	t4,224(sp)
    80007398:	0fe13423          	sd	t5,232(sp)
    8000739c:	0ff13823          	sd	t6,240(sp)
    800073a0:	cd1ff0ef          	jal	ra,80007070 <kerneltrap>
    800073a4:	00013083          	ld	ra,0(sp)
    800073a8:	00813103          	ld	sp,8(sp)
    800073ac:	01013183          	ld	gp,16(sp)
    800073b0:	02013283          	ld	t0,32(sp)
    800073b4:	02813303          	ld	t1,40(sp)
    800073b8:	03013383          	ld	t2,48(sp)
    800073bc:	03813403          	ld	s0,56(sp)
    800073c0:	04013483          	ld	s1,64(sp)
    800073c4:	04813503          	ld	a0,72(sp)
    800073c8:	05013583          	ld	a1,80(sp)
    800073cc:	05813603          	ld	a2,88(sp)
    800073d0:	06013683          	ld	a3,96(sp)
    800073d4:	06813703          	ld	a4,104(sp)
    800073d8:	07013783          	ld	a5,112(sp)
    800073dc:	07813803          	ld	a6,120(sp)
    800073e0:	08013883          	ld	a7,128(sp)
    800073e4:	08813903          	ld	s2,136(sp)
    800073e8:	09013983          	ld	s3,144(sp)
    800073ec:	09813a03          	ld	s4,152(sp)
    800073f0:	0a013a83          	ld	s5,160(sp)
    800073f4:	0a813b03          	ld	s6,168(sp)
    800073f8:	0b013b83          	ld	s7,176(sp)
    800073fc:	0b813c03          	ld	s8,184(sp)
    80007400:	0c013c83          	ld	s9,192(sp)
    80007404:	0c813d03          	ld	s10,200(sp)
    80007408:	0d013d83          	ld	s11,208(sp)
    8000740c:	0d813e03          	ld	t3,216(sp)
    80007410:	0e013e83          	ld	t4,224(sp)
    80007414:	0e813f03          	ld	t5,232(sp)
    80007418:	0f013f83          	ld	t6,240(sp)
    8000741c:	10010113          	addi	sp,sp,256
    80007420:	10200073          	sret
    80007424:	00000013          	nop
    80007428:	00000013          	nop
    8000742c:	00000013          	nop

0000000080007430 <timervec>:
    80007430:	34051573          	csrrw	a0,mscratch,a0
    80007434:	00b53023          	sd	a1,0(a0)
    80007438:	00c53423          	sd	a2,8(a0)
    8000743c:	00d53823          	sd	a3,16(a0)
    80007440:	01853583          	ld	a1,24(a0)
    80007444:	02053603          	ld	a2,32(a0)
    80007448:	0005b683          	ld	a3,0(a1)
    8000744c:	00c686b3          	add	a3,a3,a2
    80007450:	00d5b023          	sd	a3,0(a1)
    80007454:	00200593          	li	a1,2
    80007458:	14459073          	csrw	sip,a1
    8000745c:	01053683          	ld	a3,16(a0)
    80007460:	00853603          	ld	a2,8(a0)
    80007464:	00053583          	ld	a1,0(a0)
    80007468:	34051573          	csrrw	a0,mscratch,a0
    8000746c:	30200073          	mret

0000000080007470 <plicinit>:
    80007470:	ff010113          	addi	sp,sp,-16
    80007474:	00813423          	sd	s0,8(sp)
    80007478:	01010413          	addi	s0,sp,16
    8000747c:	00813403          	ld	s0,8(sp)
    80007480:	0c0007b7          	lui	a5,0xc000
    80007484:	00100713          	li	a4,1
    80007488:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000748c:	00e7a223          	sw	a4,4(a5)
    80007490:	01010113          	addi	sp,sp,16
    80007494:	00008067          	ret

0000000080007498 <plicinithart>:
    80007498:	ff010113          	addi	sp,sp,-16
    8000749c:	00813023          	sd	s0,0(sp)
    800074a0:	00113423          	sd	ra,8(sp)
    800074a4:	01010413          	addi	s0,sp,16
    800074a8:	00000097          	auipc	ra,0x0
    800074ac:	a48080e7          	jalr	-1464(ra) # 80006ef0 <cpuid>
    800074b0:	0085171b          	slliw	a4,a0,0x8
    800074b4:	0c0027b7          	lui	a5,0xc002
    800074b8:	00e787b3          	add	a5,a5,a4
    800074bc:	40200713          	li	a4,1026
    800074c0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800074c4:	00813083          	ld	ra,8(sp)
    800074c8:	00013403          	ld	s0,0(sp)
    800074cc:	00d5151b          	slliw	a0,a0,0xd
    800074d0:	0c2017b7          	lui	a5,0xc201
    800074d4:	00a78533          	add	a0,a5,a0
    800074d8:	00052023          	sw	zero,0(a0)
    800074dc:	01010113          	addi	sp,sp,16
    800074e0:	00008067          	ret

00000000800074e4 <plic_claim>:
    800074e4:	ff010113          	addi	sp,sp,-16
    800074e8:	00813023          	sd	s0,0(sp)
    800074ec:	00113423          	sd	ra,8(sp)
    800074f0:	01010413          	addi	s0,sp,16
    800074f4:	00000097          	auipc	ra,0x0
    800074f8:	9fc080e7          	jalr	-1540(ra) # 80006ef0 <cpuid>
    800074fc:	00813083          	ld	ra,8(sp)
    80007500:	00013403          	ld	s0,0(sp)
    80007504:	00d5151b          	slliw	a0,a0,0xd
    80007508:	0c2017b7          	lui	a5,0xc201
    8000750c:	00a78533          	add	a0,a5,a0
    80007510:	00452503          	lw	a0,4(a0)
    80007514:	01010113          	addi	sp,sp,16
    80007518:	00008067          	ret

000000008000751c <plic_complete>:
    8000751c:	fe010113          	addi	sp,sp,-32
    80007520:	00813823          	sd	s0,16(sp)
    80007524:	00913423          	sd	s1,8(sp)
    80007528:	00113c23          	sd	ra,24(sp)
    8000752c:	02010413          	addi	s0,sp,32
    80007530:	00050493          	mv	s1,a0
    80007534:	00000097          	auipc	ra,0x0
    80007538:	9bc080e7          	jalr	-1604(ra) # 80006ef0 <cpuid>
    8000753c:	01813083          	ld	ra,24(sp)
    80007540:	01013403          	ld	s0,16(sp)
    80007544:	00d5179b          	slliw	a5,a0,0xd
    80007548:	0c201737          	lui	a4,0xc201
    8000754c:	00f707b3          	add	a5,a4,a5
    80007550:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80007554:	00813483          	ld	s1,8(sp)
    80007558:	02010113          	addi	sp,sp,32
    8000755c:	00008067          	ret

0000000080007560 <consolewrite>:
    80007560:	fb010113          	addi	sp,sp,-80
    80007564:	04813023          	sd	s0,64(sp)
    80007568:	04113423          	sd	ra,72(sp)
    8000756c:	02913c23          	sd	s1,56(sp)
    80007570:	03213823          	sd	s2,48(sp)
    80007574:	03313423          	sd	s3,40(sp)
    80007578:	03413023          	sd	s4,32(sp)
    8000757c:	01513c23          	sd	s5,24(sp)
    80007580:	05010413          	addi	s0,sp,80
    80007584:	06c05c63          	blez	a2,800075fc <consolewrite+0x9c>
    80007588:	00060993          	mv	s3,a2
    8000758c:	00050a13          	mv	s4,a0
    80007590:	00058493          	mv	s1,a1
    80007594:	00000913          	li	s2,0
    80007598:	fff00a93          	li	s5,-1
    8000759c:	01c0006f          	j	800075b8 <consolewrite+0x58>
    800075a0:	fbf44503          	lbu	a0,-65(s0)
    800075a4:	0019091b          	addiw	s2,s2,1
    800075a8:	00148493          	addi	s1,s1,1
    800075ac:	00001097          	auipc	ra,0x1
    800075b0:	a9c080e7          	jalr	-1380(ra) # 80008048 <uartputc>
    800075b4:	03298063          	beq	s3,s2,800075d4 <consolewrite+0x74>
    800075b8:	00048613          	mv	a2,s1
    800075bc:	00100693          	li	a3,1
    800075c0:	000a0593          	mv	a1,s4
    800075c4:	fbf40513          	addi	a0,s0,-65
    800075c8:	00000097          	auipc	ra,0x0
    800075cc:	9e0080e7          	jalr	-1568(ra) # 80006fa8 <either_copyin>
    800075d0:	fd5518e3          	bne	a0,s5,800075a0 <consolewrite+0x40>
    800075d4:	04813083          	ld	ra,72(sp)
    800075d8:	04013403          	ld	s0,64(sp)
    800075dc:	03813483          	ld	s1,56(sp)
    800075e0:	02813983          	ld	s3,40(sp)
    800075e4:	02013a03          	ld	s4,32(sp)
    800075e8:	01813a83          	ld	s5,24(sp)
    800075ec:	00090513          	mv	a0,s2
    800075f0:	03013903          	ld	s2,48(sp)
    800075f4:	05010113          	addi	sp,sp,80
    800075f8:	00008067          	ret
    800075fc:	00000913          	li	s2,0
    80007600:	fd5ff06f          	j	800075d4 <consolewrite+0x74>

0000000080007604 <consoleread>:
    80007604:	f9010113          	addi	sp,sp,-112
    80007608:	06813023          	sd	s0,96(sp)
    8000760c:	04913c23          	sd	s1,88(sp)
    80007610:	05213823          	sd	s2,80(sp)
    80007614:	05313423          	sd	s3,72(sp)
    80007618:	05413023          	sd	s4,64(sp)
    8000761c:	03513c23          	sd	s5,56(sp)
    80007620:	03613823          	sd	s6,48(sp)
    80007624:	03713423          	sd	s7,40(sp)
    80007628:	03813023          	sd	s8,32(sp)
    8000762c:	06113423          	sd	ra,104(sp)
    80007630:	01913c23          	sd	s9,24(sp)
    80007634:	07010413          	addi	s0,sp,112
    80007638:	00060b93          	mv	s7,a2
    8000763c:	00050913          	mv	s2,a0
    80007640:	00058c13          	mv	s8,a1
    80007644:	00060b1b          	sext.w	s6,a2
    80007648:	00005497          	auipc	s1,0x5
    8000764c:	5e048493          	addi	s1,s1,1504 # 8000cc28 <cons>
    80007650:	00400993          	li	s3,4
    80007654:	fff00a13          	li	s4,-1
    80007658:	00a00a93          	li	s5,10
    8000765c:	05705e63          	blez	s7,800076b8 <consoleread+0xb4>
    80007660:	09c4a703          	lw	a4,156(s1)
    80007664:	0984a783          	lw	a5,152(s1)
    80007668:	0007071b          	sext.w	a4,a4
    8000766c:	08e78463          	beq	a5,a4,800076f4 <consoleread+0xf0>
    80007670:	07f7f713          	andi	a4,a5,127
    80007674:	00e48733          	add	a4,s1,a4
    80007678:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000767c:	0017869b          	addiw	a3,a5,1
    80007680:	08d4ac23          	sw	a3,152(s1)
    80007684:	00070c9b          	sext.w	s9,a4
    80007688:	0b370663          	beq	a4,s3,80007734 <consoleread+0x130>
    8000768c:	00100693          	li	a3,1
    80007690:	f9f40613          	addi	a2,s0,-97
    80007694:	000c0593          	mv	a1,s8
    80007698:	00090513          	mv	a0,s2
    8000769c:	f8e40fa3          	sb	a4,-97(s0)
    800076a0:	00000097          	auipc	ra,0x0
    800076a4:	8bc080e7          	jalr	-1860(ra) # 80006f5c <either_copyout>
    800076a8:	01450863          	beq	a0,s4,800076b8 <consoleread+0xb4>
    800076ac:	001c0c13          	addi	s8,s8,1
    800076b0:	fffb8b9b          	addiw	s7,s7,-1
    800076b4:	fb5c94e3          	bne	s9,s5,8000765c <consoleread+0x58>
    800076b8:	000b851b          	sext.w	a0,s7
    800076bc:	06813083          	ld	ra,104(sp)
    800076c0:	06013403          	ld	s0,96(sp)
    800076c4:	05813483          	ld	s1,88(sp)
    800076c8:	05013903          	ld	s2,80(sp)
    800076cc:	04813983          	ld	s3,72(sp)
    800076d0:	04013a03          	ld	s4,64(sp)
    800076d4:	03813a83          	ld	s5,56(sp)
    800076d8:	02813b83          	ld	s7,40(sp)
    800076dc:	02013c03          	ld	s8,32(sp)
    800076e0:	01813c83          	ld	s9,24(sp)
    800076e4:	40ab053b          	subw	a0,s6,a0
    800076e8:	03013b03          	ld	s6,48(sp)
    800076ec:	07010113          	addi	sp,sp,112
    800076f0:	00008067          	ret
    800076f4:	00001097          	auipc	ra,0x1
    800076f8:	1d8080e7          	jalr	472(ra) # 800088cc <push_on>
    800076fc:	0984a703          	lw	a4,152(s1)
    80007700:	09c4a783          	lw	a5,156(s1)
    80007704:	0007879b          	sext.w	a5,a5
    80007708:	fef70ce3          	beq	a4,a5,80007700 <consoleread+0xfc>
    8000770c:	00001097          	auipc	ra,0x1
    80007710:	234080e7          	jalr	564(ra) # 80008940 <pop_on>
    80007714:	0984a783          	lw	a5,152(s1)
    80007718:	07f7f713          	andi	a4,a5,127
    8000771c:	00e48733          	add	a4,s1,a4
    80007720:	01874703          	lbu	a4,24(a4)
    80007724:	0017869b          	addiw	a3,a5,1
    80007728:	08d4ac23          	sw	a3,152(s1)
    8000772c:	00070c9b          	sext.w	s9,a4
    80007730:	f5371ee3          	bne	a4,s3,8000768c <consoleread+0x88>
    80007734:	000b851b          	sext.w	a0,s7
    80007738:	f96bf2e3          	bgeu	s7,s6,800076bc <consoleread+0xb8>
    8000773c:	08f4ac23          	sw	a5,152(s1)
    80007740:	f7dff06f          	j	800076bc <consoleread+0xb8>

0000000080007744 <consputc>:
    80007744:	10000793          	li	a5,256
    80007748:	00f50663          	beq	a0,a5,80007754 <consputc+0x10>
    8000774c:	00001317          	auipc	t1,0x1
    80007750:	9f430067          	jr	-1548(t1) # 80008140 <uartputc_sync>
    80007754:	ff010113          	addi	sp,sp,-16
    80007758:	00113423          	sd	ra,8(sp)
    8000775c:	00813023          	sd	s0,0(sp)
    80007760:	01010413          	addi	s0,sp,16
    80007764:	00800513          	li	a0,8
    80007768:	00001097          	auipc	ra,0x1
    8000776c:	9d8080e7          	jalr	-1576(ra) # 80008140 <uartputc_sync>
    80007770:	02000513          	li	a0,32
    80007774:	00001097          	auipc	ra,0x1
    80007778:	9cc080e7          	jalr	-1588(ra) # 80008140 <uartputc_sync>
    8000777c:	00013403          	ld	s0,0(sp)
    80007780:	00813083          	ld	ra,8(sp)
    80007784:	00800513          	li	a0,8
    80007788:	01010113          	addi	sp,sp,16
    8000778c:	00001317          	auipc	t1,0x1
    80007790:	9b430067          	jr	-1612(t1) # 80008140 <uartputc_sync>

0000000080007794 <consoleintr>:
    80007794:	fe010113          	addi	sp,sp,-32
    80007798:	00813823          	sd	s0,16(sp)
    8000779c:	00913423          	sd	s1,8(sp)
    800077a0:	01213023          	sd	s2,0(sp)
    800077a4:	00113c23          	sd	ra,24(sp)
    800077a8:	02010413          	addi	s0,sp,32
    800077ac:	00005917          	auipc	s2,0x5
    800077b0:	47c90913          	addi	s2,s2,1148 # 8000cc28 <cons>
    800077b4:	00050493          	mv	s1,a0
    800077b8:	00090513          	mv	a0,s2
    800077bc:	00001097          	auipc	ra,0x1
    800077c0:	e40080e7          	jalr	-448(ra) # 800085fc <acquire>
    800077c4:	02048c63          	beqz	s1,800077fc <consoleintr+0x68>
    800077c8:	0a092783          	lw	a5,160(s2)
    800077cc:	09892703          	lw	a4,152(s2)
    800077d0:	07f00693          	li	a3,127
    800077d4:	40e7873b          	subw	a4,a5,a4
    800077d8:	02e6e263          	bltu	a3,a4,800077fc <consoleintr+0x68>
    800077dc:	00d00713          	li	a4,13
    800077e0:	04e48063          	beq	s1,a4,80007820 <consoleintr+0x8c>
    800077e4:	07f7f713          	andi	a4,a5,127
    800077e8:	00e90733          	add	a4,s2,a4
    800077ec:	0017879b          	addiw	a5,a5,1
    800077f0:	0af92023          	sw	a5,160(s2)
    800077f4:	00970c23          	sb	s1,24(a4)
    800077f8:	08f92e23          	sw	a5,156(s2)
    800077fc:	01013403          	ld	s0,16(sp)
    80007800:	01813083          	ld	ra,24(sp)
    80007804:	00813483          	ld	s1,8(sp)
    80007808:	00013903          	ld	s2,0(sp)
    8000780c:	00005517          	auipc	a0,0x5
    80007810:	41c50513          	addi	a0,a0,1052 # 8000cc28 <cons>
    80007814:	02010113          	addi	sp,sp,32
    80007818:	00001317          	auipc	t1,0x1
    8000781c:	eb030067          	jr	-336(t1) # 800086c8 <release>
    80007820:	00a00493          	li	s1,10
    80007824:	fc1ff06f          	j	800077e4 <consoleintr+0x50>

0000000080007828 <consoleinit>:
    80007828:	fe010113          	addi	sp,sp,-32
    8000782c:	00113c23          	sd	ra,24(sp)
    80007830:	00813823          	sd	s0,16(sp)
    80007834:	00913423          	sd	s1,8(sp)
    80007838:	02010413          	addi	s0,sp,32
    8000783c:	00005497          	auipc	s1,0x5
    80007840:	3ec48493          	addi	s1,s1,1004 # 8000cc28 <cons>
    80007844:	00048513          	mv	a0,s1
    80007848:	00002597          	auipc	a1,0x2
    8000784c:	e9858593          	addi	a1,a1,-360 # 800096e0 <CONSOLE_STATUS+0x6d0>
    80007850:	00001097          	auipc	ra,0x1
    80007854:	d88080e7          	jalr	-632(ra) # 800085d8 <initlock>
    80007858:	00000097          	auipc	ra,0x0
    8000785c:	7ac080e7          	jalr	1964(ra) # 80008004 <uartinit>
    80007860:	01813083          	ld	ra,24(sp)
    80007864:	01013403          	ld	s0,16(sp)
    80007868:	00000797          	auipc	a5,0x0
    8000786c:	d9c78793          	addi	a5,a5,-612 # 80007604 <consoleread>
    80007870:	0af4bc23          	sd	a5,184(s1)
    80007874:	00000797          	auipc	a5,0x0
    80007878:	cec78793          	addi	a5,a5,-788 # 80007560 <consolewrite>
    8000787c:	0cf4b023          	sd	a5,192(s1)
    80007880:	00813483          	ld	s1,8(sp)
    80007884:	02010113          	addi	sp,sp,32
    80007888:	00008067          	ret

000000008000788c <console_read>:
    8000788c:	ff010113          	addi	sp,sp,-16
    80007890:	00813423          	sd	s0,8(sp)
    80007894:	01010413          	addi	s0,sp,16
    80007898:	00813403          	ld	s0,8(sp)
    8000789c:	00005317          	auipc	t1,0x5
    800078a0:	44433303          	ld	t1,1092(t1) # 8000cce0 <devsw+0x10>
    800078a4:	01010113          	addi	sp,sp,16
    800078a8:	00030067          	jr	t1

00000000800078ac <console_write>:
    800078ac:	ff010113          	addi	sp,sp,-16
    800078b0:	00813423          	sd	s0,8(sp)
    800078b4:	01010413          	addi	s0,sp,16
    800078b8:	00813403          	ld	s0,8(sp)
    800078bc:	00005317          	auipc	t1,0x5
    800078c0:	42c33303          	ld	t1,1068(t1) # 8000cce8 <devsw+0x18>
    800078c4:	01010113          	addi	sp,sp,16
    800078c8:	00030067          	jr	t1

00000000800078cc <panic>:
    800078cc:	fe010113          	addi	sp,sp,-32
    800078d0:	00113c23          	sd	ra,24(sp)
    800078d4:	00813823          	sd	s0,16(sp)
    800078d8:	00913423          	sd	s1,8(sp)
    800078dc:	02010413          	addi	s0,sp,32
    800078e0:	00050493          	mv	s1,a0
    800078e4:	00002517          	auipc	a0,0x2
    800078e8:	e0450513          	addi	a0,a0,-508 # 800096e8 <CONSOLE_STATUS+0x6d8>
    800078ec:	00005797          	auipc	a5,0x5
    800078f0:	4807ae23          	sw	zero,1180(a5) # 8000cd88 <pr+0x18>
    800078f4:	00000097          	auipc	ra,0x0
    800078f8:	034080e7          	jalr	52(ra) # 80007928 <__printf>
    800078fc:	00048513          	mv	a0,s1
    80007900:	00000097          	auipc	ra,0x0
    80007904:	028080e7          	jalr	40(ra) # 80007928 <__printf>
    80007908:	00002517          	auipc	a0,0x2
    8000790c:	86850513          	addi	a0,a0,-1944 # 80009170 <CONSOLE_STATUS+0x160>
    80007910:	00000097          	auipc	ra,0x0
    80007914:	018080e7          	jalr	24(ra) # 80007928 <__printf>
    80007918:	00100793          	li	a5,1
    8000791c:	00004717          	auipc	a4,0x4
    80007920:	14f72e23          	sw	a5,348(a4) # 8000ba78 <panicked>
    80007924:	0000006f          	j	80007924 <panic+0x58>

0000000080007928 <__printf>:
    80007928:	f3010113          	addi	sp,sp,-208
    8000792c:	08813023          	sd	s0,128(sp)
    80007930:	07313423          	sd	s3,104(sp)
    80007934:	09010413          	addi	s0,sp,144
    80007938:	05813023          	sd	s8,64(sp)
    8000793c:	08113423          	sd	ra,136(sp)
    80007940:	06913c23          	sd	s1,120(sp)
    80007944:	07213823          	sd	s2,112(sp)
    80007948:	07413023          	sd	s4,96(sp)
    8000794c:	05513c23          	sd	s5,88(sp)
    80007950:	05613823          	sd	s6,80(sp)
    80007954:	05713423          	sd	s7,72(sp)
    80007958:	03913c23          	sd	s9,56(sp)
    8000795c:	03a13823          	sd	s10,48(sp)
    80007960:	03b13423          	sd	s11,40(sp)
    80007964:	00005317          	auipc	t1,0x5
    80007968:	40c30313          	addi	t1,t1,1036 # 8000cd70 <pr>
    8000796c:	01832c03          	lw	s8,24(t1)
    80007970:	00b43423          	sd	a1,8(s0)
    80007974:	00c43823          	sd	a2,16(s0)
    80007978:	00d43c23          	sd	a3,24(s0)
    8000797c:	02e43023          	sd	a4,32(s0)
    80007980:	02f43423          	sd	a5,40(s0)
    80007984:	03043823          	sd	a6,48(s0)
    80007988:	03143c23          	sd	a7,56(s0)
    8000798c:	00050993          	mv	s3,a0
    80007990:	4a0c1663          	bnez	s8,80007e3c <__printf+0x514>
    80007994:	60098c63          	beqz	s3,80007fac <__printf+0x684>
    80007998:	0009c503          	lbu	a0,0(s3)
    8000799c:	00840793          	addi	a5,s0,8
    800079a0:	f6f43c23          	sd	a5,-136(s0)
    800079a4:	00000493          	li	s1,0
    800079a8:	22050063          	beqz	a0,80007bc8 <__printf+0x2a0>
    800079ac:	00002a37          	lui	s4,0x2
    800079b0:	00018ab7          	lui	s5,0x18
    800079b4:	000f4b37          	lui	s6,0xf4
    800079b8:	00989bb7          	lui	s7,0x989
    800079bc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800079c0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800079c4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800079c8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800079cc:	00148c9b          	addiw	s9,s1,1
    800079d0:	02500793          	li	a5,37
    800079d4:	01998933          	add	s2,s3,s9
    800079d8:	38f51263          	bne	a0,a5,80007d5c <__printf+0x434>
    800079dc:	00094783          	lbu	a5,0(s2)
    800079e0:	00078c9b          	sext.w	s9,a5
    800079e4:	1e078263          	beqz	a5,80007bc8 <__printf+0x2a0>
    800079e8:	0024849b          	addiw	s1,s1,2
    800079ec:	07000713          	li	a4,112
    800079f0:	00998933          	add	s2,s3,s1
    800079f4:	38e78a63          	beq	a5,a4,80007d88 <__printf+0x460>
    800079f8:	20f76863          	bltu	a4,a5,80007c08 <__printf+0x2e0>
    800079fc:	42a78863          	beq	a5,a0,80007e2c <__printf+0x504>
    80007a00:	06400713          	li	a4,100
    80007a04:	40e79663          	bne	a5,a4,80007e10 <__printf+0x4e8>
    80007a08:	f7843783          	ld	a5,-136(s0)
    80007a0c:	0007a603          	lw	a2,0(a5)
    80007a10:	00878793          	addi	a5,a5,8
    80007a14:	f6f43c23          	sd	a5,-136(s0)
    80007a18:	42064a63          	bltz	a2,80007e4c <__printf+0x524>
    80007a1c:	00a00713          	li	a4,10
    80007a20:	02e677bb          	remuw	a5,a2,a4
    80007a24:	00002d97          	auipc	s11,0x2
    80007a28:	cecd8d93          	addi	s11,s11,-788 # 80009710 <digits>
    80007a2c:	00900593          	li	a1,9
    80007a30:	0006051b          	sext.w	a0,a2
    80007a34:	00000c93          	li	s9,0
    80007a38:	02079793          	slli	a5,a5,0x20
    80007a3c:	0207d793          	srli	a5,a5,0x20
    80007a40:	00fd87b3          	add	a5,s11,a5
    80007a44:	0007c783          	lbu	a5,0(a5)
    80007a48:	02e656bb          	divuw	a3,a2,a4
    80007a4c:	f8f40023          	sb	a5,-128(s0)
    80007a50:	14c5d863          	bge	a1,a2,80007ba0 <__printf+0x278>
    80007a54:	06300593          	li	a1,99
    80007a58:	00100c93          	li	s9,1
    80007a5c:	02e6f7bb          	remuw	a5,a3,a4
    80007a60:	02079793          	slli	a5,a5,0x20
    80007a64:	0207d793          	srli	a5,a5,0x20
    80007a68:	00fd87b3          	add	a5,s11,a5
    80007a6c:	0007c783          	lbu	a5,0(a5)
    80007a70:	02e6d73b          	divuw	a4,a3,a4
    80007a74:	f8f400a3          	sb	a5,-127(s0)
    80007a78:	12a5f463          	bgeu	a1,a0,80007ba0 <__printf+0x278>
    80007a7c:	00a00693          	li	a3,10
    80007a80:	00900593          	li	a1,9
    80007a84:	02d777bb          	remuw	a5,a4,a3
    80007a88:	02079793          	slli	a5,a5,0x20
    80007a8c:	0207d793          	srli	a5,a5,0x20
    80007a90:	00fd87b3          	add	a5,s11,a5
    80007a94:	0007c503          	lbu	a0,0(a5)
    80007a98:	02d757bb          	divuw	a5,a4,a3
    80007a9c:	f8a40123          	sb	a0,-126(s0)
    80007aa0:	48e5f263          	bgeu	a1,a4,80007f24 <__printf+0x5fc>
    80007aa4:	06300513          	li	a0,99
    80007aa8:	02d7f5bb          	remuw	a1,a5,a3
    80007aac:	02059593          	slli	a1,a1,0x20
    80007ab0:	0205d593          	srli	a1,a1,0x20
    80007ab4:	00bd85b3          	add	a1,s11,a1
    80007ab8:	0005c583          	lbu	a1,0(a1)
    80007abc:	02d7d7bb          	divuw	a5,a5,a3
    80007ac0:	f8b401a3          	sb	a1,-125(s0)
    80007ac4:	48e57263          	bgeu	a0,a4,80007f48 <__printf+0x620>
    80007ac8:	3e700513          	li	a0,999
    80007acc:	02d7f5bb          	remuw	a1,a5,a3
    80007ad0:	02059593          	slli	a1,a1,0x20
    80007ad4:	0205d593          	srli	a1,a1,0x20
    80007ad8:	00bd85b3          	add	a1,s11,a1
    80007adc:	0005c583          	lbu	a1,0(a1)
    80007ae0:	02d7d7bb          	divuw	a5,a5,a3
    80007ae4:	f8b40223          	sb	a1,-124(s0)
    80007ae8:	46e57663          	bgeu	a0,a4,80007f54 <__printf+0x62c>
    80007aec:	02d7f5bb          	remuw	a1,a5,a3
    80007af0:	02059593          	slli	a1,a1,0x20
    80007af4:	0205d593          	srli	a1,a1,0x20
    80007af8:	00bd85b3          	add	a1,s11,a1
    80007afc:	0005c583          	lbu	a1,0(a1)
    80007b00:	02d7d7bb          	divuw	a5,a5,a3
    80007b04:	f8b402a3          	sb	a1,-123(s0)
    80007b08:	46ea7863          	bgeu	s4,a4,80007f78 <__printf+0x650>
    80007b0c:	02d7f5bb          	remuw	a1,a5,a3
    80007b10:	02059593          	slli	a1,a1,0x20
    80007b14:	0205d593          	srli	a1,a1,0x20
    80007b18:	00bd85b3          	add	a1,s11,a1
    80007b1c:	0005c583          	lbu	a1,0(a1)
    80007b20:	02d7d7bb          	divuw	a5,a5,a3
    80007b24:	f8b40323          	sb	a1,-122(s0)
    80007b28:	3eeaf863          	bgeu	s5,a4,80007f18 <__printf+0x5f0>
    80007b2c:	02d7f5bb          	remuw	a1,a5,a3
    80007b30:	02059593          	slli	a1,a1,0x20
    80007b34:	0205d593          	srli	a1,a1,0x20
    80007b38:	00bd85b3          	add	a1,s11,a1
    80007b3c:	0005c583          	lbu	a1,0(a1)
    80007b40:	02d7d7bb          	divuw	a5,a5,a3
    80007b44:	f8b403a3          	sb	a1,-121(s0)
    80007b48:	42eb7e63          	bgeu	s6,a4,80007f84 <__printf+0x65c>
    80007b4c:	02d7f5bb          	remuw	a1,a5,a3
    80007b50:	02059593          	slli	a1,a1,0x20
    80007b54:	0205d593          	srli	a1,a1,0x20
    80007b58:	00bd85b3          	add	a1,s11,a1
    80007b5c:	0005c583          	lbu	a1,0(a1)
    80007b60:	02d7d7bb          	divuw	a5,a5,a3
    80007b64:	f8b40423          	sb	a1,-120(s0)
    80007b68:	42ebfc63          	bgeu	s7,a4,80007fa0 <__printf+0x678>
    80007b6c:	02079793          	slli	a5,a5,0x20
    80007b70:	0207d793          	srli	a5,a5,0x20
    80007b74:	00fd8db3          	add	s11,s11,a5
    80007b78:	000dc703          	lbu	a4,0(s11)
    80007b7c:	00a00793          	li	a5,10
    80007b80:	00900c93          	li	s9,9
    80007b84:	f8e404a3          	sb	a4,-119(s0)
    80007b88:	00065c63          	bgez	a2,80007ba0 <__printf+0x278>
    80007b8c:	f9040713          	addi	a4,s0,-112
    80007b90:	00f70733          	add	a4,a4,a5
    80007b94:	02d00693          	li	a3,45
    80007b98:	fed70823          	sb	a3,-16(a4)
    80007b9c:	00078c93          	mv	s9,a5
    80007ba0:	f8040793          	addi	a5,s0,-128
    80007ba4:	01978cb3          	add	s9,a5,s9
    80007ba8:	f7f40d13          	addi	s10,s0,-129
    80007bac:	000cc503          	lbu	a0,0(s9)
    80007bb0:	fffc8c93          	addi	s9,s9,-1
    80007bb4:	00000097          	auipc	ra,0x0
    80007bb8:	b90080e7          	jalr	-1136(ra) # 80007744 <consputc>
    80007bbc:	ffac98e3          	bne	s9,s10,80007bac <__printf+0x284>
    80007bc0:	00094503          	lbu	a0,0(s2)
    80007bc4:	e00514e3          	bnez	a0,800079cc <__printf+0xa4>
    80007bc8:	1a0c1663          	bnez	s8,80007d74 <__printf+0x44c>
    80007bcc:	08813083          	ld	ra,136(sp)
    80007bd0:	08013403          	ld	s0,128(sp)
    80007bd4:	07813483          	ld	s1,120(sp)
    80007bd8:	07013903          	ld	s2,112(sp)
    80007bdc:	06813983          	ld	s3,104(sp)
    80007be0:	06013a03          	ld	s4,96(sp)
    80007be4:	05813a83          	ld	s5,88(sp)
    80007be8:	05013b03          	ld	s6,80(sp)
    80007bec:	04813b83          	ld	s7,72(sp)
    80007bf0:	04013c03          	ld	s8,64(sp)
    80007bf4:	03813c83          	ld	s9,56(sp)
    80007bf8:	03013d03          	ld	s10,48(sp)
    80007bfc:	02813d83          	ld	s11,40(sp)
    80007c00:	0d010113          	addi	sp,sp,208
    80007c04:	00008067          	ret
    80007c08:	07300713          	li	a4,115
    80007c0c:	1ce78a63          	beq	a5,a4,80007de0 <__printf+0x4b8>
    80007c10:	07800713          	li	a4,120
    80007c14:	1ee79e63          	bne	a5,a4,80007e10 <__printf+0x4e8>
    80007c18:	f7843783          	ld	a5,-136(s0)
    80007c1c:	0007a703          	lw	a4,0(a5)
    80007c20:	00878793          	addi	a5,a5,8
    80007c24:	f6f43c23          	sd	a5,-136(s0)
    80007c28:	28074263          	bltz	a4,80007eac <__printf+0x584>
    80007c2c:	00002d97          	auipc	s11,0x2
    80007c30:	ae4d8d93          	addi	s11,s11,-1308 # 80009710 <digits>
    80007c34:	00f77793          	andi	a5,a4,15
    80007c38:	00fd87b3          	add	a5,s11,a5
    80007c3c:	0007c683          	lbu	a3,0(a5)
    80007c40:	00f00613          	li	a2,15
    80007c44:	0007079b          	sext.w	a5,a4
    80007c48:	f8d40023          	sb	a3,-128(s0)
    80007c4c:	0047559b          	srliw	a1,a4,0x4
    80007c50:	0047569b          	srliw	a3,a4,0x4
    80007c54:	00000c93          	li	s9,0
    80007c58:	0ee65063          	bge	a2,a4,80007d38 <__printf+0x410>
    80007c5c:	00f6f693          	andi	a3,a3,15
    80007c60:	00dd86b3          	add	a3,s11,a3
    80007c64:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007c68:	0087d79b          	srliw	a5,a5,0x8
    80007c6c:	00100c93          	li	s9,1
    80007c70:	f8d400a3          	sb	a3,-127(s0)
    80007c74:	0cb67263          	bgeu	a2,a1,80007d38 <__printf+0x410>
    80007c78:	00f7f693          	andi	a3,a5,15
    80007c7c:	00dd86b3          	add	a3,s11,a3
    80007c80:	0006c583          	lbu	a1,0(a3)
    80007c84:	00f00613          	li	a2,15
    80007c88:	0047d69b          	srliw	a3,a5,0x4
    80007c8c:	f8b40123          	sb	a1,-126(s0)
    80007c90:	0047d593          	srli	a1,a5,0x4
    80007c94:	28f67e63          	bgeu	a2,a5,80007f30 <__printf+0x608>
    80007c98:	00f6f693          	andi	a3,a3,15
    80007c9c:	00dd86b3          	add	a3,s11,a3
    80007ca0:	0006c503          	lbu	a0,0(a3)
    80007ca4:	0087d813          	srli	a6,a5,0x8
    80007ca8:	0087d69b          	srliw	a3,a5,0x8
    80007cac:	f8a401a3          	sb	a0,-125(s0)
    80007cb0:	28b67663          	bgeu	a2,a1,80007f3c <__printf+0x614>
    80007cb4:	00f6f693          	andi	a3,a3,15
    80007cb8:	00dd86b3          	add	a3,s11,a3
    80007cbc:	0006c583          	lbu	a1,0(a3)
    80007cc0:	00c7d513          	srli	a0,a5,0xc
    80007cc4:	00c7d69b          	srliw	a3,a5,0xc
    80007cc8:	f8b40223          	sb	a1,-124(s0)
    80007ccc:	29067a63          	bgeu	a2,a6,80007f60 <__printf+0x638>
    80007cd0:	00f6f693          	andi	a3,a3,15
    80007cd4:	00dd86b3          	add	a3,s11,a3
    80007cd8:	0006c583          	lbu	a1,0(a3)
    80007cdc:	0107d813          	srli	a6,a5,0x10
    80007ce0:	0107d69b          	srliw	a3,a5,0x10
    80007ce4:	f8b402a3          	sb	a1,-123(s0)
    80007ce8:	28a67263          	bgeu	a2,a0,80007f6c <__printf+0x644>
    80007cec:	00f6f693          	andi	a3,a3,15
    80007cf0:	00dd86b3          	add	a3,s11,a3
    80007cf4:	0006c683          	lbu	a3,0(a3)
    80007cf8:	0147d79b          	srliw	a5,a5,0x14
    80007cfc:	f8d40323          	sb	a3,-122(s0)
    80007d00:	21067663          	bgeu	a2,a6,80007f0c <__printf+0x5e4>
    80007d04:	02079793          	slli	a5,a5,0x20
    80007d08:	0207d793          	srli	a5,a5,0x20
    80007d0c:	00fd8db3          	add	s11,s11,a5
    80007d10:	000dc683          	lbu	a3,0(s11)
    80007d14:	00800793          	li	a5,8
    80007d18:	00700c93          	li	s9,7
    80007d1c:	f8d403a3          	sb	a3,-121(s0)
    80007d20:	00075c63          	bgez	a4,80007d38 <__printf+0x410>
    80007d24:	f9040713          	addi	a4,s0,-112
    80007d28:	00f70733          	add	a4,a4,a5
    80007d2c:	02d00693          	li	a3,45
    80007d30:	fed70823          	sb	a3,-16(a4)
    80007d34:	00078c93          	mv	s9,a5
    80007d38:	f8040793          	addi	a5,s0,-128
    80007d3c:	01978cb3          	add	s9,a5,s9
    80007d40:	f7f40d13          	addi	s10,s0,-129
    80007d44:	000cc503          	lbu	a0,0(s9)
    80007d48:	fffc8c93          	addi	s9,s9,-1
    80007d4c:	00000097          	auipc	ra,0x0
    80007d50:	9f8080e7          	jalr	-1544(ra) # 80007744 <consputc>
    80007d54:	ff9d18e3          	bne	s10,s9,80007d44 <__printf+0x41c>
    80007d58:	0100006f          	j	80007d68 <__printf+0x440>
    80007d5c:	00000097          	auipc	ra,0x0
    80007d60:	9e8080e7          	jalr	-1560(ra) # 80007744 <consputc>
    80007d64:	000c8493          	mv	s1,s9
    80007d68:	00094503          	lbu	a0,0(s2)
    80007d6c:	c60510e3          	bnez	a0,800079cc <__printf+0xa4>
    80007d70:	e40c0ee3          	beqz	s8,80007bcc <__printf+0x2a4>
    80007d74:	00005517          	auipc	a0,0x5
    80007d78:	ffc50513          	addi	a0,a0,-4 # 8000cd70 <pr>
    80007d7c:	00001097          	auipc	ra,0x1
    80007d80:	94c080e7          	jalr	-1716(ra) # 800086c8 <release>
    80007d84:	e49ff06f          	j	80007bcc <__printf+0x2a4>
    80007d88:	f7843783          	ld	a5,-136(s0)
    80007d8c:	03000513          	li	a0,48
    80007d90:	01000d13          	li	s10,16
    80007d94:	00878713          	addi	a4,a5,8
    80007d98:	0007bc83          	ld	s9,0(a5)
    80007d9c:	f6e43c23          	sd	a4,-136(s0)
    80007da0:	00000097          	auipc	ra,0x0
    80007da4:	9a4080e7          	jalr	-1628(ra) # 80007744 <consputc>
    80007da8:	07800513          	li	a0,120
    80007dac:	00000097          	auipc	ra,0x0
    80007db0:	998080e7          	jalr	-1640(ra) # 80007744 <consputc>
    80007db4:	00002d97          	auipc	s11,0x2
    80007db8:	95cd8d93          	addi	s11,s11,-1700 # 80009710 <digits>
    80007dbc:	03ccd793          	srli	a5,s9,0x3c
    80007dc0:	00fd87b3          	add	a5,s11,a5
    80007dc4:	0007c503          	lbu	a0,0(a5)
    80007dc8:	fffd0d1b          	addiw	s10,s10,-1
    80007dcc:	004c9c93          	slli	s9,s9,0x4
    80007dd0:	00000097          	auipc	ra,0x0
    80007dd4:	974080e7          	jalr	-1676(ra) # 80007744 <consputc>
    80007dd8:	fe0d12e3          	bnez	s10,80007dbc <__printf+0x494>
    80007ddc:	f8dff06f          	j	80007d68 <__printf+0x440>
    80007de0:	f7843783          	ld	a5,-136(s0)
    80007de4:	0007bc83          	ld	s9,0(a5)
    80007de8:	00878793          	addi	a5,a5,8
    80007dec:	f6f43c23          	sd	a5,-136(s0)
    80007df0:	000c9a63          	bnez	s9,80007e04 <__printf+0x4dc>
    80007df4:	1080006f          	j	80007efc <__printf+0x5d4>
    80007df8:	001c8c93          	addi	s9,s9,1
    80007dfc:	00000097          	auipc	ra,0x0
    80007e00:	948080e7          	jalr	-1720(ra) # 80007744 <consputc>
    80007e04:	000cc503          	lbu	a0,0(s9)
    80007e08:	fe0518e3          	bnez	a0,80007df8 <__printf+0x4d0>
    80007e0c:	f5dff06f          	j	80007d68 <__printf+0x440>
    80007e10:	02500513          	li	a0,37
    80007e14:	00000097          	auipc	ra,0x0
    80007e18:	930080e7          	jalr	-1744(ra) # 80007744 <consputc>
    80007e1c:	000c8513          	mv	a0,s9
    80007e20:	00000097          	auipc	ra,0x0
    80007e24:	924080e7          	jalr	-1756(ra) # 80007744 <consputc>
    80007e28:	f41ff06f          	j	80007d68 <__printf+0x440>
    80007e2c:	02500513          	li	a0,37
    80007e30:	00000097          	auipc	ra,0x0
    80007e34:	914080e7          	jalr	-1772(ra) # 80007744 <consputc>
    80007e38:	f31ff06f          	j	80007d68 <__printf+0x440>
    80007e3c:	00030513          	mv	a0,t1
    80007e40:	00000097          	auipc	ra,0x0
    80007e44:	7bc080e7          	jalr	1980(ra) # 800085fc <acquire>
    80007e48:	b4dff06f          	j	80007994 <__printf+0x6c>
    80007e4c:	40c0053b          	negw	a0,a2
    80007e50:	00a00713          	li	a4,10
    80007e54:	02e576bb          	remuw	a3,a0,a4
    80007e58:	00002d97          	auipc	s11,0x2
    80007e5c:	8b8d8d93          	addi	s11,s11,-1864 # 80009710 <digits>
    80007e60:	ff700593          	li	a1,-9
    80007e64:	02069693          	slli	a3,a3,0x20
    80007e68:	0206d693          	srli	a3,a3,0x20
    80007e6c:	00dd86b3          	add	a3,s11,a3
    80007e70:	0006c683          	lbu	a3,0(a3)
    80007e74:	02e557bb          	divuw	a5,a0,a4
    80007e78:	f8d40023          	sb	a3,-128(s0)
    80007e7c:	10b65e63          	bge	a2,a1,80007f98 <__printf+0x670>
    80007e80:	06300593          	li	a1,99
    80007e84:	02e7f6bb          	remuw	a3,a5,a4
    80007e88:	02069693          	slli	a3,a3,0x20
    80007e8c:	0206d693          	srli	a3,a3,0x20
    80007e90:	00dd86b3          	add	a3,s11,a3
    80007e94:	0006c683          	lbu	a3,0(a3)
    80007e98:	02e7d73b          	divuw	a4,a5,a4
    80007e9c:	00200793          	li	a5,2
    80007ea0:	f8d400a3          	sb	a3,-127(s0)
    80007ea4:	bca5ece3          	bltu	a1,a0,80007a7c <__printf+0x154>
    80007ea8:	ce5ff06f          	j	80007b8c <__printf+0x264>
    80007eac:	40e007bb          	negw	a5,a4
    80007eb0:	00002d97          	auipc	s11,0x2
    80007eb4:	860d8d93          	addi	s11,s11,-1952 # 80009710 <digits>
    80007eb8:	00f7f693          	andi	a3,a5,15
    80007ebc:	00dd86b3          	add	a3,s11,a3
    80007ec0:	0006c583          	lbu	a1,0(a3)
    80007ec4:	ff100613          	li	a2,-15
    80007ec8:	0047d69b          	srliw	a3,a5,0x4
    80007ecc:	f8b40023          	sb	a1,-128(s0)
    80007ed0:	0047d59b          	srliw	a1,a5,0x4
    80007ed4:	0ac75e63          	bge	a4,a2,80007f90 <__printf+0x668>
    80007ed8:	00f6f693          	andi	a3,a3,15
    80007edc:	00dd86b3          	add	a3,s11,a3
    80007ee0:	0006c603          	lbu	a2,0(a3)
    80007ee4:	00f00693          	li	a3,15
    80007ee8:	0087d79b          	srliw	a5,a5,0x8
    80007eec:	f8c400a3          	sb	a2,-127(s0)
    80007ef0:	d8b6e4e3          	bltu	a3,a1,80007c78 <__printf+0x350>
    80007ef4:	00200793          	li	a5,2
    80007ef8:	e2dff06f          	j	80007d24 <__printf+0x3fc>
    80007efc:	00001c97          	auipc	s9,0x1
    80007f00:	7f4c8c93          	addi	s9,s9,2036 # 800096f0 <CONSOLE_STATUS+0x6e0>
    80007f04:	02800513          	li	a0,40
    80007f08:	ef1ff06f          	j	80007df8 <__printf+0x4d0>
    80007f0c:	00700793          	li	a5,7
    80007f10:	00600c93          	li	s9,6
    80007f14:	e0dff06f          	j	80007d20 <__printf+0x3f8>
    80007f18:	00700793          	li	a5,7
    80007f1c:	00600c93          	li	s9,6
    80007f20:	c69ff06f          	j	80007b88 <__printf+0x260>
    80007f24:	00300793          	li	a5,3
    80007f28:	00200c93          	li	s9,2
    80007f2c:	c5dff06f          	j	80007b88 <__printf+0x260>
    80007f30:	00300793          	li	a5,3
    80007f34:	00200c93          	li	s9,2
    80007f38:	de9ff06f          	j	80007d20 <__printf+0x3f8>
    80007f3c:	00400793          	li	a5,4
    80007f40:	00300c93          	li	s9,3
    80007f44:	dddff06f          	j	80007d20 <__printf+0x3f8>
    80007f48:	00400793          	li	a5,4
    80007f4c:	00300c93          	li	s9,3
    80007f50:	c39ff06f          	j	80007b88 <__printf+0x260>
    80007f54:	00500793          	li	a5,5
    80007f58:	00400c93          	li	s9,4
    80007f5c:	c2dff06f          	j	80007b88 <__printf+0x260>
    80007f60:	00500793          	li	a5,5
    80007f64:	00400c93          	li	s9,4
    80007f68:	db9ff06f          	j	80007d20 <__printf+0x3f8>
    80007f6c:	00600793          	li	a5,6
    80007f70:	00500c93          	li	s9,5
    80007f74:	dadff06f          	j	80007d20 <__printf+0x3f8>
    80007f78:	00600793          	li	a5,6
    80007f7c:	00500c93          	li	s9,5
    80007f80:	c09ff06f          	j	80007b88 <__printf+0x260>
    80007f84:	00800793          	li	a5,8
    80007f88:	00700c93          	li	s9,7
    80007f8c:	bfdff06f          	j	80007b88 <__printf+0x260>
    80007f90:	00100793          	li	a5,1
    80007f94:	d91ff06f          	j	80007d24 <__printf+0x3fc>
    80007f98:	00100793          	li	a5,1
    80007f9c:	bf1ff06f          	j	80007b8c <__printf+0x264>
    80007fa0:	00900793          	li	a5,9
    80007fa4:	00800c93          	li	s9,8
    80007fa8:	be1ff06f          	j	80007b88 <__printf+0x260>
    80007fac:	00001517          	auipc	a0,0x1
    80007fb0:	74c50513          	addi	a0,a0,1868 # 800096f8 <CONSOLE_STATUS+0x6e8>
    80007fb4:	00000097          	auipc	ra,0x0
    80007fb8:	918080e7          	jalr	-1768(ra) # 800078cc <panic>

0000000080007fbc <printfinit>:
    80007fbc:	fe010113          	addi	sp,sp,-32
    80007fc0:	00813823          	sd	s0,16(sp)
    80007fc4:	00913423          	sd	s1,8(sp)
    80007fc8:	00113c23          	sd	ra,24(sp)
    80007fcc:	02010413          	addi	s0,sp,32
    80007fd0:	00005497          	auipc	s1,0x5
    80007fd4:	da048493          	addi	s1,s1,-608 # 8000cd70 <pr>
    80007fd8:	00048513          	mv	a0,s1
    80007fdc:	00001597          	auipc	a1,0x1
    80007fe0:	72c58593          	addi	a1,a1,1836 # 80009708 <CONSOLE_STATUS+0x6f8>
    80007fe4:	00000097          	auipc	ra,0x0
    80007fe8:	5f4080e7          	jalr	1524(ra) # 800085d8 <initlock>
    80007fec:	01813083          	ld	ra,24(sp)
    80007ff0:	01013403          	ld	s0,16(sp)
    80007ff4:	0004ac23          	sw	zero,24(s1)
    80007ff8:	00813483          	ld	s1,8(sp)
    80007ffc:	02010113          	addi	sp,sp,32
    80008000:	00008067          	ret

0000000080008004 <uartinit>:
    80008004:	ff010113          	addi	sp,sp,-16
    80008008:	00813423          	sd	s0,8(sp)
    8000800c:	01010413          	addi	s0,sp,16
    80008010:	100007b7          	lui	a5,0x10000
    80008014:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80008018:	f8000713          	li	a4,-128
    8000801c:	00e781a3          	sb	a4,3(a5)
    80008020:	00300713          	li	a4,3
    80008024:	00e78023          	sb	a4,0(a5)
    80008028:	000780a3          	sb	zero,1(a5)
    8000802c:	00e781a3          	sb	a4,3(a5)
    80008030:	00700693          	li	a3,7
    80008034:	00d78123          	sb	a3,2(a5)
    80008038:	00e780a3          	sb	a4,1(a5)
    8000803c:	00813403          	ld	s0,8(sp)
    80008040:	01010113          	addi	sp,sp,16
    80008044:	00008067          	ret

0000000080008048 <uartputc>:
    80008048:	00004797          	auipc	a5,0x4
    8000804c:	a307a783          	lw	a5,-1488(a5) # 8000ba78 <panicked>
    80008050:	00078463          	beqz	a5,80008058 <uartputc+0x10>
    80008054:	0000006f          	j	80008054 <uartputc+0xc>
    80008058:	fd010113          	addi	sp,sp,-48
    8000805c:	02813023          	sd	s0,32(sp)
    80008060:	00913c23          	sd	s1,24(sp)
    80008064:	01213823          	sd	s2,16(sp)
    80008068:	01313423          	sd	s3,8(sp)
    8000806c:	02113423          	sd	ra,40(sp)
    80008070:	03010413          	addi	s0,sp,48
    80008074:	00004917          	auipc	s2,0x4
    80008078:	a0c90913          	addi	s2,s2,-1524 # 8000ba80 <uart_tx_r>
    8000807c:	00093783          	ld	a5,0(s2)
    80008080:	00004497          	auipc	s1,0x4
    80008084:	a0848493          	addi	s1,s1,-1528 # 8000ba88 <uart_tx_w>
    80008088:	0004b703          	ld	a4,0(s1)
    8000808c:	02078693          	addi	a3,a5,32
    80008090:	00050993          	mv	s3,a0
    80008094:	02e69c63          	bne	a3,a4,800080cc <uartputc+0x84>
    80008098:	00001097          	auipc	ra,0x1
    8000809c:	834080e7          	jalr	-1996(ra) # 800088cc <push_on>
    800080a0:	00093783          	ld	a5,0(s2)
    800080a4:	0004b703          	ld	a4,0(s1)
    800080a8:	02078793          	addi	a5,a5,32
    800080ac:	00e79463          	bne	a5,a4,800080b4 <uartputc+0x6c>
    800080b0:	0000006f          	j	800080b0 <uartputc+0x68>
    800080b4:	00001097          	auipc	ra,0x1
    800080b8:	88c080e7          	jalr	-1908(ra) # 80008940 <pop_on>
    800080bc:	00093783          	ld	a5,0(s2)
    800080c0:	0004b703          	ld	a4,0(s1)
    800080c4:	02078693          	addi	a3,a5,32
    800080c8:	fce688e3          	beq	a3,a4,80008098 <uartputc+0x50>
    800080cc:	01f77693          	andi	a3,a4,31
    800080d0:	00005597          	auipc	a1,0x5
    800080d4:	cc058593          	addi	a1,a1,-832 # 8000cd90 <uart_tx_buf>
    800080d8:	00d586b3          	add	a3,a1,a3
    800080dc:	00170713          	addi	a4,a4,1
    800080e0:	01368023          	sb	s3,0(a3)
    800080e4:	00e4b023          	sd	a4,0(s1)
    800080e8:	10000637          	lui	a2,0x10000
    800080ec:	02f71063          	bne	a4,a5,8000810c <uartputc+0xc4>
    800080f0:	0340006f          	j	80008124 <uartputc+0xdc>
    800080f4:	00074703          	lbu	a4,0(a4)
    800080f8:	00f93023          	sd	a5,0(s2)
    800080fc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80008100:	00093783          	ld	a5,0(s2)
    80008104:	0004b703          	ld	a4,0(s1)
    80008108:	00f70e63          	beq	a4,a5,80008124 <uartputc+0xdc>
    8000810c:	00564683          	lbu	a3,5(a2)
    80008110:	01f7f713          	andi	a4,a5,31
    80008114:	00e58733          	add	a4,a1,a4
    80008118:	0206f693          	andi	a3,a3,32
    8000811c:	00178793          	addi	a5,a5,1
    80008120:	fc069ae3          	bnez	a3,800080f4 <uartputc+0xac>
    80008124:	02813083          	ld	ra,40(sp)
    80008128:	02013403          	ld	s0,32(sp)
    8000812c:	01813483          	ld	s1,24(sp)
    80008130:	01013903          	ld	s2,16(sp)
    80008134:	00813983          	ld	s3,8(sp)
    80008138:	03010113          	addi	sp,sp,48
    8000813c:	00008067          	ret

0000000080008140 <uartputc_sync>:
    80008140:	ff010113          	addi	sp,sp,-16
    80008144:	00813423          	sd	s0,8(sp)
    80008148:	01010413          	addi	s0,sp,16
    8000814c:	00004717          	auipc	a4,0x4
    80008150:	92c72703          	lw	a4,-1748(a4) # 8000ba78 <panicked>
    80008154:	02071663          	bnez	a4,80008180 <uartputc_sync+0x40>
    80008158:	00050793          	mv	a5,a0
    8000815c:	100006b7          	lui	a3,0x10000
    80008160:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80008164:	02077713          	andi	a4,a4,32
    80008168:	fe070ce3          	beqz	a4,80008160 <uartputc_sync+0x20>
    8000816c:	0ff7f793          	andi	a5,a5,255
    80008170:	00f68023          	sb	a5,0(a3)
    80008174:	00813403          	ld	s0,8(sp)
    80008178:	01010113          	addi	sp,sp,16
    8000817c:	00008067          	ret
    80008180:	0000006f          	j	80008180 <uartputc_sync+0x40>

0000000080008184 <uartstart>:
    80008184:	ff010113          	addi	sp,sp,-16
    80008188:	00813423          	sd	s0,8(sp)
    8000818c:	01010413          	addi	s0,sp,16
    80008190:	00004617          	auipc	a2,0x4
    80008194:	8f060613          	addi	a2,a2,-1808 # 8000ba80 <uart_tx_r>
    80008198:	00004517          	auipc	a0,0x4
    8000819c:	8f050513          	addi	a0,a0,-1808 # 8000ba88 <uart_tx_w>
    800081a0:	00063783          	ld	a5,0(a2)
    800081a4:	00053703          	ld	a4,0(a0)
    800081a8:	04f70263          	beq	a4,a5,800081ec <uartstart+0x68>
    800081ac:	100005b7          	lui	a1,0x10000
    800081b0:	00005817          	auipc	a6,0x5
    800081b4:	be080813          	addi	a6,a6,-1056 # 8000cd90 <uart_tx_buf>
    800081b8:	01c0006f          	j	800081d4 <uartstart+0x50>
    800081bc:	0006c703          	lbu	a4,0(a3)
    800081c0:	00f63023          	sd	a5,0(a2)
    800081c4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800081c8:	00063783          	ld	a5,0(a2)
    800081cc:	00053703          	ld	a4,0(a0)
    800081d0:	00f70e63          	beq	a4,a5,800081ec <uartstart+0x68>
    800081d4:	01f7f713          	andi	a4,a5,31
    800081d8:	00e806b3          	add	a3,a6,a4
    800081dc:	0055c703          	lbu	a4,5(a1)
    800081e0:	00178793          	addi	a5,a5,1
    800081e4:	02077713          	andi	a4,a4,32
    800081e8:	fc071ae3          	bnez	a4,800081bc <uartstart+0x38>
    800081ec:	00813403          	ld	s0,8(sp)
    800081f0:	01010113          	addi	sp,sp,16
    800081f4:	00008067          	ret

00000000800081f8 <uartgetc>:
    800081f8:	ff010113          	addi	sp,sp,-16
    800081fc:	00813423          	sd	s0,8(sp)
    80008200:	01010413          	addi	s0,sp,16
    80008204:	10000737          	lui	a4,0x10000
    80008208:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000820c:	0017f793          	andi	a5,a5,1
    80008210:	00078c63          	beqz	a5,80008228 <uartgetc+0x30>
    80008214:	00074503          	lbu	a0,0(a4)
    80008218:	0ff57513          	andi	a0,a0,255
    8000821c:	00813403          	ld	s0,8(sp)
    80008220:	01010113          	addi	sp,sp,16
    80008224:	00008067          	ret
    80008228:	fff00513          	li	a0,-1
    8000822c:	ff1ff06f          	j	8000821c <uartgetc+0x24>

0000000080008230 <uartintr>:
    80008230:	100007b7          	lui	a5,0x10000
    80008234:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80008238:	0017f793          	andi	a5,a5,1
    8000823c:	0a078463          	beqz	a5,800082e4 <uartintr+0xb4>
    80008240:	fe010113          	addi	sp,sp,-32
    80008244:	00813823          	sd	s0,16(sp)
    80008248:	00913423          	sd	s1,8(sp)
    8000824c:	00113c23          	sd	ra,24(sp)
    80008250:	02010413          	addi	s0,sp,32
    80008254:	100004b7          	lui	s1,0x10000
    80008258:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000825c:	0ff57513          	andi	a0,a0,255
    80008260:	fffff097          	auipc	ra,0xfffff
    80008264:	534080e7          	jalr	1332(ra) # 80007794 <consoleintr>
    80008268:	0054c783          	lbu	a5,5(s1)
    8000826c:	0017f793          	andi	a5,a5,1
    80008270:	fe0794e3          	bnez	a5,80008258 <uartintr+0x28>
    80008274:	00004617          	auipc	a2,0x4
    80008278:	80c60613          	addi	a2,a2,-2036 # 8000ba80 <uart_tx_r>
    8000827c:	00004517          	auipc	a0,0x4
    80008280:	80c50513          	addi	a0,a0,-2036 # 8000ba88 <uart_tx_w>
    80008284:	00063783          	ld	a5,0(a2)
    80008288:	00053703          	ld	a4,0(a0)
    8000828c:	04f70263          	beq	a4,a5,800082d0 <uartintr+0xa0>
    80008290:	100005b7          	lui	a1,0x10000
    80008294:	00005817          	auipc	a6,0x5
    80008298:	afc80813          	addi	a6,a6,-1284 # 8000cd90 <uart_tx_buf>
    8000829c:	01c0006f          	j	800082b8 <uartintr+0x88>
    800082a0:	0006c703          	lbu	a4,0(a3)
    800082a4:	00f63023          	sd	a5,0(a2)
    800082a8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800082ac:	00063783          	ld	a5,0(a2)
    800082b0:	00053703          	ld	a4,0(a0)
    800082b4:	00f70e63          	beq	a4,a5,800082d0 <uartintr+0xa0>
    800082b8:	01f7f713          	andi	a4,a5,31
    800082bc:	00e806b3          	add	a3,a6,a4
    800082c0:	0055c703          	lbu	a4,5(a1)
    800082c4:	00178793          	addi	a5,a5,1
    800082c8:	02077713          	andi	a4,a4,32
    800082cc:	fc071ae3          	bnez	a4,800082a0 <uartintr+0x70>
    800082d0:	01813083          	ld	ra,24(sp)
    800082d4:	01013403          	ld	s0,16(sp)
    800082d8:	00813483          	ld	s1,8(sp)
    800082dc:	02010113          	addi	sp,sp,32
    800082e0:	00008067          	ret
    800082e4:	00003617          	auipc	a2,0x3
    800082e8:	79c60613          	addi	a2,a2,1948 # 8000ba80 <uart_tx_r>
    800082ec:	00003517          	auipc	a0,0x3
    800082f0:	79c50513          	addi	a0,a0,1948 # 8000ba88 <uart_tx_w>
    800082f4:	00063783          	ld	a5,0(a2)
    800082f8:	00053703          	ld	a4,0(a0)
    800082fc:	04f70263          	beq	a4,a5,80008340 <uartintr+0x110>
    80008300:	100005b7          	lui	a1,0x10000
    80008304:	00005817          	auipc	a6,0x5
    80008308:	a8c80813          	addi	a6,a6,-1396 # 8000cd90 <uart_tx_buf>
    8000830c:	01c0006f          	j	80008328 <uartintr+0xf8>
    80008310:	0006c703          	lbu	a4,0(a3)
    80008314:	00f63023          	sd	a5,0(a2)
    80008318:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000831c:	00063783          	ld	a5,0(a2)
    80008320:	00053703          	ld	a4,0(a0)
    80008324:	02f70063          	beq	a4,a5,80008344 <uartintr+0x114>
    80008328:	01f7f713          	andi	a4,a5,31
    8000832c:	00e806b3          	add	a3,a6,a4
    80008330:	0055c703          	lbu	a4,5(a1)
    80008334:	00178793          	addi	a5,a5,1
    80008338:	02077713          	andi	a4,a4,32
    8000833c:	fc071ae3          	bnez	a4,80008310 <uartintr+0xe0>
    80008340:	00008067          	ret
    80008344:	00008067          	ret

0000000080008348 <kinit>:
    80008348:	fc010113          	addi	sp,sp,-64
    8000834c:	02913423          	sd	s1,40(sp)
    80008350:	fffff7b7          	lui	a5,0xfffff
    80008354:	00006497          	auipc	s1,0x6
    80008358:	a6b48493          	addi	s1,s1,-1429 # 8000ddbf <end+0xfff>
    8000835c:	02813823          	sd	s0,48(sp)
    80008360:	01313c23          	sd	s3,24(sp)
    80008364:	00f4f4b3          	and	s1,s1,a5
    80008368:	02113c23          	sd	ra,56(sp)
    8000836c:	03213023          	sd	s2,32(sp)
    80008370:	01413823          	sd	s4,16(sp)
    80008374:	01513423          	sd	s5,8(sp)
    80008378:	04010413          	addi	s0,sp,64
    8000837c:	000017b7          	lui	a5,0x1
    80008380:	01100993          	li	s3,17
    80008384:	00f487b3          	add	a5,s1,a5
    80008388:	01b99993          	slli	s3,s3,0x1b
    8000838c:	06f9e063          	bltu	s3,a5,800083ec <kinit+0xa4>
    80008390:	00005a97          	auipc	s5,0x5
    80008394:	a30a8a93          	addi	s5,s5,-1488 # 8000cdc0 <end>
    80008398:	0754ec63          	bltu	s1,s5,80008410 <kinit+0xc8>
    8000839c:	0734fa63          	bgeu	s1,s3,80008410 <kinit+0xc8>
    800083a0:	00088a37          	lui	s4,0x88
    800083a4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800083a8:	00003917          	auipc	s2,0x3
    800083ac:	6e890913          	addi	s2,s2,1768 # 8000ba90 <kmem>
    800083b0:	00ca1a13          	slli	s4,s4,0xc
    800083b4:	0140006f          	j	800083c8 <kinit+0x80>
    800083b8:	000017b7          	lui	a5,0x1
    800083bc:	00f484b3          	add	s1,s1,a5
    800083c0:	0554e863          	bltu	s1,s5,80008410 <kinit+0xc8>
    800083c4:	0534f663          	bgeu	s1,s3,80008410 <kinit+0xc8>
    800083c8:	00001637          	lui	a2,0x1
    800083cc:	00100593          	li	a1,1
    800083d0:	00048513          	mv	a0,s1
    800083d4:	00000097          	auipc	ra,0x0
    800083d8:	5e4080e7          	jalr	1508(ra) # 800089b8 <__memset>
    800083dc:	00093783          	ld	a5,0(s2)
    800083e0:	00f4b023          	sd	a5,0(s1)
    800083e4:	00993023          	sd	s1,0(s2)
    800083e8:	fd4498e3          	bne	s1,s4,800083b8 <kinit+0x70>
    800083ec:	03813083          	ld	ra,56(sp)
    800083f0:	03013403          	ld	s0,48(sp)
    800083f4:	02813483          	ld	s1,40(sp)
    800083f8:	02013903          	ld	s2,32(sp)
    800083fc:	01813983          	ld	s3,24(sp)
    80008400:	01013a03          	ld	s4,16(sp)
    80008404:	00813a83          	ld	s5,8(sp)
    80008408:	04010113          	addi	sp,sp,64
    8000840c:	00008067          	ret
    80008410:	00001517          	auipc	a0,0x1
    80008414:	31850513          	addi	a0,a0,792 # 80009728 <digits+0x18>
    80008418:	fffff097          	auipc	ra,0xfffff
    8000841c:	4b4080e7          	jalr	1204(ra) # 800078cc <panic>

0000000080008420 <freerange>:
    80008420:	fc010113          	addi	sp,sp,-64
    80008424:	000017b7          	lui	a5,0x1
    80008428:	02913423          	sd	s1,40(sp)
    8000842c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80008430:	009504b3          	add	s1,a0,s1
    80008434:	fffff537          	lui	a0,0xfffff
    80008438:	02813823          	sd	s0,48(sp)
    8000843c:	02113c23          	sd	ra,56(sp)
    80008440:	03213023          	sd	s2,32(sp)
    80008444:	01313c23          	sd	s3,24(sp)
    80008448:	01413823          	sd	s4,16(sp)
    8000844c:	01513423          	sd	s5,8(sp)
    80008450:	01613023          	sd	s6,0(sp)
    80008454:	04010413          	addi	s0,sp,64
    80008458:	00a4f4b3          	and	s1,s1,a0
    8000845c:	00f487b3          	add	a5,s1,a5
    80008460:	06f5e463          	bltu	a1,a5,800084c8 <freerange+0xa8>
    80008464:	00005a97          	auipc	s5,0x5
    80008468:	95ca8a93          	addi	s5,s5,-1700 # 8000cdc0 <end>
    8000846c:	0954e263          	bltu	s1,s5,800084f0 <freerange+0xd0>
    80008470:	01100993          	li	s3,17
    80008474:	01b99993          	slli	s3,s3,0x1b
    80008478:	0734fc63          	bgeu	s1,s3,800084f0 <freerange+0xd0>
    8000847c:	00058a13          	mv	s4,a1
    80008480:	00003917          	auipc	s2,0x3
    80008484:	61090913          	addi	s2,s2,1552 # 8000ba90 <kmem>
    80008488:	00002b37          	lui	s6,0x2
    8000848c:	0140006f          	j	800084a0 <freerange+0x80>
    80008490:	000017b7          	lui	a5,0x1
    80008494:	00f484b3          	add	s1,s1,a5
    80008498:	0554ec63          	bltu	s1,s5,800084f0 <freerange+0xd0>
    8000849c:	0534fa63          	bgeu	s1,s3,800084f0 <freerange+0xd0>
    800084a0:	00001637          	lui	a2,0x1
    800084a4:	00100593          	li	a1,1
    800084a8:	00048513          	mv	a0,s1
    800084ac:	00000097          	auipc	ra,0x0
    800084b0:	50c080e7          	jalr	1292(ra) # 800089b8 <__memset>
    800084b4:	00093703          	ld	a4,0(s2)
    800084b8:	016487b3          	add	a5,s1,s6
    800084bc:	00e4b023          	sd	a4,0(s1)
    800084c0:	00993023          	sd	s1,0(s2)
    800084c4:	fcfa76e3          	bgeu	s4,a5,80008490 <freerange+0x70>
    800084c8:	03813083          	ld	ra,56(sp)
    800084cc:	03013403          	ld	s0,48(sp)
    800084d0:	02813483          	ld	s1,40(sp)
    800084d4:	02013903          	ld	s2,32(sp)
    800084d8:	01813983          	ld	s3,24(sp)
    800084dc:	01013a03          	ld	s4,16(sp)
    800084e0:	00813a83          	ld	s5,8(sp)
    800084e4:	00013b03          	ld	s6,0(sp)
    800084e8:	04010113          	addi	sp,sp,64
    800084ec:	00008067          	ret
    800084f0:	00001517          	auipc	a0,0x1
    800084f4:	23850513          	addi	a0,a0,568 # 80009728 <digits+0x18>
    800084f8:	fffff097          	auipc	ra,0xfffff
    800084fc:	3d4080e7          	jalr	980(ra) # 800078cc <panic>

0000000080008500 <kfree>:
    80008500:	fe010113          	addi	sp,sp,-32
    80008504:	00813823          	sd	s0,16(sp)
    80008508:	00113c23          	sd	ra,24(sp)
    8000850c:	00913423          	sd	s1,8(sp)
    80008510:	02010413          	addi	s0,sp,32
    80008514:	03451793          	slli	a5,a0,0x34
    80008518:	04079c63          	bnez	a5,80008570 <kfree+0x70>
    8000851c:	00005797          	auipc	a5,0x5
    80008520:	8a478793          	addi	a5,a5,-1884 # 8000cdc0 <end>
    80008524:	00050493          	mv	s1,a0
    80008528:	04f56463          	bltu	a0,a5,80008570 <kfree+0x70>
    8000852c:	01100793          	li	a5,17
    80008530:	01b79793          	slli	a5,a5,0x1b
    80008534:	02f57e63          	bgeu	a0,a5,80008570 <kfree+0x70>
    80008538:	00001637          	lui	a2,0x1
    8000853c:	00100593          	li	a1,1
    80008540:	00000097          	auipc	ra,0x0
    80008544:	478080e7          	jalr	1144(ra) # 800089b8 <__memset>
    80008548:	00003797          	auipc	a5,0x3
    8000854c:	54878793          	addi	a5,a5,1352 # 8000ba90 <kmem>
    80008550:	0007b703          	ld	a4,0(a5)
    80008554:	01813083          	ld	ra,24(sp)
    80008558:	01013403          	ld	s0,16(sp)
    8000855c:	00e4b023          	sd	a4,0(s1)
    80008560:	0097b023          	sd	s1,0(a5)
    80008564:	00813483          	ld	s1,8(sp)
    80008568:	02010113          	addi	sp,sp,32
    8000856c:	00008067          	ret
    80008570:	00001517          	auipc	a0,0x1
    80008574:	1b850513          	addi	a0,a0,440 # 80009728 <digits+0x18>
    80008578:	fffff097          	auipc	ra,0xfffff
    8000857c:	354080e7          	jalr	852(ra) # 800078cc <panic>

0000000080008580 <kalloc>:
    80008580:	fe010113          	addi	sp,sp,-32
    80008584:	00813823          	sd	s0,16(sp)
    80008588:	00913423          	sd	s1,8(sp)
    8000858c:	00113c23          	sd	ra,24(sp)
    80008590:	02010413          	addi	s0,sp,32
    80008594:	00003797          	auipc	a5,0x3
    80008598:	4fc78793          	addi	a5,a5,1276 # 8000ba90 <kmem>
    8000859c:	0007b483          	ld	s1,0(a5)
    800085a0:	02048063          	beqz	s1,800085c0 <kalloc+0x40>
    800085a4:	0004b703          	ld	a4,0(s1)
    800085a8:	00001637          	lui	a2,0x1
    800085ac:	00500593          	li	a1,5
    800085b0:	00048513          	mv	a0,s1
    800085b4:	00e7b023          	sd	a4,0(a5)
    800085b8:	00000097          	auipc	ra,0x0
    800085bc:	400080e7          	jalr	1024(ra) # 800089b8 <__memset>
    800085c0:	01813083          	ld	ra,24(sp)
    800085c4:	01013403          	ld	s0,16(sp)
    800085c8:	00048513          	mv	a0,s1
    800085cc:	00813483          	ld	s1,8(sp)
    800085d0:	02010113          	addi	sp,sp,32
    800085d4:	00008067          	ret

00000000800085d8 <initlock>:
    800085d8:	ff010113          	addi	sp,sp,-16
    800085dc:	00813423          	sd	s0,8(sp)
    800085e0:	01010413          	addi	s0,sp,16
    800085e4:	00813403          	ld	s0,8(sp)
    800085e8:	00b53423          	sd	a1,8(a0)
    800085ec:	00052023          	sw	zero,0(a0)
    800085f0:	00053823          	sd	zero,16(a0)
    800085f4:	01010113          	addi	sp,sp,16
    800085f8:	00008067          	ret

00000000800085fc <acquire>:
    800085fc:	fe010113          	addi	sp,sp,-32
    80008600:	00813823          	sd	s0,16(sp)
    80008604:	00913423          	sd	s1,8(sp)
    80008608:	00113c23          	sd	ra,24(sp)
    8000860c:	01213023          	sd	s2,0(sp)
    80008610:	02010413          	addi	s0,sp,32
    80008614:	00050493          	mv	s1,a0
    80008618:	10002973          	csrr	s2,sstatus
    8000861c:	100027f3          	csrr	a5,sstatus
    80008620:	ffd7f793          	andi	a5,a5,-3
    80008624:	10079073          	csrw	sstatus,a5
    80008628:	fffff097          	auipc	ra,0xfffff
    8000862c:	8e8080e7          	jalr	-1816(ra) # 80006f10 <mycpu>
    80008630:	07852783          	lw	a5,120(a0)
    80008634:	06078e63          	beqz	a5,800086b0 <acquire+0xb4>
    80008638:	fffff097          	auipc	ra,0xfffff
    8000863c:	8d8080e7          	jalr	-1832(ra) # 80006f10 <mycpu>
    80008640:	07852783          	lw	a5,120(a0)
    80008644:	0004a703          	lw	a4,0(s1)
    80008648:	0017879b          	addiw	a5,a5,1
    8000864c:	06f52c23          	sw	a5,120(a0)
    80008650:	04071063          	bnez	a4,80008690 <acquire+0x94>
    80008654:	00100713          	li	a4,1
    80008658:	00070793          	mv	a5,a4
    8000865c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80008660:	0007879b          	sext.w	a5,a5
    80008664:	fe079ae3          	bnez	a5,80008658 <acquire+0x5c>
    80008668:	0ff0000f          	fence
    8000866c:	fffff097          	auipc	ra,0xfffff
    80008670:	8a4080e7          	jalr	-1884(ra) # 80006f10 <mycpu>
    80008674:	01813083          	ld	ra,24(sp)
    80008678:	01013403          	ld	s0,16(sp)
    8000867c:	00a4b823          	sd	a0,16(s1)
    80008680:	00013903          	ld	s2,0(sp)
    80008684:	00813483          	ld	s1,8(sp)
    80008688:	02010113          	addi	sp,sp,32
    8000868c:	00008067          	ret
    80008690:	0104b903          	ld	s2,16(s1)
    80008694:	fffff097          	auipc	ra,0xfffff
    80008698:	87c080e7          	jalr	-1924(ra) # 80006f10 <mycpu>
    8000869c:	faa91ce3          	bne	s2,a0,80008654 <acquire+0x58>
    800086a0:	00001517          	auipc	a0,0x1
    800086a4:	09050513          	addi	a0,a0,144 # 80009730 <digits+0x20>
    800086a8:	fffff097          	auipc	ra,0xfffff
    800086ac:	224080e7          	jalr	548(ra) # 800078cc <panic>
    800086b0:	00195913          	srli	s2,s2,0x1
    800086b4:	fffff097          	auipc	ra,0xfffff
    800086b8:	85c080e7          	jalr	-1956(ra) # 80006f10 <mycpu>
    800086bc:	00197913          	andi	s2,s2,1
    800086c0:	07252e23          	sw	s2,124(a0)
    800086c4:	f75ff06f          	j	80008638 <acquire+0x3c>

00000000800086c8 <release>:
    800086c8:	fe010113          	addi	sp,sp,-32
    800086cc:	00813823          	sd	s0,16(sp)
    800086d0:	00113c23          	sd	ra,24(sp)
    800086d4:	00913423          	sd	s1,8(sp)
    800086d8:	01213023          	sd	s2,0(sp)
    800086dc:	02010413          	addi	s0,sp,32
    800086e0:	00052783          	lw	a5,0(a0)
    800086e4:	00079a63          	bnez	a5,800086f8 <release+0x30>
    800086e8:	00001517          	auipc	a0,0x1
    800086ec:	05050513          	addi	a0,a0,80 # 80009738 <digits+0x28>
    800086f0:	fffff097          	auipc	ra,0xfffff
    800086f4:	1dc080e7          	jalr	476(ra) # 800078cc <panic>
    800086f8:	01053903          	ld	s2,16(a0)
    800086fc:	00050493          	mv	s1,a0
    80008700:	fffff097          	auipc	ra,0xfffff
    80008704:	810080e7          	jalr	-2032(ra) # 80006f10 <mycpu>
    80008708:	fea910e3          	bne	s2,a0,800086e8 <release+0x20>
    8000870c:	0004b823          	sd	zero,16(s1)
    80008710:	0ff0000f          	fence
    80008714:	0f50000f          	fence	iorw,ow
    80008718:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000871c:	ffffe097          	auipc	ra,0xffffe
    80008720:	7f4080e7          	jalr	2036(ra) # 80006f10 <mycpu>
    80008724:	100027f3          	csrr	a5,sstatus
    80008728:	0027f793          	andi	a5,a5,2
    8000872c:	04079a63          	bnez	a5,80008780 <release+0xb8>
    80008730:	07852783          	lw	a5,120(a0)
    80008734:	02f05e63          	blez	a5,80008770 <release+0xa8>
    80008738:	fff7871b          	addiw	a4,a5,-1
    8000873c:	06e52c23          	sw	a4,120(a0)
    80008740:	00071c63          	bnez	a4,80008758 <release+0x90>
    80008744:	07c52783          	lw	a5,124(a0)
    80008748:	00078863          	beqz	a5,80008758 <release+0x90>
    8000874c:	100027f3          	csrr	a5,sstatus
    80008750:	0027e793          	ori	a5,a5,2
    80008754:	10079073          	csrw	sstatus,a5
    80008758:	01813083          	ld	ra,24(sp)
    8000875c:	01013403          	ld	s0,16(sp)
    80008760:	00813483          	ld	s1,8(sp)
    80008764:	00013903          	ld	s2,0(sp)
    80008768:	02010113          	addi	sp,sp,32
    8000876c:	00008067          	ret
    80008770:	00001517          	auipc	a0,0x1
    80008774:	fe850513          	addi	a0,a0,-24 # 80009758 <digits+0x48>
    80008778:	fffff097          	auipc	ra,0xfffff
    8000877c:	154080e7          	jalr	340(ra) # 800078cc <panic>
    80008780:	00001517          	auipc	a0,0x1
    80008784:	fc050513          	addi	a0,a0,-64 # 80009740 <digits+0x30>
    80008788:	fffff097          	auipc	ra,0xfffff
    8000878c:	144080e7          	jalr	324(ra) # 800078cc <panic>

0000000080008790 <holding>:
    80008790:	00052783          	lw	a5,0(a0)
    80008794:	00079663          	bnez	a5,800087a0 <holding+0x10>
    80008798:	00000513          	li	a0,0
    8000879c:	00008067          	ret
    800087a0:	fe010113          	addi	sp,sp,-32
    800087a4:	00813823          	sd	s0,16(sp)
    800087a8:	00913423          	sd	s1,8(sp)
    800087ac:	00113c23          	sd	ra,24(sp)
    800087b0:	02010413          	addi	s0,sp,32
    800087b4:	01053483          	ld	s1,16(a0)
    800087b8:	ffffe097          	auipc	ra,0xffffe
    800087bc:	758080e7          	jalr	1880(ra) # 80006f10 <mycpu>
    800087c0:	01813083          	ld	ra,24(sp)
    800087c4:	01013403          	ld	s0,16(sp)
    800087c8:	40a48533          	sub	a0,s1,a0
    800087cc:	00153513          	seqz	a0,a0
    800087d0:	00813483          	ld	s1,8(sp)
    800087d4:	02010113          	addi	sp,sp,32
    800087d8:	00008067          	ret

00000000800087dc <push_off>:
    800087dc:	fe010113          	addi	sp,sp,-32
    800087e0:	00813823          	sd	s0,16(sp)
    800087e4:	00113c23          	sd	ra,24(sp)
    800087e8:	00913423          	sd	s1,8(sp)
    800087ec:	02010413          	addi	s0,sp,32
    800087f0:	100024f3          	csrr	s1,sstatus
    800087f4:	100027f3          	csrr	a5,sstatus
    800087f8:	ffd7f793          	andi	a5,a5,-3
    800087fc:	10079073          	csrw	sstatus,a5
    80008800:	ffffe097          	auipc	ra,0xffffe
    80008804:	710080e7          	jalr	1808(ra) # 80006f10 <mycpu>
    80008808:	07852783          	lw	a5,120(a0)
    8000880c:	02078663          	beqz	a5,80008838 <push_off+0x5c>
    80008810:	ffffe097          	auipc	ra,0xffffe
    80008814:	700080e7          	jalr	1792(ra) # 80006f10 <mycpu>
    80008818:	07852783          	lw	a5,120(a0)
    8000881c:	01813083          	ld	ra,24(sp)
    80008820:	01013403          	ld	s0,16(sp)
    80008824:	0017879b          	addiw	a5,a5,1
    80008828:	06f52c23          	sw	a5,120(a0)
    8000882c:	00813483          	ld	s1,8(sp)
    80008830:	02010113          	addi	sp,sp,32
    80008834:	00008067          	ret
    80008838:	0014d493          	srli	s1,s1,0x1
    8000883c:	ffffe097          	auipc	ra,0xffffe
    80008840:	6d4080e7          	jalr	1748(ra) # 80006f10 <mycpu>
    80008844:	0014f493          	andi	s1,s1,1
    80008848:	06952e23          	sw	s1,124(a0)
    8000884c:	fc5ff06f          	j	80008810 <push_off+0x34>

0000000080008850 <pop_off>:
    80008850:	ff010113          	addi	sp,sp,-16
    80008854:	00813023          	sd	s0,0(sp)
    80008858:	00113423          	sd	ra,8(sp)
    8000885c:	01010413          	addi	s0,sp,16
    80008860:	ffffe097          	auipc	ra,0xffffe
    80008864:	6b0080e7          	jalr	1712(ra) # 80006f10 <mycpu>
    80008868:	100027f3          	csrr	a5,sstatus
    8000886c:	0027f793          	andi	a5,a5,2
    80008870:	04079663          	bnez	a5,800088bc <pop_off+0x6c>
    80008874:	07852783          	lw	a5,120(a0)
    80008878:	02f05a63          	blez	a5,800088ac <pop_off+0x5c>
    8000887c:	fff7871b          	addiw	a4,a5,-1
    80008880:	06e52c23          	sw	a4,120(a0)
    80008884:	00071c63          	bnez	a4,8000889c <pop_off+0x4c>
    80008888:	07c52783          	lw	a5,124(a0)
    8000888c:	00078863          	beqz	a5,8000889c <pop_off+0x4c>
    80008890:	100027f3          	csrr	a5,sstatus
    80008894:	0027e793          	ori	a5,a5,2
    80008898:	10079073          	csrw	sstatus,a5
    8000889c:	00813083          	ld	ra,8(sp)
    800088a0:	00013403          	ld	s0,0(sp)
    800088a4:	01010113          	addi	sp,sp,16
    800088a8:	00008067          	ret
    800088ac:	00001517          	auipc	a0,0x1
    800088b0:	eac50513          	addi	a0,a0,-340 # 80009758 <digits+0x48>
    800088b4:	fffff097          	auipc	ra,0xfffff
    800088b8:	018080e7          	jalr	24(ra) # 800078cc <panic>
    800088bc:	00001517          	auipc	a0,0x1
    800088c0:	e8450513          	addi	a0,a0,-380 # 80009740 <digits+0x30>
    800088c4:	fffff097          	auipc	ra,0xfffff
    800088c8:	008080e7          	jalr	8(ra) # 800078cc <panic>

00000000800088cc <push_on>:
    800088cc:	fe010113          	addi	sp,sp,-32
    800088d0:	00813823          	sd	s0,16(sp)
    800088d4:	00113c23          	sd	ra,24(sp)
    800088d8:	00913423          	sd	s1,8(sp)
    800088dc:	02010413          	addi	s0,sp,32
    800088e0:	100024f3          	csrr	s1,sstatus
    800088e4:	100027f3          	csrr	a5,sstatus
    800088e8:	0027e793          	ori	a5,a5,2
    800088ec:	10079073          	csrw	sstatus,a5
    800088f0:	ffffe097          	auipc	ra,0xffffe
    800088f4:	620080e7          	jalr	1568(ra) # 80006f10 <mycpu>
    800088f8:	07852783          	lw	a5,120(a0)
    800088fc:	02078663          	beqz	a5,80008928 <push_on+0x5c>
    80008900:	ffffe097          	auipc	ra,0xffffe
    80008904:	610080e7          	jalr	1552(ra) # 80006f10 <mycpu>
    80008908:	07852783          	lw	a5,120(a0)
    8000890c:	01813083          	ld	ra,24(sp)
    80008910:	01013403          	ld	s0,16(sp)
    80008914:	0017879b          	addiw	a5,a5,1
    80008918:	06f52c23          	sw	a5,120(a0)
    8000891c:	00813483          	ld	s1,8(sp)
    80008920:	02010113          	addi	sp,sp,32
    80008924:	00008067          	ret
    80008928:	0014d493          	srli	s1,s1,0x1
    8000892c:	ffffe097          	auipc	ra,0xffffe
    80008930:	5e4080e7          	jalr	1508(ra) # 80006f10 <mycpu>
    80008934:	0014f493          	andi	s1,s1,1
    80008938:	06952e23          	sw	s1,124(a0)
    8000893c:	fc5ff06f          	j	80008900 <push_on+0x34>

0000000080008940 <pop_on>:
    80008940:	ff010113          	addi	sp,sp,-16
    80008944:	00813023          	sd	s0,0(sp)
    80008948:	00113423          	sd	ra,8(sp)
    8000894c:	01010413          	addi	s0,sp,16
    80008950:	ffffe097          	auipc	ra,0xffffe
    80008954:	5c0080e7          	jalr	1472(ra) # 80006f10 <mycpu>
    80008958:	100027f3          	csrr	a5,sstatus
    8000895c:	0027f793          	andi	a5,a5,2
    80008960:	04078463          	beqz	a5,800089a8 <pop_on+0x68>
    80008964:	07852783          	lw	a5,120(a0)
    80008968:	02f05863          	blez	a5,80008998 <pop_on+0x58>
    8000896c:	fff7879b          	addiw	a5,a5,-1
    80008970:	06f52c23          	sw	a5,120(a0)
    80008974:	07853783          	ld	a5,120(a0)
    80008978:	00079863          	bnez	a5,80008988 <pop_on+0x48>
    8000897c:	100027f3          	csrr	a5,sstatus
    80008980:	ffd7f793          	andi	a5,a5,-3
    80008984:	10079073          	csrw	sstatus,a5
    80008988:	00813083          	ld	ra,8(sp)
    8000898c:	00013403          	ld	s0,0(sp)
    80008990:	01010113          	addi	sp,sp,16
    80008994:	00008067          	ret
    80008998:	00001517          	auipc	a0,0x1
    8000899c:	de850513          	addi	a0,a0,-536 # 80009780 <digits+0x70>
    800089a0:	fffff097          	auipc	ra,0xfffff
    800089a4:	f2c080e7          	jalr	-212(ra) # 800078cc <panic>
    800089a8:	00001517          	auipc	a0,0x1
    800089ac:	db850513          	addi	a0,a0,-584 # 80009760 <digits+0x50>
    800089b0:	fffff097          	auipc	ra,0xfffff
    800089b4:	f1c080e7          	jalr	-228(ra) # 800078cc <panic>

00000000800089b8 <__memset>:
    800089b8:	ff010113          	addi	sp,sp,-16
    800089bc:	00813423          	sd	s0,8(sp)
    800089c0:	01010413          	addi	s0,sp,16
    800089c4:	1a060e63          	beqz	a2,80008b80 <__memset+0x1c8>
    800089c8:	40a007b3          	neg	a5,a0
    800089cc:	0077f793          	andi	a5,a5,7
    800089d0:	00778693          	addi	a3,a5,7
    800089d4:	00b00813          	li	a6,11
    800089d8:	0ff5f593          	andi	a1,a1,255
    800089dc:	fff6071b          	addiw	a4,a2,-1
    800089e0:	1b06e663          	bltu	a3,a6,80008b8c <__memset+0x1d4>
    800089e4:	1cd76463          	bltu	a4,a3,80008bac <__memset+0x1f4>
    800089e8:	1a078e63          	beqz	a5,80008ba4 <__memset+0x1ec>
    800089ec:	00b50023          	sb	a1,0(a0)
    800089f0:	00100713          	li	a4,1
    800089f4:	1ae78463          	beq	a5,a4,80008b9c <__memset+0x1e4>
    800089f8:	00b500a3          	sb	a1,1(a0)
    800089fc:	00200713          	li	a4,2
    80008a00:	1ae78a63          	beq	a5,a4,80008bb4 <__memset+0x1fc>
    80008a04:	00b50123          	sb	a1,2(a0)
    80008a08:	00300713          	li	a4,3
    80008a0c:	18e78463          	beq	a5,a4,80008b94 <__memset+0x1dc>
    80008a10:	00b501a3          	sb	a1,3(a0)
    80008a14:	00400713          	li	a4,4
    80008a18:	1ae78263          	beq	a5,a4,80008bbc <__memset+0x204>
    80008a1c:	00b50223          	sb	a1,4(a0)
    80008a20:	00500713          	li	a4,5
    80008a24:	1ae78063          	beq	a5,a4,80008bc4 <__memset+0x20c>
    80008a28:	00b502a3          	sb	a1,5(a0)
    80008a2c:	00700713          	li	a4,7
    80008a30:	18e79e63          	bne	a5,a4,80008bcc <__memset+0x214>
    80008a34:	00b50323          	sb	a1,6(a0)
    80008a38:	00700e93          	li	t4,7
    80008a3c:	00859713          	slli	a4,a1,0x8
    80008a40:	00e5e733          	or	a4,a1,a4
    80008a44:	01059e13          	slli	t3,a1,0x10
    80008a48:	01c76e33          	or	t3,a4,t3
    80008a4c:	01859313          	slli	t1,a1,0x18
    80008a50:	006e6333          	or	t1,t3,t1
    80008a54:	02059893          	slli	a7,a1,0x20
    80008a58:	40f60e3b          	subw	t3,a2,a5
    80008a5c:	011368b3          	or	a7,t1,a7
    80008a60:	02859813          	slli	a6,a1,0x28
    80008a64:	0108e833          	or	a6,a7,a6
    80008a68:	03059693          	slli	a3,a1,0x30
    80008a6c:	003e589b          	srliw	a7,t3,0x3
    80008a70:	00d866b3          	or	a3,a6,a3
    80008a74:	03859713          	slli	a4,a1,0x38
    80008a78:	00389813          	slli	a6,a7,0x3
    80008a7c:	00f507b3          	add	a5,a0,a5
    80008a80:	00e6e733          	or	a4,a3,a4
    80008a84:	000e089b          	sext.w	a7,t3
    80008a88:	00f806b3          	add	a3,a6,a5
    80008a8c:	00e7b023          	sd	a4,0(a5)
    80008a90:	00878793          	addi	a5,a5,8
    80008a94:	fed79ce3          	bne	a5,a3,80008a8c <__memset+0xd4>
    80008a98:	ff8e7793          	andi	a5,t3,-8
    80008a9c:	0007871b          	sext.w	a4,a5
    80008aa0:	01d787bb          	addw	a5,a5,t4
    80008aa4:	0ce88e63          	beq	a7,a4,80008b80 <__memset+0x1c8>
    80008aa8:	00f50733          	add	a4,a0,a5
    80008aac:	00b70023          	sb	a1,0(a4)
    80008ab0:	0017871b          	addiw	a4,a5,1
    80008ab4:	0cc77663          	bgeu	a4,a2,80008b80 <__memset+0x1c8>
    80008ab8:	00e50733          	add	a4,a0,a4
    80008abc:	00b70023          	sb	a1,0(a4)
    80008ac0:	0027871b          	addiw	a4,a5,2
    80008ac4:	0ac77e63          	bgeu	a4,a2,80008b80 <__memset+0x1c8>
    80008ac8:	00e50733          	add	a4,a0,a4
    80008acc:	00b70023          	sb	a1,0(a4)
    80008ad0:	0037871b          	addiw	a4,a5,3
    80008ad4:	0ac77663          	bgeu	a4,a2,80008b80 <__memset+0x1c8>
    80008ad8:	00e50733          	add	a4,a0,a4
    80008adc:	00b70023          	sb	a1,0(a4)
    80008ae0:	0047871b          	addiw	a4,a5,4
    80008ae4:	08c77e63          	bgeu	a4,a2,80008b80 <__memset+0x1c8>
    80008ae8:	00e50733          	add	a4,a0,a4
    80008aec:	00b70023          	sb	a1,0(a4)
    80008af0:	0057871b          	addiw	a4,a5,5
    80008af4:	08c77663          	bgeu	a4,a2,80008b80 <__memset+0x1c8>
    80008af8:	00e50733          	add	a4,a0,a4
    80008afc:	00b70023          	sb	a1,0(a4)
    80008b00:	0067871b          	addiw	a4,a5,6
    80008b04:	06c77e63          	bgeu	a4,a2,80008b80 <__memset+0x1c8>
    80008b08:	00e50733          	add	a4,a0,a4
    80008b0c:	00b70023          	sb	a1,0(a4)
    80008b10:	0077871b          	addiw	a4,a5,7
    80008b14:	06c77663          	bgeu	a4,a2,80008b80 <__memset+0x1c8>
    80008b18:	00e50733          	add	a4,a0,a4
    80008b1c:	00b70023          	sb	a1,0(a4)
    80008b20:	0087871b          	addiw	a4,a5,8
    80008b24:	04c77e63          	bgeu	a4,a2,80008b80 <__memset+0x1c8>
    80008b28:	00e50733          	add	a4,a0,a4
    80008b2c:	00b70023          	sb	a1,0(a4)
    80008b30:	0097871b          	addiw	a4,a5,9
    80008b34:	04c77663          	bgeu	a4,a2,80008b80 <__memset+0x1c8>
    80008b38:	00e50733          	add	a4,a0,a4
    80008b3c:	00b70023          	sb	a1,0(a4)
    80008b40:	00a7871b          	addiw	a4,a5,10
    80008b44:	02c77e63          	bgeu	a4,a2,80008b80 <__memset+0x1c8>
    80008b48:	00e50733          	add	a4,a0,a4
    80008b4c:	00b70023          	sb	a1,0(a4)
    80008b50:	00b7871b          	addiw	a4,a5,11
    80008b54:	02c77663          	bgeu	a4,a2,80008b80 <__memset+0x1c8>
    80008b58:	00e50733          	add	a4,a0,a4
    80008b5c:	00b70023          	sb	a1,0(a4)
    80008b60:	00c7871b          	addiw	a4,a5,12
    80008b64:	00c77e63          	bgeu	a4,a2,80008b80 <__memset+0x1c8>
    80008b68:	00e50733          	add	a4,a0,a4
    80008b6c:	00b70023          	sb	a1,0(a4)
    80008b70:	00d7879b          	addiw	a5,a5,13
    80008b74:	00c7f663          	bgeu	a5,a2,80008b80 <__memset+0x1c8>
    80008b78:	00f507b3          	add	a5,a0,a5
    80008b7c:	00b78023          	sb	a1,0(a5)
    80008b80:	00813403          	ld	s0,8(sp)
    80008b84:	01010113          	addi	sp,sp,16
    80008b88:	00008067          	ret
    80008b8c:	00b00693          	li	a3,11
    80008b90:	e55ff06f          	j	800089e4 <__memset+0x2c>
    80008b94:	00300e93          	li	t4,3
    80008b98:	ea5ff06f          	j	80008a3c <__memset+0x84>
    80008b9c:	00100e93          	li	t4,1
    80008ba0:	e9dff06f          	j	80008a3c <__memset+0x84>
    80008ba4:	00000e93          	li	t4,0
    80008ba8:	e95ff06f          	j	80008a3c <__memset+0x84>
    80008bac:	00000793          	li	a5,0
    80008bb0:	ef9ff06f          	j	80008aa8 <__memset+0xf0>
    80008bb4:	00200e93          	li	t4,2
    80008bb8:	e85ff06f          	j	80008a3c <__memset+0x84>
    80008bbc:	00400e93          	li	t4,4
    80008bc0:	e7dff06f          	j	80008a3c <__memset+0x84>
    80008bc4:	00500e93          	li	t4,5
    80008bc8:	e75ff06f          	j	80008a3c <__memset+0x84>
    80008bcc:	00600e93          	li	t4,6
    80008bd0:	e6dff06f          	j	80008a3c <__memset+0x84>

0000000080008bd4 <__memmove>:
    80008bd4:	ff010113          	addi	sp,sp,-16
    80008bd8:	00813423          	sd	s0,8(sp)
    80008bdc:	01010413          	addi	s0,sp,16
    80008be0:	0e060863          	beqz	a2,80008cd0 <__memmove+0xfc>
    80008be4:	fff6069b          	addiw	a3,a2,-1
    80008be8:	0006881b          	sext.w	a6,a3
    80008bec:	0ea5e863          	bltu	a1,a0,80008cdc <__memmove+0x108>
    80008bf0:	00758713          	addi	a4,a1,7
    80008bf4:	00a5e7b3          	or	a5,a1,a0
    80008bf8:	40a70733          	sub	a4,a4,a0
    80008bfc:	0077f793          	andi	a5,a5,7
    80008c00:	00f73713          	sltiu	a4,a4,15
    80008c04:	00174713          	xori	a4,a4,1
    80008c08:	0017b793          	seqz	a5,a5
    80008c0c:	00e7f7b3          	and	a5,a5,a4
    80008c10:	10078863          	beqz	a5,80008d20 <__memmove+0x14c>
    80008c14:	00900793          	li	a5,9
    80008c18:	1107f463          	bgeu	a5,a6,80008d20 <__memmove+0x14c>
    80008c1c:	0036581b          	srliw	a6,a2,0x3
    80008c20:	fff8081b          	addiw	a6,a6,-1
    80008c24:	02081813          	slli	a6,a6,0x20
    80008c28:	01d85893          	srli	a7,a6,0x1d
    80008c2c:	00858813          	addi	a6,a1,8
    80008c30:	00058793          	mv	a5,a1
    80008c34:	00050713          	mv	a4,a0
    80008c38:	01088833          	add	a6,a7,a6
    80008c3c:	0007b883          	ld	a7,0(a5)
    80008c40:	00878793          	addi	a5,a5,8
    80008c44:	00870713          	addi	a4,a4,8
    80008c48:	ff173c23          	sd	a7,-8(a4)
    80008c4c:	ff0798e3          	bne	a5,a6,80008c3c <__memmove+0x68>
    80008c50:	ff867713          	andi	a4,a2,-8
    80008c54:	02071793          	slli	a5,a4,0x20
    80008c58:	0207d793          	srli	a5,a5,0x20
    80008c5c:	00f585b3          	add	a1,a1,a5
    80008c60:	40e686bb          	subw	a3,a3,a4
    80008c64:	00f507b3          	add	a5,a0,a5
    80008c68:	06e60463          	beq	a2,a4,80008cd0 <__memmove+0xfc>
    80008c6c:	0005c703          	lbu	a4,0(a1)
    80008c70:	00e78023          	sb	a4,0(a5)
    80008c74:	04068e63          	beqz	a3,80008cd0 <__memmove+0xfc>
    80008c78:	0015c603          	lbu	a2,1(a1)
    80008c7c:	00100713          	li	a4,1
    80008c80:	00c780a3          	sb	a2,1(a5)
    80008c84:	04e68663          	beq	a3,a4,80008cd0 <__memmove+0xfc>
    80008c88:	0025c603          	lbu	a2,2(a1)
    80008c8c:	00200713          	li	a4,2
    80008c90:	00c78123          	sb	a2,2(a5)
    80008c94:	02e68e63          	beq	a3,a4,80008cd0 <__memmove+0xfc>
    80008c98:	0035c603          	lbu	a2,3(a1)
    80008c9c:	00300713          	li	a4,3
    80008ca0:	00c781a3          	sb	a2,3(a5)
    80008ca4:	02e68663          	beq	a3,a4,80008cd0 <__memmove+0xfc>
    80008ca8:	0045c603          	lbu	a2,4(a1)
    80008cac:	00400713          	li	a4,4
    80008cb0:	00c78223          	sb	a2,4(a5)
    80008cb4:	00e68e63          	beq	a3,a4,80008cd0 <__memmove+0xfc>
    80008cb8:	0055c603          	lbu	a2,5(a1)
    80008cbc:	00500713          	li	a4,5
    80008cc0:	00c782a3          	sb	a2,5(a5)
    80008cc4:	00e68663          	beq	a3,a4,80008cd0 <__memmove+0xfc>
    80008cc8:	0065c703          	lbu	a4,6(a1)
    80008ccc:	00e78323          	sb	a4,6(a5)
    80008cd0:	00813403          	ld	s0,8(sp)
    80008cd4:	01010113          	addi	sp,sp,16
    80008cd8:	00008067          	ret
    80008cdc:	02061713          	slli	a4,a2,0x20
    80008ce0:	02075713          	srli	a4,a4,0x20
    80008ce4:	00e587b3          	add	a5,a1,a4
    80008ce8:	f0f574e3          	bgeu	a0,a5,80008bf0 <__memmove+0x1c>
    80008cec:	02069613          	slli	a2,a3,0x20
    80008cf0:	02065613          	srli	a2,a2,0x20
    80008cf4:	fff64613          	not	a2,a2
    80008cf8:	00e50733          	add	a4,a0,a4
    80008cfc:	00c78633          	add	a2,a5,a2
    80008d00:	fff7c683          	lbu	a3,-1(a5)
    80008d04:	fff78793          	addi	a5,a5,-1
    80008d08:	fff70713          	addi	a4,a4,-1
    80008d0c:	00d70023          	sb	a3,0(a4)
    80008d10:	fec798e3          	bne	a5,a2,80008d00 <__memmove+0x12c>
    80008d14:	00813403          	ld	s0,8(sp)
    80008d18:	01010113          	addi	sp,sp,16
    80008d1c:	00008067          	ret
    80008d20:	02069713          	slli	a4,a3,0x20
    80008d24:	02075713          	srli	a4,a4,0x20
    80008d28:	00170713          	addi	a4,a4,1
    80008d2c:	00e50733          	add	a4,a0,a4
    80008d30:	00050793          	mv	a5,a0
    80008d34:	0005c683          	lbu	a3,0(a1)
    80008d38:	00178793          	addi	a5,a5,1
    80008d3c:	00158593          	addi	a1,a1,1
    80008d40:	fed78fa3          	sb	a3,-1(a5)
    80008d44:	fee798e3          	bne	a5,a4,80008d34 <__memmove+0x160>
    80008d48:	f89ff06f          	j	80008cd0 <__memmove+0xfc>

0000000080008d4c <__mem_free>:
    80008d4c:	ff010113          	addi	sp,sp,-16
    80008d50:	00813423          	sd	s0,8(sp)
    80008d54:	01010413          	addi	s0,sp,16
    80008d58:	00003597          	auipc	a1,0x3
    80008d5c:	d4058593          	addi	a1,a1,-704 # 8000ba98 <freep>
    80008d60:	0005b783          	ld	a5,0(a1)
    80008d64:	ff050693          	addi	a3,a0,-16
    80008d68:	0007b703          	ld	a4,0(a5)
    80008d6c:	00d7fc63          	bgeu	a5,a3,80008d84 <__mem_free+0x38>
    80008d70:	00e6ee63          	bltu	a3,a4,80008d8c <__mem_free+0x40>
    80008d74:	00e7fc63          	bgeu	a5,a4,80008d8c <__mem_free+0x40>
    80008d78:	00070793          	mv	a5,a4
    80008d7c:	0007b703          	ld	a4,0(a5)
    80008d80:	fed7e8e3          	bltu	a5,a3,80008d70 <__mem_free+0x24>
    80008d84:	fee7eae3          	bltu	a5,a4,80008d78 <__mem_free+0x2c>
    80008d88:	fee6f8e3          	bgeu	a3,a4,80008d78 <__mem_free+0x2c>
    80008d8c:	ff852803          	lw	a6,-8(a0)
    80008d90:	02081613          	slli	a2,a6,0x20
    80008d94:	01c65613          	srli	a2,a2,0x1c
    80008d98:	00c68633          	add	a2,a3,a2
    80008d9c:	02c70a63          	beq	a4,a2,80008dd0 <__mem_free+0x84>
    80008da0:	fee53823          	sd	a4,-16(a0)
    80008da4:	0087a503          	lw	a0,8(a5)
    80008da8:	02051613          	slli	a2,a0,0x20
    80008dac:	01c65613          	srli	a2,a2,0x1c
    80008db0:	00c78633          	add	a2,a5,a2
    80008db4:	04c68263          	beq	a3,a2,80008df8 <__mem_free+0xac>
    80008db8:	00813403          	ld	s0,8(sp)
    80008dbc:	00d7b023          	sd	a3,0(a5)
    80008dc0:	00f5b023          	sd	a5,0(a1)
    80008dc4:	00000513          	li	a0,0
    80008dc8:	01010113          	addi	sp,sp,16
    80008dcc:	00008067          	ret
    80008dd0:	00872603          	lw	a2,8(a4)
    80008dd4:	00073703          	ld	a4,0(a4)
    80008dd8:	0106083b          	addw	a6,a2,a6
    80008ddc:	ff052c23          	sw	a6,-8(a0)
    80008de0:	fee53823          	sd	a4,-16(a0)
    80008de4:	0087a503          	lw	a0,8(a5)
    80008de8:	02051613          	slli	a2,a0,0x20
    80008dec:	01c65613          	srli	a2,a2,0x1c
    80008df0:	00c78633          	add	a2,a5,a2
    80008df4:	fcc692e3          	bne	a3,a2,80008db8 <__mem_free+0x6c>
    80008df8:	00813403          	ld	s0,8(sp)
    80008dfc:	0105053b          	addw	a0,a0,a6
    80008e00:	00a7a423          	sw	a0,8(a5)
    80008e04:	00e7b023          	sd	a4,0(a5)
    80008e08:	00f5b023          	sd	a5,0(a1)
    80008e0c:	00000513          	li	a0,0
    80008e10:	01010113          	addi	sp,sp,16
    80008e14:	00008067          	ret

0000000080008e18 <__mem_alloc>:
    80008e18:	fc010113          	addi	sp,sp,-64
    80008e1c:	02813823          	sd	s0,48(sp)
    80008e20:	02913423          	sd	s1,40(sp)
    80008e24:	03213023          	sd	s2,32(sp)
    80008e28:	01513423          	sd	s5,8(sp)
    80008e2c:	02113c23          	sd	ra,56(sp)
    80008e30:	01313c23          	sd	s3,24(sp)
    80008e34:	01413823          	sd	s4,16(sp)
    80008e38:	01613023          	sd	s6,0(sp)
    80008e3c:	04010413          	addi	s0,sp,64
    80008e40:	00003a97          	auipc	s5,0x3
    80008e44:	c58a8a93          	addi	s5,s5,-936 # 8000ba98 <freep>
    80008e48:	00f50913          	addi	s2,a0,15
    80008e4c:	000ab683          	ld	a3,0(s5)
    80008e50:	00495913          	srli	s2,s2,0x4
    80008e54:	0019049b          	addiw	s1,s2,1
    80008e58:	00048913          	mv	s2,s1
    80008e5c:	0c068c63          	beqz	a3,80008f34 <__mem_alloc+0x11c>
    80008e60:	0006b503          	ld	a0,0(a3)
    80008e64:	00852703          	lw	a4,8(a0)
    80008e68:	10977063          	bgeu	a4,s1,80008f68 <__mem_alloc+0x150>
    80008e6c:	000017b7          	lui	a5,0x1
    80008e70:	0009099b          	sext.w	s3,s2
    80008e74:	0af4e863          	bltu	s1,a5,80008f24 <__mem_alloc+0x10c>
    80008e78:	02099a13          	slli	s4,s3,0x20
    80008e7c:	01ca5a13          	srli	s4,s4,0x1c
    80008e80:	fff00b13          	li	s6,-1
    80008e84:	0100006f          	j	80008e94 <__mem_alloc+0x7c>
    80008e88:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    80008e8c:	00852703          	lw	a4,8(a0)
    80008e90:	04977463          	bgeu	a4,s1,80008ed8 <__mem_alloc+0xc0>
    80008e94:	00050793          	mv	a5,a0
    80008e98:	fea698e3          	bne	a3,a0,80008e88 <__mem_alloc+0x70>
    80008e9c:	000a0513          	mv	a0,s4
    80008ea0:	00000097          	auipc	ra,0x0
    80008ea4:	0d0080e7          	jalr	208(ra) # 80008f70 <kvmincrease>
    80008ea8:	00050793          	mv	a5,a0
    80008eac:	01050513          	addi	a0,a0,16
    80008eb0:	07678e63          	beq	a5,s6,80008f2c <__mem_alloc+0x114>
    80008eb4:	0137a423          	sw	s3,8(a5)
    80008eb8:	00000097          	auipc	ra,0x0
    80008ebc:	e94080e7          	jalr	-364(ra) # 80008d4c <__mem_free>
    80008ec0:	000ab783          	ld	a5,0(s5)
    80008ec4:	06078463          	beqz	a5,80008f2c <__mem_alloc+0x114>
    80008ec8:	0007b503          	ld	a0,0(a5)
    80008ecc:	00078693          	mv	a3,a5
    80008ed0:	00852703          	lw	a4,8(a0)
    80008ed4:	fc9760e3          	bltu	a4,s1,80008e94 <__mem_alloc+0x7c>
    80008ed8:	08e48263          	beq	s1,a4,80008f5c <__mem_alloc+0x144>
    80008edc:	4127073b          	subw	a4,a4,s2
    80008ee0:	02071693          	slli	a3,a4,0x20
    80008ee4:	01c6d693          	srli	a3,a3,0x1c
    80008ee8:	00e52423          	sw	a4,8(a0)
    80008eec:	00d50533          	add	a0,a0,a3
    80008ef0:	01252423          	sw	s2,8(a0)
    80008ef4:	00fab023          	sd	a5,0(s5)
    80008ef8:	01050513          	addi	a0,a0,16
    80008efc:	03813083          	ld	ra,56(sp)
    80008f00:	03013403          	ld	s0,48(sp)
    80008f04:	02813483          	ld	s1,40(sp)
    80008f08:	02013903          	ld	s2,32(sp)
    80008f0c:	01813983          	ld	s3,24(sp)
    80008f10:	01013a03          	ld	s4,16(sp)
    80008f14:	00813a83          	ld	s5,8(sp)
    80008f18:	00013b03          	ld	s6,0(sp)
    80008f1c:	04010113          	addi	sp,sp,64
    80008f20:	00008067          	ret
    80008f24:	000019b7          	lui	s3,0x1
    80008f28:	f51ff06f          	j	80008e78 <__mem_alloc+0x60>
    80008f2c:	00000513          	li	a0,0
    80008f30:	fcdff06f          	j	80008efc <__mem_alloc+0xe4>
    80008f34:	00004797          	auipc	a5,0x4
    80008f38:	e7c78793          	addi	a5,a5,-388 # 8000cdb0 <base>
    80008f3c:	00078513          	mv	a0,a5
    80008f40:	00fab023          	sd	a5,0(s5)
    80008f44:	00f7b023          	sd	a5,0(a5)
    80008f48:	00000713          	li	a4,0
    80008f4c:	00004797          	auipc	a5,0x4
    80008f50:	e607a623          	sw	zero,-404(a5) # 8000cdb8 <base+0x8>
    80008f54:	00050693          	mv	a3,a0
    80008f58:	f11ff06f          	j	80008e68 <__mem_alloc+0x50>
    80008f5c:	00053703          	ld	a4,0(a0)
    80008f60:	00e7b023          	sd	a4,0(a5)
    80008f64:	f91ff06f          	j	80008ef4 <__mem_alloc+0xdc>
    80008f68:	00068793          	mv	a5,a3
    80008f6c:	f6dff06f          	j	80008ed8 <__mem_alloc+0xc0>

0000000080008f70 <kvmincrease>:
    80008f70:	fe010113          	addi	sp,sp,-32
    80008f74:	01213023          	sd	s2,0(sp)
    80008f78:	00001937          	lui	s2,0x1
    80008f7c:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    80008f80:	00813823          	sd	s0,16(sp)
    80008f84:	00113c23          	sd	ra,24(sp)
    80008f88:	00913423          	sd	s1,8(sp)
    80008f8c:	02010413          	addi	s0,sp,32
    80008f90:	01250933          	add	s2,a0,s2
    80008f94:	00c95913          	srli	s2,s2,0xc
    80008f98:	02090863          	beqz	s2,80008fc8 <kvmincrease+0x58>
    80008f9c:	00000493          	li	s1,0
    80008fa0:	00148493          	addi	s1,s1,1
    80008fa4:	fffff097          	auipc	ra,0xfffff
    80008fa8:	5dc080e7          	jalr	1500(ra) # 80008580 <kalloc>
    80008fac:	fe991ae3          	bne	s2,s1,80008fa0 <kvmincrease+0x30>
    80008fb0:	01813083          	ld	ra,24(sp)
    80008fb4:	01013403          	ld	s0,16(sp)
    80008fb8:	00813483          	ld	s1,8(sp)
    80008fbc:	00013903          	ld	s2,0(sp)
    80008fc0:	02010113          	addi	sp,sp,32
    80008fc4:	00008067          	ret
    80008fc8:	01813083          	ld	ra,24(sp)
    80008fcc:	01013403          	ld	s0,16(sp)
    80008fd0:	00813483          	ld	s1,8(sp)
    80008fd4:	00013903          	ld	s2,0(sp)
    80008fd8:	00000513          	li	a0,0
    80008fdc:	02010113          	addi	sp,sp,32
    80008fe0:	00008067          	ret
	...
