# Nasscom-VSD-vlsi

This repository consists of a 5 Day workshop Elaborated through a readme file . The were conducted by NASSCOM and VSD on SOC Design and Planning this also includes all the 5 Days learning from videos provided by VSD and LAB work on the OpenLANE tool provided by NASSCOM.

## DAY-1
### SK1- Lecture1

#### 1. Locating the Microcontroller
This image showcases an Arduino board with the microcontroller circled. This chip is the central processing unit responsible for executing your code and controlling the board's functionalities.

![1](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d1/d1_sk1/intro/Screenshot%202024-07-13%20095151.png)

#### 2. Microcontroller Internal Structure
This diagram illustrates the internal architecture of a typical microcontroller. Key components include:
Processor/SoC (System on a Chip): The "brain" of the microcontroller responsible for executing instructions.
SDRAM (Synchronous Dynamic Random Access Memory): Volatile memory used for temporary data storage while the microcontroller is running.
Direct I2C, SPI, GPIO, PWM: These are communication protocols and input/output pins that allow the microcontroller to interact with external sensors, actuators, and other devices.
![2](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d1/d1_sk1/intro/Screenshot%202024-07-13%20095251.png)

#### 3. Zooming into the Microcontroller Die
This image provides a magnified view of the silicon die inside the microcontroller. Notable features:
RISC-V SoC: Indicates that the microcontroller utilizes the RISC-V instruction set architecture, known for its efficiency and open-source nature.
GPIO bank: A group of General Purpose Input/Output pins that can be configured as either inputs or outputs for interfacing with external components.
SRAM: Static RAM, a type of memory that retains its contents even when power is off, often used for storing critical program data.
Foundry IP's: Intellectual Property blocks licensed from semiconductor foundries, representing pre-designed and verified circuit modules integrated into the microcontroller.
Macros: Refers to larger functional blocks within the microcontroller's design, encompassing multiple logic gates and components.

![3](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d1/d1_sk1/intro/Screenshot%202024-07-13%20095935.png)

### SK1- Lecture2
#### Visualizing a RISC-V CPU Core: From Code to Silicon Layout
1. RISC-V Assembly Code (Left):
We start with a snippet of assembly code written for the RISC-V architecture.
Each line represents a low-level instruction, demonstrating the fundamental operations the CPU is designed to execute.
2. Implementation in Hardware Description Language (Bottom):
This section displays the implementation of the picorv32 CPU core using a Hardware Description Language (likely Verilog or SystemVerilog).
It demonstrates how the assembly instructions are translated into logical operations and register transfers within the CPU's architecture.
Parameters for configuring the core's features (like enabling counters or cache) are also visible.
3. Physical Layout (Right):
This represents the actual physical layout of the picorv32 CPU core, visualized using a tool like "qflow."
Different colors and labels represent various circuit elements like logic gates (AND2X2, BUFX2), flip-flops (DFFPOSx1), and interconnections.
This layout dictates how the transistors and wires are arranged on the silicon die to implement the CPU's functionality.
Key Takeaways:
The image illustrates the intricate link between software and hardware in CPU design.
Starting from high-level code, we traverse down to the physical realization of a RISC-V core, showcasing the different levels of abstraction involved.
This visual representation helps in understanding how CPU design choices in the hardware description language translate into the physical layout of the silicon chip.

![4](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d1/d1_sk1/riscv/Screenshot%202024-07-13%20100329.png)

### SK1- Lecture3
#### Bridging the Gap: From Software to Silicon
1. Application Software (Top Left):
Our journey begins with the software applications we use daily.
These applications, written in languages like C++, Java, or Python, interact with the underlying system through a defined set of instructions.
2. System Software and Compilation (Top):
The Operating System (OS) acts as an intermediary, managing system resources and providing an interface for applications to interact with the hardware.
Compilers translate high-level code (e.g., C++) into lower-level assembly language instructions specific to the target CPU architecture.
3. Assembly and Machine Code (Middle):
The Assembler further converts assembly code into binary machine code (0s and 1s) that the hardware can directly understand and execute.
The Instruction Set Architecture (ISA) serves as the abstract interface between software and hardware, defining the set of instructions a processor can execute.
4. Hardware Implementation (Bottom):
  Register Transfer Level (RTL):
    This stage describes the hardware behavior using a Hardware Description Language (HDL) like Verilog or VHDL. RTL defines the flow of data between registers and the logical operations         performed.
   
  Netlist Synthesis:
    The RTL description is synthesized into a netlist, a detailed representation of the circuit's interconnected components (gates, flip-flops).
    
  Physical Design:
    Finally, the netlist guides the physical placement and routing of transistors and wires on the silicon die, resulting in the tangible hardware that executes the original software             instructions.
    
