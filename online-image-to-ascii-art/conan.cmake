function(conan_install)
execute_process(COMMAND conan install . --output-folder=build --build=missing -s build_type=${CMAKE_BUILD_TYPE}
                WORKING_DIRECTORY ${CMAKE_CURRENT_FUNCTION_LIST_DIR})
endfunction()
