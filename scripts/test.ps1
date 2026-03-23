$vcvarsall = "C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build\vcvarsall.bat"
$root = "C:\Users\darzu\hello\cuda_tile"
$build = "$root\build"

cmd /c "`"$vcvarsall`" x64 && cmake --build $build --target check-cuda-tile"
exit $LASTEXITCODE
