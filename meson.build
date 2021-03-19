project(
  'gitty', 
  'cpp',
  version : '1.0.0',
  license : 'GPLv3',
  default_options : [
    'buildtype=release',
    'optimization=3'
  ]
)

# Import CMake Subproject Module
cmake = import('cmake')

# Dependencies
libcppgit2 = cmake.subproject('cppgit2')
cppgit2 = libcppgit2.dependency('cppgit2')

message('cppgit2 CMake targets:\n - ' + '\n - '.join(libcppgit2.target_list()))

# Executable
executable(
  meson.project_name(),
    'src/main.cpp',
  install : true,
  install_dir : '/usr/local/bin',
  dependencies : [cppgit2],
  cpp_args : '-std=c++17'
)