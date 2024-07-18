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
    run_synthesis
    
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

#### Slide 1: Determining Core Dimensions and Utilization

  1. Explains that the core's dimensions are determined by the placement of all logic cells within it.

  2. 100% utilization occurs when all logic cells completely fill the core area.

  3. The utilization factor is calculated by comparing the area occupied by cells to the total core area.

![33](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d2/sk1/sky_l1/Screenshot%202024-07-14%20185039.jpg)

#### Slide 2: Core and Die in Context

  1. Shows how multiple dies are fabricated on a single silicon wafer.

  2. Emphasizes that the die is a discrete unit containing the core, and many dies form a wafer.

![34](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d2/sk1/sky_l1/Screenshot%202024-07-14%20185715.jpg)

#### Slide 3: Standard Cell Area

  1. Illustrates that each standard cell (e.g., flip-flop) occupies a specific area within the core.

  2. The area of these cells contributes to the overall core area, ultimately impacting utilization and die size.

![35](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d2/sk1/sky_l1/Screenshot%202024-07-14%20185900.jpg)

#### Slide 4: Ideal Scenario - 100% Utilization

  1. Core: The active area of the chip containing standard cells (logic gates, flip-flops) that implement the design's functionality.
  2. Die: The small piece of semiconductor material (usually silicon) on which the core is fabricated.
  3. Utilization Factor: In this ideal case, the core occupies the entire die area, resulting in a 100% utilization factor. The formula for utilization is:

          (Area Occupied by Netlist) / (Total Area of the Core)
 
  4. Aspect Ratio: Here, the core's height and width are equal, leading to an aspect ratio of 1 (Height / Width).

![36](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d2/sk1/sky_l1/Screenshot%202024-07-14%20190020.jpg)

#### Slide 5: Realistic Scenario - 50% Utilization

    Utilization Factor = 0.5: Only half of the die area is used by the core.
    Aspect Ratio = 0.5: The core's height is half its width.
    
Empty Space: The unused area on the die can accommodate additional circuitry, interconnections, or remain empty depending on the design and cost considerations.

![37](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d2/sk1/sky_l1/Screenshot%202024-07-14%20190124.jpg)

### SK1- Lecture2
#### Understanding Pre-Placed Cells and Floorplanning

Slide 1 (Defining Locations of Preplaced Cells):

1. Logic: Starts with an example of a simple combinational logic circuit.

2. Pre-Placement: The logic gates (A1-A8) are arranged in a specific topology, and vertical cut lines (cut1, cut2) indicate potential divisions within the circuit.

3. Block Creation: The circuit is partitioned into two blocks (Block 1 and Block 2) based on the cut lines.
![38]
Slide 2 (Blackboxing and IP Creation):

Blackboxing: The individual blocks are encapsulated as "black boxes," hiding their internal details while exposing their input/output connections.
IP (Intellectual Property) Creation: These black boxes represent reusable design modules, often referred to as IPs. Each block becomes an independent unit with defined inputs, outputs, and functionality.

![39]
Slide 3 (Examples of Pre-Placed IPs and Floorplanning):
Common IPs: The slide showcases examples of common pre-designed IPs, including:
Memory
Clock Gating Cell
Comparator
Multiplexer (Mux)
Floorplanning:
These IPs are strategically placed within the chip's layout before the automated placement and routing stages.
This pre-placement, known as floorplanning, considers factors like:
Signal flow and interconnections between IPs.
Power distribution and optimization.
Timing constraints and clock distribution.
![40]
### SK1- Lecture3
#### Power Integrity in ASIC Design: Addressing Voltage Drop and Noise Margin with Decoupling Capacitors

Slide 1 (Pre-Placed Cells and Floorplan):
Sets the context of floorplanning, where pre-placed cells (representing IP blocks or macro cells) are positioned on the chip die.
This arrangement influences how power is distributed to different parts of the circuit.

![41]
Slide 2 & 3 (Voltage Drop Problem):
Switching Current: Emphasizes that complex circuits draw significant current during switching operations.
Parasitic Resistance (Rdd, Ldd): Highlights the presence of parasitic resistance and inductance in power supply lines.
Voltage Drop: Shows that due to these parasitics, the actual voltage (Vad) at a circuit node can be lower than the intended supply voltage (Vdd), especially during high current demands.
Logic Errors: Explains that if Vad falls below a critical threshold (noise margin), logic signals might be misinterpreted, leading to circuit malfunction.

