# base go image
#FROM golang:1.21.5-alpine3.19 as builder
#
#RUN mkdir /app
#
#COPY . /app
#
#WORKDIR /app
#
#RUN GCO_ENABLED=0 go build -o brokerApp ./cmd/api
#
#RUN chmod +x /app/brokerApp

# build a tiny docker image
#FROM alpine:latest
#
#RUN mkdir /app
#
#COPY --from=builder /app/brokerApp /app
#
#CMD [ "/app/brokerApp" ]


FROM alpine:latest

RUN mkdir /app

COPY brokerApp /app

CMD [ "/app/brokerApp" ]