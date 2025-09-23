CC = ifort

ARCH = $(shell getconf LONG_BIT)
ifeq ($(ARCH), 32)
  LIBPATH = ../../../lib
else
  LIBPATH = ../../../lib64
endif

FFLAGS = -shared-intel -lxl -L $(LIBPATH)

all: generate extract edit custom format invoice

generate: generate.f90
	$(CC) -o generate libxl.f90 generate.f90 $(FFLAGS)

extract: extract.f90
	$(CC) -o extract libxl.f90 extract.f90 $(FFLAGS)

edit: edit.f90
	$(CC) -o edit libxl.f90 edit.f90 $(FFLAGS)

custom: custom.f90
	$(CC) -o custom libxl.f90 custom.f90 $(FFLAGS)

format: format.f90
	$(CC) -o format libxl.f90 format.f90 $(FFLAGS)

invoice: invoice.f90
	$(CC) -o invoice libxl.f90 invoice.f90 $(FFLAGS)

clean:
	rm -f generate extract edit custom format invoice *.xls *.xlsx

