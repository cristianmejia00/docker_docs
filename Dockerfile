FROM cristianmejia00/qqdaxw:20210307b
MAINTAINER cristian mejia <cristianmejia00@gmail.com>
ENTRYPOINT ["R", "-e", \
    "library(plumber); setwd('/var/plumber/v3.1/'); pr <- plumber::plumb('/var/plumber/v3.1/plumber.R'); pr$run(host='0.0.0.0', port=8000)"]
EXPOSE 8000
