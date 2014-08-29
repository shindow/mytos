#include "type.h"
#include "lib.h"
#include "ne2k_driver.h"
NE2K *ne;
int ne2k_probe(NE2K *ne);
void Init_Ne2k()
{
	ne = (NE2K*) AllocateKernel(sizeof(NE2K));
	if (!ne){disp_str("!yes");}
	mem_set((u32)ne,6,0);

	ne->iobase = 0x280;

	ne->nic_addr = ne->iobase + NE2K_NOVELL_NIC_OFFSET;
	ne->asic_addr = ne->iobase + NE2K_NOVELL_ASIC_OFFSET;
	if(!ne2k_probe(ne)){
		disp_str("yes");
	}
	disp_str("no");
}
int ne2k_probe(NE2K *ne)
{
  u8		byte;
  int wait=10000,i=0,j=0,k=0;

  // Reset
  byte = in_byte(ne->asic_addr + NE2K_NOVELL_RESET);
  while(wait--){}
  out_byte(ne->asic_addr + NE2K_NOVELL_RESET, byte);
  wait=10000;
  while(wait--){}
  out_byte(ne->nic_addr + NE2K_P0_CR, NE2K_CR_RD2 | NE2K_CR_STP);

  //msleep(5000);
  //msleep(100);
  disp_str("\n");
  /* Reset the dp8390 */
  for (i= 0; i < 0x1000 && ((in_byte(ne->nic_addr+NE2K_P0_ISR)&NE2K_ISR_RST) == 0); i++)
			; /* Do nothing */
  /* Check if the dp8390 is really there */
  if ((in_byte(ne->nic_addr +NE2K_P0_CR)&(NE2K_CR_STP|NE2K_CR_RD2))!=(NE2K_CR_STP|NE2K_CR_RD2)){
		return 0;
  }
  /* Disable the receiver and init TCR and DCR. */
		outb_reg0(dep, NE2K_P0_RCR, RCR_MON);
		outb_reg0(dep, DP_TCR, TCR_NORMAL);
		if (dep->de_16bit)
		{
			outb_reg0(dep, DP_DCR, DCR_WORDWIDE | DCR_8BYTES |
				DCR_BMS);
		}
		else
		{
			outb_reg0(dep, DP_DCR, DCR_BYTEWIDE | DCR_8BYTES |
				DCR_BMS);
		}

		if (dep->de_16bit)
		{
			loc1= NE2000_START;
			loc2= NE2000_START + NE2000_SIZE - 4;
			f= test_16;
		}
		else
		{
			loc1= NE1000_START;
			loc2= NE1000_START + NE1000_SIZE - 4;
			f= test_8;
		}

  // Test for a generic DP8390 NIC
/*  byte = in_byte(ne->nic_addr + NE2K_P0_CR);
  Disp_Int(byte);
  byte &= NE2K_CR_RD2 | NE2K_CR_TXP | NE2K_CR_STA | NE2K_CR_STP;
  if (byte != (NE2K_CR_RD2 | NE2K_CR_STP)) return 0;
  byte = in_byte(ne->nic_addr + NE2K_P0_ISR);
  byte &= NE2K_ISR_RST;
  if (byte != NE2K_ISR_RST) return 0;
*/
  return 1;
}



