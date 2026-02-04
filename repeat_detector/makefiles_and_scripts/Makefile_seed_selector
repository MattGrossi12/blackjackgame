# Nome do executável de simulação
SIM = sim.vvp
LD_LIBRARY_PATH="" gtkwave dump.fst
# Variáveis de Configuração
SRC = ../src
TB = ../testbenchs
SR = ../../seed_random
CK = ../../clocktree_generator
I01_04_ADR = $(SR)/seed_random_1/src
I05_08_ADR = $(SR)/seed_random_2/src
I09_12_ADR = $(SR)/seed_random_3/src
I13_16_ADR = $(SR)/seed_random_4/src
I17 = $(CK)/src

INC = -I $(SRC) \
      -I $(I01_04_ADR) \
      -I $(I05_08_ADR) \
      -I $(I09_12_ADR) \
      -I $(I13_16_ADR) \
      -I $(I17)

TOP_MODULE   = seed_selector.v

TESTBENCH = testbench.v

I01_04_TOP = seed_random_1_top.v
INST01 = seed_random_1_control_path.v
INST02 = seed_random_1_data_path.v
INST03 = seed_random_1_data_base.vh
INST04 = seed_random_1_data_path_counter.v

I05_08_TOP = seed_random_2_top.v
INST05 = seed_random_2_control_path.v
INST06 = seed_random_2_data_path.v
INST07 = seed_random_2_data_base.vh
INST08 = seed_random_2_data_path_counter.v

I09_12_TOP = seed_random_3_top.v
INST09 = seed_random_3_control_path.v
INST10 = seed_random_3_data_path.v
INST11 = seed_random_3_data_base.vh
INST12 = seed_random_3_data_path_counter.v

I13_16_TOP = seed_random_4_top.v
INST13 = seed_random_4_control_path.v
INST14 = seed_random_4_data_path.v
INST15 = seed_random_4_data_base.vh
INST16 = seed_random_4_data_path_counter.v

INST17 = clocktree_generator.v

# Lista de arquivos Verilog
VERILOG_FILES = \
    $(SRC)/$(TOP_MODULE) \
	$(I01_04_ADR)/$(I01_04_TOP) \
	$(I01_04_ADR)/$(INST01) \
	$(I01_04_ADR)/$(INST02) \
	$(I01_04_ADR)/$(INST03) \
	$(I01_04_ADR)/$(INST04) \
	$(I05_08_ADR)/$(I05_08_TOP) \
	$(I05_08_ADR)/$(INST05) \
	$(I05_08_ADR)/$(INST06) \
	$(I05_08_ADR)/$(INST07) \
	$(I05_08_ADR)/$(INST08) \
	$(I09_12_ADR)/$(I09_12_TOP) \
	$(I09_12_ADR)/$(INST09) \
	$(I09_12_ADR)/$(INST10) \
	$(I09_12_ADR)/$(INST11) \
	$(I09_12_ADR)/$(INST12) \
	$(I13_16_ADR)/$(I13_16_TOP) \
	$(I13_16_ADR)/$(INST13) \
	$(I13_16_ADR)/$(INST14) \
	$(I13_16_ADR)/$(INST15) \
	$(I13_16_ADR)/$(INST16) \
	$(I17)/$(INST17) \
    $(TB)/$(TESTBENCH)

# Comando de compilação pelo cvc:
cvc:
	cvc64 +acc+2 +large +parallel2=on $(VERILOG_FILES)
	./cvcsim
	rm -f cvcsim

#+fstvars 
fst:
	./cvcsim
	rm -f cvcsim
# cvc64 +large $(VERILOG_FILES)
# cvc64 +large +fst+parallel2=on $(VERILOG_FILES)
# cvc64 +interp +fst+parallel2=on $(VERILOG_FILES)

# Comando de compilação pelo icarus:
icarus:
	iverilog -Wall -g2012 $(INC) -o $(SIM) $(VERILOG_FILES)
	vvp $(SIM)
	rm -f sim.vvp

# Visualização com surfer:
surf:
	surfer dump.fst

# Visualização com GTK:
gtk:
	gtkwave dump.fst

# Síntese do diagrama
synth:
	yosys synth.ys

# Síntese do visualização
diagram:
	netlistsvg netlist.json -o diagram.svg

png:
	convert diagram.svg diagram.png

# Limpeza dos arquivos gerados
clean:
	rm -f dump.fst
	rm -f netlist.v
	rm -f netlist.json
	rm -f sim.vvp
	rm -f diagram.dot
	rm -f diagram.svg
	rm -f diagram.png
	rm -f cvcsim
	rm -f verilog.log
	clear