![42]
![43]
Slide 4 (Noise Margin Summary):
Noise Margin (NM): Defines noise margin as the allowed voltage variation for a logic signal to be reliably interpreted as '0' or '1'.
Bump Characteristics: Illustrates how voltage bumps induced by switching currents can lead to violations of noise margins, causing logic errors.
![44]
Slide 5 (Solution: Decoupling Capacitors):
Decoupling Capacitor (Cd): Introduces decoupling capacitors as the solution, placed in parallel with the circuit's power supply pins.
Charge Reservoir: Explains that decoupling capacitors act as local charge reservoirs, supplying current during switching transients and minimizing voltage drops.

![45]
Slide 6 (Decoupling Capacitors in Floorplan):
Demonstrates the placement of decoupling capacitor blocks (DECAP) near pre-placed cells in the floorplan.
This strategic placement ensures that decoupling capacitors are close to the circuits they protect, reducing the effective inductance and improving their effectiveness.
![46]
### SK1- Lecture4
#### Power Integrity in ASICs: The Importance of Power Planning and Grid Design

Slide 1 (Circuit with a 16-bit Bus):
Introduces a circuit with driver cells, load cells, decoupling capacitors (Cd), and a highlighted 16-bit bus (blue).
This setup represents a common scenario in ASICs where data is transmitted over buses, and multiple cells share power and ground rails.

![47]
Slide 2 & 3 (Ground Bounce & Voltage Droop):
Simultaneous Switching: Illustrates the case when multiple bits on the bus switch from '1' (V) to '0' (0) simultaneously.
Ground Bounce:
The capacitors connected to the switching bits discharge rapidly through the shared ground (Vss) connection.
This sudden current surge through the ground path creates a voltage bump or "bounce" on the ground rail, potentially affecting other circuits sharing the same ground.
Voltage Droop:
Similarly, when many bits switch from '0' to '1', a large current is drawn from the power supply (Vdd).
This simultaneous current demand can cause the Vdd rail to momentarily dip or "droop" due to the resistance in the power supply network.

![48]
![49]
Slide 4 (Power Grid Illustration):
Shows a more detailed view of how power (Vdd) and ground (Vss) are distributed using a grid structure in an ASIC layout.
The grid ensures that power and ground are supplied consistently to all parts of the chip, reducing the impact of localized voltage drops and ground bounces.

![50]
Slide 5 (Power Planning):
Highlights power planning as a crucial step in ASIC design, involving the strategic placement of:
Power/Ground Grid: Creating a robust network of Vdd and Vss interconnections.
Decoupling Capacitors (DECAP): Placing sufficient decoupling capacitors close to circuits to provide local charge storage and further minimize voltage fluctuations.
![51]
### SK1- Lecture5 
#### From Netlist to Floorplan: Preparing for Placement & Routing in ASIC Design

These slides illustrate a crucial step in the ASIC design flow: transitioning from a logical netlist representation to a physical floorplan, setting the stage for placement and routing.
Slide 1 (Complete Design Netlist):
Circuit Diagram: Depicts a complete digital circuit comprising:
Flip-flops (FF1, FF2)
Combinational logic blocks (Block a, Block b, Block c)
Input/Output pins (Din1-Din4, Dout1-Dout4, Clk1, Clk2, ClkOut)
Netlist Concept:
Emphasizes that this circuit's connectivity is captured in a netlist, a textual description using hardware description languages (HDL) like Verilog or VHDL.
The netlist defines how different circuit elements are interconnected but doesn't specify their physical locations.
![52]

