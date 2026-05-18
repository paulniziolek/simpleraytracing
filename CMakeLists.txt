cmake_minimum_required(VERSION 4.3)
project(simpleraytracing)

set(CMAKE_CXX_STANDARD 14)

find_package(OpenMP REQUIRED)

add_executable(simpleraytracing
        main.cpp
        vec3.h
        color.h
        ray.h
        hittable.h
        sphere.h
        hittable_list.h
        rtweekend.h
        interval.h
        camera.h
        material.h)

target_link_libraries(simpleraytracing PUBLIC OpenMP::OpenMP_CXX)
