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
![alt text](https://github.com/alexsisco714/Lab2/blob/master/fullAdderSchematic.jpg "Full Adder Schematic")

### Testing
#### Test One
![alt text](https://github.com/alexsisco714/Lab2/blob/master/test1.JPG "First Test")

The first test for the Full Adder worked perfectly. All of the waveform outputs in Isim  matched exactly to the 
truth table above. No debugging was required.