Slide 2 (Logical Cell Placement Blockage):
Floorplan Grid: Shows a chip floorplan with a power grid (Vdd, Vss) and predefined areas for:
DECAP (Decoupling Capacitors): Essential for power integrity.
Blocks a, b, c: Representing the pre-placed logical blocks from the netlist.
Logical Placement:
The logical blocks are assigned specific regions on the floorplan, but their exact internal cell placement is not yet defined.
This placement considers factors like signal flow, inter-block connections, and potential congestion.
Ready for Placement & Routing:
The slide highlights that this floorplan, with pre-placed blocks and a power grid, serves as the starting point for the next stage:
Placement: Individual standard cells within each logical block will be assigned precise locations on the chip.
Routing: Metal interconnections will be routed between the placed cells to realize the connections defined in the netlist.
![53]
### SK1- Lecture6 (LAB)

#### OpenLANE Configuration and Execution: Defining Variables and Observing the Flow

Screenshot 1 (Configuration Variables):

Configuration File (config.tcl): This snippet showcases a portion of OpenLANE's configuration file where essential design parameters are defined.

Required Variables: It highlights "required variables" crucial for a successful run.

1. DESIGN_NAME: Specifies the top-level module name of your design.

2. VERILOG_FILES: Provides the path(s) to your Verilog design files.

3. CLOCK_PERIOD: Defines the clock period in nanoseconds.

4. CLOCK_NET and CLOCK_PORT: Specify clock-related information used in different stages (CTS, STA).

![54](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d2/sk1/sky_l6-lab/Screenshot%202024-07-15%20161206.jpg)

Screenshot 2 (Configuration Directory):

OpenLANE Configuration Directory: Shows the contents of OpenLANE's configuration directory.

Tcl Scripts for Different Stages: The directory contains individual Tcl scripts (synthesis.tcl, placement.tcl, routing.tcl, etc.) that define the flow for each design stage.

![55](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d2/sk1/sky_l6-lab/Screenshot%202024-07-15%20161414.jpg)

Screenshot 3 (Log Messages):

OpenLANE Execution Log: Displays log messages produced during an OpenLANE run.

Key Information:

Successful G-matrix creation (used in power grid analysis).

Pin generation completion.

Floorplan conversion: A layout file (...floorplan.tcl) is being transformed into a DEF (Design Exchange Format) file (...floorplan.def).

![56](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d2/sk1/sky_l6-lab/Screenshot%202024-07-15%20163133.jpg)

### SK1- Lecture7 (LAB)

#### OpenLANE Design Flow: Navigating Directories, Examining Floorplan Data, and Visualizing Layout

Screenshot 1-2 (Project Directory Exploration):

The user navigates through various directories within an OpenLANE project, ultimately reaching:

A specific run directory:

              .../openlane/designs/picorv32a/runs/15-07_10-57

The results/floorplan subdirectory containing output files from the floorplanning stage.

Key Subdirectories:

1. PDK_SOURCES: Holds links to the Skywater PDK files used in the design.
2. results: Stores outputs from different stages (e.g., synthesis, floorplan, routing).
3. logs: Contains log files for each stage's execution.

![57](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d2/sk1/sky_l7-lab/Screenshot%202024-07-15%20163108.jpg)
![58](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d2/sk1/sky_l7-lab/Screenshot%202024-07-15%20163646.jpg)

Screenshot 3 (Floorplan Definition - picorv32a.floorplan.def):

Shows a snippet of the picorv32a.floorplan.def file, a standard DEF (Design Exchange Format) file used to represent the floorplan.

Key Information:

1. VERSION: DEF file version.
2. DESIGN: The name of the design (picorv32a).
3. DIEAREA: Specifies the dimensions of the chip's die area.
4. ROW: Defines the rows available for placing standard cells, with their coordinates, orientation, and spacing.

![59](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d2/sk1/sky_l7-lab/Screenshot%202024-07-15%20163748.jpg)

Screenshot 4 (Die Area Calculation):

Calculator to convert the die area dimensions from the DEF file (6606685 x 671405) into units representing microns.

![60](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d2/sk1/sky_l7-lab/Screenshot%202024-07-15%20163857.jpg)

Screenshot 5 (Visualizing the Floorplan):

The floorplan is visualized using a layout viewer tool (possibly klayout).

Key Observations:

1. Die Area: The overall rectangular area represents the chip die.
2. Rows: The repeating vertical lines likely represent the rows defined in the DEF file for cell placement.
3. Pre-Placed Blocks: There might be (though not clearly visible in this screenshot) rectangular areas representing pre-placed blocks like memories or macro cells.

