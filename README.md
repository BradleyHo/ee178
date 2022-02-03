# EE 178 - Digital Design with FPGAs

             ________________________________________________
            /                                                \
           |    _________________________________________     |
           |   |  //---------------------------------//  |    |
           |   |  // Design Module: hello_fpga       //  |    |
           |   |  // File Name: hello_fpga.v         //  |    |
           |   |  // Function: Prints greetings text //  |    |
           |   |  //---------------------------------//  |    |
           |   |  module hello_fpga;                     |    |
           |   |                                         |    |
           |   |  initial begin                          |    |
           |   |    $display("Hello, EE 178!");          |    |
           |   |    #10 $finish;                         |    |
           |   |  end                                    |    |
           |   |                                         |    |
           |   |  endmodule                              |    |
           |   |_________________________________________|    |
           |                    ThinkPad                      |
            \_________________________________________________/
                   \___________________________________/
                ___________________________________________
             _-'    .-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.  --- `-_
          _-'.-.-. .---.-.-.-.-.-.-.-.-.-.-.-.-.-.-.--.  .-.-.`-_
       _-'.-.-.-. .---.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-`__`. .-.-.-.`-_
    _-'.-.-.-.-. .-----.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-----. .-.-.-.-.`-_
 _-'.-.-.-.-.-. .---.-. .-------------------------. .-.---. .---.-.-.-.`-_
:-------------------------------------------------------------------------:
`---._.-------------------------------------------------------------._.---'

Various projects and information compiled for EE 178 taught by [Dr. Shrikant Jadhav](https://www.linkedin.com/in/jadhavshrikant) at SJSU.

## FPGA
In this course, we'll be implementing digital circuit designs using a [field-programmable gate array](https://en.wikipedia.org/wiki/Field-programmable_gate_array) (FPGA) development board from Real Digital called the [Blackboard](https://www.realdigital.org/hardware/blackboard). The board part is xc7z007sclg400-1. It is essentially a 2-in-1 development board to allow digital engineers to configure FPGA and program [Advanced RISC Machines](https://en.wikipedia.org/wiki/ARM_architecture) (ARM). RISC stands for [reduced instruction set computer](https://en.wikipedia.org/wiki/Reduced_instruction_set_computer), which in turns is related to [complex instruction set computer](https://en.wikipedia.org/wiki/Complex_instruction_set_computer) (CISC). For the FPGA, we'll be using a [hardware description language](https://en.wikipedia.org/wiki/Hardware_description_language) (HDL) called [Verilog](https://en.wikipedia.org/wiki/Verilog) which is mainly used in the corporate/private sector. As for the public/government sector, [VHSIC Hardware Description Language](https://en.wikipedia.org/wiki/VHDL) (VHDL) is used instead; [VHSIC](https://en.wikipedia.org/wiki/Very_High_Speed_Integrated_Circuit_Program) stands for very high speed integrated circuit. As for ARM, we can use a [low-level programming language](https://en.wikipedia.org/wiki/Low-level_programming_language) called Assembly (there are different types of [Assembly languages](https://en.wikipedia.org/wiki/Assembly_language) for different [computer architectures](https://en.wikipedia.org/wiki/Computer_architecture), this one is specific to the ARM family of the RISC architecture for computer processors). As for [electronic design automation](https://en.wikipedia.org/wiki/Electronic_design_automation) (EDA) and electronic computer-aided design (ECAD) software, we'll be using [Xilinx Vitis](https://www.xilinx.com/support/download/index.html/content/xilinx/en/downloadNav/vitis.html) Core Development Kit which [includes](https://digilent.com/blog/whats-different-between-vivado-and-vitis/) Vivado ML Edition. Xilinx was recently [acquired](https://www.amd.com/en/corporate/xilinx-acquisition) by Advanced Micro Devices (AMD). NVIDIA's [acquisition](https://arm.nvidia.com) of ARM may be pending. For text editor, Xilinx ISE Design Suite, Notepad++, or any others can be used. Previous concepts from EE 118 should have been reviewed to preapre for this course. Beyond this course, there is also [SystemVerilog](https://en.wikipedia.org/wiki/SystemVerilog) which is a HDL and [hardware verification language](https://en.wikipedia.org/wiki/Hardware_verification_language) (HVL). It is based on Verilog and is used to model, design, simulate, test and implement electronic systems.

[YouTube channel](https://www.youtube.com/channel/UCDwOTN38zFMpZsxMiY6jDXg) for demonstration videos of laboratory experiments.
