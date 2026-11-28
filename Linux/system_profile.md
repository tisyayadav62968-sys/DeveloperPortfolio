# Workstation System Profile

| Component | Specification |
| :--- | :--- |
| CPU Model Name and Number of Cores | 11th Gen Intel(R) Core(TM) i3-1115G4 @ 3.00GHz (4 cores) |
| Total RAM and Available RAM | 3.7Gi total / 3.3Gi available |
| Primary Storage Size and Type | 1T (SSD - Virtual Disk /dev/sdd) |
| Operating System Name and Kernel Version | Ubuntu Linux (WSL2) — 6.18.58.1-microsoft-standard-WSL2 |

## Binary Number Representation

### Decimal 75 to Binary (Repeated Division by 2)
* $75 \div 2 = 37$ remainder *1*
* $37 \div 2 = 18$ remainder *1*
* $18 \div 2 = 9$ remainder *0*
* $9 \div 2 = 4$ remainder *1*
* $4 \div 2 = 2$ remainder *0*
* $2 \div 2 = 1$ remainder *0*
* $1 \div 2 = 0$ remainder *1*

Reading the remainders from bottom to top: *$75_{10} = 1001011_2$*

### Binary 110101 to Decimal (Positional Weight Method)
$$(1 \times 2^5) + (1 \times 2^4) + (0 \times 2^3) + (1 \times 2^2) + (0 \times 2^1) + (1 \times 2^0)$$
$$= (1 \times 32) + (1 \times 16) + (0 \times 8) + (1 \times 4) + (0 \times 2) + (1 \times 1)$$
$$= 32 + 16 + 0 + 4 + 0 + 1 = \mathbf{53_{10}}$$

### Why Computers Use Binary Internally
Computers use binary internally because digital electronic circuits rely on transistors that can reliably represent and switch between two distinct voltage states—ON (1) and OFF (0)—ensuring fast, noise-resistant data processing.
