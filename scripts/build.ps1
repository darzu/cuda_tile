$vcvarsall = "C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build\vcvarsall.bat"
$root = "C:\Users\darzu\hello\cuda_tile"
$llvm = "C:\Users\darzu\hello\llvm\llvm-project"
$build = "$root\build"
$lit = "$build\llvm-project-build\bin\llvm-lit.py"

cmd /c "`"$vcvarsall`" x64 && cmake -G Ninja -S $root -B $build ``
  -DCMAKE_BUILD_TYPE=Release ``
  -DCUDA_TILE_USE_LLVM_SOURCE_DIR=$llvm ``
  -DCUDA_TILE_ENABLE_TESTING=ON ``
  -DLLVM_EXTERNAL_LIT=$lit"
if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }

cmd /c "`"$vcvarsall`" x64 && cmake --build $build"
exit $LASTEXITCODE
