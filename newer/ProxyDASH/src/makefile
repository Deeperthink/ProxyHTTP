
################################################################################
# include sources.mk
################################################################################

O_SRCS := 
CPP_SRCS := 
C_UPPER_SRCS := 
C_SRCS := 
S_UPPER_SRCS := 
OBJ_SRCS := 
ASM_SRCS := 
CXX_SRCS := 
C++_SRCS := 
CC_SRCS := 
C++_DEPS := 
OBJS := 
C_DEPS := 
CC_DEPS := 
CPP_DEPS := 
EXECUTABLES := 
CXX_DEPS := 
C_UPPER_DEPS := 

# Every subdirectory with source files must be described here
SUBDIRS := \
src \

################################################################################
# include objects.mk
################################################################################

USER_OBJS :=

LIBS := -lpthread

################################################################################
# include src/subdir.mk
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
./ClientManager.cpp \
./InterfacesManager.cpp \
./ProxyDASH.cpp \
./RequestManager.cpp \
./StatManager.cpp 

OBJS += \
./build/ClientManager.o \
./build/InterfacesManager.o \
./build/ProxyDASH.o \
./build/RequestManager.o \
./build/StatManager.o 

CPP_DEPS += \
./build/ClientManager.d \
./build/InterfacesManager.d \
./build/ProxyDASH.d \
./build/RequestManager.d \
./build/StatManager.d 


# Each subdirectory must supply rules for building sources it contributes
./build/%.o: ./%.cpp Miscellaneous.h
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -O3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '
	
	
# All Target
all: directories ProxyDASH

directories:
	mkdir -p build

# Tool invocations
ProxyDASH: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: Cross G++ Linker'
	g++  -o "ProxyDASH" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(C++_DEPS)$(OBJS)$(C_DEPS)$(CC_DEPS)$(CPP_DEPS)$(EXECUTABLES)$(CXX_DEPS)$(C_UPPER_DEPS) ProxyDASH
	rm -rf build
	-@echo ' '
