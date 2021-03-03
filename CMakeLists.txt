cmake_minimum_required(VERSION 2.8.12)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

project(crnlib)

add_definitions(-DDLL)

set(CMAKE_BUILD_TYPE Release)

file(GLOB_RECURSE crnlib_HEADERS
	"crnlib/*.h"
)

file(GLOB_RECURSE crnlib_SOURCES
	"crnlib/*.cpp"
)

list(REMOVE_ITEM crnlib_HEADERS "${CMAKE_CURRENT_SOURCE_DIR}/crnlib/crn_winhdr.h")
list(REMOVE_ITEM crnlib_HEADERS "${CMAKE_CURRENT_SOURCE_DIR}/crnlib/lzma_Threads.h")

list(REMOVE_ITEM crnlib_SOURCES "${CMAKE_CURRENT_SOURCE_DIR}/crnlib/crn_threading_win32.cpp")
list(REMOVE_ITEM crnlib_SOURCES "${CMAKE_CURRENT_SOURCE_DIR}/crnlib/lzham_timer.cpp")
list(REMOVE_ITEM crnlib_SOURCES "${CMAKE_CURRENT_SOURCE_DIR}/crnlib/lzham_win32_threading.cpp")
list(REMOVE_ITEM crnlib_SOURCES "${CMAKE_CURRENT_SOURCE_DIR}/crnlib/lzma_LzFindMt.cpp")
list(REMOVE_ITEM crnlib_SOURCES "${CMAKE_CURRENT_SOURCE_DIR}/crnlib/lzma_Threads.cpp")


include_directories("crnlib")

add_library(crnlib SHARED ${crnlib_SOURCES} ${crnlib_HEADERS})