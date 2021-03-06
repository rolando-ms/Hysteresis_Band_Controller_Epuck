#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/demo5.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/demo5.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../main_c.c ../e_init_port.c ../e_led.c ../e_prox.c ../e_ad_conv.c ../e_init_uart1.s ../e_uart1_tx_char.s ../e_uart1_rx_char.s ../e_motors.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1472/main_c.o ${OBJECTDIR}/_ext/1472/e_init_port.o ${OBJECTDIR}/_ext/1472/e_led.o ${OBJECTDIR}/_ext/1472/e_prox.o ${OBJECTDIR}/_ext/1472/e_ad_conv.o ${OBJECTDIR}/_ext/1472/e_init_uart1.o ${OBJECTDIR}/_ext/1472/e_uart1_tx_char.o ${OBJECTDIR}/_ext/1472/e_uart1_rx_char.o ${OBJECTDIR}/_ext/1472/e_motors.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1472/main_c.o.d ${OBJECTDIR}/_ext/1472/e_init_port.o.d ${OBJECTDIR}/_ext/1472/e_led.o.d ${OBJECTDIR}/_ext/1472/e_prox.o.d ${OBJECTDIR}/_ext/1472/e_ad_conv.o.d ${OBJECTDIR}/_ext/1472/e_init_uart1.o.d ${OBJECTDIR}/_ext/1472/e_uart1_tx_char.o.d ${OBJECTDIR}/_ext/1472/e_uart1_rx_char.o.d ${OBJECTDIR}/_ext/1472/e_motors.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1472/main_c.o ${OBJECTDIR}/_ext/1472/e_init_port.o ${OBJECTDIR}/_ext/1472/e_led.o ${OBJECTDIR}/_ext/1472/e_prox.o ${OBJECTDIR}/_ext/1472/e_ad_conv.o ${OBJECTDIR}/_ext/1472/e_init_uart1.o ${OBJECTDIR}/_ext/1472/e_uart1_tx_char.o ${OBJECTDIR}/_ext/1472/e_uart1_rx_char.o ${OBJECTDIR}/_ext/1472/e_motors.o

# Source Files
SOURCEFILES=../main_c.c ../e_init_port.c ../e_led.c ../e_prox.c ../e_ad_conv.c ../e_init_uart1.s ../e_uart1_tx_char.s ../e_uart1_rx_char.s ../e_motors.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/demo5.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=30F6014A
MP_LINKER_FILE_OPTION=,--script="..\..\..\..\..\..\..\..\..\..\..\..\..\..\..\Program Files (x86)\Microchip\MPLAB C30\support\dsPIC30F\gld\p30F6014A.gld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1472/e_init_uart1.o: ../e_init_uart1.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/e_init_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/e_init_uart1.o.ok ${OBJECTDIR}/_ext/1472/e_init_uart1.o.err 
	@${RM} ${OBJECTDIR}/_ext/1472/e_init_uart1.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/e_init_uart1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_AS} $(MP_EXTRA_AS_PRE)  ../e_init_uart1.s -o ${OBJECTDIR}/_ext/1472/e_init_uart1.o -omf=elf -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1 --defsym=__MPLAB_DEBUG=1 --defsym=__DEBUG=1 --defsym=__MPLAB_DEBUGGER_SIMULATOR=1 -g  -MD "${OBJECTDIR}/_ext/1472/e_init_uart1.o.d" -I".." -I"."$(MP_EXTRA_AS_POST)
	
${OBJECTDIR}/_ext/1472/e_uart1_tx_char.o: ../e_uart1_tx_char.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/e_uart1_tx_char.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/e_uart1_tx_char.o.ok ${OBJECTDIR}/_ext/1472/e_uart1_tx_char.o.err 
	@${RM} ${OBJECTDIR}/_ext/1472/e_uart1_tx_char.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/e_uart1_tx_char.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_AS} $(MP_EXTRA_AS_PRE)  ../e_uart1_tx_char.s -o ${OBJECTDIR}/_ext/1472/e_uart1_tx_char.o -omf=elf -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1 --defsym=__MPLAB_DEBUG=1 --defsym=__DEBUG=1 --defsym=__MPLAB_DEBUGGER_SIMULATOR=1 -g  -MD "${OBJECTDIR}/_ext/1472/e_uart1_tx_char.o.d" -I".." -I"."$(MP_EXTRA_AS_POST)
	
${OBJECTDIR}/_ext/1472/e_uart1_rx_char.o: ../e_uart1_rx_char.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/e_uart1_rx_char.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/e_uart1_rx_char.o.ok ${OBJECTDIR}/_ext/1472/e_uart1_rx_char.o.err 
	@${RM} ${OBJECTDIR}/_ext/1472/e_uart1_rx_char.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/e_uart1_rx_char.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_AS} $(MP_EXTRA_AS_PRE)  ../e_uart1_rx_char.s -o ${OBJECTDIR}/_ext/1472/e_uart1_rx_char.o -omf=elf -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1 --defsym=__MPLAB_DEBUG=1 --defsym=__DEBUG=1 --defsym=__MPLAB_DEBUGGER_SIMULATOR=1 -g  -MD "${OBJECTDIR}/_ext/1472/e_uart1_rx_char.o.d" -I".." -I"."$(MP_EXTRA_AS_POST)
	
