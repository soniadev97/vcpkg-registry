
vcpkg_from_gitlab(
    OUT_SOURCE_PATH SOURCE_PATH
    GITLAB_URL https://dc01dgitlab01v.atempo.com/
    REPO convergence/awebcli
    REF ${VERSION}_Beta
    SHA512 7fb41f25a954c73786bb6b97382b0f2de714dbc7653c9c579983a4b4058bd546a367b3387108509d44ebda566097a83d6c0a74a7889917f630a5bd65f775c61e
    HEAD_REF devel
    AUTHORIZATION_TOKEN 
)

#vcpkg_download_distfile(
 #   awebcli
  #  SOURCE_PATH "${_VCPKG_ROOT}/downloads/awebcli"
   # DISTFILE "awebcli-1.0.0_Beta.tar.gz"  # Nom du fichier de distribution
   # SHA512 d41d8cd98f00b204e9800998ecf8427e
#)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
    PREFER_NINJA
    OPTIONS_RELEASE
    OPTIONS
        -DCATCH_INSTALL_DOCS=OFF
        -DCMAKE_CXX_STANDARD=17

)

vcpkg_cmake_install()

