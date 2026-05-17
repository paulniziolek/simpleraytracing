cmake_minimum_required(VERSION 4.3)
project(simpleraytracing)

set(CMAKE_CXX_STANDARD 14)

add_executable(simpleraytracing
        main.cpp
        vec3.h
        color.h
        ray.h
        hittable.h
        sphere.h)