![61](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d2/sk1/sky_l7-lab/Screenshot%202024-07-15%20164728.jpg)

Purpose:

1. Understanding Project Organization: The screenshots guide users through the organization of an OpenLANE project, highlighting the location of key files and results.
2. Exploring Floorplan Data: Shows the structure and contents of a DEF file, a standard way to represent floorplan information.
3. Visualizing the Design: Provides a visual representation of the floorplan, aiding in understanding the chip's physical organization and the arrangement of rows for standard cell placement.

### SK1- Lecture8 (LAB)

#### Exploring Standard Cell Details in a Layout Viewer

Screenshot 1 (Standard Cell Properties):

1. Layout Viewer: The main window displays a section of the ASIC layout.
2. Tcl Console: The console provides a command-line interface for interacting with the layout data.
3. Cell Details: The user has likely selected a standard cell, triggering the display of its properties:
4. Name: The cell is identified as pcpi.
5. Size: It occupies an area of 8.018 microns x 8.018 microns.
6. Layers: Information about metal layers (Metal1, Metal2) and their connections to the pcpi cell's pins.
7. Label Attachment: It shows specific labels ("pcpi_rd/I1") are associated with metal connections to this cell instance.

![62](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d2/sk1/sky_l8-lab/Screenshot%202024-07-15%20165243.jpg)

Screenshot 2 (Metal Layers and Labels):

1. Metal Layers: The layout view highlights vertical structures, likely representing Metal2 (pink) and potentially other metal layers.
2. Label Visibility: Labels for the pcpi cell's pins or internal connections are visible, confirming the information from the console.

![63](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d2/sk1/sky_l8-lab/Screenshot%202024-07-15%20165442.jpg)

Purpose:

Standard Cell Structure: Examining the pcpi cell's physical layout, including its size and connections to different metal layers.

Label Verification: Confirming the correct association of labels (e.g., "pcpi_rd/I1") with specific metal traces connected to the pcpi cell.

Connectivity Analysis: Understanding how this cell is connected to the surrounding circuitry through the labeled metal traces.

### SK2- Lecture5 (LAB)

#### OpenLANE Design Flow: Placement Statistics, Directory Organization, and Visualization

Screenshot 1 (Placement Statistics):

1. Log Messages: The terminal window displays log messages from the OpenLANE run, providing statistics about the placement process:
2. Design Area: Total area, utilized area, and utilization percentage.
3. Cell Counts: Numbers of different cell instances and total instances.
4. Placement Metrics: Data related to cell displacement, wirelength, and HPWL (Half-Perimeter Wirelength), which are indicators of placement quality.

`` run_placement ``

![64](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d2/sk2/l5-lab/Screenshot%202024-07-15%20175722.jpg)

Screenshot 2 (Directory Navigation):
The user navigates through the OpenLANE project directory, highlighting the placement subdirectory within a specific run's results folder (.../openlane/designs/picorv32a/runs/15-07_12-25/results/placement).
Purpose: This navigation indicates that the placement results, including placement data and log files, are organized by design and run within the results directory.

`` picorv32a.placement.def``

the above file contains the info about placement

![65](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d2/sk2/l5-lab/Screenshot%202024-07-15%20180243.jpg)

Screenshot 3 (Layout Viewer - Placement View):
Placement Display: A layout viewer (tkcon) visualizes the placement of standard cells within the picorv32a design.
Cell Instances: Individual standard cells are likely represented by rectangles or other shapes, but their specific details are not clearly visible in this screenshot.
Console Output: The console window suggests that the viewer is loading the design's netlist and technology information for accurate visualization.

navigate to tool by the following command:

``magic -T /home/vsduser/Desktop/work/tools/openlane_working_dir/pdks/sky130A/libs.tech lef read ../../tmp/merged.lef def read picorv32a.floorplan.def &``

![66](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d2/sk2/l5-lab/Screenshot%202024-07-15%20181533.jpg)

Screenshot 4 (Zoomed-In Placement View):

