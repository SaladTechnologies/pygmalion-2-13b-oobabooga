FROM saladtechnologies/text-generation-webui:latest

COPY Pygmalion-2-13B-GGUF/*.json models/pygmalion-2-13b-gguf/
COPY Pygmalion-2-13B-GGUF/pygmalion-2-13b.Q5_K_M.gguf models/pygmalion-2-13b-gguf/

RUN echo '--api --model "pygmalion-2-13b-gguf" --multi-user' > CMD_FLAGS.txt

ENV IPV6_PORT 3001
ENV IPV4_PORT 5000