Key Takeaways:
This diagram highlights the layered abstraction involved in bridging the gap between software and hardware.
It emphasizes the crucial role of compilers, assemblers, and hardware design tools in translating abstract instructions into physical circuits.
Understanding this flow provides valuable insights into the relationship between software, hardware, and the underlying computer architecture.

![5](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d1/d1_sk1/software%20to%20hardware/Screenshot%202024-07-13%20104219.png)
![6](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d1/d1_sk1/software%20to%20hardware/Screenshot%202024-07-13%20104157.png)
![7](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d1/d1_sk1/software%20to%20hardware/Screenshot%202024-07-13%20100706.png)

### SK2- Lecture1
#### Creating ASICs with Open Source Tools and PDKs
This diagram outlines the key elements involved in developing Application-Specific Integrated Circuits (ASICs) using open-source tools and readily available Process Design Kits (PDKs).

ASIC (Center):Represents the custom-designed integrated circuit tailored for a specific application, offering performance and efficiency advantages over general-purpose chips.

Key Inputs for ASIC Design:
RTL Designs (Left): These are the hardware designs described in a Hardware Description Language (HDL) like Verilog or VHDL, forming the functional blueprint of the ASIC. Open-source RTL designs can be obtained from various repositories like LibreCores, OpenCores, GitHub, and more.

PDK Data (Right): Process Design Kits are provided by semiconductor foundries (e.g., Google + Skywater in this case). They contain essential information about the manufacturing process, including design rules, device models, and libraries required to ensure the ASIC can be physically manufactured.

EDA Tools (Top): Electronic Design Automation tools are software suites used for designing, simulating, and verifying ASICs. QFlow, OpenROAD, and OpenLANE are examples of open-source EDA tools that enable the entire ASIC design flow.

Workflow:

1. RTL Design: Design the ASIC's functionality using HDL and leverage open-source IP cores when needed.

2. EDA Tools: Employ open-source EDA tools for synthesis, placement, routing, and physical verification of the design.

3. PDK Integration: Utilize the foundry-provided PDK data to ensure compliance with manufacturing requirements.

Benefits:
1. Accessibility: Open-source tools and PDKs make ASIC design more accessible to individuals and smaller companies.

2. Cost Reduction: Leveraging open-source resources can significantly reduce the cost barrier associated with traditional ASIC development.

3. Flexibility: Open-source tools often allow for greater customization and control over the design process.

This diagram emphasizes the growing trend of open-source hardware development, enabling a wider range of innovators to design and produce custom ASICs.

![8](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d1/d1_sk2/sky_l1/Screenshot%202024-07-13%20120549.png)

### SK2- Lecture2
#### Demystifying the ASIC Design Flow with OpenLANE
This series of screenshot provides a visual breakdown of the typical stages involved in designing an Application-Specific Integrated Circuit (ASIC) using the open-source toolchain OpenLANE.
1. Overall Flow (Top of Each screenshot):The common thread across the slides is the high-level ASIC design flow, progressing from RTL design to the final GDSII output:
2. RTL: Starting point is the Register Transfer Level (RTL) description of your circuit using a Hardware Description Language (HDL) like Verilog.
3. PDK: Process Design Kits (PDKs) from semiconductor foundries provide the essential design rules and libraries for the target manufacturing process.
4. Synthesis: Convert RTL into a gate-level netlist using standard cells from the PDK.
5. Floorplanning and Power Planning: Plan the chip layout, partition areas for different blocks, and plan power distribution.
6. Placement: Place the synthesized standard cells onto the chip floorplan.
7. Clock Tree Synthesis (CTS): Create a clock distribution network for reliable timing.
8. Routing: Connect all the placed cells using metal layers on the chip.
9. Sign Off: Perform final verifications to ensure the design meets all specifications.

