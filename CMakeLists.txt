# Copyright (C) 2023 The Qt Company Ltd.
# SPDX-License-Identifier: BSD-3-Clause

cmake_minimum_required(VERSION 3.16)
project(ScorpionResume LANGUAGES CXX)

if (ANDROID OR IOS)
    message(FATAL_ERROR "Platform is not supported")
    return()
endif ()

find_package(Qt6 REQUIRED COMPONENTS Core Gui Quick)
qt_standard_project_setup(REQUIRES 6.5)

qt_add_executable(ScorpionResume
    main.cpp
)

set_target_properties(ScorpionResume
    PROPERTIES
        WIN32_EXECUTABLE TRUE
        MACOSX_BUNDLE TRUE
)

set_source_files_properties(qml/Colors.qml
    PROPERTIES
        QT_QML_SINGLETON_TYPE TRUE
)

qt_add_qml_module(ScorpionResume
    URI SR_Qml
    VERSION 1.0
    QML_FILES
        "Main.qml"
        "qml/Colors.qml"

    RESOURCES
        "icons/app_icon.ico"

    SOURCES

)

target_link_libraries(ScorpionResume
    PRIVATE
        Qt6::Core
        Qt6::Gui
        Qt6::Quick
)

install(TARGETS ScorpionResume
    RUNTIME DESTINATION "${INSTALL_EXAMPLEDIR}"
    BUNDLE DESTINATION "${INSTALL_EXAMPLEDIR}"
    LIBRARY DESTINATION "${INSTALL_EXAMPLEDIR}"
)