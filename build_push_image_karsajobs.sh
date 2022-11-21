#!/bin/bash
# Script untuk membuat (build) dan mengunggah (push)
# karsajobs docker image ke GitHub Packages

# Membuat (build) docker image berdasarkan Dockerfile
# di direktori saat ini
docker build -t ghcr.io/wantotri/karsajobs/karsajobs:latest .

# Login ke GitHub Packages
echo $GITHUB_ACCESS_TOKEN | docker login ghcr.io -u wantotri --password-stdin

# Mengunggah (push) ke GitHub Packages
docker push ghcr.io/wantotri/karsajobs/karsajobs:latest