else
${OBJECTDIR}/_ext/1472/e_init_uart1.o: ../e_init_uart1.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/e_init_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/e_init_uart1.o.ok ${OBJECTDIR}/_ext/1472/e_init_uart1.o.err 
	@${RM} ${OBJECTDIR}/_ext/1472/e_init_uart1.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/e_init_uart1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_AS} $(MP_EXTRA_AS_PRE)  ../e_init_uart1.s -o ${OBJECTDIR}/_ext/1472/e_init_uart1.o -omf=elf -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1  -MD "${OBJECTDIR}/_ext/1472/e_init_uart1.o.d" -I".." -I"."$(MP_EXTRA_AS_POST)
	
${OBJECTDIR}/_ext/1472/e_uart1_tx_char.o: ../e_uart1_tx_char.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/e_uart1_tx_char.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/e_uart1_tx_char.o.ok ${OBJECTDIR}/_ext/1472/e_uart1_tx_char.o.err 
	@${RM} ${OBJECTDIR}/_ext/1472/e_uart1_tx_char.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/e_uart1_tx_char.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_AS} $(MP_EXTRA_AS_PRE)  ../e_uart1_tx_char.s -o ${OBJECTDIR}/_ext/1472/e_uart1_tx_char.o -omf=elf -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1  -MD "${OBJECTDIR}/_ext/1472/e_uart1_tx_char.o.d" -I".." -I"."$(MP_EXTRA_AS_POST)
	
${OBJECTDIR}/_ext/1472/e_uart1_rx_char.o: ../e_uart1_rx_char.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/e_uart1_rx_char.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/e_uart1_rx_char.o.ok ${OBJECTDIR}/_ext/1472/e_uart1_rx_char.o.err 
	@${RM} ${OBJECTDIR}/_ext/1472/e_uart1_rx_char.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/e_uart1_rx_char.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_AS} $(MP_EXTRA_AS_PRE)  ../e_uart1_rx_char.s -o ${OBJECTDIR}/_ext/1472/e_uart1_rx_char.o -omf=elf -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1  -MD "${OBJECTDIR}/_ext/1472/e_uart1_rx_char.o.d" -I".." -I"."$(MP_EXTRA_AS_POST)
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1472/main_c.o: ../main_c.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/main_c.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main_c.o.ok ${OBJECTDIR}/_ext/1472/main_c.o.err 
	@${RM} ${OBJECTDIR}/_ext/1472/main_c.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/main_c.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../library" -I".." -I"." -mlarge-data -MMD -MF "${OBJECTDIR}/_ext/1472/main_c.o.d" -o ${OBJECTDIR}/_ext/1472/main_c.o ../main_c.c    
	
${OBJECTDIR}/_ext/1472/e_init_port.o: ../e_init_port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/e_init_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/e_init_port.o.ok ${OBJECTDIR}/_ext/1472/e_init_port.o.err 
	@${RM} ${OBJECTDIR}/_ext/1472/e_init_port.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/e_init_port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../library" -I".." -I"." -mlarge-data -MMD -MF "${OBJECTDIR}/_ext/1472/e_init_port.o.d" -o ${OBJECTDIR}/_ext/1472/e_init_port.o ../e_init_port.c    
	
${OBJECTDIR}/_ext/1472/e_led.o: ../e_led.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/e_led.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/e_led.o.ok ${OBJECTDIR}/_ext/1472/e_led.o.err 
	@${RM} ${OBJECTDIR}/_ext/1472/e_led.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/e_led.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../library" -I".." -I"." -mlarge-data -MMD -MF "${OBJECTDIR}/_ext/1472/e_led.o.d" -o ${OBJECTDIR}/_ext/1472/e_led.o ../e_led.c    
	
${OBJECTDIR}/_ext/1472/e_prox.o: ../e_prox.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/e_prox.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/e_prox.o.ok ${OBJECTDIR}/_ext/1472/e_prox.o.err 
	@${RM} ${OBJECTDIR}/_ext/1472/e_prox.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/e_prox.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../library" -I".." -I"." -mlarge-data -MMD -MF "${OBJECTDIR}/_ext/1472/e_prox.o.d" -o ${OBJECTDIR}/_ext/1472/e_prox.o ../e_prox.c    
	
${OBJECTDIR}/_ext/1472/e_ad_conv.o: ../e_ad_conv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/e_ad_conv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/e_ad_conv.o.ok ${OBJECTDIR}/_ext/1472/e_ad_conv.o.err 
	@${RM} ${OBJECTDIR}/_ext/1472/e_ad_conv.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/e_ad_conv.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../library" -I".." -I"." -mlarge-data -MMD -MF "${OBJECTDIR}/_ext/1472/e_ad_conv.o.d" -o ${OBJECTDIR}/_ext/1472/e_ad_conv.o ../e_ad_conv.c    
	
