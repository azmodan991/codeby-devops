FROM golang AS build
WORKDIR /app
COPY ./hello .
RUN go build -o test-go

FROM alpine
WORKDIR /app
COPY --from=build /app/test-go ./test-go
ENTRYPOINT ["./test-go"]
