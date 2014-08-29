#ifndef _NE2K_DRIVER_H
#define _NE2K_DRIVER_H
//=============================================================
// Page 0 register offsets
//=============================================================

#define NE2K_P0_CR			0x00           //**************Command Register

#define NE2K_P0_CLDA0		0x01           // Current Local DMA Addr low (read)
#define NE2K_P0_PSTART	0x01           // Page Start register (write)

#define NE2K_P0_CLDA1		0x02           // Current Local DMA Addr high (read)
#define NE2K_P0_PSTOP		0x02           // Page Stop register (write)

#define NE2K_P0_BNRY		0x03           // Boundary Pointer

#define NE2K_P0_TSR			0x04           // Transmit Status Register (read)
#define NE2K_P0_TPSR		0x04           // Transmit Page Start (write)

#define NE2K_P0_NCR			0x05           // Number of Collisions Reg (read)
#define NE2K_P0_TBCR0     0x05           // Transmit Byte count, low (write)

#define NE2K_P0_FIFO			0x06           // FIFO register (read)
#define NE2K_P0_TBCR1     0x06           // Transmit Byte count, high (write)

#define NE2K_P0_ISR			0x07           // Interrupt Status Register

#define NE2K_P0_CRDA0     0x08           // Current Remote DMA Addr low (read)
#define NE2K_P0_RSAR0     0x08           // Remote Start Address low (write)

#define NE2K_P0_CRDA1     0x09           // Current Remote DMA Addr high (read)
#define NE2K_P0_RSAR1     0x09           // Remote Start Address high (write)

#define NE2K_P0_RBCR0     0x0A           // Remote Byte Count low (write)

#define NE2K_P0_RBCR1     0x0B           // Remote Byte Count high (write)

#define NE2K_P0_RSR			0x0C           // Receive Status (read)
#define NE2K_P0_RCR			0x0C           // Receive Configuration Reg (write)

#define NE2K_P0_CNTR0     0x0D           // Frame alignment error counter (read)
#define NE2K_P0_TCR			0x0D           // **************Transmit Configuration Reg (write)

#define NE2K_P0_CNTR1     0x0E           // CRC error counter (read)
#define NE2K_P0_DCR			0x0E           // Data Configuration Reg (write)

#define NE2K_P0_CNTR2     0x0F           // Missed packet counter (read)
#define NE2K_P0_IMR			0x0F           // Interrupt Mask Register (write)

//=============================================================
// Page 1 register offsets
//=============================================================

#define NE2K_P1_CR			0x00           // **************Command Register
#define NE2K_P1_PAR0		0x01           // Physical Address Register 0
#define NE2K_P1_PAR1		0x02           // Physical Address Register 1
#define NE2K_P1_PAR2		0x03           // Physical Address Register 2
#define NE2K_P1_PAR3		0x04           // Physical Address Register 3
#define NE2K_P1_PAR4		0x05           // Physical Address Register 4
#define NE2K_P1_PAR5		0x06           // Physical Address Register 5
#define NE2K_P1_CURR		0x07           // Current RX ring-buffer page
#define NE2K_P1_MAR0		0x08           // Multicast Address Register 0
#define NE2K_P1_MAR1		0x09           // Multicast Address Register 1
#define NE2K_P1_MAR2		0x0A           // Multicast Address Register 2
#define NE2K_P1_MAR3		0x0B           // Multicast Address Register 3
#define NE2K_P1_MAR4		0x0C           // Multicast Address Register 4
#define NE2K_P1_MAR5		0x0D           // Multicast Address Register 5
#define NE2K_P1_MAR6		0x0E           // Multicast Address Register 6
#define NE2K_P1_MAR7		0x0F           // Multicast Address Register 7

//=============================================================
// Page 2 register offsets
//=============================================================

#define NE2K_P2_CR				0x00           // Command Register
#define NE2K_P2_PSTART		0x01           // Page Start (read)
#define NE2K_P2_CLDA0			0x01           // Current Local DMA Addr 0 (write)
#define NE2K_P2_PSTOP			0x02           // Page Stop (read)
#define NE2K_P2_CLDA1			0x02           // Current Local DMA Addr 1 (write)
#define NE2K_P2_RNPP			0x03           // Remote Next Packet Pointer
#define NE2K_P2_TPSR			0x04           // Transmit Page Start (read)
#define NE2K_P2_LNPP			0x05           // Local Next Packet Pointer
#define NE2K_P2_ACU				0x06           // Address Counter Upper
#define NE2K_P2_ACL				0x07           // Address Counter Lower
#define NE2K_P2_RCR				0x0C           // Receive Configuration Register (read)
#define NE2K_P2_TCR				0x0D           // Transmit Configuration Register (read)
#define NE2K_P2_DCR				0x0E           // Data Configuration Register (read)
#define NE2K_P2_IMR				0x0F           // **************Interrupt Mask Register (read)

//=============================================================
// Command Register (CR)    ============For BIT=============
//=============================================================

#define NE2K_CR_STP			0x01           // Stop
#define NE2K_CR_STA			0x02           // Start
#define NE2K_CR_TXP			0x04           // Transmit Packet
#define NE2K_CR_RD0			0x08           // Remote DMA Command 0
#define NE2K_CR_RD1			0x10           // Remote DMA Command 1
#define NE2K_CR_RD2			0x20           // Remote DMA Command 2
#define NE2K_CR_PS0			0x40           // Page Select 0
#define NE2K_CR_PS1			0x80           // Page Select 1

#define NE2K_CR_PAGE_0	0x00           // Select Page 0
#define NE2K_CR_PAGE_1	0x40           // Select Page 1
#define NE2K_CR_PAGE_2	0x80           // Select Page 2

//=============================================================
// Interrupt Status Register (ISR)   ============For BIT=============
//=============================================================

