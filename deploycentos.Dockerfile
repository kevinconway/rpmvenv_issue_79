FROM centos:7

ENTRYPOINT [ "rpm", "-i", "/build/test-1.0.0-1.x86_64.rpm" ]
