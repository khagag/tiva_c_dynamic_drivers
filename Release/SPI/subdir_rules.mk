################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
SPI/SPI.obj: ../SPI/SPI.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv8/tools/compiler/ti-cgt-arm_18.1.2.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me -O2 --include_path="E:/c_composer_workspace/tiva_c_dynamic_drivers" --include_path="E:/c_composer_workspace/tiva_c_dynamic_drivers/General" --include_path="E:/c_composer_workspace/tiva_c_dynamic_drivers/i2c" --include_path="E:/c_composer_workspace/tiva_c_dynamic_drivers/UART" --include_path="E:/c_composer_workspace/tiva_c_dynamic_drivers/SPI" --include_path="C:/ti/ccsv8/tools/compiler/ti-cgt-arm_18.1.2.LTS/include" --define=ccs="ccs" --define=PART_TM4C123GH6PM --gcc --diag_warning=225 --diag_wrap=off --display_error_number --abi=eabi --gen_preprocessor_listing --preproc_with_compile --preproc_dependency="SPI/SPI.d_raw" --obj_directory="SPI" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

SPI/SPI_Cnf.obj: ../SPI/SPI_Cnf.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv8/tools/compiler/ti-cgt-arm_18.1.2.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me -O2 --include_path="E:/c_composer_workspace/tiva_c_dynamic_drivers" --include_path="E:/c_composer_workspace/tiva_c_dynamic_drivers/General" --include_path="E:/c_composer_workspace/tiva_c_dynamic_drivers/i2c" --include_path="E:/c_composer_workspace/tiva_c_dynamic_drivers/UART" --include_path="E:/c_composer_workspace/tiva_c_dynamic_drivers/SPI" --include_path="C:/ti/ccsv8/tools/compiler/ti-cgt-arm_18.1.2.LTS/include" --define=ccs="ccs" --define=PART_TM4C123GH6PM --gcc --diag_warning=225 --diag_wrap=off --display_error_number --abi=eabi --gen_preprocessor_listing --preproc_with_compile --preproc_dependency="SPI/SPI_Cnf.d_raw" --obj_directory="SPI" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '


