# EE 178 - Digital Design with FPGAs

## Laboratory Assignment #3

In this laboratory assignment, we're implementing a circuit that drives the time-multiplexed 4-digit (quad) 7-segment display. Previous knowledge of counter, multiplexer, decoder, and 7-segment display should be familiarized. We can re-use portions of this laboratory project in the final project.

The 4-digit 7-segment display on the Real Digital Blackboard FPGA will have outputs of values in hexadecimal from 0000 to FFFF (the goal to display these values or any values between these limits). Since each value has n = 16, we have 2^16 = 65536. The switches and buttons as the inputs will increment the outputs depending on the location. We separate the 4-digits into 4 groups of inputs so that we can utilize the 4 buttons + 12 switches = 16 inputs.

![Test Bench](https://cdn.discordapp.com/attachments/948455704757411860/948455811175301170/unknown.png)
#### Simulation of the Test Bench
<br/>

![RTL Analysis](https://cdn.discordapp.com/attachments/948455704757411860/948456353360404520/unknown.png)
#### Elaborated Design from RTL Analysis
<br/>

![Synthesis](https://cdn.discordapp.com/attachments/948455704757411860/948457244071174154/unknown.png)
#### Synthesized Design from Synthesis
<br/>

![RTL Analysis](https://cdn.discordapp.com/attachments/948455704757411860/948458517893894154/unknown.png)
#### Implemented Design from Implementation
<br/>

### YouTube Demonstration Video
This is a [YouTube video](https://www.youtube.com/watch?v=gVjwgPLWqxM) demonstrating the verification process on the Real Digital Blackboard.
