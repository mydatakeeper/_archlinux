FROM archlinux/base

RUN set -xe \
    && useradd -u 1000 -m alarm \
    && pacman-key --init \
    && pacman-key --populate archlinux \
    && pacman --noconfirm -Syu \
    && pacman-db-upgrade \
    && update-ca-trust \
    && pacman -Scc --noconfirm

CMD ["/bin/bash"]

