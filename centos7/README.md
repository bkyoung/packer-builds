# CentOS 7 Packer Atlas Build

Frankly, this template is totally generic and reusable.  Steps for reuse are:

1.  Create build via the web UI on Atlas
2.  Add two environment variables to the build, with appropriate values:
    - ATLAS_USERNAME (e.g. bkyoung)
    - ATLAS_BOXNAME  (e.g. centos7)
3.  edit make_new_box.sh with appropriate user/box
4.  run ./make_new_box.sh

