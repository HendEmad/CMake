### Using Conan:
* Install conan: `pip install conan`
* Set up the conanfile.py in the root directory of the project.
* Install the dependencies: `conan install . -s build_type=Debug -s compiler.cppstd=20` => This will create the preset files
* Configure and build:
    - Confiure: `cmake -S . -B build`
    - Build: `cmake --build build`