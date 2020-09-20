# Combinational Logic Circuits

### Half Adder

- [Half Adder](/Combinational%20Logic%20Circuits/half_adder.v): This half adder adds two 1-bit binary numbers and outputs the sum of the input and its corresponding carry.

#### Waveform

![Waveform](/Combinational%20Logic%20Circuits/half_adder.png)

### Full Adder

- [Full Adder](/Combinational%20Logic%20Circuits/full_adder.v): This full adder takes 3-bits for the input (A, B and carry in) and outputs a 2-bit Sum and its corresponding Carry Out. The Sum will be the lowest value output and the Carry Out is the highest value output as well as where other full adders could be joined together.

#### Waveform

![Waveform](/Combinational%20Logic%20Circuits/full_adder.png)

### 4-Bit Ripple Adder

- [Four Bit Ripple Adder](/Combinational%20Logic%20Circuits/four_bit_adder.v): This 4-bit adder takes advantage of the full adder module by taking four full adders and linking them together to add 2 four bit inputs. In the 4-bit adder, the first carry bit is set to zero because there is no initial carry bit as an input.

#### Waveform

![Waveform](/Combinational%20Logic%20Circuits/four_bit_adder.png)

### 4-Bit Look Ahead Adder

- [Four Bit Look Ahead Adder](/Combinational%20Logic%20Circuits/four_bit_adder_EC.v): This 4-bit look ahead adder is an improved implementation of a 4-bit ripple adder by eliminating the propagation delay found in the 4-bit ripple adder. For each output, this implementation computes each previous carry simultaneously instead of waiting for the previous adder module to yield a carry. In this adder, the first carry bit is set to zero and simplifies the logic because there is no initial carry bit as the input. While this implementation uses more gates and more complex logic to accomplish the same task as the ripple adder, this implementation would add two 4-bit numbers much faster than the 4-bit ripple adder.

#### Waveform

![Waveform](/Combinational%20Logic%20Circuits/four_bit_adder_EC.png)

### 3-Bit Comparator

- [3-bit Comparator](/Combinational%20Logic%20Circuits/three_bit_comparator.v): This 3-bit comparator requires two 3-bit inputs and outputs whether the first input is greater than / less than / or equal to the second input. In practice, the 3-bit comparator would compare two numbers and output the relation between them. To verify this module, the binary input bits were converted into their decimal representation and compared mathematically, example: inputs of 010 and 010 represent, 2 and 2, which the module would output 001 for the outputs: GT, LT, and EQ, respectively.

#### Waveform

![Waveform](/Combinational%20Logic%20Circuits/three_bit_comparator.png)

### 4-16 Decoder

- [4-16 Decoder](/Combinational%20Logic%20Circuits/dec_4_to_16.v): This 4-to-16 decoder takes one 4-bit input and outputs a 16-bit representation of the input. This module uses the concept of one-hot decoding where each output would have one output that would correspond to the input. An application for this decoder would be to convert a 4-bit binary value to its hexadecimal representation. To verify this module, the binary bits of the input is converted into their decimal representation and compared to the output’s decimal representation to see if they match.

#### Waveform

![Waveform](/Combinational%20Logic%20Circuits/4_to_16_decoder.png)

### Priority Encoder

- [Priority Encoder](/Combinational%20Logic%20Circuits/priority_encoder.v): This priority encoder takes one 4-bit input and then outputs the binary representation of the index of the active input bit with the highest priority. Also, the module will indicate if the output generated is valid by toggling the valid bit, VLD. This solves the issue of having two inputs active at the same time by having the input of the highest priority take precedence.

#### Waveform

![Waveform](/Combinational%20Logic%20Circuits/priority_encoder.png)

### 4-1 Multiplexer

- [4-1 Multiplexer](/Combinational%20Logic%20Circuits/mux_four_to_one.v): This 4-1 multiplexer takes an input of four bits and another input of 2-bits and outputs based on the selected input. In this module, the two bits are the select bits that would select which one the inputs should be designated as the output.

#### Waveform

![Waveform](/Combinational%20Logic%20Circuits/4_to_1_mux.png)


