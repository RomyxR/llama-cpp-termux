pkg update && pkg upgrade
pkg install cmake git ninja clang

git clone --depth 1 https://github.com/ggml-org/llama.cpp

cmake -B build -G Ninja -DGGML_TESTS=OFF -DGGML_EXAMPLES=OFF -DCMAKE_BUILD_TYPE=Release
cmake --build build -j 6 --target llama-cli llama-server
