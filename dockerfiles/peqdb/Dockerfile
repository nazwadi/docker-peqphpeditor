FROM mariadb:10.0

LABEL maintainer="nazwadi@pm.me"

RUN apt-get update \
 && apt-get install -y unzip \
 && rm -rf /var/lib/apt/lists/*

ADD http://edit.peqtgc.com/weekly/peq_beta.zip /tmp
ADD https://raw.githubusercontent.com/EQEmu/Server/master/utils/sql/peq_aa_tables_post_rework.sql /tmp
ADD https://raw.githubusercontent.com/ProjectEQ/peqphpeditor/master/sql/schema.sql /tmp
ADD https://raw.githubusercontent.com/ProjectEQ/peqphpeditor/master/sql/expansion.sql /tmp
RUN chmod 755 /tmp/*.sql
RUN chmod 755 /tmp/peq_beta.zip
