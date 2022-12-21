FROM golang as base
WORKDIR /usr/src/app
COPY fullcycle.go .
RUN go build fullcycle.go


FROM scratch
WORKDIR /usr/src/app
COPY --from=base /usr/src/app/fullcycle .
CMD [ "./fullcycle" ]
