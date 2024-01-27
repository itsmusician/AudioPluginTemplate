cmake_minimum_required(VERSION 3.22)
project(${PluginName} VERSION 0.1.0)

juce_add_plugin(${PROJECT_NAME}
    COMPANY_NAME "Company"
    IS_SYNTH FALSE
    NEEDS_MIDI_INPUT FALSE
    NEEDS_MIDI_OUTPUT FALSE
    PLUGIN_MANUFACTURER_CODE Cmpn
    PLUGIN_CODE Code
    FORMATS AU VST3 Standalone
    VST3_CATEGORIES "Fx"
    PRODUCT_NAME "${PluginName}"
)

# juce_add_binary_data(AudioPluginData SOURCES Source/*.*)

target_sources(${PROJECT_NAME}
    PRIVATE
        Source/PluginEditor.cpp
        Source/PluginProcessor.cpp
)

target_link_libraries(${PROJECT_NAME}
    PRIVATE
        # AudioPluginData
        juce::juce_audio_utils
        juce::juce_audio_devices
    PUBLIC
        juce::juce_recommended_config_flags
        juce::juce_recommended_lto_flags
        juce::juce_recommended_warning_flags
)

target_compile_definitions(${PROJECT_NAME}
    PUBLIC
        JUCE_SILENCE_XCODE_15_LINKER_WARNING
        JUCE_WEB_BROWSER=0
        JUCE_USE_CURL=0
        JUCE_VST3_CAN_REPLACE_VST2=0
)

juce_generate_juce_header(${PROJECT_NAME})