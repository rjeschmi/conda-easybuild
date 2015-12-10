FROM centos:7

RUN yum install -y tar patch bzip2

ADD ./build /build
RUN /build/Miniconda-latest-Linux-x86_64.sh -p /conda -b

RUN cp /build/profile_conda.sh /etc/profile.d/conda.sh
