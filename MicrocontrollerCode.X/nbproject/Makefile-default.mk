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
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/MicrocontrollerCode.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/MicrocontrollerCode.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=C:/Users/Sander/HarmonyProjects/MyProject_3/firmware/src/config/default/peripheral/clk/plib_clk.c C:/Users/Sander/HarmonyProjects/MyProject_3/firmware/src/config/default/peripheral/evic/plib_evic.c C:/Users/Sander/HarmonyProjects/MyProject_3/firmware/src/config/default/peripheral/gpio/plib_gpio.c C:/Users/Sander/HarmonyProjects/MyProject_3/firmware/src/config/default/peripheral/mcpwm/plib_mcpwm.c C:/Users/Sander/HarmonyProjects/MyProject_3/firmware/src/config/default/peripheral/tmr/plib_tmr2.c C:/Users/Sander/HarmonyProjects/MyProject_3/firmware/src/config/default/peripheral/tmr1/plib_tmr1.c C:/Users/Sander/HarmonyProjects/MyProject_3/firmware/src/config/default/stdio/xc32_monitor.c C:/Users/Sander/HarmonyProjects/MyProject_3/firmware/src/config/default/initialization.c C:/Users/Sander/HarmonyProjects/MyProject_3/firmware/src/config/default/interrupts.c C:/Users/Sander/HarmonyProjects/MyProject_3/firmware/src/config/default/exceptions.c C:/Users/Sander/HarmonyProjects/MyProject_3/firmware/src/main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1462105933/plib_clk.o ${OBJECTDIR}/_ext/1919425562/plib_evic.o ${OBJECTDIR}/_ext/1919479390/plib_gpio.o ${OBJECTDIR}/_ext/620520127/plib_mcpwm.o ${OBJECTDIR}/_ext/1462089558/plib_tmr2.o ${OBJECTDIR}/_ext/1919864007/plib_tmr1.o ${OBJECTDIR}/_ext/1952301925/xc32_monitor.o ${OBJECTDIR}/_ext/1375407083/initialization.o ${OBJECTDIR}/_ext/1375407083/interrupts.o ${OBJECTDIR}/_ext/1375407083/exceptions.o ${OBJECTDIR}/_ext/1300908920/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1462105933/plib_clk.o.d ${OBJECTDIR}/_ext/1919425562/plib_evic.o.d ${OBJECTDIR}/_ext/1919479390/plib_gpio.o.d ${OBJECTDIR}/_ext/620520127/plib_mcpwm.o.d ${OBJECTDIR}/_ext/1462089558/plib_tmr2.o.d ${OBJECTDIR}/_ext/1919864007/plib_tmr1.o.d ${OBJECTDIR}/_ext/1952301925/xc32_monitor.o.d ${OBJECTDIR}/_ext/1375407083/initialization.o.d ${OBJECTDIR}/_ext/1375407083/interrupts.o.d ${OBJECTDIR}/_ext/1375407083/exceptions.o.d ${OBJECTDIR}/_ext/1300908920/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1462105933/plib_clk.o ${OBJECTDIR}/_ext/1919425562/plib_evic.o ${OBJECTDIR}/_ext/1919479390/plib_gpio.o ${OBJECTDIR}/_ext/620520127/plib_mcpwm.o ${OBJECTDIR}/_ext/1462089558/plib_tmr2.o ${OBJECTDIR}/_ext/1919864007/plib_tmr1.o ${OBJECTDIR}/_ext/1952301925/xc32_monitor.o ${OBJECTDIR}/_ext/1375407083/initialization.o ${OBJECTDIR}/_ext/1375407083/interrupts.o ${OBJECTDIR}/_ext/1375407083/exceptions.o ${OBJECTDIR}/_ext/1300908920/main.o