Key Takeaway:
These screenshot demonstrate the essential steps and considerations in taking an ASIC design from RTL to GDSII using OpenLANE, showcasing the iterative and detail-oriented nature of chip design.
![14](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d1/d1_sk2/sky_l2/Screenshot%202024-07-13%20124109.png)
![9](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d1/d1_sk2/sky_l2/Capture.PNG)
![10](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d1/d1_sk2/sky_l2/Capture1.PNG)
![11](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d1/d1_sk2/sky_l2/Capture2.PNG)
![12](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d1/d1_sk2/sky_l2/Capture3.PNG)
![13](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d1/d1_sk2/sky_l2/Capture4.PNG)

### SK2 - Lecture3

#### Exploring the striVe SoC Family

Key Components:

striVe SoC Family (Left): Indicates that this is a collection of related SoCs, each with a distinct version number (striVe, striVe 2, striVe 2a, etc.).

Table (Top Right): Provides a concise overview of the features and key components of each striVe variant:

   SoC: The name of each SoC version.
   Features: A description of the SoC's architecture, including the fabrication process node (Sky130 SCL), the amount of integrated SRAM, and the inclusion of OpenRAM blocks.
    
Example: striVe 2a utilizes the Sky130 130nm process and features the striVe 2 core with a single-chip core module.

Chip Layouts (Bottom): Displays the actual physical layouts of several striVe SoCs:

  Each layout reveals the arrangement of different functional blocks on the silicon die (e.g., CPU, memory, peripherals).
  The increasing complexity of layouts from striVe to striVe5 visually demonstrates the evolution of the SoC family over time.
  
Project Partners (Bottom):
    SkyWater Technology Foundry, Google, OpenROAD, and Efabless indicates their collaboration and contributions to the striVe project. 
Key Takeaways:
  1. The striVe SoC family represents a series of increasingly capable open-source SoCs built using the Sky130 process node.
  2. The diverse configurations and features of each variant demonstrate the flexibility and customization possibilities offered by open-source hardware design.
  3. The project's collaborative nature, involving leading organizations, highlights the growing ecosystem and support for open-source chip development.

![15](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d1/d1_sk2/sky_l3/Capture.PNG)

### SK2 - Lecture4

#### Navigating the OpenLANE ASIC Flow and Addressing Antenna Violations

Slide 1 (OpenLANE ASIC Flow):

Illustrates the comprehensive OpenLANE flow, encompassing design exploration, physical implementation, and sign-off. Key stages include:

1. RTL Synthesis: Converting Register Transfer Level (RTL) code into a gate-level netlist.
2. Floorplanning & Placement: Planning the chip layout and placing standard cells.
3. CTS & Routing: Clock Tree Synthesis and interconnecting placed cells with metal layers.
4. Static Timing Analysis (STA): Verifying timing closure.
5. Physical Verification: Ensuring design rule compliance (DRC) and layout vs. schematic (LVS) correctness.

Slide 2 & 3 (Dealing with Antenna Rules Violations):
The Problem: Metal wires on a chip can act as antennas during fabrication (reactive ion etching) hence Charge accumulation on these "antennas" can damage underlying transistor gates.

Solutions:

Bridging: Connecting the antenna wire to a higher metal layer (requires router awareness).

Antenna Diodes: Adding special diode cells from the Standard Cell Library (SCL) to provide a discharge path.

OpenLANE's Approach (Slide 4):

1. Preventive: Fake antenna diodes are placed next to cell inputs after placement.
2. Verification: An antenna checker tool (Magic) is run on the routed layout.
3. Remediation: Fake diodes are replaced with real ones if a violation is detected.

Slide 5 (Static Timing Analysis):

Emphasizes the use of OpenSTA (from OpenROAD) for Static Timing Analysis.
Shows an example report with timing paths, delays, and slack (timing margin).

Slide 6 (Physical Verification):

Highlights the use of Magic for: 
1. Design Rules Checking (DRC): Ensures the layout complies with manufacturing rules.
2. SPICE Extraction: Extracts a circuit representation from the layout for simulation.
3. Layout vs. Schematic (LVS): Verifies that the layout matches the intended circuit connectivity.
 