A zoomed-in view of the layout after placement is presented, showing:
Standard Cells: The rectangles likely represent individual standard cell instances placed on the layout.
Labels: Some cells have labels indicating their types or functions (e.g., _19458, _19321).
Routing Tracks: Faint lines in the background might represent the available routing tracks for interconnecting the cells.

![67](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d2/sk2/l5-lab/Screenshot%202024-07-15%20182128.jpg)

for more controls use these commands:

    # Design Alignment Instructions

    ## Centering the Design

    1. Press `S` to select the entire design.
    2. Press `V` to vertically align it to the middle of the screen.

    ## Zooming In on a Specific Area

    1. Left-click and drag to select the desired region.
    2. Right-click to bring up the context menu.
    3. Press `Z` to zoom in on the selected area.

    ## Getting Details of a Cell

    1. Move your cursor to the cell of interest.
    2. Press `S` to select the cell.
    3. In the `tkcon` window, enter the command `what` to display cell details.

## Day 3
### SK1- Lecture0 (LAB)

#### Configuring Parameters and Visualizing Results

This set of screenshots demonstrates how floorplanning parameters can be customized in OpenLANE using Tcl variables and how the resulting floorplan is visualized for a picorv32a design.

Screenshot 1 (Floorplan Configuration):

Tcl Variables: Shows a section of a Tcl configuration file (config.tcl or similar) dedicated to floorplanning settings.

Key Parameters:

1. FP_IO_VMETAL, FP_IO_HMETAL: Specify metal layers for vertical and horizontal IO connections.
2. FP_SIZING, FP_CORE_UTIL, FP_ASPECT_RATIO: Control overall floorplan sizing, core utilization, and aspect ratio.
3. FP_PDN_* variables: Define parameters related to the power distribution network (PDN) like offsets, pitches, and adjustments.
4. FP_IO_MODE, FP_IO_HLENGTH, etc.: Configure input/output (IO) placement parameters.

![68](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d3/sk1/l0-lab/Screenshot%202024-07-15%20192134.jpg)


Screenshot 2 (Running Floorplan and Visualization):

OpenLANE Log: The terminal displays log messages from an OpenLANE run.

Floorplan Execution: Highlights the execution of the``run_floorplan``, indicating the start of the floorplanning stage.

Layout Visualization: Shows OpenLANE invoking a layout viewer (klayout in this case) to display the generated floorplan.

    set  ::env(FP_IO_MODE) 2
    run_floorplan

![69](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d3/sk1/l0-lab/Screenshot%202024-07-15%20192348.jpg)

Screenshot 3 (Floorplan Visualization):

1. Layout Viewer Display: Presents the visualized floorplan within the layout viewer.
2. Core Area: A central rectangular area represents the core of the design where standard cells are placed.
3. IO Pads: There might be regions around the core dedicated to IO pads for external connections.
4. Power Grid: A grid-like structure might be visible, indicating the power distribution network.

Here the IO Pin arrangement is changed now to 2
previouly it was set to 1 as default and was divided in equal manner

![70](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d3/sk1/l0-lab/Screenshot%202024-07-16%20001813.jpg)

### lab ss

![71](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d3/sk1/l0-lab/Screenshot%202024-07-15%20192134.jpg)
![72](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d3/sk1/l0-lab/Screenshot%202024-07-15%20192348.jpg)
![73](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d3/sk1/l0-lab/Screenshot%202024-07-16%20001813.jpg)


[74](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d3/sk1/l5-lab/Screenshot%202024-07-16%20180433.jpg)
[75](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d3/sk1/l5-lab/Screenshot%202024-07-16%20181101.jpg)
![76](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d3/sk1/l5-lab/Screenshot%202024-07-16%20181716.jpg)

![77](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d3/sk2/l8-lab/Screenshot%202024-07-16%20194152.jpg)
![78](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d3/sk2/l8-lab/Screenshot%202024-07-16%20194927.jpg)
![79](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d3/sk2/l8-lab/Screenshot%202024-07-16%20195314.jpg)
![80](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d3/sk2/l8-lab/Screenshot%202024-07-16%20195418.jpg)
![81](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d3/sk2/l8-lab/Screenshot%202024-07-16%20195440.jpg)
![82](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d3/sk2/l8-lab/Screenshot%202024-07-16%20195615.jpg)

