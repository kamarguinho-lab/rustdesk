#!/usr/bin/env bash
sed -i -e s/rs-ny.rustdesk.com/169.58.22.189/g -e s#OeVuKk5nlHiXp+APNn0Y3pC1Iwpwn44JGqrQCsWqmBw=#6cpYLQJpnQKamhU3b2NyNkVsS5wP+baz8bIuvYMm2Uk=#g libs/hbb_common/src/config.rs
grep -q 169.58.22.189 libs/hbb_common/src/config.rs || exit 1
cargo ndk --platform 21 --target armv7-linux-androideabi build --locked --release --features flutter,hwcodec
