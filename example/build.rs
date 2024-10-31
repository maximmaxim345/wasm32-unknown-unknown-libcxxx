fn main() {
    cxx_build::bridge("src/lib.rs")
        .file("test.cpp")
        .include(".")
        .flag_if_supported("-std=c++14")
        .compile("wasmcxx");

    println!("cargo:rerun-if-changed=src/lib.rs");
    println!("cargo:rerun-if-changed=test.cpp");
    println!("cargo:rerun-if-changed=test.hpp");

    let cxx_flags = std::env::var("CXXFLAGS").unwrap_or_default();
    let all_clang_args: Vec<&str> = cxx_flags.split_whitespace().collect();
    let autocxx_build =
        autocxx_build::Builder::new("src/autoffi.rs", [&std::path::PathBuf::from(".")])
            .extra_clang_args(&all_clang_args)
            .build()
            .unwrap();

    autocxx_build.compile("occara-autocxx-bridge");
    println!("cargo:rerun-if-changed=src/autoffi.rs");
}
