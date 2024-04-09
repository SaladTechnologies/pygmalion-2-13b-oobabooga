#! /usr/bin/env bash

git lfs install
GIT_LFS_SKIP_SMUDGE=1 git clone https://huggingface.co/TheBloke/Pygmalion-2-13B-GGUF
rm Pygmalion-2-13B-GGUF/*.gguf
wget https://huggingface.co/TheBloke/Pygmalion-2-13B-GGUF/resolve/main/pygmalion-2-13b.Q5_K_M.gguf?download=true -O Pygmalion-2-13B-GGUF/pygmalion-2-13b.Q5_K_M.gguf