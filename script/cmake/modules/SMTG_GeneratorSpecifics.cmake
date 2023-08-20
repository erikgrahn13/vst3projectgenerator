cmake_minimum_required(VERSION 3.14.0)

# Output directory of the generated plug-in.
set(SMTG_GENERATOR_OUTPUT_DIRECTORY ${SMTG_CMAKE_SCRIPT_DIR}/output)
if(SMTG_GENERATOR_OUTPUT_DIRECTORY_CLI)
    string(REPLACE "\"" "" SMTG_GENERATOR_OUTPUT_DIRECTORY ${SMTG_GENERATOR_OUTPUT_DIRECTORY_CLI})
endif(SMTG_GENERATOR_OUTPUT_DIRECTORY_CLI)

# Directory to the cmake script's template files.
set(SMTG_TEMPLATE_FILES_PATH ${SMTG_CMAKE_SCRIPT_DIR}/cmake/templates)
if(SMTG_TEMPLATE_FILES_PATH_CLI)
    string(REPLACE "\"" "" SMTG_TEMPLATE_FILES_PATH ${SMTG_TEMPLATE_FILES_PATH_CLI})
endif(SMTG_TEMPLATE_FILES_PATH_CLI)

set(SMTG_VST3_SDK_SOURCE_DIR ${SMTG_CMAKE_SCRIPT_DIR}/../../vst3sdk)
if(SMTG_VST3_SDK_SOURCE_DIR_CLI)
    string(REPLACE "\"" "" SMTG_VST3_SDK_SOURCE_DIR ${SMTG_VST3_SDK_SOURCE_DIR_CLI})
endif(SMTG_VST3_SDK_SOURCE_DIR_CLI)

set(SMTG_ENABLE_VSTGUI_SUPPORT OFF)
if(SMTG_ENABLE_VSTGUI_SUPPORT_CLI)
    set(SMTG_ENABLE_VSTGUI_SUPPORT ${SMTG_ENABLE_VSTGUI_SUPPORT_CLI})
endif(SMTG_ENABLE_VSTGUI_SUPPORT_CLI)

set(SMTG_ENABLE_AAX_PLUGIN OFF)
if(SMTG_ENABLE_AAX_PLUGIN_CLI)
    set(SMTG_ENABLE_AAX_PLUGIN ${SMTG_ENABLE_AAX_PLUGIN_CLI})
endif(SMTG_ENABLE_AAX_PLUGIN_CLI)

set(SMTG_ENABLE_AUV3_PLUGIN OFF)
if(SMTG_ENABLE_AUV3_PLUGIN_CLI)
    set(SMTG_ENABLE_AUV3_PLUGIN ${SMTG_ENABLE_AUV3_PLUGIN_CLI})
endif(SMTG_ENABLE_AUV3_PLUGIN_CLI)

function(smtg_print_generator_specifics)
    message(STATUS "SMTG_ENABLE_VSTGUI_SUPPORT      : ${SMTG_ENABLE_VSTGUI_SUPPORT}")
    message(STATUS "SMTG_GENERATOR_OUTPUT_DIRECTORY : ${SMTG_GENERATOR_OUTPUT_DIRECTORY}")
    message(STATUS "SMTG_TEMPLATE_FILES_PATH        : ${SMTG_TEMPLATE_FILES_PATH}")
    message(STATUS "SMTG_VST3_SDK_SOURCE_DIR        : ${SMTG_VST3_SDK_SOURCE_DIR}")
    message("")
endfunction(smtg_print_generator_specifics)
