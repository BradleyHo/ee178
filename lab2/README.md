# EE 178 - Digital Design with FPGAs

## Laboratory Assignment #2

In this laboratory assignment, we're implementing a 1-bit full adder module by instantiating a half adder module as part of the design. Refer to the eleborated design for the digital circuit of the full adder implementation.

### Full Adder Truth Table
| Input | Input | Input | Output | Output |
| :---: | :---: | :---: | :---: | :---: | 
| __A__ | __B__ | __Carry In (C)__ | __Sum__ | __Carry Out__ |
| 0 | 0 | 0 | 0 | 0 |
| 0 | 0 | 1 | 1 | 0 |
| 0 | 1 | 0 | 1 | 0 |
| 0 | 1 | 1 | 0 | 1 |
| 1 | 0 | 0 | 1 | 0 |
| 1 | 0 | 1 | 0 | 1 |
| 1 | 1 | 0 | 0 | 1 |
| 1 | 1 | 1 | 1 | 1 |

Sum = A ⊕ B ⊕ C
<br/>
Carry Out = (C ⋅ (A ⊕ B)) + (A ⋅ B)

![Test Bench](https://cdn.discordapp.com/attachments/943284046161657866/943284119289335828/unknown.png)
#### Simulation of the Test Bench for a 1-Bit Full Adder Module
<br/>

![RTL Analysis](https://cdn.discordapp.com/attachments/943284046161657866/943424149295095818/unknown.png)
#### Elaborated Design from RTL Analysis
<br/>

![Synthesis](https://cdn.discordapp.com/attachments/943284046161657866/943423383905914880/unknown.png)
#### Synthesized Design from Synthesis
<br/>

![RTL Analysis](https://cdn.discordapp.com/attachments/943284046161657866/943423669621899325/unknown.png)
#### Implemented Design from Implementation
<br/>

### YouTube Demonstration Video
This is a [YouTube video](https://www.youtube.com/watch?v=gVjwgPLWqxM) demonstrating the verification process on the Real Digital Blackboard.
