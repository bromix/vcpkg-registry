vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REF 4836ee135f60a7b9038da24aa555e047203440dd
  SHA512 8f3eafe2683c9726321f57ecdc40ea0b8ba35b41be26d97b3cba9e4e1659022cdacc5e089d4eaf5f7582ff716b3de71fd5257814e4c06113bb86c8cc7809e1e6
  REPO bromix/borg
  HEAD_REF dev
)

vcpkg_configure_cmake(
  SOURCE_PATH "${SOURCE_PATH}"
  PREFER_NINJA
)
vcpkg_install_cmake()
vcpkg_fixup_cmake_targets()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

file(
  INSTALL "${SOURCE_PATH}/LICENSE"
  DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}"
  RENAME copyright)