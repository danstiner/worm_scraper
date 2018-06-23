FROM ubuntu:latest

RUN apt-get update

RUN DEBIAN_FRONTEND=noninteractive apt-get -y install calibre build-essential patch ruby-dev zlib1g-dev liblzma-dev

RUN gem install nokogiri

CMD ["./make_ebook.sh", "-a"]
