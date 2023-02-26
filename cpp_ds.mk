##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=cpp_ds
ConfigurationName      :=Debug
WorkspaceConfiguration :=Debug
WorkspacePath          :=C:/Users/mathe/OneDrive/projects/c++/c++
ProjectPath            :=C:/Users/mathe/OneDrive/projects/c++/c++/cpp_ds
IntermediateDirectory  :=../build-$(WorkspaceConfiguration)/cpp_ds
OutDir                 :=$(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=mathe
Date                   :=2/26/2023
CodeLitePath           :="C:/Program Files/CodeLite"
MakeDirCommand         :=mkdir
LinkerName             :=C:/mingw64/bin/g++.exe
SharedObjectLinkerName :=C:/mingw64/bin/g++.exe -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=
PreprocessSuffix       :=.i
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputDirectory        :=C:/Users/mathe/OneDrive/projects/c++/c++/build-$(WorkspaceConfiguration)/bin
OutputFile             :=..\build-$(WorkspaceConfiguration)\bin\$(ProjectName).exe
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :=$(IntermediateDirectory)/ObjectsList.txt
PCHCompileFlags        :=
RcCmpOptions           := 
RcCompilerName         :=C:/mingw64/bin/windres.exe
LinkOptions            :=  
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). 
IncludePCH             := 
RcIncludePath          := 
Libs                   := 
ArLibs                 :=  
LibPath                := $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overridden using an environment variable
##
AR       := C:/mingw64/bin/ar.exe
CXX      := C:/mingw64/bin/g++.exe
CC       := C:/mingw64/bin/gcc.exe
CXXFLAGS :=  -gdwarf-2 -O0 -Wall $(Preprocessors)
CFLAGS   :=  -gdwarf-2 -O0 -Wall $(Preprocessors)
ASFLAGS  := 
AS       := C:/mingw64/bin/as.exe


##
## User defined environment variables
##
CodeLiteDir:=C:\Program Files\CodeLite
Objects0=$(IntermediateDirectory)/src_stack_headers_Stack.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_stack_main.cpp$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: MakeIntermediateDirs $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@if not exist "$(IntermediateDirectory)" $(MakeDirCommand) "$(IntermediateDirectory)"
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@if not exist "$(IntermediateDirectory)" $(MakeDirCommand) "$(IntermediateDirectory)"
	@if not exist "$(OutputDirectory)" $(MakeDirCommand) "$(OutputDirectory)"

$(IntermediateDirectory)/.d:
	@if not exist "$(IntermediateDirectory)" $(MakeDirCommand) "$(IntermediateDirectory)"

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/src_stack_headers_Stack.cpp$(ObjectSuffix): src/stack/headers/Stack.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/mathe/OneDrive/projects/c++/c++/cpp_ds/src/stack/headers/Stack.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_stack_headers_Stack.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_stack_headers_Stack.cpp$(PreprocessSuffix): src/stack/headers/Stack.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_stack_headers_Stack.cpp$(PreprocessSuffix) src/stack/headers/Stack.cpp

$(IntermediateDirectory)/src_stack_main.cpp$(ObjectSuffix): src/stack/main.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/mathe/OneDrive/projects/c++/c++/cpp_ds/src/stack/main.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_stack_main.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_stack_main.cpp$(PreprocessSuffix): src/stack/main.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_stack_main.cpp$(PreprocessSuffix) src/stack/main.cpp

##
## Clean
##
clean:
	$(RM) -r $(IntermediateDirectory)


