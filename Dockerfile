FROM saladtechnologies/text-generation-webui:latest

COPY Pygmalion-2-13B-AWQ/*.json models/pygmalion-2-13b-awq/
COPY Pygmalion-2-13B-AWQ/model.safetensors models/pygmalion-2-13b-awq/
COPY Pygmalion-2-13B-AWQ/tokenizer.model models/pygmalion-2-13b-awq/

RUN echo '--api --model "pygmalion-2-13b-awq" --multi-user' > CMD_FLAGS.txt

ENV IPV6_PORT 3001
ENV IPV4_PORT 5000