![83](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d3/sk3/l1-lab/Screenshot%202024-07-16%20225203.jpg)
![84](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d3/sk3/l1-lab/Screenshot%202024-07-16%20231009.jpg)

![85](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d3/sk3/l2-lab/Screenshot%202024-07-16%20231111.jpg)
![86](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d3/sk3/l2-lab/Screenshot%202024-07-16%20233040.jpg)
![87](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d3/sk3/l2-lab/Screenshot%202024-07-16%20233138.jpg)
![88](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d3/sk3/l2-lab/Screenshot%202024-07-16%20233214.jpg)
![89](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d3/sk3/l2-lab/Screenshot%202024-07-16%20233227.jpg)
![90](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d3/sk3/l2-lab/Screenshot%202024-07-17%20091821.jpg)
![91](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d3/sk3/l2-lab/Screenshot%202024-07-17%20091937.jpg)

![92](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d3/sk3/l4/Screenshot%202024-07-17%20094827.jpg)


![93](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d3/sk3/l5/Screenshot%202024-07-17%20095021.jpg)
![94](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d3/sk3/l5/Screenshot%202024-07-17%20095150.jpg)
![95](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d3/sk3/l5/Screenshot%202024-07-17%20095515.jpg)
![96](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d3/sk3/l5/Screenshot%202024-07-17%20104547.jpg)
![97](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d3/sk3/l5/Screenshot%202024-07-17%20104857.jpg)


![98](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d3/sk3/l6/Screenshot%202024-07-17%20105212.jpg)
![99](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d3/sk3/l6/Screenshot%202024-07-17%20105459.jpg)
![100](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d3/sk3/l6/Screenshot%202024-07-17%20110530.jpg)
![101](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d3/sk3/l6/Screenshot%202024-07-17%20124417.jpg)
![102](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d3/sk3/l6/Screenshot%202024-07-17%20130015.jpg)

![103](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d3/sk3/l8/Screenshot%202024-07-17%20130236.jpg)
![104](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d3/sk3/l8/Screenshot%202024-07-17%20131022.jpg)

![105](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d3/sk3/l9/Screenshot%202024-07-17%20131333.jpg)
![106](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d3/sk3/l9/Screenshot%202024-07-17%20132659.jpg)

![107](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d4/sk1/l1/Screenshot%202024-07-17%20134745.jpg)
![108](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d4/sk1/l1/Screenshot%202024-07-17%20135120.jpg)
![109](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d4/sk1/l1/Screenshot%202024-07-17%20135153.jpg)

![110](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d4/sk1/l2/Screenshot%202024-07-17%20143612.jpg)
![111](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d4/sk1/l2/Screenshot%202024-07-17%20144255.jpg)
![112](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d4/sk1/l2/Screenshot%202024-07-17%20144434.jpg)
![113](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d4/sk1/l2/Screenshot%202024-07-17%20144826.jpg)

![114](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d4/sk1/l3/Screenshot%202024-07-17%20172332.jpg)
![115](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d4/sk1/l3/Screenshot%202024-07-17%20172632.jpg)
![116](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d4/sk1/l3/Screenshot%202024-07-17%20195920.jpg)

![117](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d4/sk1/l7/Screenshot%202024-07-17%20202309.jpg)
![118](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d4/sk1/l7/Screenshot%202024-07-18%20113833.jpg)
![119](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d4/sk1/l7/Screenshot%202024-07-18%20113847.jpg)

![120](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d4/sk2/l3/Screenshot%202024-07-18%20114938.jpg)
![121](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d4/sk2/l3/Screenshot%202024-07-18%20115652.jpg)
![122](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d4/sk2/l3/Screenshot%202024-07-18%20122737.jpg)
![123](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d4/sk2/l3/Screenshot%202024-07-18%20122755.jpg)


![124](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d4/sk3/l3/Screenshot%202024-07-18%20124212.jpg)
![125](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d4/sk3/l3/Screenshot%202024-07-18%20124334.jpg)
![126](https://github.com/fortunespell/Nasscom-VSD-vlsi/blob/main/vsd/d4/sk3/l3/Screenshot%202024-07-18%20124437.jpg)
















