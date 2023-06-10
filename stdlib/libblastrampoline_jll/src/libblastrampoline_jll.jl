# This file is a part of Julia. License is MIT: https://julialang.org/license

## dummy stub for https://github.com/JuliaBinaryWrappers/libblastrampoline_jll.jl

baremodule libblastrampoline_jll
using Base, Libdl
export libblastrampoline

# NOTE: keep in sync with `Base.libblas_name` and `Base.liblapack_name`.
if Sys.iswindows()
    const libblastrampoline_name = "bin/libblastrampoline-5.dll"
elseif Sys.isapple()
    const libblastrampoline_name = "lib/libblastrampoline.5.dylib"
else
    const libblastrampoline_name = "lib/libblastrampoline.so.5"
end

const libblastrampoline_path = LazyStringFunc(() -> joinpath(dirname(Sys.BINDIR), libblastrampoline_name))
const libblastrampoline = LazyLibrary(libblastrampoline_path)

end  # module libblastrampoline_jll
