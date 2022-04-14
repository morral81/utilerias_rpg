
BIN_LIB = CMPSYS
LIBLIST =$(BIN_LIB) DSGOGAMTJ1
SHELL   =/QOpenSys/usr/bin/qsh

all: prueba663.rpgle prueba664.rpgle

%.rpgle:
	 system  -s "CHGATR OBJ('/home/DSGOGAMTJ/DSGOGAMTJ1/QRPGLESRC/$*.rpgle') ATR(*CCSID) VALUE(1252)"
	 liblist -a $(LIBLIST);\
	 system "CRTBNDRPG PGM($(BIN_LIB)/$*) SRCSTMF('/home/DSGOGAMTJ/DSGOGAMTJ1/QRPGLESRC/$*.rpgle') DBGVIEW(*SOURCE) OPTION(*EVENTF)"
	 system "CPYFRMSTMF FROMSTMF('/home/DSGOGAMTJ/DSGOGAMTJ1/QRPGLESRC/$*.rpgle') TOMBR('/QSYS.lib/$(BIN_LIB).lib/QRPGLESRC.file/$*.mbr') MBROPT(*REPLACE)"
	 system "CHGPFM FILE($(BIN_LIB)/QRPGLESRC) MBR($*) SRCTYPE(RPGLE) TEXT('Se realizo deploy desde el local')"

%.sqlrpgle:
	 system  -s "CHGATR OBJ('/home/DSGOGAMTJ/DSGOGAMTJ1/QRPGLESRC/$*.sqlrpgle') ATR(*CCSID) VALUE(1252)"
	 liblist -a $(LIBLIST);\
	 system "CRTSQLRPGI OBJ($(BIN_LIB)/$*) SRCSTMF('/home/DSGOGAMTJ/DSGOGAMTJ1/QRPGLESRC/$*.sqlrpgle') DBGVIEW(*SOURCE) OPTION(*EVENTF)"
	 system "CPYFRMSTMF FROMSTMF('/home/DSGOGAMTJ/DSGOGAMTJ1/QRPGLESRC/$*.sqlrpgle') TOMBR('/QSYS.lib/$(BIN_LIB).lib/QRPGLESRC.file/$*.mbr') MBROPT(*REPLACE)"
	 system "CHGPFM FILE($(BIN_LIB)/QRPGLESRC) MBR($*) SRCTYPE(SQLRPGLE) TEXT('Se realizo deploy desde el local')"

##%.sql:
##	system -s "CHGATR OBJ('/home/DSGOGAMTJ/RPG_DAME2/DPISQL/$*.sql') ATR(*CCSID) VALUE(1252)"
##	system -s "RUNSQLSTM SRCSTMF('/home/DSGOGAMTJ/RPG_DAME2/DPISQL/$*.sql') COMMIT(*NONE)"
	
##%.dspf:
##	system -s "CHGATR OBJ('/home/DSGOGAMTJ/RPG_DAME2/DPISRN/$*.dspf') ATR(*CCSID) VALUE(1252)"
##	liblist -a $(LIBLIST);\
##	system "CPYFRMSTMF FROMSTMF('/home/DSGOGAMTJ/RPG_DAME2/DPISRN/$*.dspf') TOMBR('/QSYS.lib/$(BIN_LIB).lib/DPISRN.file/$*.mbr') MBROPT(*REPLACE)"
##	system "CHGPFM FILE($(BIN_LIB)/DPISRN) MBR($*) SRCTYPE(DSPF) TEXT('Se realizo deploy desde el local')"
##   system "CRTDSPF FILE($(BIN_LIB)/$*) SRCFILE($(BIN_LIB)/DPISRN) SRCMBR($*)"