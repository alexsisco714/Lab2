Lab2
====
#ALU implemented in Nexus 2
============================

## Full Adder
--------------

### Truth Table
|Cin     |A       |B       |Cout    |F(sum)  |
|:------:|:------:|:------:|:------:|:------:|
|0       |0       |0       |0       |0       |
|0       |0       |1       |0       |1       |
|0       |1       |0       |0       |1       |
|0       |1       |1       |1       |0       |
|1       |0       |0       |0       |1       |
|1       |0       |1       |1       |0       |
|1       |1       |0       |1       |0       |
|1       |1       |1       |1       |1       |

### Boolean Equations
F(sum) = A xor B xor C
Cout = AB + ACin + BCin

### Schmatic
![alt text](https://raw2.github.com/alexsisco714/Lab2/master/fullAdderSchematic.jpg "Full Adder Schematic")

### Testing
#### Test One
![alt text](https://raw2.github.com/alexsisco714/Lab2/master/test1.JPG "First Test")

The first test for the Full Adder worked perfectly. All of the waveform outputs in Isim  matched exactly to the 
truth table above. No debugging was required.
-----------------------------------------------
## ALU
------

###Description
This ALU has the ability to add and subtract 4 bit numbers as well as dectect overflows.
It is of a ripple-carry adder format.

### Testing 
####Isim testing
the Isim tester returned no errors for all 512 combinations

####Debugging
The first time the FPGA was programmed the overflow detection did not work because it was not set up properly for twos compliment addition. Carry Ins were xor'd with carryouts when numbers were being added which fixed the problem with the twos compliment addition overflow detection.
