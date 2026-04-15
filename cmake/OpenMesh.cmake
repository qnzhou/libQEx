if (TARGET openmesh::core)
    return()
endif()

message(STATUS "Third-party (external): creating target 'openmesh::core'")

include(CPM)
CPMAddPackage(
  NAME openmesh
  GIT_REPOSITORY https://gitlab.vci.rwth-aachen.de:9000/OpenMesh/OpenMesh.git
  GIT_TAG d9b65de1de265d48120220c485134c4e7cb733c6
)

add_library(openmesh::core ALIAS OpenMeshCore)