Key Takeaways:
OpenLANE provides a robust and automated ASIC design flow.
Antenna violations are common in chip design and require careful handling.
OpenLANE employs a preventive and verification-based approach to address antenna issues.
Static timing analysis and physical verification are essential steps to ensure design functionality and manufacturability.
![16](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d1/d1_sk2/sky_l4/Capture.PNG)
![17](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d1/d1_sk2/sky_l4/Capture1.PNG)
![18](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d1/d1_sk2/sky_l4/Capture2.PNG)
![19](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d1/d1_sk2/sky_l4/Screenshot%202024-07-13%20150323.png)
![20](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d1/d1_sk2/sky_l4/Screenshot%202024-07-13%20150403.png)
![21](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d1/d1_sk2/sky_l4/Screenshot%202024-07-13%20150414.png)

### SK3 - Lecture1
#### Understanding OPENLANE Directory Structure

Open the LINUX Terminal (By default we are in home directory)

Important LINUX Commands
cd : It is used to change the current working directory.

ls : It lists the contents of a directory.

ls -ltr : It lists the contents of a directory in long format, sorted by modification time in reverse order (oldest first).

ls --help: It displays a help message with a list of options and usage information for the "ls" command. Note : You can give any command name and then type "--help" to get info about that command.

clear: It clears the terminal screen.

Now, we go to the work directory where all files related to the workshop are stored


``
cd Desktop
``

``
cd work/tools/
``

``
cd openlane_working_dir/
``

``
cd openlane/
``

The ls -ltr command lists the contents of directories, revealing:

PDK Options: Initially, we see options for different PDKs (pdks and openlane_old).

Skywater PDK Contents: Inside skywater-pdk, we find various subdirectories:
1. sky130A: Likely contains data specific to the Skywater 130nm process node. third_party, scripts, src: Folders suggesting external dependencies, utility scripts, and source code respectively.
3. docs, examples: Likely contain documentation and usage examples.
4. Open-Source Components: The presence of folders like aes_cipher, usb_cdc_core, sha3 suggests the inclusion of open-source IP cores for common functionalities.

Important Files and Directories:

       pdks: It is known as Process Design Kit. For this workshop we are using an opensource pdk i.e 'skywater 130nm pdk'. OPENLANE is built around this 'skywater 130nm pdk'.
        - skywater-pdk : This has all the pdk related files such as timing libraries, Lef files etc.
        - open_pdks : It contains set of scripts & files that converts the foundary level pdks to be compatible with the open source EDA Tools.
        - sky130A : It is a pdk variant , already made compatible with the open source EDA tools.
        - libs.ref: It contains files specific to the technology such as design libraries, standard cells and many more.
        - libs.tech: It contains files specific to the Tools.
![22](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d1/d1_sk3/sky_l1/Screenshot%202024-07-13%20152530.png)
![23](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d1/d1_sk3/sky_l1/Screenshot%202024-07-13%20152617.png)
![24](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d1/d1_sk3/sky_l1/Screenshot%202024-07-13%20160052.png)

### SK3 - Lecture2

#### Design Preparation Step

To enter into bash while being in the openalne dircetory use the command

    docker
    
Now after this we use the script 'flow.tcl' and alongwith it use '-interactive' for the step by step openlane flow. :

    ./flow.tcl -interactive
    
![25](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d1/d1_sk3/sky_l2/Screenshot%202024-07-13%20160109.png)    
    
Openlane Logo can be seen in the terminal which is affirmative , after this enter the following command to install require openlane packages

    % package require openlane 0.9
    
