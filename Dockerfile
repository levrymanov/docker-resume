FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y apt-utils gnupg

RUN apt-get update && \
    apt-get install -y \
    texlive-xetex \
    texlive-fonts-recommended \
    texlive-latex-extra \
    texlive-fonts-extra \
    dvipng \
    texlive-latex-recommended \
    texlive-base \
    texlive-pictures \
    texlive-lang-cyrillic \
    texlive-science \
    cm-super && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*


COPY CV /cv

WORKDIR /cv

CMD pdflatex -interaction=nonstopmode deedy_resume-reversed.tex

