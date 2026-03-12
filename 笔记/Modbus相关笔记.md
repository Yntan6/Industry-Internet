# Modbus


### Modbus Slave(从站(接收))

#### 名词解释
- Setup
  - slave Definition
    - Function
      - `0x`Coil Status（线圈状态）；可读可写
      - `1x`Input Status（输入状态）；只读
      - `4x`Holding Register（保持寄存器）；可读可写
      - `3x`Input Registers（输入寄存器）；只读



### Modbus Poll(主站(发送))
- Setup
  - Read/Write Definition
    - Function
      - `0x`Read Coils(读线圈)；只读
      - `1x`Read Discrete Inputs(读离散输入)；只读
      - `4x`Read Holding Registers(读保持寄存器)；只读
      - `3x`Read Input Registers(读输入寄存器)；只读
      - `-`Write Single Coil(写单个线圈)；只写
      - `-`Write Single Register(写单个寄存器)；只写
      - `-`Write Multiple Coils(写多个线圈)；只写
      - `-`Write Multiple Registers(写多个寄存器)；只写































