Now, Ther are various pre-built designs in the 'designs' subdirectory. So, here we are selecting the "picorv32a.v" design on which we will execute the RTL to GDS flow. To carry out the synthesis (the project's initial stage) on this design, we first need to set it up using the command:

    prep -design picorv32a
    
![26](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d1/d1_sk3/sky_l2/Screenshot%202024-07-13%20162118.png)

After the preparation is complete, we can see a new directory with todays date is created within 'runs' folder in 'picorv32a' folder.

#### Key Sections and Variables:
Design Setup:

1. Design
 
       set ::env(DESIGN_NAME) "picorv32a"
       set ::env(VERILOG_FILES)  "~/designs/picorv32a/src/picorv32a.v" 
       set ::env(SDC_FILE) "~/designs/picorv32a/src/picorv32a.sdc"
   
DESIGN_NAME: Sets the design's name to picorv32a.

VERILOG_FILES: Specifies the path to the Verilog file containing the picorv32a design.

SDC_FILE: Indicates the path to the Synopsys Design Constraints (SDC) file, which contains timing constraints for the design.

2. Clock Configuration:

        set ::env(CLOCK_PERIOD)  "5.000"
        set ::env(CLOCK_PORT) "clk"
        set ::env(CLOCK_NET)  $::env(CLOCK_PORT)

CLOCK_PERIOD: Defines the desired clock period for the design as 5 nanoseconds.

CLOCK_PORT: Sets the name of the clock input port to clk.

CLOCK_NET: Assigns the clock net to be the same as the clock port.

3. Configuration File Inclusion:

        set filename $::env(OPENLANE_ROOT)/designs/$::env(DESIGN_NAME)/$::env(PDK)/$::env(STD_CELL_LIBRARY)_config.tcl 
          if {[file exists $filename] == 1} {
            source $filename
              }

This section constructs a filename based on environment variables to include a technology-specific configuration file.

It sources (includes) this file if it exists, potentially containing PDK-specific settings.

![27](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d1/d1_sk3/sky_l2/Screenshot%202024-07-13%20160719.png)


4. Standard Cell Library (SCL) Configurations:

SCL Configs

    set ::env(GLB_RT_ADJUSTMENT) 0.1
    set ::env(SYNTH_MAX_FANOUT) 6
    set ::env(CLOCK_PERIOD) "24.73"
    set ::env(FP_CORE_UTIL) 35
    set ::env(PL_TARGET_DENSITY) [ expr ($::env(FP_CORE_UTIL)+5) / 100.0 ]

This part defines various configuration parameters for the standard cell library being used:

   GLB_RT_ADJUSTMENT: Global routing tree adjustment.
   
   SYNTH_MAX_FANOUT: Maximum fanout allowed during synthesis.
   
   CLOCK_PERIOD: Overwrites the previous clock period setting.
   
   FP_CORE_UTIL: Specifies core utilization for floorplanning.
   
   PL_TARGET_DENSITY: Sets the target density for placement.
   
![28](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d1/d1_sk3/sky_l2/Screenshot%202024-07-13%20161133.png)

### SK3 - Lecture3

#### Inside an OpenLANE Design: Directory Structure and PDK Integration:

Screenshot 1 (Directory Structure):

The user navigates to a specific design directory within an OpenLANE project:
``
.../openlane/designs/picorv32a/runs/13-07_10-49
``

Key Subdirectories:

PDK_SOURCES: Contains links or copies of files directly from the Skywater PDK.

results: Stores the output files generated during various stages of the OpenLANE flow. Further subdirectories like synthesis, placement, routing, lvs indicate where results for each stage are stored.

logs: Contains log files capturing the execution details of each step.

config.tcl: This crucial file likely holds design-specific configurations and settings for OpenLANE tools.

![29](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d1/d1_sk3/sky_l3/Screenshot%202024-07-13%20181649.png)

Screenshot 2 (PDK License):

Shows the contents of the merged.lef file within the PDK_SOURCES directory.The header clearly states that it's part of the Skywater PDK and released under the Apache License 2.0.This file likely contains Library Exchange Format (LEF) data, providing physical layout information about the standard cells within the PDK.

![30](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d1/d1_sk3/sky_l3/Screenshot%202024-07-13%20181900.png)

Screenshot 3 (Design Configuration):

Displays a snippet of the run.cfg file, a primary configuration file for OpenLANE.

PDK Integration:
``
set ::env(PDK_ROOT) ...: Sets the root directory of the Skywater PDK, allowing OpenLANE tools to access its contents.
``

Design-Specific Settings:

Specifies various paths to design files (SDC, LEF), clock parameters, cell padding/exclusion rules, and more. It demonstrates how OpenLANE allows for fine-grained control over the ASIC design flow through Tcl configuration.

![31](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d1/d1_sk3/sky_l3/Screenshot%202024-07-13%20190148.png)

### SK3 - Lecture4

#### OpenLANE Git: Your Gateway to Open-Source ASIC Design

Key Repositories:

1. Main OpenLANE Repository:

        URL: https://github.com/The-OpenROAD-Project/OpenLANE
   
This is the central hub for OpenLANE, containing the core infrastructure, scripts, flow configurations, and documentation.

2. Skywater PDK (Sky130):

        URL: https://github.com/google/skywater-pdk
   
This repository hosts the Google-sponsored Skywater 130nm Process Design Kit (PDK), often used with OpenLANE.

Other PDK Repositories: You can find PDKs from other foundries on GitHub or other platforms.

Common Git Commands for OpenLANE:

```git clone:``` Download a copy of the OpenLANE or PDK repository to your local machine.

```git pull:``` Update your local repository with the latest changes from the remote repository.

```git checkout:``` Switch between different branches or versions of the code.

```git diff:``` View the changes you've made to files.

```git add, git commit, git push:``` Stage, commit, and push your changes to a remote repository (e.g., on GitHub).


### SK3 - Lecture5

#### OpenLANE Results Analysis: Cell Counts/Flop calculation and Directory Exploration

Screenshot 1 (Directory Navigation and Files):

Results Directory: The user navigates to the synthesis subdirectory within the OpenLANE run's results folder: .../openlane/designs/picorv32a/runs/13-07_13-33/results/synthesis.

Key Files: 
```merged_unpadded.lef:``` This Library Exchange Format (LEF) file likely contains the physical layout information for the standard cells used in the design, potentially after merging multiple libraries.

```picorv32a.synthesis.v:``` Represents the synthesized netlist of the picorv32a design in Verilog format. This netlist is the output of the synthesis stage, mapping the original RTL design to the chosen standard cells.

![32](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d1/d1_sk3/sky_l5/Screenshot%202024-07-13%20191251.png)

Screenshot 2 (Design Statistics):

Cell Counts: The output highlights the count of different standard cells used in the design, grouped by cell type (e.g., sky130_fd_sc_hd_a211o_2, sky130_fd_sc_hd_a21bo_2).

    Area Estimation: Different cells have varying sizes, so cell counts provide an initial estimate of the design's area.
    Performance Analysis: Cell complexity influences timing characteristics; analyzing cell types helps understand potential performance bottlenecks.

Now, coming back to the step where design preperation was completed successfully. Now, To perform synthesis on the design use the following command :

      % run_synthesis
      
Now, First objective after the synthesis is completed is to calculate the Flip Flop Ratio.

Now, if we see the synthesized results we find:

    Number of D Flipflops : 1613
    Total number of Cells : 14876

![32](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d1/d1_sk3/sky_l5/Screenshot%202024-07-13%20191025.png)

    FF Ratio : 0.1084
    FF Percentage : 10.84 %

Hence, flip flop ratio = (Number of D Flipflops)/(Total number of Cells) Flipflop percentage = FF ratio * 100

## DAY-2
### SK1- Lecture1
#### Understanding Chip Area, Core, Die, and Utilization Factor
This series of diagrams provides a visual explanation of key concepts related to chip design, focusing on the core, die, utilization factor, and aspect ratio. 

Slide 1: Determining Core Dimensions and Utilization

Explains that the core's dimensions are determined by the placement of all logic cells within it.

100% utilization occurs when all logic cells completely fill the core area.

The utilization factor is calculated by comparing the area occupied by cells to the total core area.

Slide 2: Core and Die in Context

Shows how multiple dies are fabricated on a single silicon wafer.

Emphasizes that the die is a discrete unit containing the core, and many dies form a wafer.

Slide 3: Standard Cell Area

Illustrates that each standard cell (e.g., flip-flop) occupies a specific area within the core.

The area of these cells contributes to the overall core area, ultimately impacting utilization and die size.

Slide 4: Ideal Scenario - 100% Utilization

1. Core: The active area of the chip containing standard cells (logic gates, flip-flops) that implement the design's functionality.
2. Die: The small piece of semiconductor material (usually silicon) on which the core is fabricated.
3. Utilization Factor: In this ideal case, the core occupies the entire die area, resulting in a 100% utilization factor. The formula for utilization is:

        (Area Occupied by Netlist) / (Total Area of the Core)
 
4. Aspect Ratio: Here, the core's height and width are equal, leading to an aspect ratio of 1 (Height / Width).

Slide 5: Realistic Scenario - 50% Utilization

    Utilization Factor = 0.5: Only half of the die area is used by the core.
    Aspect Ratio = 0.5: The core's height is half its width.
    
Empty Space: The unused area on the die can accommodate additional circuitry, interconnections, or remain empty depending on the design and cost considerations.

















