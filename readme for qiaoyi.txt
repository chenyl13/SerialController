需要用到的：Serail.vhd	uart.vhd
用法参考：Top.vhd process
PC写入FPGA：准备总线数据data_bus -> 写使能en_w<='1' -> 撤销data_bus&en_w
FPGA写入PC：有新数据时read_ready='1' -> 读使能en_r<='1' -> 写入总线data_bus