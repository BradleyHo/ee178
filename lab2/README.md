# EE 178 - Digital Design with FPGAs

## Laboratory Assignment #2

In this laboratory assignment, we're implementing a 1-bit full adder module by instantiating a half adder module as part of the design. Refer to the eleborated design for the digital circuit of the full adder implementation.

### 2-Input 1-Output XOR Logic Gate Symbols
![XOR Logic Gate](https://www.electronicshub.org/wp-content/uploads/2015/07/IEEE-REP.jpg)

### 2-Input 1-Output XOR Logic Gate Truth Table
| Input | Input | Output |
| :---: | :---: | :---: |
| __A__ | __B__ | __A ⊕ B__ |
| 0 | 0 | 0 |
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 0 |

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

### 4 Test Cases for Truth Table Verification
![Case 00](https://cdn.discordapp.com/attachments/938692795248562187/938692887128989706/IMG_5181.jpg)
#### Case 1: Input 00, Output 0
<br/>

![Case 01](https://cdn.discordapp.com/attachments/938692795248562187/938692887514861648/IMG_5182.jpg)
#### Case 2: Input 01, Output 1
<br/>

![Case 10](https://cdn.discordapp.com/attachments/938692795248562187/938692887871389706/IMG_5183.jpg)
#### Case 3: Input 10, Output 1
<br/>

![Case 11](https://cdn.discordapp.com/attachments/938692795248562187/938692888290803773/IMG_5184.jpg)
#### Case 4: Input 11, Output 0
<br/>


### YouTube Demonstration Video
This is a [YouTube video](https://www.youtube.com/watch?v=tV2xyG6AKoM) demonstrating the verification process of the XOR logic gate on the Real Digital Blackboard.