# Source Files
SOURCEFILES=C:/Users/Sander/HarmonyProjects/MyProject_3/firmware/src/config/default/peripheral/clk/plib_clk.c C:/Users/Sander/HarmonyProjects/MyProject_3/firmware/src/config/default/peripheral/evic/plib_evic.c C:/Users/Sander/HarmonyProjects/MyProject_3/firmware/src/config/default/peripheral/gpio/plib_gpio.c C:/Users/Sander/HarmonyProjects/MyProject_3/firmware/src/config/default/peripheral/mcpwm/plib_mcpwm.c C:/Users/Sander/HarmonyProjects/MyProject_3/firmware/src/config/default/peripheral/tmr/plib_tmr2.c C:/Users/Sander/HarmonyProjects/MyProject_3/firmware/src/config/default/peripheral/tmr1/plib_tmr1.c C:/Users/Sander/HarmonyProjects/MyProject_3/firmware/src/config/default/stdio/xc32_monitor.c C:/Users/Sander/HarmonyProjects/MyProject_3/firmware/src/config/default/initialization.c C:/Users/Sander/HarmonyProjects/MyProject_3/firmware/src/config/default/interrupts.c C:/Users/Sander/HarmonyProjects/MyProject_3/firmware/src/config/default/exceptions.c C:/Users/Sander/HarmonyProjects/MyProject_3/firmware/src/main.c



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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/MicrocontrollerCode.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MK0512MCJ064
MP_LINKER_FILE_OPTION=,--script="C:\Users\Sander\HarmonyProjects\MyProject_3\firmware\src\config\default\p32MK0512MCJ064.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1462105933/plib_clk.o: C\:/Users/Sander/HarmonyProjects/MyProject_3/firmware/src/config/default/peripheral/clk/plib_clk.c  .generated_files/1d8cacf96ad2a64eaf0bb7a43ace7356b7ec34fc.flag .generated_files/afcf5fab9ec6a6c92c6b9b2c75f9a3b7db7acfb3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1462105933" 
	@${RM} ${OBJECTDIR}/_ext/1462105933/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1462105933/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK0512MCJ064_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1462105933/plib_clk.o.d" -o ${OBJECTDIR}/_ext/1462105933/plib_clk.o C:/Users/Sander/HarmonyProjects/MyProject_3/firmware/src/config/default/peripheral/clk/plib_clk.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1919425562/plib_evic.o: C\:/Users/Sander/HarmonyProjects/MyProject_3/firmware/src/config/default/peripheral/evic/plib_evic.c  .generated_files/3b335394db53b1565d86b9ca04ef91cba963732c.flag .generated_files/afcf5fab9ec6a6c92c6b9b2c75f9a3b7db7acfb3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1919425562" 
	@${RM} ${OBJECTDIR}/_ext/1919425562/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919425562/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK0512MCJ064_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1919425562/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1919425562/plib_evic.o C:/Users/Sander/HarmonyProjects/MyProject_3/firmware/src/config/default/peripheral/evic/plib_evic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1919479390/plib_gpio.o: C\:/Users/Sander/HarmonyProjects/MyProject_3/firmware/src/config/default/peripheral/gpio/plib_gpio.c  .generated_files/6c3cda7c7f562ed33a2aebc5314f4155186f8cb7.flag .generated_files/afcf5fab9ec6a6c92c6b9b2c75f9a3b7db7acfb3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1919479390" 
	@${RM} ${OBJECTDIR}/_ext/1919479390/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919479390/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK0512MCJ064_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1919479390/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1919479390/plib_gpio.o C:/Users/Sander/HarmonyProjects/MyProject_3/firmware/src/config/default/peripheral/gpio/plib_gpio.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/620520127/plib_mcpwm.o: C\:/Users/Sander/HarmonyProjects/MyProject_3/firmware/src/config/default/peripheral/mcpwm/plib_mcpwm.c  .generated_files/17e529a8b82637577d8922e82703df1f5f93a367.flag .generated_files/afcf5fab9ec6a6c92c6b9b2c75f9a3b7db7acfb3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/620520127" 
	@${RM} ${OBJECTDIR}/_ext/620520127/plib_mcpwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/620520127/plib_mcpwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK0512MCJ064_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/620520127/plib_mcpwm.o.d" -o ${OBJECTDIR}/_ext/620520127/plib_mcpwm.o C:/Users/Sander/HarmonyProjects/MyProject_3/firmware/src/config/default/peripheral/mcpwm/plib_mcpwm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1462089558/plib_tmr2.o: C\:/Users/Sander/HarmonyProjects/MyProject_3/firmware/src/config/default/peripheral/tmr/plib_tmr2.c  .generated_files/e0bb130f59566127b03fe7a4c303872231e8c794.flag .generated_files/afcf5fab9ec6a6c92c6b9b2c75f9a3b7db7acfb3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1462089558" 
	@${RM} ${OBJECTDIR}/_ext/1462089558/plib_tmr2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1462089558/plib_tmr2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK0512MCJ064_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1462089558/plib_tmr2.o.d" -o ${OBJECTDIR}/_ext/1462089558/plib_tmr2.o C:/Users/Sander/HarmonyProjects/MyProject_3/firmware/src/config/default/peripheral/tmr/plib_tmr2.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1919864007/plib_tmr1.o: C\:/Users/Sander/HarmonyProjects/MyProject_3/firmware/src/config/default/peripheral/tmr1/plib_tmr1.c  .generated_files/b1dc5fb98fb459ab229b3e166d34b37355d51269.flag .generated_files/afcf5fab9ec6a6c92c6b9b2c75f9a3b7db7acfb3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1919864007" 
	@${RM} ${OBJECTDIR}/_ext/1919864007/plib_tmr1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919864007/plib_tmr1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK0512MCJ064_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1919864007/plib_tmr1.o.d" -o ${OBJECTDIR}/_ext/1919864007/plib_tmr1.o C:/Users/Sander/HarmonyProjects/MyProject_3/firmware/src/config/default/peripheral/tmr1/plib_tmr1.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1952301925/xc32_monitor.o: C\:/Users/Sander/HarmonyProjects/MyProject_3/firmware/src/config/default/stdio/xc32_monitor.c  .generated_files/7943405b0b9143eb2a976eb6ade169f86bd2e41e.flag .generated_files/afcf5fab9ec6a6c92c6b9b2c75f9a3b7db7acfb3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1952301925" 
	@${RM} ${OBJECTDIR}/_ext/1952301925/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1952301925/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK0512MCJ064_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1952301925/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1952301925/xc32_monitor.o C:/Users/Sander/HarmonyProjects/MyProject_3/firmware/src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1375407083/initialization.o: C\:/Users/Sander/HarmonyProjects/MyProject_3/firmware/src/config/default/initialization.c  .generated_files/152872f04509eee60372abd87147bf4bc6094665.flag .generated_files/afcf5fab9ec6a6c92c6b9b2c75f9a3b7db7acfb3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1375407083" 
	@${RM} ${OBJECTDIR}/_ext/1375407083/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1375407083/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK0512MCJ064_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1375407083/initialization.o.d" -o ${OBJECTDIR}/_ext/1375407083/initialization.o C:/Users/Sander/HarmonyProjects/MyProject_3/firmware/src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1375407083/interrupts.o: C\:/Users/Sander/HarmonyProjects/MyProject_3/firmware/src/config/default/interrupts.c  .generated_files/b7ef9fb4406740c2c2a213583169d7818a5a6919.flag .generated_files/afcf5fab9ec6a6c92c6b9b2c75f9a3b7db7acfb3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1375407083" 
	@${RM} ${OBJECTDIR}/_ext/1375407083/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1375407083/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK0512MCJ064_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1375407083/interrupts.o.d" -o ${OBJECTDIR}/_ext/1375407083/interrupts.o C:/Users/Sander/HarmonyProjects/MyProject_3/firmware/src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1375407083/exceptions.o: C\:/Users/Sander/HarmonyProjects/MyProject_3/firmware/src/config/default/exceptions.c  .generated_files/9baa9d76ab9361bf5911a6ee9224bdb9eb9d4a98.flag .generated_files/afcf5fab9ec6a6c92c6b9b2c75f9a3b7db7acfb3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1375407083" 
	@${RM} ${OBJECTDIR}/_ext/1375407083/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1375407083/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK0512MCJ064_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1375407083/exceptions.o.d" -o ${OBJECTDIR}/_ext/1375407083/exceptions.o C:/Users/Sander/HarmonyProjects/MyProject_3/firmware/src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1300908920/main.o: C\:/Users/Sander/HarmonyProjects/MyProject_3/firmware/src/main.c  .generated_files/c489d258d3a60b08382a57ae40cab4afb621b177.flag .generated_files/afcf5fab9ec6a6c92c6b9b2c75f9a3b7db7acfb3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1300908920" 
	@${RM} ${OBJECTDIR}/_ext/1300908920/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1300908920/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK0512MCJ064_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1300908920/main.o.d" -o ${OBJECTDIR}/_ext/1300908920/main.o C:/Users/Sander/HarmonyProjects/MyProject_3/firmware/src/main.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/1462105933/plib_clk.o: C\:/Users/Sander/HarmonyProjects/MyProject_3/firmware/src/config/default/peripheral/clk/plib_clk.c  .generated_files/b9b3dd99ce5a13bcc3096dba78e1094eeb3c09e4.flag .generated_files/afcf5fab9ec6a6c92c6b9b2c75f9a3b7db7acfb3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1462105933" 
	@${RM} ${OBJECTDIR}/_ext/1462105933/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1462105933/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK0512MCJ064_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1462105933/plib_clk.o.d" -o ${OBJECTDIR}/_ext/1462105933/plib_clk.o C:/Users/Sander/HarmonyProjects/MyProject_3/firmware/src/config/default/peripheral/clk/plib_clk.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1919425562/plib_evic.o: C\:/Users/Sander/HarmonyProjects/MyProject_3/firmware/src/config/default/peripheral/evic/plib_evic.c  .generated_files/cf00244ebcda2e7b81319e2d6eaaddf73cf4f8a0.flag .generated_files/afcf5fab9ec6a6c92c6b9b2c75f9a3b7db7acfb3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1919425562" 
	@${RM} ${OBJECTDIR}/_ext/1919425562/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919425562/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK0512MCJ064_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1919425562/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1919425562/plib_evic.o C:/Users/Sander/HarmonyProjects/MyProject_3/firmware/src/config/default/peripheral/evic/plib_evic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1919479390/plib_gpio.o: C\:/Users/Sander/HarmonyProjects/MyProject_3/firmware/src/config/default/peripheral/gpio/plib_gpio.c  .generated_files/34a68adbd27e927092115dc25b8e18274be991b3.flag .generated_files/afcf5fab9ec6a6c92c6b9b2c75f9a3b7db7acfb3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1919479390" 
	@${RM} ${OBJECTDIR}/_ext/1919479390/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919479390/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK0512MCJ064_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1919479390/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1919479390/plib_gpio.o C:/Users/Sander/HarmonyProjects/MyProject_3/firmware/src/config/default/peripheral/gpio/plib_gpio.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/620520127/plib_mcpwm.o: C\:/Users/Sander/HarmonyProjects/MyProject_3/firmware/src/config/default/peripheral/mcpwm/plib_mcpwm.c  .generated_files/569e0a493e06b49eec3a4cded11dcd1549ff631f.flag .generated_files/afcf5fab9ec6a6c92c6b9b2c75f9a3b7db7acfb3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/620520127" 
	@${RM} ${OBJECTDIR}/_ext/620520127/plib_mcpwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/620520127/plib_mcpwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK0512MCJ064_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/620520127/plib_mcpwm.o.d" -o ${OBJECTDIR}/_ext/620520127/plib_mcpwm.o C:/Users/Sander/HarmonyProjects/MyProject_3/firmware/src/config/default/peripheral/mcpwm/plib_mcpwm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1462089558/plib_tmr2.o: C\:/Users/Sander/HarmonyProjects/MyProject_3/firmware/src/config/default/peripheral/tmr/plib_tmr2.c  .generated_files/f58ab2f5b323758eba7b8dafaecbca36f39f135c.flag .generated_files/afcf5fab9ec6a6c92c6b9b2c75f9a3b7db7acfb3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1462089558" 
	@${RM} ${OBJECTDIR}/_ext/1462089558/plib_tmr2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1462089558/plib_tmr2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK0512MCJ064_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1462089558/plib_tmr2.o.d" -o ${OBJECTDIR}/_ext/1462089558/plib_tmr2.o C:/Users/Sander/HarmonyProjects/MyProject_3/firmware/src/config/default/peripheral/tmr/plib_tmr2.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1919864007/plib_tmr1.o: C\:/Users/Sander/HarmonyProjects/MyProject_3/firmware/src/config/default/peripheral/tmr1/plib_tmr1.c  .generated_files/e38bde218af53fef9ecceceb6b3fe86e49a35691.flag .generated_files/afcf5fab9ec6a6c92c6b9b2c75f9a3b7db7acfb3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1919864007" 
	@${RM} ${OBJECTDIR}/_ext/1919864007/plib_tmr1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919864007/plib_tmr1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK0512MCJ064_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1919864007/plib_tmr1.o.d" -o ${OBJECTDIR}/_ext/1919864007/plib_tmr1.o C:/Users/Sander/HarmonyProjects/MyProject_3/firmware/src/config/default/peripheral/tmr1/plib_tmr1.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1952301925/xc32_monitor.o: C\:/Users/Sander/HarmonyProjects/MyProject_3/firmware/src/config/default/stdio/xc32_monitor.c  .generated_files/8590ffe2a57f2a6814afb085c28830b1698b3340.flag .generated_files/afcf5fab9ec6a6c92c6b9b2c75f9a3b7db7acfb3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1952301925" 
	@${RM} ${OBJECTDIR}/_ext/1952301925/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1952301925/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK0512MCJ064_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1952301925/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1952301925/xc32_monitor.o C:/Users/Sander/HarmonyProjects/MyProject_3/firmware/src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1375407083/initialization.o: C\:/Users/Sander/HarmonyProjects/MyProject_3/firmware/src/config/default/initialization.c  .generated_files/39cf4c0788f154accee6ca4b98b14460809b6c0e.flag .generated_files/afcf5fab9ec6a6c92c6b9b2c75f9a3b7db7acfb3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1375407083" 
	@${RM} ${OBJECTDIR}/_ext/1375407083/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1375407083/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK0512MCJ064_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1375407083/initialization.o.d" -o ${OBJECTDIR}/_ext/1375407083/initialization.o C:/Users/Sander/HarmonyProjects/MyProject_3/firmware/src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1375407083/interrupts.o: C\:/Users/Sander/HarmonyProjects/MyProject_3/firmware/src/config/default/interrupts.c  .generated_files/8a446fc0d7d226bd90e55cb70903bdf7ad208b1d.flag .generated_files/afcf5fab9ec6a6c92c6b9b2c75f9a3b7db7acfb3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1375407083" 
	@${RM} ${OBJECTDIR}/_ext/1375407083/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1375407083/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK0512MCJ064_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1375407083/interrupts.o.d" -o ${OBJECTDIR}/_ext/1375407083/interrupts.o C:/Users/Sander/HarmonyProjects/MyProject_3/firmware/src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1375407083/exceptions.o: C\:/Users/Sander/HarmonyProjects/MyProject_3/firmware/src/config/default/exceptions.c  .generated_files/84e6e8cee1a20a60f993100f33a63c371bb28ca8.flag .generated_files/afcf5fab9ec6a6c92c6b9b2c75f9a3b7db7acfb3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1375407083" 
	@${RM} ${OBJECTDIR}/_ext/1375407083/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1375407083/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK0512MCJ064_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1375407083/exceptions.o.d" -o ${OBJECTDIR}/_ext/1375407083/exceptions.o C:/Users/Sander/HarmonyProjects/MyProject_3/firmware/src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1300908920/main.o: C\:/Users/Sander/HarmonyProjects/MyProject_3/firmware/src/main.c  .generated_files/c916d63668973a9bfb769e339cf4099a3ead2b6f.flag .generated_files/afcf5fab9ec6a6c92c6b9b2c75f9a3b7db7acfb3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1300908920" 
	@${RM} ${OBJECTDIR}/_ext/1300908920/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1300908920/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK0512MCJ064_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1300908920/main.o.d" -o ${OBJECTDIR}/_ext/1300908920/main.o C:/Users/Sander/HarmonyProjects/MyProject_3/firmware/src/main.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/MicrocontrollerCode.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    C:/Users/Sander/HarmonyProjects/MyProject_3/firmware/src/config/default/p32MK0512MCJ064.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/MicrocontrollerCode.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x36F   -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/MicrocontrollerCode.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   C:/Users/Sander/HarmonyProjects/MyProject_3/firmware/src/config/default/p32MK0512MCJ064.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/MicrocontrollerCode.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/MicrocontrollerCode.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
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
