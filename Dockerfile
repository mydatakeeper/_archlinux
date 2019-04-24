FROM archlinux/base

RUN set -xe \
    && pacman-key --init \
    && pacman-key --populate archlinux \
    && pacman --noconfirm -Syu \
    && pacman-db-upgrade \
    && update-ca-trust \
    && pacman -Scc --noconfirm

CMD ["/bin/bash"]