#define NE2K_ISR_PRX		0x01           // Packet Received
#define NE2K_ISR_PTX		0x02           // Packet Transmitted
#define NE2K_ISR_RXE		0x04           // Receive Error
#define NE2K_ISR_TXE		0x08           // Transmission Error
#define NE2K_ISR_OVW		0x10           // Overwrite
#define NE2K_ISR_CNT		0x20           // Counter Overflow
#define NE2K_ISR_RDC		0x40           // Remote Data Complete
#define NE2K_ISR_RST		0x80           // Reset status

//=============================================================
// Interrupt Mask Register (IMR)    ============For BIT=============
//=============================================================

#define NE2K_IMR_PRXE		0x01           // Packet Received Interrupt Enable
#define NE2K_IMR_PTXE		0x02           // Packet Transmit Interrupt Enable
#define NE2K_IMR_RXEE		0x04           // Receive Error Interrupt Enable
#define NE2K_IMR_TXEE		0x08           // Transmit Error Interrupt Enable
#define NE2K_IMR_OVWE	0x10           // Overwrite Error Interrupt Enable
#define NE2K_IMR_CNTE		0x20           // Counter Overflow Interrupt Enable
#define NE2K_IMR_RDCE		0x40           // Remote DMA Complete Interrupt Enable

//=============================================================
// Data Configuration Register (DCR)   ============For BIT=============
//=============================================================

#define NE2K_DCR_WTS		0x01           // Word Transfer Select
#define NE2K_DCR_BOS      0x02           // Byte Order Select
#define NE2K_DCR_LAS		0x04           // Long Address Select
#define NE2K_DCR_LS			0x08           // Loopback Select
#define NE2K_DCR_AR			0x10           // Auto-initialize Remote
#define NE2K_DCR_FT0		0x20           // FIFO Threshold Select 0
#define NE2K_DCR_FT1		0x40           // FIFO Threshold Select 1

//=============================================================
// Transmit Configuration Register (TCR)  ============For BIT=============
//=============================================================

#define NE2K_TCR_CRC      0x01           // Inhibit CRC
#define NE2K_TCR_LB0		0x02           // Loopback Control 0
#define NE2K_TCR_LB1		0x04           // Loopback Control 1
#define NE2K_TCR_ATD		0x08           // Auto Transmit Disable
#define NE2K_TCR_OFST	0x10           // Collision Offset Enable

//=============================================================
// Transmit Status Register (TSR)  ============For BIT=============
//=============================================================

#define NE2K_TSR_PTX		0x01           // Packet Transmitted
#define NE2K_TSR_COL		0x04           // Transmit Collided
#define NE2K_TSR_ABT		0x08           // Transmit Aborted
#define NE2K_TSR_CRS		0x10           // Carrier Sense Lost
#define NE2K_TSR_FU			0x20           // FIFO Underrun
#define NE2K_TSR_CDH		0x40           // CD Heartbeat
#define NE2K_TSR_OWC		0x80           // Out of Window Collision

//=============================================================
// Receiver Configuration Register (RCR)  ============For BIT=============
//=============================================================

#define NE2K_RCR_SEP		0x01           // Save Errored Packets
#define NE2K_RCR_AR			0x02           // Accept Runt packet
#define NE2K_RCR_AB			0x04           // Accept Broadcast
#define NE2K_RCR_AM			0x08           // Accept Multicast
#define NE2K_RCR_PRO		0x10           // Promiscuous Physical
#define NE2K_RCR_MON		0x20           // Monitor Mode

//=============================================================
// Receiver Status Register (RSR)  ============For BIT=============
//=============================================================

#define NE2K_RSR_PRX		0x01           // Packet Received Intact
#define NE2K_RSR_CRC		0x02           // CRC Error
#define NE2K_RSR_FAE		0x04           // Frame Alignment Error
#define NE2K_RSR_FO			0x08           // FIFO Overrun
#define NE2K_RSR_MPA      0x10           // Missed Packet
#define NE2K_RSR_PHY		0x20           // Physical Address
#define NE2K_RSR_DIS		0x40           // Receiver Disabled
#define NE2K_RSR_DFR		0x80           // Deferring




#define NE2K_NOVELL_NIC_OFFSET		0x00
#define NE2K_NOVELL_ASIC_OFFSET	0x10

#define NE2K_NOVELL_DATA				0x00
#define NE2K_NOVELL_RESET			0x0F

#define NE2K_PAGE_SIZE            256    // Size of RAM pages in bytes
#define NE2K_TXBUF_SIZE           6      // Size of TX buffer in pages
#define NE2K_TX_BUFERS            2      // Number of transmit buffers

#define NE2K_TIMEOUT              10000
#define NE2K_TXTIMEOUT          30000
typedef struct ne2k
{
//  dev_t devno;                          // Device number
//  struct eth_addr hwaddr;        // MAC address

  u16	iobase;						// Configured I/O base
  u16	irq;								// Configured IRQ
  u16	membase;					// Configured memory base
  u16	memsize;						// Configured memory size

  u16	asic_addr;					// ASIC I/O bus address
  u16	nic_addr;						// NIC (DP8390) I/O bus address
  
//  struct interrupt intr;               // Interrupt object for driver
//  struct dpc dpc;                      // DPC for driver

  u16	rx_ring_start;				// Start address of receive ring
  u16	rx_ring_end;				// End address of receive ring

  u8		rx_page_start;				// Start of receive ring
  u8		rx_page_stop;				// End of receive ring
  u8		next_pkt;						// Next unread received packet

//  struct event rdc;					// Remote DMA completed event
//  struct event ptx;						// Packet transmitted event
//  struct mutex txlock;              // Transmit lock
}NE2K;




#endif
