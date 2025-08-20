vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO X-Neon/simple_units
    REF eacc1589947c4f041de313d0f52f4ab8f8a7afcb
    SHA512 8e132f7aba6006bc8a7e5162353ec28b70e99871fa601aca12020e4e71454a8581b6aa3341ae9c186233441ed3e603aa89a851fa469a550d803288a7417637e8
)

vcpkg_cmake_configure(SOURCE_PATH ${SOURCE_PATH})
vcpkg_cmake_install()
vcpkg_cmake_config_fixup(CONFIG_PATH lib/cmake/${PORT})

vcpkg_install_copyright(FILE_LIST ${SOURCE_PATH}/LICENSE)