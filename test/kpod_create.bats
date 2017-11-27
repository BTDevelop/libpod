#!/usr/bin/env bats

load helpers

function setup() {
    copy_images
}

function teardown() {
    cleanup_test
}

@test "create a container based on local image" {
    skip "Reenable after kpod rm merges, and use rm to clean up"
    run ${KPOD_BINARY} ${KPOD_OPTIONS} create $BB ls
    echo "$output"
    [ "$status" -eq 0 ]
}

@test "create a container based on a remote image" {
    skip "Reenable after kpod rm merges, and use rm to clean up"
    run ${KPOD_BINARY} ${KPOD_OPTIONS} create ${BB_GLIBC} ls
    echo "$output"
    [ "$status" -eq 0 ]
}
