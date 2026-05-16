# simpleraytracing

A simple ray tracer in C++, built by following [Ray Tracing in One Weekend](https://raytracing.github.io/books/RayTracingInOneWeekend.html). The goal is to work through the book chapter by chapter and end up with a small renderer that produces images of spheres with materials, reflections, and depth of field.

## Building

The project uses CMake. A `build.sh` wrapper is included. 

### Usage

```bash
./build.sh         # build (default)
./build.sh -r      # run the executable
./build.sh -br     # build, then run
./build.sh -c      # clean the build directory
./build.sh -cbr    # clean, build, then run from scratch
./build.sh -h      # show help
```

The build output goes to `build/` and the executable is `build/simpleraytracing`.

### Building manually

If you'd rather invoke CMake directly:

```bash
cmake -S . -B build
cmake --build build
./build/simpleraytracing
```

## Requirements

- CMake ≥ 4.3
- A C++14-capable compiler