${OBJECTDIR}/_ext/1472/e_motors.o: ../e_motors.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/e_motors.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/e_motors.o.ok ${OBJECTDIR}/_ext/1472/e_motors.o.err 
	@${RM} ${OBJECTDIR}/_ext/1472/e_motors.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/e_motors.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../library" -I".." -I"." -mlarge-data -MMD -MF "${OBJECTDIR}/_ext/1472/e_motors.o.d" -o ${OBJECTDIR}/_ext/1472/e_motors.o ../e_motors.c    
	
else
${OBJECTDIR}/_ext/1472/main_c.o: ../main_c.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/main_c.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main_c.o.ok ${OBJECTDIR}/_ext/1472/main_c.o.err 
	@${RM} ${OBJECTDIR}/_ext/1472/main_c.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/main_c.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../library" -I".." -I"." -mlarge-data -MMD -MF "${OBJECTDIR}/_ext/1472/main_c.o.d" -o ${OBJECTDIR}/_ext/1472/main_c.o ../main_c.c    
	
${OBJECTDIR}/_ext/1472/e_init_port.o: ../e_init_port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/e_init_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/e_init_port.o.ok ${OBJECTDIR}/_ext/1472/e_init_port.o.err 
	@${RM} ${OBJECTDIR}/_ext/1472/e_init_port.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/e_init_port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../library" -I".." -I"." -mlarge-data -MMD -MF "${OBJECTDIR}/_ext/1472/e_init_port.o.d" -o ${OBJECTDIR}/_ext/1472/e_init_port.o ../e_init_port.c    
	
${OBJECTDIR}/_ext/1472/e_led.o: ../e_led.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/e_led.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/e_led.o.ok ${OBJECTDIR}/_ext/1472/e_led.o.err 
	@${RM} ${OBJECTDIR}/_ext/1472/e_led.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/e_led.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../library" -I".." -I"." -mlarge-data -MMD -MF "${OBJECTDIR}/_ext/1472/e_led.o.d" -o ${OBJECTDIR}/_ext/1472/e_led.o ../e_led.c    
	
${OBJECTDIR}/_ext/1472/e_prox.o: ../e_prox.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/e_prox.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/e_prox.o.ok ${OBJECTDIR}/_ext/1472/e_prox.o.err 
	@${RM} ${OBJECTDIR}/_ext/1472/e_prox.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/e_prox.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../library" -I".." -I"." -mlarge-data -MMD -MF "${OBJECTDIR}/_ext/1472/e_prox.o.d" -o ${OBJECTDIR}/_ext/1472/e_prox.o ../e_prox.c    
	
${OBJECTDIR}/_ext/1472/e_ad_conv.o: ../e_ad_conv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/e_ad_conv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/e_ad_conv.o.ok ${OBJECTDIR}/_ext/1472/e_ad_conv.o.err 
	@${RM} ${OBJECTDIR}/_ext/1472/e_ad_conv.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/e_ad_conv.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../library" -I".." -I"." -mlarge-data -MMD -MF "${OBJECTDIR}/_ext/1472/e_ad_conv.o.d" -o ${OBJECTDIR}/_ext/1472/e_ad_conv.o ../e_ad_conv.c    
	
${OBJECTDIR}/_ext/1472/e_motors.o: ../e_motors.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/e_motors.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/e_motors.o.ok ${OBJECTDIR}/_ext/1472/e_motors.o.err 
	@${RM} ${OBJECTDIR}/_ext/1472/e_motors.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/e_motors.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../library" -I".." -I"." -mlarge-data -MMD -MF "${OBJECTDIR}/_ext/1472/e_motors.o.d" -o ${OBJECTDIR}/_ext/1472/e_motors.o ../e_motors.c    
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/demo5.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../../../../../../../../../../../../../../../Program\ Files\ (x86)/Microchip/MPLAB\ C30/support/dsPIC30F/gld/p30F6014A.gld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -omf=elf -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -o dist/${CND_CONF}/${IMAGE_TYPE}/demo5.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}         -Wl,--defsym=__MPLAB_BUILD=1,--heap=200,-L"../../../../../../../../../../../../../../../Program Files/Microchip/MPLAB C30/lib",-L".",-Map="${DISTDIR}/demo5.X.${IMAGE_TYPE}.map",--report-mem$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_SIMULATOR=1
else
dist/${CND_CONF}/${IMAGE_TYPE}/demo5.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../../../../../../../../../../../../../../../Program\ Files\ (x86)/Microchip/MPLAB\ C30/support/dsPIC30F/gld/p30F6014A.gld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -omf=elf -mcpu=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/demo5.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}         -Wl,--defsym=__MPLAB_BUILD=1,--heap=200,-L"../../../../../../../../../../../../../../../Program Files/Microchip/MPLAB C30/lib",-L".",-Map="${DISTDIR}/demo5.X.${IMAGE_TYPE}.map",--report-mem$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION)
	${MP_CC_DIR}\\pic30-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/demo5.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -omf=elf
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
